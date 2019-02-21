#lang racket/base

(require "parser.rkt" "ast.rkt" "comp.rkt")

(define argv (current-command-line-arguments))
(cond
  ((= (vector-length argv) 1)
   (define in (open-input-string (vector-ref argv 0)))
   (define prog (calc-parse in))
  
   (mips-eval prog (make-immutable-hash) 0)
   ;(comp prog (make-immutable-hash) 0)
      
   (close-input-port in)
   ;(write prog)
   ;(newline)
   )
  (else
   (eprintf "Usage: racket calc.rkt \"calcul\"\n")
   (exit 1)))
