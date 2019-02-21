#lang racket/base

(require racket/match "ast.rkt")
(provide (all-defined-out))
					  
					  
(define (mips-loc loc)
  (match loc
  	((Lbl l)   (format "~a" l))
    ((Mem b r) (format "~a($~a)" b r))))				  
		
			
(define (mips-emit instr)
	(match instr
		((Move rd rs)   (printf "move $~a, $~a\n" rd rs))
		((Li r i)		(printf "li $~a, ~a\n" r i))
		((La r a)   	(printf "la $~a, ~a\n" r (mips-loc a)))
		
		((Addi rd rs i) (printf "addi $~a, $~a, ~a\n" rd rs i))
		((Sub rd rs i)  (printf "sub $~a, $~a, ~a\n" rd rs i))
		((Mul rd rs r)	(printf "mul $~a, $~a, $~a\n" rd rs r))
		((Div rd rs)	(printf "div $~a, $~a\n" rd rs))
		
		((Bgt r1 r2 lbl)(printf "bgt $~a, $~a, ~a\n" r1 r2 lbl))
		((Blt r1 r2 lbl)(printf "blt $~a, $~a, ~a\n" r1 r2 lbl))
		((Bge r1 r2 lbl)(printf "bge $~a, $~a, ~a\n" r1 r2 lbl))
		((Ble r1 r2 lbl)(printf "ble $~a, $~a, ~a\n" r1 r2 lbl))
		((Beq r1 r2 lbl)(printf "beq $~a, $~a, ~a\n" r1 r2 lbl))
		((Bne r1 r2 lbl)(printf "bne $~a, $~a, ~a\n" r1 r2 lbl))
		
		((And rd r1 r2)(printf "and $~a, $~a, $~a\n" rd r1 r2))
    	((Or rd r1 r2)(printf "or $~a, $~a, $~a\n" rd r1 r2))
    	((Xor rd r1 r2)(printf "xor $~a, $~a, $~a\n" rd r1 r2))
    	((Sll rd rs s)(printf "sll $~a, $~a, ~a\n" rd rs s))
    	((Srl rd rs s)(printf "srl $~a, $~a, ~a\n" rd rs s))
		
		((Sgt r1 r2 r3)(printf "sgt $~a, $~a, $~a\n" r1 r2 r3))
		((Slt r1 r2 r3)(printf "slt $~a, $~a, $~a\n" r1 r2 r3))
		((Sge r1 r2 r3)(printf "sge $~a, $~a, $~a\n" r1 r2 r3))
		((Sle r1 r2 r3)(printf "sle $~a, $~a, $~a\n" r1 r2 r3))
		((Seq r1 r2 r3)(printf "seq $~a, $~a, $~a\n" r1 r2 r3))
		((Sne r1 r2 r3)(printf "sne $~a, $~a, $~a\n" r1 r2 r3))
		
		((Mflo rs)      (printf "mflo $~a\n" rs))
    	((Mfhi rs)      (printf "mfhi $~a\n" rs))
		((B lbl)		(printf "b ~a\n" lbl))
		((Label l)		(printf "\n~a:\n" l))
		((Sw r loc)     (printf "sw $~a, ~a\n" r (mips-loc loc)))
    	((Lw r loc)     (printf "lw $~a, ~a\n" r (mips-loc loc)))
		((Syscall)  	(printf "syscall\n"))
		((Jr r)			(printf "jr $~a\n" r))
		((Jal lbl)		(printf "jal ~a\n" lbl))))
		

(define (print-data)
	(printf "\n.data\n"))


(define (mips-data data)
  	(hash-for-each data
                 (lambda (k v)
                 	(if (number? v)
                   		(printf "~a: .word ~s\n" k v)
                   		(printf "~a: .asciiz ~s\n" k v)))))


(define (mips-main)
	(printf "\n.text\n.globl main\n"))
					

(define (mips-eval prog env fp-sp)
  (match prog 
    ((list expr)    			(comp prog env fp-sp))
    ((cons expr instr)  		(comp (list expr) env fp-sp) (mips-eval instr env fp-sp))))


;;; evaluation des expressions
(define (comp-eval prog env fp-sp)
	(match prog
		((Pnum n)			n)
		((Pid name)			name)
		((Pdef id expr)		(hash-set env id (comp-eval expr env fp-sp)))
		((Pfunc id)			(hash-set id env fp-sp))
		((PprintNum expr)	'())
		((Pop op v1 v2)		(match op
								('+ (+ (comp-eval v1 env fp-sp) (comp-eval v2 env fp-sp)))
								('- (- (comp-eval v1 env fp-sp) (comp-eval v2 env fp-sp)))
								('* (* (comp-eval v1 env fp-sp) (comp-eval v2 env fp-sp)))
								('/ (floor (/ (comp-eval v1 env fp-sp) (comp-eval v2 env fp-sp))))
								('% (modulo (comp-eval v1 env fp-sp) (comp-eval v2 env fp-sp)))
								('< (< (comp-eval v1 env fp-sp) (comp-eval v2 env fp-sp)))
								('> (> (comp-eval v1 env fp-sp) (comp-eval v2 env fp-sp)))
								('<= (<= (comp-eval v1 env fp-sp) (comp-eval v2 env fp-sp)))
								('>= (>= (comp-eval v1 env fp-sp) (comp-eval v2 env fp-sp)))
								('=! ((not (equal? (comp-eval v1 env fp-sp) (comp-eval v2 env fp-sp)))))
								))))


(print-data)	
(mips-data (make-hash '((nl . "\n"))))
(mips-data (make-hash '((f . "\nFalse\n") (t . "\nTrue\n"))))
(mips-data (make-hash '((name . "\nNameError: the entered name is not defined\n"))))
	
								
(mips-main)		
;;; traduction des expression en mips					
(define (comp ast env fp-sp)
	(for-each mips-emit
		(append 
			(match ast
			
				;;; numero afficher apres la compilation
				((list (Pnum n))
					(append
						(list (Li 'v0 n))
						(list (Move 'a0 'v0))
						(list (Li 'v0 1))
						(list (Syscall))))
				
				;;; chaine de caractere, renvoie un NameError a la compilation
				((list (Pid name))
					(append
						(list (La 't0 (Lbl 'name)))
						(list (Move 'a0 't0))
						(list (Li 'v0 4))
						(list (Syscall))
						(list (Li 'v0 4))
						(list (La 'a0 (Lbl 'nl)))
						(list (Syscall))
						(list (Li 'v0 0))
						(list (Jr 'ra))))
						
				;((list (Pdef id expr))
				;	(hash-set env id (comp-eval expr env fp-sp))
				;	(append
				;		(list (Addi 'sp 'sp -8))
				;		(list (Sw 'fp (Mem 4 'sp)))
				;		(list (Move 'fp 'sp))
				;		(list (Sw 't0 (Mem 0 'fp)))))
				
				;;; Declaration de variable
				((list (Pdef id expr))
					(mips-data (hash id (comp-eval expr env 0)))
					;(mips-main)
					(append 
						(list (Lw 't0 (Lbl id)))
						(list (Move 'a0 't0))
						(list (Li 'v0 4))
						(list (Syscall))))
					
				;;; Declaration de fonction					
				((list (Pfunc id))
					;(mips-main)
					(list (Label id)))
				
				;;; Appel de fonction 	
				((list (Pcall id))
					(append 
						(list (Jal id))
						(list (Li 'v0 10))
						(list (Syscall))))
					
				;;; Print(integer)	
				((list (PprintNum expr))
					(list (comp (list expr) env 0))
					(append
						(list (Li 'v0 4))
						(list (La 'a0 (Lbl 'nl)))
						(list (Syscall))))
					
				;;; print(string) (ne marche pas)	
				((list (PprintStr expr))
					(append
						(list (Li 'v0 4))
						(list (La 'a0 (Lbl (comp-eval expr env 0))))
						(list (Syscall))
						(list (Li 'v0 4))
						(list (La 'a0 (Lbl 'nl)))
						(list (Syscall))))
				
				;;; Boucle while (ne fonctionne qu'avec une boucle infini)
				((list (Pwhile test expr))
					(match test 								
						((Pop op a b)
							(append
								(match op
									('>
										(append 
											(list (Label 'While))
											(list (Li 't0 (comp-eval a env 0)))
											(list (Li 't1 (comp-eval b env 0)))
											(list (Ble 't0 't1 'endWhile))
											(list (Li 'v0 (comp-eval expr env 0)))
											(list (Move 'a0 'v0))
											(list (Li 'v0 1))
											(list (Syscall))
											(list (B 'While))
											(list (Label 'endWhile))))
									('<
										(append 
											(list (Label 'While))
											(list (Li 't0 (comp-eval a env 0)))
											(list (Li 't1 (comp-eval b env 0)))
											(list (Bge 't0 't1 'endWhile))
											(list (Li 'v0 (comp-eval expr env 0)))
											(list (Move 'a0 'v0))
											(list (Li 'v0 1))
											(list (Syscall))
											(list (B 'While))
											(list (Label 'endWhile))))
									('>=
										(append 
											(list (Label 'While))
											(list (Li 't0 (comp-eval a env 0)))
											(list (Li 't1 (comp-eval b env 0)))
											(list (Blt 't0 't1 'endWhile))
											(list (Li 'v0 (comp-eval expr env 0)))
											(list (Move 'a0 'v0))
											(list (Li 'v0 1))
											(list (Syscall))
											(list (B 'While))
											(list (Label 'endWhile))))
									('<=
										(append 
											(list (Label 'While))
											(list (Li 't0 (comp-eval a env 0)))
											(list (Li 't1 (comp-eval b env 0)))
											(list (Bgt 't0 't1 'endWhile))
											(list (Li 'v0 (comp-eval expr env 0)))
											(list (Move 'a0 'v0))
											(list (Li 'v0 1))
											(list (Syscall))
											(list (B 'While))
											(list (Label 'endWhile))))
									('==
										(append 
											(list (Label 'While))
											(list (Li 't0 (comp-eval a env 0)))
											(list (Li 't1 (comp-eval b env 0)))
											(list (Bne 't0 't1 'endWhile))
											(list (Li 'v0 (comp-eval expr env 0)))
											(list (Move 'a0 'v0))
											(list (Li 'v0 1))
											(list (Syscall))
											(list (B 'While))
											(list (Label 'endWhile))))
									('!=
										(append 
											(list (Label 'While))
											(list (Li 't0 (comp-eval a env 0)))
											(list (Li 't1 (comp-eval b env 0)))
											(list (Beq 't0 't1 'endWhile))
											(list (Li 'v0 (comp-eval expr env 0)))
											(list (Move 'a0 'v0))
											(list (Li 'v0 1))
											(list (Syscall))
											(list (B 'While))
											(list (Label 'endWhile)))))
											
								(list (Li 'v0 4))
								(list (La 'a0 (Lbl 'nl)))
								(list (Syscall))
								(list (Li 'v0 0))
								(list (Jr 'ra))))
							))
					
				;;; test if (ne renvoie rien car impossibilité de récupérer une variable definie)		
				((list (Pif (Pop op a b) expr1 expr2))
					(append
						(match op
							('>
								(append 
									(list (Label 'IF))
									(list (Li 't0 (comp-eval a env 0)))
									(list (Li 't1 (comp-eval b env 0)))
									(list (Sgt 't2 't0 't1))
									(list (Beq 't2 '0 'Else))
									(list (Li 'v0 (comp-eval expr1 env 0)))
									(list (B 'IF))
									(list (Label 'Else))
									(list (Li 'v0 (comp-eval expr2 env 0)))
									(list (Label 'EndIF))))	
							
							('<
								(append 
									(list (Label 'IF))
									(list (Li 't0 (comp-eval a env 0)))
									(list (Li 't1 (comp-eval b env 0)))
									(list (Slt 't2 't0 't1))
									(list (Beq 't2 '0 'Else))
									(list (Li 'v0 (comp-eval expr1 env 0)))
									(list (B 'IF))
									(list (Label 'Else))
									(list (Li 'v0 (comp-eval expr2 env 0)))
									(list (Label 'EndIF))))	
									
							('>=
								(append 
									(list (Label 'IF))
									(list (Li 't0 (comp-eval a env 0)))
									(list (Li 't1 (comp-eval b env 0)))
									(list (Sge 't2 't0 't1))
									(list (Beq 't2 '0 'Else))
									(list (Li 'v0 (comp-eval expr1 env 0)))
									(list (B 'IF))
									(list (Label 'Else))
									(list (Li 'v0 (comp-eval expr2 env 0)))
									(list (Label 'EndIF))))
							
							('<=
								(append 
									(list (Label 'IF))
									(list (Li 't0 (comp-eval a env 0)))
									(list (Li 't1 (comp-eval b env 0)))
									(list (Sle 't2 't0 't1))
									(list (Beq 't2 '0 'Else))
									(list (Li 'v0 (comp-eval expr1 env 0)))
									(list (B 'IF))
									(list (Label 'Else))
									(list (Li 'v0 (comp-eval expr2 env 0)))
									(list (Label 'EndIF))))	
							
							('==
								(append 
									(list (Label 'IF))
									(list (Li 't0 (comp-eval a env 0)))
									(list (Li 't1 (comp-eval b env 0)))
									(list (Seq 't2 't0 't1))
									(list (Beq 't2 '0 'Else))
									(list (Li 'v0 (comp-eval expr1 env 0)))
									(list (B 'IF))
									(list (Label 'Else))
									(list (Li 'v0 (comp-eval expr2 env 0)))
									(list (Label 'EndIF))))
									
							('!=
								(append 
									(list (Label 'IF))
									(list (Li 't0 (comp-eval a env 0)))
									(list (Li 't1 (comp-eval b env 0)))
									(list (Sne 't2 't0 't1))
									(list (Beq 't2 '0 'Else))
									(list (Li 'v0 (comp-eval expr1 env 0)))
									(list (B 'IF))
									(list (Label 'Else))
									(list (Li 'v0 (comp-eval expr2 env 0)))
									(list (Label 'EndIF)))))
						(list (Li 'v0 4))
						(list (La 'a0 (Lbl 'nl)))
						(list (Syscall))
						(list (Li 'v0 0))
						(list (Jr 'ra))))
					
				;;; boucle for tel que: for i in range(0,5): instruction
				((list (Pfor n1 n2 expr))
					(append 
						(list (Li 't0 (comp-eval n1 env 0)))
						(list (Li 't1 (comp-eval n2 env 0)))
						(list (Label 'For))
						(list (Beq 't1 't0 'endFor))
						(list (Addi 't0 't0 1))
						(list (Li 't2 (comp-eval expr env 0)))
						(list (Move 'a0 't2))
						(list (Li 'v0 1))
						(list (Syscall))
						(list (Li 'v0 4))
						(list (La 'a0 (Lbl 'nl)))
						(list (Syscall))
						(list (B 'For))
						(list (Label 'endFor))
						(list (Li 'v0 4))
						(list (La 'a0 (Lbl 'nl)))
						(list (Syscall))
						(list (Li 'v0 0))
						(list (Jr 'ra))))
								
				;;; Operations arithmétiques, logiques et de comparaisons
				((list (Pop op v1 v2))
					;(mips-main)
					(append
						(match op
							('+ 
								(append 
									(list (Li 't0 (comp-eval v1 env 0)))
									(list (Addi 't0 't0 (comp-eval v2 env 0)))
									(list (Move 'a0 't0))
									(list (Li 'v0 1))
									(list (Syscall))))
							('-
								(append
									(list (Li 't0 (comp-eval v1 env 0)))
									(list (Sub 't0 't0 (comp-eval v2 env 0)))
									(list (Move 'a0 't0))
									(list (Li 'v0 1))
									(list (Syscall))))
							('*
								(append 
									(list (Li 't0 (comp-eval v1 env 0)))
									(list (Li 't1 (comp-eval v2 env 0)))
									(list (Mul 't1 't0 't1))
									(list (Move 'a0 't1))
									(list (Li 'v0 1))
									(list (Syscall))))
							('/
								(append
									(list (Li 't0 (comp-eval v1 env 0)))
									(list (Li 't1 (comp-eval v2 env 0)))
									(list (Div 't0 't1))
									(list (Mflo 's0))
									(list (Addi 'a0 's0 0))
									(list (Li 'v0 1))
									(list (Syscall))))
							
							('>
								(append 
									(list (Li 't0 (comp-eval v1 env 0)))
									(list (Li 't1 (comp-eval v2 env 0)))
									(list (Bgt 't0 't1 'TRUE))
									(list (B 'FALSE))
									(list (Label 'TRUE))
									;(list (Li 'v0 4))
						            (list (La 'a0 (Lbl 't)))
						            ;(list (Syscall))
									(list (B 'next))
						            (list (Label 'FALSE))
						            ;(list (Li 'v0 4))
						            (list (La 'a0 (Lbl 'f)))
						            ;(list (Syscall))
						            (list (Label 'next))
						            (list (Li 'v0 4))
									(list (Syscall))))
						    ('<
						    	(append
						    		(list (Li 't0 (comp-eval v1 env 0)))
						    		(list (Li 't1 (comp-eval v2 env 0)))
						    		(list (Blt 't0 't1 'TRUE))
						    		(list (B 'FALSE))
						    		(list (Label 'TRUE))
						    		;(list (Li 'v0 4))
						    		(list (La 'a0 (Lbl 't)))
						    		;(list (Syscall))
						    		(list (B 'next))
						    		(list (Label 'FALSE))
						    		;(list (Li 'v0 4))
						    		(list (La 'a0 (Lbl 'f)))
						    		;(list (Syscall))
						    		(list (Label 'next))
						    		(list (Li 'v0 4))
									(list (Syscall))))	
						   ('>=
								(append 
									(list (Li 't0 (comp-eval v1 env 0)))
						    		(list (Li 't1 (comp-eval v2 env 0)))
						    		(list (Bge 't0 't1 'TRUE))
						    		(list (B 'FALSE))
						    		(list (Label 'TRUE))
						    		;(list (Li 'v0 4))
						    		(list (La 'a0 (Lbl 't)))
						    		;(list (Syscall))
						    		(list (B 'next))
						    		(list (Label 'FALSE))
						    		;(list (Li 'v0 4))
						    		(list (La 'a0 (Lbl 'f)))
						    		;(list (Syscall))
						    		(list (Label 'next))
						    		(list (Li 'v0 4))
									(list (Syscall))))
						    ('<=
						    	(append 
						    		(list (Li 't0 (comp-eval v1 env 0)))
						    		(list (Li 't1 (comp-eval v2 env 0)))
						    		(list (Ble 't0 't1 'TRUE))
						    		(list (B 'FALSE))
						    		(list (Label 'TRUE))
						    		;(list (Li 'v0 4))
						    		(list (La 'a0 (Lbl 't)))
						    		;(list (Syscall))
						    		(list (B 'next))
						    		(list (Label 'FALSE))
						    		;(list (Li 'v0 4))
						    		(list (La 'a0 (Lbl 'f)))
						    		;(list (Syscall))
						    		(list (Label 'next))
						    		(list (Li 'v0 4))
									(list (Syscall))))
						    ('==
						    	(append 
						    		(list (Li 't0 (comp-eval v1 env 0)))
						    		(list (Li 't1 (comp-eval v2 env 0)))
						    		(list (Beq 't0 't1 'TRUE))
						    		(list (B 'FALSE))
						    		(list (Label 'TRUE))
						    		;(list (Li 'v0 4))
						    		(list (La 'a0 (Lbl 't)))
						    		;(list (Syscall))
						    		(list (B 'next))
						    		(list (Label 'FALSE))
						    		;(list (Li 'v0 4))
						    		(list (La 'a0 (Lbl 'f)))
						    		;(list (Syscall))
						    		(list (Label 'next))
						    		(list (Li 'v0 4))
									(list (Syscall))))
						    ('!=
								(append
									(list (Li 't0 (comp-eval v1 env 0)))
						    		(list (Li 't1 (comp-eval v2 env 0)))
						    		(list (Beq 't0 't1 'FALSE))
						    		(list (B 'TRUE))
						    		(list (Label 'TRUE))
						    		;(list (Li 'v0 4))
						    		(list (La 'a0 (Lbl 't)))
						    		;(list (Syscall))
						    		(list (B 'next))
						    		(list (Label 'FALSE))
						    		;(list (Li 'v0 4))
						    		(list (La 'a0 (Lbl 'f)))
						    		;(list (Syscall))
						    		(list (Label 'next))
						    		(list (Li 'v0 4))
									(list (Syscall))))
						    ('%
						    	(append
						    		(list (Li 't0 (comp-eval v1 env 0)))
						    		(list (Li 't1 (comp-eval v2 env 0)))
						    		(list (Div 't0 't1))
						    		(list (Mfhi 's0))
						    		(list (Addi 'a0 's0 0))
						    		(list (Li 'v0 1))
									(list (Syscall))))
							
							('&
								(append
									(list (Li 't0 (comp-eval v1 env 0)))
									(list (Li 't1 (comp-eval v2 env 0)))
                        			(list (And 't2 't0 't1))
                        			(list (Move 'a0 't2))
                        			(list (Li 'v0 1))
									(list (Syscall))))
							
							('or 
								(append
									(list (Li 't0 (comp-eval v1 env 0)))
									(list (Li 't1 (comp-eval v2 env 0)))
                        			(list (Or 't2 't0 't1))
                        			(list (Move 'a0 't2))
                        			(list (Li 'v0 1))
									(list (Syscall))))
									
							('^ 
								(append
									(list (Li 't0 (comp-eval v1 env 0)))
									(list (Li 't1 (comp-eval v2 env 0)))
                        			(list (Xor 't2 't0 't1))
                        			(list (Move 'a0 't2))
                        			(list (Li 'v0 1))
									(list (Syscall))))
									
							('<<
								(append 
									(list (Li 't0 (comp-eval v1 env 0)))
									(list (Sll 't1 't0 (comp-eval v2 env 0)))
									(list (Move 'a0 't1))
									(list (Li 'v0 1))
									(list (Syscall))))
									
							('>>
								(append 
									(list (Li 't0 (comp-eval v1 env 0)))
									(list (Srl 't1 't0 (comp-eval v2 env 0)))
									(list (Move 'a0 't1))
									(list (Li 'v0 1))
									(list (Syscall)))))
									
						(list 
							;; affichage retour à la ligne
							(Li 'v0 4)
							(La 'a0 (Lbl 'nl))
						  	(Syscall)
						  	(Li 'v0 0)
						  	(Jr 'ra))))
			))))
