0	parser1875	=	(parser1876)
1	parser1876	=	(prog Leof)
2	prog	=	(expr)
3	prog	=	(expr prog)
4	prog	=	(declaration prog)
5	prog	=	(declaration)
6	prog	=	(callFunc)
7	expr	=	(val)
8	expr	=	(operations)
9	expr	=	(test)
10	expr	=	(boucle)
11	expr	=	(print)
12	val	=	(Lnum)
13	val	=	(Lid)
14	operations	=	(expr Lplus expr)
15	operations	=	(expr Lmin expr)
16	operations	=	(expr Lmul expr)
17	operations	=	(expr Ldiv expr)
18	operations	=	(expr Lsup expr)
19	operations	=	(expr Linf expr)
20	operations	=	(expr Lseq expr)
21	operations	=	(expr Lieq expr)
22	operations	=	(expr Leqeq expr)
23	operations	=	(expr Lneq expr)
24	operations	=	(expr Lmod expr)
25	operations	=	(expr Land expr)
26	operations	=	(expr Lor expr)
27	operations	=	(expr Lxor expr)
28	operations	=	(expr Lleft expr)
29	operations	=	(expr Lright expr)
30	declaration	=	(Lid Leq expr Lsc)
31	declaration	=	(Lfunc Lid Lopar Lcpar Ldpoint)
32	test	=	(Lif expr Ldpoint expr Lelse Ldpoint expr)
33	boucle	=	(Lwhile expr Ldpoint expr)
34	boucle	=	(Lfor Lid Lin Lrange Lopar expr Lcomma expr Lcpar Ldpoint expr)
35	callFunc	=	(Lid Lopar Lcpar)
36	print	=	(Lprint Lopar expr Lcpar)
37	print	=	(Lprint Lopar Lquote expr Lquote Lcpar)
State 0
	parser1875 -> . parser1876 

	expr					goto	3
	Lwhile					shift	17
	Lnum					shift	12
	Lid					shift	13
	Lprint					shift	11
	operations					goto	5
	Lfor					shift	15
	prog					goto	2
	callFunc					goto	9
	print					goto	10
	boucle					goto	8
	val					goto	4
	declaration					goto	6
	test					goto	7
	Lif					shift	16
	parser1876					goto	1
	Lfunc					shift	14

State 1
	parser1875 -> parser1876 . 


State 2
	parser1876 -> prog . Leof 

	Leof					accept	

State 3
	prog -> expr . 
	prog -> expr . prog 
	operations -> expr . Lplus expr 
	operations -> expr . Lmin expr 
	operations -> expr . Lmul expr 
	operations -> expr . Ldiv expr 
	operations -> expr . Lsup expr 
	operations -> expr . Linf expr 
	operations -> expr . Lseq expr 
	operations -> expr . Lieq expr 
	operations -> expr . Leqeq expr 
	operations -> expr . Lneq expr 
	operations -> expr . Lmod expr 
	operations -> expr . Land expr 
	operations -> expr . Lor expr 
	operations -> expr . Lxor expr 
	operations -> expr . Lleft expr 
	operations -> expr . Lright expr 

	Lsup					shift	24
	Leof					reduce	2
	Lseq					shift	26
	Lxor					shift	33
	Lid					shift	13
	Lieq					shift	27
	Lplus					shift	20
	Lleft					shift	34
	print					goto	10
	Lfor					shift	15
	Lmin					shift	21
	Lneq					shift	29
	Ldiv					shift	23
	Lmul					shift	22
	boucle					goto	8
	Lfunc					shift	14
	Lmod					shift	30
	Lwhile					shift	17
	Linf					shift	25
	Lnum					shift	12
	Lif					shift	16
	Lright					shift	35
	Lprint					shift	11
	operations					goto	5
	prog					goto	19
	callFunc					goto	9
	Leqeq					shift	28
	Land					shift	31
	val					goto	4
	declaration					goto	6
	test					goto	7
	Lor					shift	32
	expr					goto	3

State 4
	expr -> val . 

	Lprint					reduce	7
	Lmul					reduce	7
	Lid					reduce	7
	Lleft					reduce	7
	Lright					reduce	7
	Lxor					reduce	7
	Ldpoint					reduce	7
	Lieq					reduce	7
	Lplus					reduce	7
	Leof					reduce	7
	Lelse					reduce	7
	Lmin					reduce	7
	Lneq					reduce	7
	Lsc					reduce	7
	Lsup					reduce	7
	Lseq					reduce	7
	Lmod					reduce	7
	Lwhile					reduce	7
	Lcomma					reduce	7
	Linf					reduce	7
	Lnum					reduce	7
	Lif					reduce	7
	Lquote					reduce	7
	Lfor					reduce	7
	Lor					reduce	7
	Leqeq					reduce	7
	Land					reduce	7
	Lcpar					reduce	7
	Lfunc					reduce	7
	Ldiv					reduce	7

State 5
	expr -> operations . 

	Lprint					reduce	8
	Lmul					reduce	8
	Lid					reduce	8
	Lleft					reduce	8
	Lright					reduce	8
	Lxor					reduce	8
	Ldpoint					reduce	8
	Lieq					reduce	8
	Lplus					reduce	8
	Leof					reduce	8
	Lelse					reduce	8
	Lmin					reduce	8
	Lneq					reduce	8
	Lsc					reduce	8
	Lsup					reduce	8
	Lseq					reduce	8
	Lmod					reduce	8
	Lwhile					reduce	8
	Lcomma					reduce	8
	Linf					reduce	8
	Lnum					reduce	8
	Lif					reduce	8
	Lquote					reduce	8
	Lfor					reduce	8
	Lor					reduce	8
	Leqeq					reduce	8
	Land					reduce	8
	Lcpar					reduce	8
	Lfunc					reduce	8
	Ldiv					reduce	8

State 6
	prog -> declaration . prog 
	prog -> declaration . 

	Lwhile					shift	17
	Leof					reduce	5
	Lnum					shift	12
	Lid					shift	13
	Lprint					shift	11
	operations					goto	5
	Lfor					shift	15
	prog					goto	36
	callFunc					goto	9
	print					goto	10
	boucle					goto	8
	val					goto	4
	declaration					goto	6
	test					goto	7
	Lif					shift	16
	expr					goto	3
	Lfunc					shift	14

State 7
	expr -> test . 

	Lprint					reduce	9
	Lmul					reduce	9
	Lid					reduce	9
	Lleft					reduce	9
	Lright					reduce	9
	Lxor					reduce	9
	Ldpoint					reduce	9
	Lieq					reduce	9
	Lplus					reduce	9
	Leof					reduce	9
	Lelse					reduce	9
	Lmin					reduce	9
	Lneq					reduce	9
	Lsc					reduce	9
	Lsup					reduce	9
	Lseq					reduce	9
	Lmod					reduce	9
	Lwhile					reduce	9
	Lcomma					reduce	9
	Linf					reduce	9
	Lnum					reduce	9
	Lif					reduce	9
	Lquote					reduce	9
	Lfor					reduce	9
	Lor					reduce	9
	Leqeq					reduce	9
	Land					reduce	9
	Lcpar					reduce	9
	Lfunc					reduce	9
	Ldiv					reduce	9

State 8
	expr -> boucle . 

	Lprint					reduce	10
	Lmul					reduce	10
	Lid					reduce	10
	Lleft					reduce	10
	Lright					reduce	10
	Lxor					reduce	10
	Ldpoint					reduce	10
	Lieq					reduce	10
	Lplus					reduce	10
	Leof					reduce	10
	Lelse					reduce	10
	Lmin					reduce	10
	Lneq					reduce	10
	Lsc					reduce	10
	Lsup					reduce	10
	Lseq					reduce	10
	Lmod					reduce	10
	Lwhile					reduce	10
	Lcomma					reduce	10
	Linf					reduce	10
	Lnum					reduce	10
	Lif					reduce	10
	Lquote					reduce	10
	Lfor					reduce	10
	Lor					reduce	10
	Leqeq					reduce	10
	Land					reduce	10
	Lcpar					reduce	10
	Lfunc					reduce	10
	Ldiv					reduce	10

State 9
	prog -> callFunc . 

	Leof					reduce	6

State 10
	expr -> print . 

	Lprint					reduce	11
	Lmul					reduce	11
	Lid					reduce	11
	Lleft					reduce	11
	Lright					reduce	11
	Lxor					reduce	11
	Ldpoint					reduce	11
	Lieq					reduce	11
	Lplus					reduce	11
	Leof					reduce	11
	Lelse					reduce	11
	Lmin					reduce	11
	Lneq					reduce	11
	Lsc					reduce	11
	Lsup					reduce	11
	Lseq					reduce	11
	Lmod					reduce	11
	Lwhile					reduce	11
	Lcomma					reduce	11
	Linf					reduce	11
	Lnum					reduce	11
	Lif					reduce	11
	Lquote					reduce	11
	Lfor					reduce	11
	Lor					reduce	11
	Leqeq					reduce	11
	Land					reduce	11
	Lcpar					reduce	11
	Lfunc					reduce	11
	Ldiv					reduce	11

State 11
	print -> Lprint . Lopar expr Lcpar 
	print -> Lprint . Lopar Lquote expr Lquote Lcpar 

	Lopar					shift	37

State 12
	val -> Lnum . 

	Lprint					reduce	12
	Lmul					reduce	12
	Lid					reduce	12
	Lleft					reduce	12
	Lright					reduce	12
	Lxor					reduce	12
	Ldpoint					reduce	12
	Lieq					reduce	12
	Lplus					reduce	12
	Leof					reduce	12
	Lelse					reduce	12
	Lmin					reduce	12
	Lneq					reduce	12
	Lsc					reduce	12
	Lsup					reduce	12
	Lseq					reduce	12
	Lmod					reduce	12
	Lwhile					reduce	12
	Lcomma					reduce	12
	Linf					reduce	12
	Lnum					reduce	12
	Lif					reduce	12
	Lquote					reduce	12
	Lfor					reduce	12
	Lor					reduce	12
	Leqeq					reduce	12
	Land					reduce	12
	Lcpar					reduce	12
	Lfunc					reduce	12
	Ldiv					reduce	12

State 13
	val -> Lid . 
	declaration -> Lid . Leq expr Lsc 
	callFunc -> Lid . Lopar Lcpar 

	Lprint					reduce	13
	Lleft					reduce	13
	Lright					reduce	13
	Lxor					reduce	13
	Lid					reduce	13
	Lieq					reduce	13
	Lplus					reduce	13
	Leof					reduce	13
	Leq					shift	38
	Lmin					reduce	13
	Lneq					reduce	13
	Ldiv					reduce	13
	Lsup					reduce	13
	Lseq					reduce	13
	Lmod					reduce	13
	Lwhile					reduce	13
	Linf					reduce	13
	Lnum					reduce	13
	Lif					reduce	13
	Lfor					reduce	13
	Lor					reduce	13
	Leqeq					reduce	13
	Land					reduce	13
	Lopar					shift	39
	Lfunc					reduce	13
	Lmul					reduce	13

State 14
	declaration -> Lfunc . Lid Lopar Lcpar Ldpoint 

	Lid					shift	40

State 15
	boucle -> Lfor . Lid Lin Lrange Lopar expr Lcomma expr Lcpar Ldpoint expr 

	Lid					shift	41

State 16
	test -> Lif . expr Ldpoint expr Lelse Ldpoint expr 

	print					goto	10
	boucle					goto	8
	val					goto	4
	Lfor					shift	15
	test					goto	7
	Lnum					shift	12
	Lwhile					shift	17
	Lprint					shift	11
	operations					goto	5
	Lif					shift	16
	expr					goto	42
	Lid					shift	43

State 17
	boucle -> Lwhile . expr Ldpoint expr 

	print					goto	10
	boucle					goto	8
	val					goto	4
	Lfor					shift	15
	test					goto	7
	Lnum					shift	12
	Lwhile					shift	17
	Lprint					shift	11
	operations					goto	5
	Lif					shift	16
	expr					goto	44
	Lid					shift	43

State 18
	parser1876 -> prog Leof . 


State 19
	prog -> expr prog . 

	Leof					reduce	3

State 20
	operations -> expr Lplus . expr 

	print					goto	10
	boucle					goto	8
	val					goto	4
	Lfor					shift	15
	test					goto	7
	Lnum					shift	12
	Lwhile					shift	17
	Lprint					shift	11
	operations					goto	5
	Lif					shift	16
	expr					goto	45
	Lid					shift	43

State 21
	operations -> expr Lmin . expr 

	print					goto	10
	boucle					goto	8
	val					goto	4
	Lfor					shift	15
	test					goto	7
	Lnum					shift	12
	Lwhile					shift	17
	Lprint					shift	11
	operations					goto	5
	Lif					shift	16
	expr					goto	46
	Lid					shift	43

State 22
	operations -> expr Lmul . expr 

	print					goto	10
	boucle					goto	8
	val					goto	4
	Lfor					shift	15
	test					goto	7
	Lnum					shift	12
	Lwhile					shift	17
	Lprint					shift	11
	operations					goto	5
	Lif					shift	16
	expr					goto	47
	Lid					shift	43

State 23
	operations -> expr Ldiv . expr 

	print					goto	10
	boucle					goto	8
	val					goto	4
	Lfor					shift	15
	test					goto	7
	Lnum					shift	12
	Lwhile					shift	17
	Lprint					shift	11
	operations					goto	5
	Lif					shift	16
	expr					goto	48
	Lid					shift	43

State 24
	operations -> expr Lsup . expr 

	print					goto	10
	boucle					goto	8
	val					goto	4
	Lfor					shift	15
	test					goto	7
	Lnum					shift	12
	Lwhile					shift	17
	Lprint					shift	11
	operations					goto	5
	Lif					shift	16
	expr					goto	49
	Lid					shift	43

State 25
	operations -> expr Linf . expr 

	print					goto	10
	boucle					goto	8
	val					goto	4
	Lfor					shift	15
	test					goto	7
	Lnum					shift	12
	Lwhile					shift	17
	Lprint					shift	11
	operations					goto	5
	Lif					shift	16
	expr					goto	50
	Lid					shift	43

State 26
	operations -> expr Lseq . expr 

	print					goto	10
	boucle					goto	8
	val					goto	4
	Lfor					shift	15
	test					goto	7
	Lnum					shift	12
	Lwhile					shift	17
	Lprint					shift	11
	operations					goto	5
	Lif					shift	16
	expr					goto	51
	Lid					shift	43

State 27
	operations -> expr Lieq . expr 

	print					goto	10
	boucle					goto	8
	val					goto	4
	Lfor					shift	15
	test					goto	7
	Lnum					shift	12
	Lwhile					shift	17
	Lprint					shift	11
	operations					goto	5
	Lif					shift	16
	expr					goto	52
	Lid					shift	43

State 28
	operations -> expr Leqeq . expr 

	print					goto	10
	boucle					goto	8
	val					goto	4
	Lfor					shift	15
	test					goto	7
	Lnum					shift	12
	Lwhile					shift	17
	Lprint					shift	11
	operations					goto	5
	Lif					shift	16
	expr					goto	53
	Lid					shift	43

State 29
	operations -> expr Lneq . expr 

	print					goto	10
	boucle					goto	8
	val					goto	4
	Lfor					shift	15
	test					goto	7
	Lnum					shift	12
	Lwhile					shift	17
	Lprint					shift	11
	operations					goto	5
	Lif					shift	16
	expr					goto	54
	Lid					shift	43

State 30
	operations -> expr Lmod . expr 

	print					goto	10
	boucle					goto	8
	val					goto	4
	Lfor					shift	15
	test					goto	7
	Lnum					shift	12
	Lwhile					shift	17
	Lprint					shift	11
	operations					goto	5
	Lif					shift	16
	expr					goto	55
	Lid					shift	43

State 31
	operations -> expr Land . expr 

	print					goto	10
	boucle					goto	8
	val					goto	4
	Lfor					shift	15
	test					goto	7
	Lnum					shift	12
	Lwhile					shift	17
	Lprint					shift	11
	operations					goto	5
	Lif					shift	16
	expr					goto	56
	Lid					shift	43

State 32
	operations -> expr Lor . expr 

	print					goto	10
	boucle					goto	8
	val					goto	4
	Lfor					shift	15
	test					goto	7
	Lnum					shift	12
	Lwhile					shift	17
	Lprint					shift	11
	operations					goto	5
	Lif					shift	16
	expr					goto	57
	Lid					shift	43

State 33
	operations -> expr Lxor . expr 

	print					goto	10
	boucle					goto	8
	val					goto	4
	Lfor					shift	15
	test					goto	7
	Lnum					shift	12
	Lwhile					shift	17
	Lprint					shift	11
	operations					goto	5
	Lif					shift	16
	expr					goto	58
	Lid					shift	43

State 34
	operations -> expr Lleft . expr 

	print					goto	10
	boucle					goto	8
	val					goto	4
	Lfor					shift	15
	test					goto	7
	Lnum					shift	12
	Lwhile					shift	17
	Lprint					shift	11
	operations					goto	5
	Lif					shift	16
	expr					goto	59
	Lid					shift	43

State 35
	operations -> expr Lright . expr 

	print					goto	10
	boucle					goto	8
	val					goto	4
	Lfor					shift	15
	test					goto	7
	Lnum					shift	12
	Lwhile					shift	17
	Lprint					shift	11
	operations					goto	5
	Lif					shift	16
	expr					goto	60
	Lid					shift	43

State 36
	prog -> declaration prog . 

	Leof					reduce	4

State 37
	print -> Lprint Lopar . expr Lcpar 
	print -> Lprint Lopar . Lquote expr Lquote Lcpar 

	Lwhile					shift	17
	Lnum					shift	12
	Lif					shift	16
	Lquote					shift	62
	Lprint					shift	11
	operations					goto	5
	Lfor					shift	15
	Lid					shift	43
	print					goto	10
	boucle					goto	8
	val					goto	4
	test					goto	7
	expr					goto	61

State 38
	declaration -> Lid Leq . expr Lsc 

	print					goto	10
	boucle					goto	8
	val					goto	4
	Lfor					shift	15
	test					goto	7
	Lnum					shift	12
	Lwhile					shift	17
	Lprint					shift	11
	operations					goto	5
	Lif					shift	16
	expr					goto	63
	Lid					shift	43

State 39
	callFunc -> Lid Lopar . Lcpar 

	Lcpar					shift	64

State 40
	declaration -> Lfunc Lid . Lopar Lcpar Ldpoint 

	Lopar					shift	65

State 41
	boucle -> Lfor Lid . Lin Lrange Lopar expr Lcomma expr Lcpar Ldpoint expr 

	Lin					shift	66

State 42
	operations -> expr . Lplus expr 
	operations -> expr . Lmin expr 
	operations -> expr . Lmul expr 
	operations -> expr . Ldiv expr 
	operations -> expr . Lsup expr 
	operations -> expr . Linf expr 
	operations -> expr . Lseq expr 
	operations -> expr . Lieq expr 
	operations -> expr . Leqeq expr 
	operations -> expr . Lneq expr 
	operations -> expr . Lmod expr 
	operations -> expr . Land expr 
	operations -> expr . Lor expr 
	operations -> expr . Lxor expr 
	operations -> expr . Lleft expr 
	operations -> expr . Lright expr 
	test -> Lif expr . Ldpoint expr Lelse Ldpoint expr 

	Lmod					shift	30
	Lsup					shift	24
	Linf					shift	25
	Lright					shift	35
	Lxor					shift	33
	Ldpoint					shift	67
	Lieq					shift	27
	Lplus					shift	20
	Lleft					shift	34
	Leqeq					shift	28
	Land					shift	31
	Lor					shift	32
	Lmin					shift	21
	Lneq					shift	29
	Ldiv					shift	23
	Lmul					shift	22
	Lseq					shift	26

State 43
	val -> Lid . 

	Lprint					reduce	13
	Lmul					reduce	13
	Lid					reduce	13
	Lleft					reduce	13
	Lright					reduce	13
	Lxor					reduce	13
	Ldpoint					reduce	13
	Lieq					reduce	13
	Lplus					reduce	13
	Leof					reduce	13
	Lelse					reduce	13
	Lmin					reduce	13
	Lneq					reduce	13
	Lsc					reduce	13
	Lsup					reduce	13
	Lseq					reduce	13
	Lmod					reduce	13
	Lwhile					reduce	13
	Lcomma					reduce	13
	Linf					reduce	13
	Lnum					reduce	13
	Lif					reduce	13
	Lquote					reduce	13
	Lfor					reduce	13
	Lor					reduce	13
	Leqeq					reduce	13
	Land					reduce	13
	Lcpar					reduce	13
	Lfunc					reduce	13
	Ldiv					reduce	13

State 44
	operations -> expr . Lplus expr 
	operations -> expr . Lmin expr 
	operations -> expr . Lmul expr 
	operations -> expr . Ldiv expr 
	operations -> expr . Lsup expr 
	operations -> expr . Linf expr 
	operations -> expr . Lseq expr 
	operations -> expr . Lieq expr 
	operations -> expr . Leqeq expr 
	operations -> expr . Lneq expr 
	operations -> expr . Lmod expr 
	operations -> expr . Land expr 
	operations -> expr . Lor expr 
	operations -> expr . Lxor expr 
	operations -> expr . Lleft expr 
	operations -> expr . Lright expr 
	boucle -> Lwhile expr . Ldpoint expr 

	Lmod					shift	30
	Lsup					shift	24
	Linf					shift	25
	Lright					shift	35
	Lxor					shift	33
	Ldpoint					shift	68
	Lieq					shift	27
	Lplus					shift	20
	Lleft					shift	34
	Leqeq					shift	28
	Land					shift	31
	Lor					shift	32
	Lmin					shift	21
	Lneq					shift	29
	Ldiv					shift	23
	Lmul					shift	22
	Lseq					shift	26

State 45
	operations -> expr . Lplus expr 
	operations -> expr Lplus expr . 
	operations -> expr . Lmin expr 
	operations -> expr . Lmul expr 
	operations -> expr . Ldiv expr 
	operations -> expr . Lsup expr 
	operations -> expr . Linf expr 
	operations -> expr . Lseq expr 
	operations -> expr . Lieq expr 
	operations -> expr . Leqeq expr 
	operations -> expr . Lneq expr 
	operations -> expr . Lmod expr 
	operations -> expr . Land expr 
	operations -> expr . Lor expr 
	operations -> expr . Lxor expr 
	operations -> expr . Lleft expr 
	operations -> expr . Lright expr 

	Lprint					reduce	14
	Lmul					shift	22
	Lid					reduce	14
	Lleft					shift	34
	Lright					shift	35
	Lxor					shift	33
	Ldpoint					reduce	14
	Lieq					shift	27
	Lplus					reduce	14
	Leof					reduce	14
	Lelse					reduce	14
	Lmin					shift	21
	Lneq					shift	29
	Lsc					reduce	14
	Lsup					shift	24
	Lseq					shift	26
	Lmod					shift	30
	Lwhile					reduce	14
	Lcomma					reduce	14
	Linf					shift	25
	Lnum					reduce	14
	Lif					reduce	14
	Lquote					reduce	14
	Lfor					reduce	14
	Lor					shift	32
	Leqeq					shift	28
	Land					shift	31
	Lcpar					reduce	14
	Lfunc					reduce	14
	Ldiv					shift	23

State 46
	operations -> expr . Lplus expr 
	operations -> expr . Lmin expr 
	operations -> expr Lmin expr . 
	operations -> expr . Lmul expr 
	operations -> expr . Ldiv expr 
	operations -> expr . Lsup expr 
	operations -> expr . Linf expr 
	operations -> expr . Lseq expr 
	operations -> expr . Lieq expr 
	operations -> expr . Leqeq expr 
	operations -> expr . Lneq expr 
	operations -> expr . Lmod expr 
	operations -> expr . Land expr 
	operations -> expr . Lor expr 
	operations -> expr . Lxor expr 
	operations -> expr . Lleft expr 
	operations -> expr . Lright expr 

	Lprint					reduce	15
	Lmul					shift	22
	Lid					reduce	15
	Lleft					shift	34
	Lright					shift	35
	Lxor					shift	33
	Ldpoint					reduce	15
	Lieq					shift	27
	Lplus					reduce	15
	Leof					reduce	15
	Lelse					reduce	15
	Lmin					reduce	15
	Lneq					shift	29
	Lsc					reduce	15
	Lsup					shift	24
	Lseq					shift	26
	Lmod					shift	30
	Lwhile					reduce	15
	Lcomma					reduce	15
	Linf					shift	25
	Lnum					reduce	15
	Lif					reduce	15
	Lquote					reduce	15
	Lfor					reduce	15
	Lor					shift	32
	Leqeq					shift	28
	Land					shift	31
	Lcpar					reduce	15
	Lfunc					reduce	15
	Ldiv					shift	23

State 47
	operations -> expr . Lplus expr 
	operations -> expr . Lmin expr 
	operations -> expr . Lmul expr 
	operations -> expr Lmul expr . 
	operations -> expr . Ldiv expr 
	operations -> expr . Lsup expr 
	operations -> expr . Linf expr 
	operations -> expr . Lseq expr 
	operations -> expr . Lieq expr 
	operations -> expr . Leqeq expr 
	operations -> expr . Lneq expr 
	operations -> expr . Lmod expr 
	operations -> expr . Land expr 
	operations -> expr . Lor expr 
	operations -> expr . Lxor expr 
	operations -> expr . Lleft expr 
	operations -> expr . Lright expr 

	Lprint					reduce	16
	Lmul					reduce	16
	Lid					reduce	16
	Lleft					shift	34
	Lright					shift	35
	Lxor					shift	33
	Ldpoint					reduce	16
	Lieq					shift	27
	Lplus					reduce	16
	Leof					reduce	16
	Lelse					reduce	16
	Lmin					reduce	16
	Lneq					shift	29
	Lsc					reduce	16
	Lsup					shift	24
	Lseq					shift	26
	Lmod					shift	30
	Lwhile					reduce	16
	Lcomma					reduce	16
	Linf					shift	25
	Lnum					reduce	16
	Lif					reduce	16
	Lquote					reduce	16
	Lfor					reduce	16
	Lor					shift	32
	Leqeq					shift	28
	Land					shift	31
	Lcpar					reduce	16
	Lfunc					reduce	16
	Ldiv					shift	23

State 48
	operations -> expr . Lplus expr 
	operations -> expr . Lmin expr 
	operations -> expr . Lmul expr 
	operations -> expr . Ldiv expr 
	operations -> expr Ldiv expr . 
	operations -> expr . Lsup expr 
	operations -> expr . Linf expr 
	operations -> expr . Lseq expr 
	operations -> expr . Lieq expr 
	operations -> expr . Leqeq expr 
	operations -> expr . Lneq expr 
	operations -> expr . Lmod expr 
	operations -> expr . Land expr 
	operations -> expr . Lor expr 
	operations -> expr . Lxor expr 
	operations -> expr . Lleft expr 
	operations -> expr . Lright expr 

	Lprint					reduce	17
	Lmul					reduce	17
	Lid					reduce	17
	Lleft					shift	34
	Lright					shift	35
	Lxor					shift	33
	Ldpoint					reduce	17
	Lieq					shift	27
	Lplus					reduce	17
	Leof					reduce	17
	Lelse					reduce	17
	Lmin					reduce	17
	Lneq					shift	29
	Lsc					reduce	17
	Lsup					shift	24
	Lseq					shift	26
	Lmod					shift	30
	Lwhile					reduce	17
	Lcomma					reduce	17
	Linf					shift	25
	Lnum					reduce	17
	Lif					reduce	17
	Lquote					reduce	17
	Lfor					reduce	17
	Lor					shift	32
	Leqeq					shift	28
	Land					shift	31
	Lcpar					reduce	17
	Lfunc					reduce	17
	Ldiv					reduce	17

State 49
	operations -> expr . Lplus expr 
	operations -> expr . Lmin expr 
	operations -> expr . Lmul expr 
	operations -> expr . Ldiv expr 
	operations -> expr . Lsup expr 
	operations -> expr Lsup expr . 
	operations -> expr . Linf expr 
	operations -> expr . Lseq expr 
	operations -> expr . Lieq expr 
	operations -> expr . Leqeq expr 
	operations -> expr . Lneq expr 
	operations -> expr . Lmod expr 
	operations -> expr . Land expr 
	operations -> expr . Lor expr 
	operations -> expr . Lxor expr 
	operations -> expr . Lleft expr 
	operations -> expr . Lright expr 

	Lprint					reduce	18
	Lmul					reduce	18
	Lid					reduce	18
	Lleft					shift	34
	Lright					shift	35
	Lxor					shift	33
	Ldpoint					reduce	18
	Lieq					shift	27
	Lplus					reduce	18
	Leof					reduce	18
	Lelse					reduce	18
	Lmin					reduce	18
	Lneq					shift	29
	Lsc					reduce	18
	Lsup					reduce	18
	Lseq					shift	26
	Lmod					shift	30
	Lwhile					reduce	18
	Lcomma					reduce	18
	Linf					shift	25
	Lnum					reduce	18
	Lif					reduce	18
	Lquote					reduce	18
	Lfor					reduce	18
	Lor					shift	32
	Leqeq					shift	28
	Land					shift	31
	Lcpar					reduce	18
	Lfunc					reduce	18
	Ldiv					reduce	18

State 50
	operations -> expr . Lplus expr 
	operations -> expr . Lmin expr 
	operations -> expr . Lmul expr 
	operations -> expr . Ldiv expr 
	operations -> expr . Lsup expr 
	operations -> expr . Linf expr 
	operations -> expr Linf expr . 
	operations -> expr . Lseq expr 
	operations -> expr . Lieq expr 
	operations -> expr . Leqeq expr 
	operations -> expr . Lneq expr 
	operations -> expr . Lmod expr 
	operations -> expr . Land expr 
	operations -> expr . Lor expr 
	operations -> expr . Lxor expr 
	operations -> expr . Lleft expr 
	operations -> expr . Lright expr 

	Lprint					reduce	19
	Lmul					reduce	19
	Lid					reduce	19
	Lleft					shift	34
	Lright					shift	35
	Lxor					shift	33
	Ldpoint					reduce	19
	Lieq					shift	27
	Lplus					reduce	19
	Leof					reduce	19
	Lelse					reduce	19
	Lmin					reduce	19
	Lneq					shift	29
	Lsc					reduce	19
	Lsup					reduce	19
	Lseq					shift	26
	Lmod					shift	30
	Lwhile					reduce	19
	Lcomma					reduce	19
	Linf					reduce	19
	Lnum					reduce	19
	Lif					reduce	19
	Lquote					reduce	19
	Lfor					reduce	19
	Lor					shift	32
	Leqeq					shift	28
	Land					shift	31
	Lcpar					reduce	19
	Lfunc					reduce	19
	Ldiv					reduce	19

State 51
	operations -> expr . Lplus expr 
	operations -> expr . Lmin expr 
	operations -> expr . Lmul expr 
	operations -> expr . Ldiv expr 
	operations -> expr . Lsup expr 
	operations -> expr . Linf expr 
	operations -> expr . Lseq expr 
	operations -> expr Lseq expr . 
	operations -> expr . Lieq expr 
	operations -> expr . Leqeq expr 
	operations -> expr . Lneq expr 
	operations -> expr . Lmod expr 
	operations -> expr . Land expr 
	operations -> expr . Lor expr 
	operations -> expr . Lxor expr 
	operations -> expr . Lleft expr 
	operations -> expr . Lright expr 

	Lprint					reduce	20
	Lmul					reduce	20
	Lid					reduce	20
	Lleft					shift	34
	Lright					shift	35
	Lxor					shift	33
	Ldpoint					reduce	20
	Lieq					shift	27
	Lplus					reduce	20
	Leof					reduce	20
	Lelse					reduce	20
	Lmin					reduce	20
	Lneq					shift	29
	Lsc					reduce	20
	Lsup					reduce	20
	Lseq					reduce	20
	Lmod					shift	30
	Lwhile					reduce	20
	Lcomma					reduce	20
	Linf					reduce	20
	Lnum					reduce	20
	Lif					reduce	20
	Lquote					reduce	20
	Lfor					reduce	20
	Lor					shift	32
	Leqeq					shift	28
	Land					shift	31
	Lcpar					reduce	20
	Lfunc					reduce	20
	Ldiv					reduce	20

State 52
	operations -> expr . Lplus expr 
	operations -> expr . Lmin expr 
	operations -> expr . Lmul expr 
	operations -> expr . Ldiv expr 
	operations -> expr . Lsup expr 
	operations -> expr . Linf expr 
	operations -> expr . Lseq expr 
	operations -> expr . Lieq expr 
	operations -> expr Lieq expr . 
	operations -> expr . Leqeq expr 
	operations -> expr . Lneq expr 
	operations -> expr . Lmod expr 
	operations -> expr . Land expr 
	operations -> expr . Lor expr 
	operations -> expr . Lxor expr 
	operations -> expr . Lleft expr 
	operations -> expr . Lright expr 

	Lprint					reduce	21
	Lmul					reduce	21
	Lid					reduce	21
	Lleft					shift	34
	Lright					shift	35
	Lxor					shift	33
	Ldpoint					reduce	21
	Lieq					reduce	21
	Lplus					reduce	21
	Leof					reduce	21
	Lelse					reduce	21
	Lmin					reduce	21
	Lneq					shift	29
	Lsc					reduce	21
	Lsup					reduce	21
	Lseq					reduce	21
	Lmod					shift	30
	Lwhile					reduce	21
	Lcomma					reduce	21
	Linf					reduce	21
	Lnum					reduce	21
	Lif					reduce	21
	Lquote					reduce	21
	Lfor					reduce	21
	Lor					shift	32
	Leqeq					shift	28
	Land					shift	31
	Lcpar					reduce	21
	Lfunc					reduce	21
	Ldiv					reduce	21

State 53
	operations -> expr . Lplus expr 
	operations -> expr . Lmin expr 
	operations -> expr . Lmul expr 
	operations -> expr . Ldiv expr 
	operations -> expr . Lsup expr 
	operations -> expr . Linf expr 
	operations -> expr . Lseq expr 
	operations -> expr . Lieq expr 
	operations -> expr . Leqeq expr 
	operations -> expr Leqeq expr . 
	operations -> expr . Lneq expr 
	operations -> expr . Lmod expr 
	operations -> expr . Land expr 
	operations -> expr . Lor expr 
	operations -> expr . Lxor expr 
	operations -> expr . Lleft expr 
	operations -> expr . Lright expr 

	Lprint					reduce	22
	Lmul					reduce	22
	Lid					reduce	22
	Lleft					shift	34
	Lright					shift	35
	Lxor					shift	33
	Ldpoint					reduce	22
	Lieq					reduce	22
	Lplus					reduce	22
	Leof					reduce	22
	Lelse					reduce	22
	Lmin					reduce	22
	Lneq					shift	29
	Lsc					reduce	22
	Lsup					reduce	22
	Lseq					reduce	22
	Lmod					shift	30
	Lwhile					reduce	22
	Lcomma					reduce	22
	Linf					reduce	22
	Lnum					reduce	22
	Lif					reduce	22
	Lquote					reduce	22
	Lfor					reduce	22
	Lor					shift	32
	Leqeq					reduce	22
	Land					shift	31
	Lcpar					reduce	22
	Lfunc					reduce	22
	Ldiv					reduce	22

State 54
	operations -> expr . Lplus expr 
	operations -> expr . Lmin expr 
	operations -> expr . Lmul expr 
	operations -> expr . Ldiv expr 
	operations -> expr . Lsup expr 
	operations -> expr . Linf expr 
	operations -> expr . Lseq expr 
	operations -> expr . Lieq expr 
	operations -> expr . Leqeq expr 
	operations -> expr . Lneq expr 
	operations -> expr Lneq expr . 
	operations -> expr . Lmod expr 
	operations -> expr . Land expr 
	operations -> expr . Lor expr 
	operations -> expr . Lxor expr 
	operations -> expr . Lleft expr 
	operations -> expr . Lright expr 

	Lprint					reduce	23
	Lmul					reduce	23
	Lid					reduce	23
	Lleft					shift	34
	Lright					shift	35
	Lxor					shift	33
	Ldpoint					reduce	23
	Lieq					reduce	23
	Lplus					reduce	23
	Leof					reduce	23
	Lelse					reduce	23
	Lmin					reduce	23
	Lneq					reduce	23
	Lsc					reduce	23
	Lsup					reduce	23
	Lseq					reduce	23
	Lmod					shift	30
	Lwhile					reduce	23
	Lcomma					reduce	23
	Linf					reduce	23
	Lnum					reduce	23
	Lif					reduce	23
	Lquote					reduce	23
	Lfor					reduce	23
	Lor					shift	32
	Leqeq					reduce	23
	Land					shift	31
	Lcpar					reduce	23
	Lfunc					reduce	23
	Ldiv					reduce	23

State 55
	operations -> expr . Lplus expr 
	operations -> expr . Lmin expr 
	operations -> expr . Lmul expr 
	operations -> expr . Ldiv expr 
	operations -> expr . Lsup expr 
	operations -> expr . Linf expr 
	operations -> expr . Lseq expr 
	operations -> expr . Lieq expr 
	operations -> expr . Leqeq expr 
	operations -> expr . Lneq expr 
	operations -> expr . Lmod expr 
	operations -> expr Lmod expr . 
	operations -> expr . Land expr 
	operations -> expr . Lor expr 
	operations -> expr . Lxor expr 
	operations -> expr . Lleft expr 
	operations -> expr . Lright expr 

	Lprint					reduce	24
	Lmul					reduce	24
	Lid					reduce	24
	Lleft					shift	34
	Lright					shift	35
	Lxor					shift	33
	Ldpoint					reduce	24
	Lieq					reduce	24
	Lplus					reduce	24
	Leof					reduce	24
	Lelse					reduce	24
	Lmin					reduce	24
	Lneq					reduce	24
	Lsc					reduce	24
	Lsup					reduce	24
	Lseq					reduce	24
	Lmod					reduce	24
	Lwhile					reduce	24
	Lcomma					reduce	24
	Linf					reduce	24
	Lnum					reduce	24
	Lif					reduce	24
	Lquote					reduce	24
	Lfor					reduce	24
	Lor					shift	32
	Leqeq					reduce	24
	Land					shift	31
	Lcpar					reduce	24
	Lfunc					reduce	24
	Ldiv					reduce	24

State 56
	operations -> expr . Lplus expr 
	operations -> expr . Lmin expr 
	operations -> expr . Lmul expr 
	operations -> expr . Ldiv expr 
	operations -> expr . Lsup expr 
	operations -> expr . Linf expr 
	operations -> expr . Lseq expr 
	operations -> expr . Lieq expr 
	operations -> expr . Leqeq expr 
	operations -> expr . Lneq expr 
	operations -> expr . Lmod expr 
	operations -> expr . Land expr 
	operations -> expr Land expr . 
	operations -> expr . Lor expr 
	operations -> expr . Lxor expr 
	operations -> expr . Lleft expr 
	operations -> expr . Lright expr 

	Lprint					reduce	25
	Lmul					reduce	25
	Lid					reduce	25
	Lleft					shift	34
	Lright					shift	35
	Lxor					shift	33
	Ldpoint					reduce	25
	Lieq					reduce	25
	Lplus					reduce	25
	Leof					reduce	25
	Lelse					reduce	25
	Lmin					reduce	25
	Lneq					reduce	25
	Lsc					reduce	25
	Lsup					reduce	25
	Lseq					reduce	25
	Lmod					reduce	25
	Lwhile					reduce	25
	Lcomma					reduce	25
	Linf					reduce	25
	Lnum					reduce	25
	Lif					reduce	25
	Lquote					reduce	25
	Lfor					reduce	25
	Lor					shift	32
	Leqeq					reduce	25
	Land					reduce	25
	Lcpar					reduce	25
	Lfunc					reduce	25
	Ldiv					reduce	25

State 57
	operations -> expr . Lplus expr 
	operations -> expr . Lmin expr 
	operations -> expr . Lmul expr 
	operations -> expr . Ldiv expr 
	operations -> expr . Lsup expr 
	operations -> expr . Linf expr 
	operations -> expr . Lseq expr 
	operations -> expr . Lieq expr 
	operations -> expr . Leqeq expr 
	operations -> expr . Lneq expr 
	operations -> expr . Lmod expr 
	operations -> expr . Land expr 
	operations -> expr . Lor expr 
	operations -> expr Lor expr . 
	operations -> expr . Lxor expr 
	operations -> expr . Lleft expr 
	operations -> expr . Lright expr 

	Lprint					reduce	26
	Lmul					reduce	26
	Lid					reduce	26
	Lleft					shift	34
	Lright					shift	35
	Lxor					shift	33
	Ldpoint					reduce	26
	Lieq					reduce	26
	Lplus					reduce	26
	Leof					reduce	26
	Lelse					reduce	26
	Lmin					reduce	26
	Lneq					reduce	26
	Lsc					reduce	26
	Lsup					reduce	26
	Lseq					reduce	26
	Lmod					reduce	26
	Lwhile					reduce	26
	Lcomma					reduce	26
	Linf					reduce	26
	Lnum					reduce	26
	Lif					reduce	26
	Lquote					reduce	26
	Lfor					reduce	26
	Lor					reduce	26
	Leqeq					reduce	26
	Land					reduce	26
	Lcpar					reduce	26
	Lfunc					reduce	26
	Ldiv					reduce	26

State 58
	operations -> expr . Lplus expr 
	operations -> expr . Lmin expr 
	operations -> expr . Lmul expr 
	operations -> expr . Ldiv expr 
	operations -> expr . Lsup expr 
	operations -> expr . Linf expr 
	operations -> expr . Lseq expr 
	operations -> expr . Lieq expr 
	operations -> expr . Leqeq expr 
	operations -> expr . Lneq expr 
	operations -> expr . Lmod expr 
	operations -> expr . Land expr 
	operations -> expr . Lor expr 
	operations -> expr . Lxor expr 
	operations -> expr Lxor expr . 
	operations -> expr . Lleft expr 
	operations -> expr . Lright expr 

	Lprint					reduce	27
	Lmul					reduce	27
	Lid					reduce	27
	Lleft					shift	34
	Lright					shift	35
	Lxor					reduce	27
	Ldpoint					reduce	27
	Lieq					reduce	27
	Lplus					reduce	27
	Leof					reduce	27
	Lelse					reduce	27
	Lmin					reduce	27
	Lneq					reduce	27
	Lsc					reduce	27
	Lsup					reduce	27
	Lseq					reduce	27
	Lmod					reduce	27
	Lwhile					reduce	27
	Lcomma					reduce	27
	Linf					reduce	27
	Lnum					reduce	27
	Lif					reduce	27
	Lquote					reduce	27
	Lfor					reduce	27
	Lor					reduce	27
	Leqeq					reduce	27
	Land					reduce	27
	Lcpar					reduce	27
	Lfunc					reduce	27
	Ldiv					reduce	27

State 59
	operations -> expr . Lplus expr 
	operations -> expr . Lmin expr 
	operations -> expr . Lmul expr 
	operations -> expr . Ldiv expr 
	operations -> expr . Lsup expr 
	operations -> expr . Linf expr 
	operations -> expr . Lseq expr 
	operations -> expr . Lieq expr 
	operations -> expr . Leqeq expr 
	operations -> expr . Lneq expr 
	operations -> expr . Lmod expr 
	operations -> expr . Land expr 
	operations -> expr . Lor expr 
	operations -> expr . Lxor expr 
	operations -> expr . Lleft expr 
	operations -> expr Lleft expr . 
	operations -> expr . Lright expr 

	Lprint					reduce	28
	Lmul					reduce	28
	Lid					reduce	28
	Lleft					reduce	28
	Lright					shift	35
	Lxor					reduce	28
	Ldpoint					reduce	28
	Lieq					reduce	28
	Lplus					reduce	28
	Leof					reduce	28
	Lelse					reduce	28
	Lmin					reduce	28
	Lneq					reduce	28
	Lsc					reduce	28
	Lsup					reduce	28
	Lseq					reduce	28
	Lmod					reduce	28
	Lwhile					reduce	28
	Lcomma					reduce	28
	Linf					reduce	28
	Lnum					reduce	28
	Lif					reduce	28
	Lquote					reduce	28
	Lfor					reduce	28
	Lor					reduce	28
	Leqeq					reduce	28
	Land					reduce	28
	Lcpar					reduce	28
	Lfunc					reduce	28
	Ldiv					reduce	28

State 60
	operations -> expr . Lplus expr 
	operations -> expr . Lmin expr 
	operations -> expr . Lmul expr 
	operations -> expr . Ldiv expr 
	operations -> expr . Lsup expr 
	operations -> expr . Linf expr 
	operations -> expr . Lseq expr 
	operations -> expr . Lieq expr 
	operations -> expr . Leqeq expr 
	operations -> expr . Lneq expr 
	operations -> expr . Lmod expr 
	operations -> expr . Land expr 
	operations -> expr . Lor expr 
	operations -> expr . Lxor expr 
	operations -> expr . Lleft expr 
	operations -> expr . Lright expr 
	operations -> expr Lright expr . 

	Lprint					reduce	29
	Lmul					reduce	29
	Lid					reduce	29
	Lleft					reduce	29
	Lright					reduce	29
	Lxor					reduce	29
	Ldpoint					reduce	29
	Lieq					reduce	29
	Lplus					reduce	29
	Leof					reduce	29
	Lelse					reduce	29
	Lmin					reduce	29
	Lneq					reduce	29
	Lsc					reduce	29
	Lsup					reduce	29
	Lseq					reduce	29
	Lmod					reduce	29
	Lwhile					reduce	29
	Lcomma					reduce	29
	Linf					reduce	29
	Lnum					reduce	29
	Lif					reduce	29
	Lquote					reduce	29
	Lfor					reduce	29
	Lor					reduce	29
	Leqeq					reduce	29
	Land					reduce	29
	Lcpar					reduce	29
	Lfunc					reduce	29
	Ldiv					reduce	29

State 61
	operations -> expr . Lplus expr 
	operations -> expr . Lmin expr 
	operations -> expr . Lmul expr 
	operations -> expr . Ldiv expr 
	operations -> expr . Lsup expr 
	operations -> expr . Linf expr 
	operations -> expr . Lseq expr 
	operations -> expr . Lieq expr 
	operations -> expr . Leqeq expr 
	operations -> expr . Lneq expr 
	operations -> expr . Lmod expr 
	operations -> expr . Land expr 
	operations -> expr . Lor expr 
	operations -> expr . Lxor expr 
	operations -> expr . Lleft expr 
	operations -> expr . Lright expr 
	print -> Lprint Lopar expr . Lcpar 

	Lmod					shift	30
	Lsup					shift	24
	Linf					shift	25
	Lright					shift	35
	Lxor					shift	33
	Lieq					shift	27
	Lplus					shift	20
	Lleft					shift	34
	Leqeq					shift	28
	Land					shift	31
	Lor					shift	32
	Lcpar					shift	69
	Lmin					shift	21
	Lneq					shift	29
	Ldiv					shift	23
	Lmul					shift	22
	Lseq					shift	26

State 62
	print -> Lprint Lopar Lquote . expr Lquote Lcpar 

	print					goto	10
	boucle					goto	8
	val					goto	4
	Lfor					shift	15
	test					goto	7
	Lnum					shift	12
	Lwhile					shift	17
	Lprint					shift	11
	operations					goto	5
	Lif					shift	16
	expr					goto	70
	Lid					shift	43

State 63
	operations -> expr . Lplus expr 
	operations -> expr . Lmin expr 
	operations -> expr . Lmul expr 
	operations -> expr . Ldiv expr 
	operations -> expr . Lsup expr 
	operations -> expr . Linf expr 
	operations -> expr . Lseq expr 
	operations -> expr . Lieq expr 
	operations -> expr . Leqeq expr 
	operations -> expr . Lneq expr 
	operations -> expr . Lmod expr 
	operations -> expr . Land expr 
	operations -> expr . Lor expr 
	operations -> expr . Lxor expr 
	operations -> expr . Lleft expr 
	operations -> expr . Lright expr 
	declaration -> Lid Leq expr . Lsc 

	Lmod					shift	30
	Lsup					shift	24
	Linf					shift	25
	Lright					shift	35
	Lxor					shift	33
	Lieq					shift	27
	Lplus					shift	20
	Lleft					shift	34
	Leqeq					shift	28
	Land					shift	31
	Lor					shift	32
	Lmin					shift	21
	Lneq					shift	29
	Lsc					shift	71
	Lmul					shift	22
	Lseq					shift	26
	Ldiv					shift	23

State 64
	callFunc -> Lid Lopar Lcpar . 

	Leof					reduce	35

State 65
	declaration -> Lfunc Lid Lopar . Lcpar Ldpoint 

	Lcpar					shift	72

State 66
	boucle -> Lfor Lid Lin . Lrange Lopar expr Lcomma expr Lcpar Ldpoint expr 

	Lrange					shift	73

State 67
	test -> Lif expr Ldpoint . expr Lelse Ldpoint expr 

	print					goto	10
	boucle					goto	8
	val					goto	4
	Lfor					shift	15
	test					goto	7
	Lnum					shift	12
	Lwhile					shift	17
	Lprint					shift	11
	operations					goto	5
	Lif					shift	16
	expr					goto	74
	Lid					shift	43

State 68
	boucle -> Lwhile expr Ldpoint . expr 

	print					goto	10
	boucle					goto	8
	val					goto	4
	Lfor					shift	15
	test					goto	7
	Lnum					shift	12
	Lwhile					shift	17
	Lprint					shift	11
	operations					goto	5
	Lif					shift	16
	expr					goto	75
	Lid					shift	43

State 69
	print -> Lprint Lopar expr Lcpar . 

	Lprint					reduce	36
	Lmul					reduce	36
	Lid					reduce	36
	Lleft					reduce	36
	Lright					reduce	36
	Lxor					reduce	36
	Ldpoint					reduce	36
	Lieq					reduce	36
	Lplus					reduce	36
	Leof					reduce	36
	Lelse					reduce	36
	Lmin					reduce	36
	Lneq					reduce	36
	Lsc					reduce	36
	Lsup					reduce	36
	Lseq					reduce	36
	Lmod					reduce	36
	Lwhile					reduce	36
	Lcomma					reduce	36
	Linf					reduce	36
	Lnum					reduce	36
	Lif					reduce	36
	Lquote					reduce	36
	Lfor					reduce	36
	Lor					reduce	36
	Leqeq					reduce	36
	Land					reduce	36
	Lcpar					reduce	36
	Lfunc					reduce	36
	Ldiv					reduce	36

State 70
	operations -> expr . Lplus expr 
	operations -> expr . Lmin expr 
	operations -> expr . Lmul expr 
	operations -> expr . Ldiv expr 
	operations -> expr . Lsup expr 
	operations -> expr . Linf expr 
	operations -> expr . Lseq expr 
	operations -> expr . Lieq expr 
	operations -> expr . Leqeq expr 
	operations -> expr . Lneq expr 
	operations -> expr . Lmod expr 
	operations -> expr . Land expr 
	operations -> expr . Lor expr 
	operations -> expr . Lxor expr 
	operations -> expr . Lleft expr 
	operations -> expr . Lright expr 
	print -> Lprint Lopar Lquote expr . Lquote Lcpar 

	Lmod					shift	30
	Lsup					shift	24
	Linf					shift	25
	Lright					shift	35
	Lquote					shift	76
	Lieq					shift	27
	Lplus					shift	20
	Lleft					shift	34
	Leqeq					shift	28
	Land					shift	31
	Lor					shift	32
	Lmin					shift	21
	Lneq					shift	29
	Ldiv					shift	23
	Lmul					shift	22
	Lseq					shift	26
	Lxor					shift	33

State 71
	declaration -> Lid Leq expr Lsc . 

	Lwhile					reduce	30
	Lprint					reduce	30
	Leof					reduce	30
	Lnum					reduce	30
	Lif					reduce	30
	Lfor					reduce	30
	Lfunc					reduce	30
	Lid					reduce	30

State 72
	declaration -> Lfunc Lid Lopar Lcpar . Ldpoint 

	Ldpoint					shift	77

State 73
	boucle -> Lfor Lid Lin Lrange . Lopar expr Lcomma expr Lcpar Ldpoint expr 

	Lopar					shift	78

State 74
	operations -> expr . Lplus expr 
	operations -> expr . Lmin expr 
	operations -> expr . Lmul expr 
	operations -> expr . Ldiv expr 
	operations -> expr . Lsup expr 
	operations -> expr . Linf expr 
	operations -> expr . Lseq expr 
	operations -> expr . Lieq expr 
	operations -> expr . Leqeq expr 
	operations -> expr . Lneq expr 
	operations -> expr . Lmod expr 
	operations -> expr . Land expr 
	operations -> expr . Lor expr 
	operations -> expr . Lxor expr 
	operations -> expr . Lleft expr 
	operations -> expr . Lright expr 
	test -> Lif expr Ldpoint expr . Lelse Ldpoint expr 

	Lmod					shift	30
	Lsup					shift	24
	Linf					shift	25
	Lright					shift	35
	Lxor					shift	33
	Lieq					shift	27
	Lplus					shift	20
	Lleft					shift	34
	Leqeq					shift	28
	Land					shift	31
	Lor					shift	32
	Lelse					shift	79
	Lmin					shift	21
	Lneq					shift	29
	Ldiv					shift	23
	Lmul					shift	22
	Lseq					shift	26

State 75
	operations -> expr . Lplus expr 
	operations -> expr . Lmin expr 
	operations -> expr . Lmul expr 
	operations -> expr . Ldiv expr 
	operations -> expr . Lsup expr 
	operations -> expr . Linf expr 
	operations -> expr . Lseq expr 
	operations -> expr . Lieq expr 
	operations -> expr . Leqeq expr 
	operations -> expr . Lneq expr 
	operations -> expr . Lmod expr 
	operations -> expr . Land expr 
	operations -> expr . Lor expr 
	operations -> expr . Lxor expr 
	operations -> expr . Lleft expr 
	operations -> expr . Lright expr 
	boucle -> Lwhile expr Ldpoint expr . 

	Lprint					reduce	33
begin conflict:
	Lmul					shift	22
	Lmul					reduce	33
end conflict
	Lid					reduce	33
begin conflict:
	Lleft					shift	34
	Lleft					reduce	33
end conflict
begin conflict:
	Lright					shift	35
	Lright					reduce	33
end conflict
begin conflict:
	Lxor					shift	33
	Lxor					reduce	33
end conflict
	Ldpoint					reduce	33
begin conflict:
	Lieq					shift	27
	Lieq					reduce	33
end conflict
begin conflict:
	Lplus					shift	20
	Lplus					reduce	33
end conflict
	Leof					reduce	33
	Lelse					reduce	33
begin conflict:
	Lmin					shift	21
	Lmin					reduce	33
end conflict
begin conflict:
	Lneq					shift	29
	Lneq					reduce	33
end conflict
	Lsc					reduce	33
begin conflict:
	Lsup					shift	24
	Lsup					reduce	33
end conflict
begin conflict:
	Lseq					shift	26
	Lseq					reduce	33
end conflict
begin conflict:
	Lmod					shift	30
	Lmod					reduce	33
end conflict
	Lwhile					reduce	33
	Lcomma					reduce	33
begin conflict:
	Linf					shift	25
	Linf					reduce	33
end conflict
	Lnum					reduce	33
	Lif					reduce	33
	Lquote					reduce	33
	Lfor					reduce	33
begin conflict:
	Lor					shift	32
	Lor					reduce	33
end conflict
begin conflict:
	Leqeq					shift	28
	Leqeq					reduce	33
end conflict
begin conflict:
	Land					shift	31
	Land					reduce	33
end conflict
	Lcpar					reduce	33
	Lfunc					reduce	33
begin conflict:
	Ldiv					shift	23
	Ldiv					reduce	33
end conflict

State 76
	print -> Lprint Lopar Lquote expr Lquote . Lcpar 

	Lcpar					shift	80

State 77
	declaration -> Lfunc Lid Lopar Lcpar Ldpoint . 

	Lwhile					reduce	31
	Lprint					reduce	31
	Leof					reduce	31
	Lnum					reduce	31
	Lif					reduce	31
	Lfor					reduce	31
	Lfunc					reduce	31
	Lid					reduce	31

State 78
	boucle -> Lfor Lid Lin Lrange Lopar . expr Lcomma expr Lcpar Ldpoint expr 

	print					goto	10
	boucle					goto	8
	val					goto	4
	Lfor					shift	15
	test					goto	7
	Lnum					shift	12
	Lwhile					shift	17
	Lprint					shift	11
	operations					goto	5
	Lif					shift	16
	expr					goto	81
	Lid					shift	43

State 79
	test -> Lif expr Ldpoint expr Lelse . Ldpoint expr 

	Ldpoint					shift	82

State 80
	print -> Lprint Lopar Lquote expr Lquote Lcpar . 

	Lprint					reduce	37
	Lmul					reduce	37
	Lid					reduce	37
	Lleft					reduce	37
	Lright					reduce	37
	Lxor					reduce	37
	Ldpoint					reduce	37
	Lieq					reduce	37
	Lplus					reduce	37
	Leof					reduce	37
	Lelse					reduce	37
	Lmin					reduce	37
	Lneq					reduce	37
	Lsc					reduce	37
	Lsup					reduce	37
	Lseq					reduce	37
	Lmod					reduce	37
	Lwhile					reduce	37
	Lcomma					reduce	37
	Linf					reduce	37
	Lnum					reduce	37
	Lif					reduce	37
	Lquote					reduce	37
	Lfor					reduce	37
	Lor					reduce	37
	Leqeq					reduce	37
	Land					reduce	37
	Lcpar					reduce	37
	Lfunc					reduce	37
	Ldiv					reduce	37

State 81
	operations -> expr . Lplus expr 
	operations -> expr . Lmin expr 
	operations -> expr . Lmul expr 
	operations -> expr . Ldiv expr 
	operations -> expr . Lsup expr 
	operations -> expr . Linf expr 
	operations -> expr . Lseq expr 
	operations -> expr . Lieq expr 
	operations -> expr . Leqeq expr 
	operations -> expr . Lneq expr 
	operations -> expr . Lmod expr 
	operations -> expr . Land expr 
	operations -> expr . Lor expr 
	operations -> expr . Lxor expr 
	operations -> expr . Lleft expr 
	operations -> expr . Lright expr 
	boucle -> Lfor Lid Lin Lrange Lopar expr . Lcomma expr Lcpar Ldpoint expr 

	Lmod					shift	30
	Lsup					shift	24
	Lcomma					shift	83
	Linf					shift	25
	Lright					shift	35
	Lxor					shift	33
	Lieq					shift	27
	Lplus					shift	20
	Lleft					shift	34
	Leqeq					shift	28
	Land					shift	31
	Lor					shift	32
	Lmin					shift	21
	Lneq					shift	29
	Ldiv					shift	23
	Lmul					shift	22
	Lseq					shift	26

State 82
	test -> Lif expr Ldpoint expr Lelse Ldpoint . expr 

	print					goto	10
	boucle					goto	8
	val					goto	4
	Lfor					shift	15
	test					goto	7
	Lnum					shift	12
	Lwhile					shift	17
	Lprint					shift	11
	operations					goto	5
	Lif					shift	16
	expr					goto	84
	Lid					shift	43

State 83
	boucle -> Lfor Lid Lin Lrange Lopar expr Lcomma . expr Lcpar Ldpoint expr 

	print					goto	10
	boucle					goto	8
	val					goto	4
	Lfor					shift	15
	test					goto	7
	Lnum					shift	12
	Lwhile					shift	17
	Lprint					shift	11
	operations					goto	5
	Lif					shift	16
	expr					goto	85
	Lid					shift	43

State 84
	operations -> expr . Lplus expr 
	operations -> expr . Lmin expr 
	operations -> expr . Lmul expr 
	operations -> expr . Ldiv expr 
	operations -> expr . Lsup expr 
	operations -> expr . Linf expr 
	operations -> expr . Lseq expr 
	operations -> expr . Lieq expr 
	operations -> expr . Leqeq expr 
	operations -> expr . Lneq expr 
	operations -> expr . Lmod expr 
	operations -> expr . Land expr 
	operations -> expr . Lor expr 
	operations -> expr . Lxor expr 
	operations -> expr . Lleft expr 
	operations -> expr . Lright expr 
	test -> Lif expr Ldpoint expr Lelse Ldpoint expr . 

	Lprint					reduce	32
begin conflict:
	Lmul					shift	22
	Lmul					reduce	32
end conflict
	Lid					reduce	32
begin conflict:
	Lleft					shift	34
	Lleft					reduce	32
end conflict
begin conflict:
	Lright					shift	35
	Lright					reduce	32
end conflict
begin conflict:
	Lxor					shift	33
	Lxor					reduce	32
end conflict
	Ldpoint					reduce	32
begin conflict:
	Lieq					shift	27
	Lieq					reduce	32
end conflict
begin conflict:
	Lplus					shift	20
	Lplus					reduce	32
end conflict
	Leof					reduce	32
	Lelse					reduce	32
begin conflict:
	Lmin					shift	21
	Lmin					reduce	32
end conflict
begin conflict:
	Lneq					shift	29
	Lneq					reduce	32
end conflict
	Lsc					reduce	32
begin conflict:
	Lsup					shift	24
	Lsup					reduce	32
end conflict
begin conflict:
	Lseq					shift	26
	Lseq					reduce	32
end conflict
begin conflict:
	Lmod					shift	30
	Lmod					reduce	32
end conflict
	Lwhile					reduce	32
	Lcomma					reduce	32
begin conflict:
	Linf					shift	25
	Linf					reduce	32
end conflict
	Lnum					reduce	32
	Lif					reduce	32
	Lquote					reduce	32
	Lfor					reduce	32
begin conflict:
	Lor					shift	32
	Lor					reduce	32
end conflict
begin conflict:
	Leqeq					shift	28
	Leqeq					reduce	32
end conflict
begin conflict:
	Land					shift	31
	Land					reduce	32
end conflict
	Lcpar					reduce	32
	Lfunc					reduce	32
begin conflict:
	Ldiv					shift	23
	Ldiv					reduce	32
end conflict

State 85
	operations -> expr . Lplus expr 
	operations -> expr . Lmin expr 
	operations -> expr . Lmul expr 
	operations -> expr . Ldiv expr 
	operations -> expr . Lsup expr 
	operations -> expr . Linf expr 
	operations -> expr . Lseq expr 
	operations -> expr . Lieq expr 
	operations -> expr . Leqeq expr 
	operations -> expr . Lneq expr 
	operations -> expr . Lmod expr 
	operations -> expr . Land expr 
	operations -> expr . Lor expr 
	operations -> expr . Lxor expr 
	operations -> expr . Lleft expr 
	operations -> expr . Lright expr 
	boucle -> Lfor Lid Lin Lrange Lopar expr Lcomma expr . Lcpar Ldpoint expr 

	Lmod					shift	30
	Lsup					shift	24
	Linf					shift	25
	Lright					shift	35
	Lxor					shift	33
	Lieq					shift	27
	Lplus					shift	20
	Lleft					shift	34
	Leqeq					shift	28
	Land					shift	31
	Lor					shift	32
	Lcpar					shift	86
	Lmin					shift	21
	Lneq					shift	29
	Ldiv					shift	23
	Lmul					shift	22
	Lseq					shift	26

State 86
	boucle -> Lfor Lid Lin Lrange Lopar expr Lcomma expr Lcpar . Ldpoint expr 

	Ldpoint					shift	87

State 87
	boucle -> Lfor Lid Lin Lrange Lopar expr Lcomma expr Lcpar Ldpoint . expr 

	print					goto	10
	boucle					goto	8
	val					goto	4
	Lfor					shift	15
	test					goto	7
	Lnum					shift	12
	Lwhile					shift	17
	Lprint					shift	11
	operations					goto	5
	Lif					shift	16
	expr					goto	88
	Lid					shift	43

State 88
	operations -> expr . Lplus expr 
	operations -> expr . Lmin expr 
	operations -> expr . Lmul expr 
	operations -> expr . Ldiv expr 
	operations -> expr . Lsup expr 
	operations -> expr . Linf expr 
	operations -> expr . Lseq expr 
	operations -> expr . Lieq expr 
	operations -> expr . Leqeq expr 
	operations -> expr . Lneq expr 
	operations -> expr . Lmod expr 
	operations -> expr . Land expr 
	operations -> expr . Lor expr 
	operations -> expr . Lxor expr 
	operations -> expr . Lleft expr 
	operations -> expr . Lright expr 
	boucle -> Lfor Lid Lin Lrange Lopar expr Lcomma expr Lcpar Ldpoint expr . 

	Lprint					reduce	34
begin conflict:
	Lmul					shift	22
	Lmul					reduce	34
end conflict
	Lid					reduce	34
begin conflict:
	Lleft					shift	34
	Lleft					reduce	34
end conflict
begin conflict:
	Lright					shift	35
	Lright					reduce	34
end conflict
begin conflict:
	Lxor					shift	33
	Lxor					reduce	34
end conflict
	Ldpoint					reduce	34
begin conflict:
	Lieq					shift	27
	Lieq					reduce	34
end conflict
begin conflict:
	Lplus					shift	20
	Lplus					reduce	34
end conflict
	Leof					reduce	34
	Lelse					reduce	34
begin conflict:
	Lmin					shift	21
	Lmin					reduce	34
end conflict
begin conflict:
	Lneq					shift	29
	Lneq					reduce	34
end conflict
	Lsc					reduce	34
begin conflict:
	Lsup					shift	24
	Lsup					reduce	34
end conflict
begin conflict:
	Lseq					shift	26
	Lseq					reduce	34
end conflict
begin conflict:
	Lmod					shift	30
	Lmod					reduce	34
end conflict
	Lwhile					reduce	34
	Lcomma					reduce	34
begin conflict:
	Linf					shift	25
	Linf					reduce	34
end conflict
	Lnum					reduce	34
	Lif					reduce	34
	Lquote					reduce	34
	Lfor					reduce	34
begin conflict:
	Lor					shift	32
	Lor					reduce	34
end conflict
begin conflict:
	Leqeq					shift	28
	Leqeq					reduce	34
end conflict
begin conflict:
	Land					shift	31
	Land					reduce	34
end conflict
	Lcpar					reduce	34
	Lfunc					reduce	34
begin conflict:
	Ldiv					shift	23
	Ldiv					reduce	34
end conflict

48 shift/reduce conflicts
