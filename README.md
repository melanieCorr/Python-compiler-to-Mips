# Projet: Compilateur Python vers MIPS en Racket

J'ai choisi d'interpréter le langage Python.
Mon compilateur peut donc compiler vers MIPS les instructions en Python suivante:
- Les opérations arithmétiques simples telles que: 10+5, 9*84, 8%2... mais aussi plus complexes telles que: 1548*956/51+6....
- Les operations logiques telles que : and, or, xor, <<, >>
- les opérations de comparaison telles que : ==, !=, <, >, <=, >=
- La déclaration de fonction
- Les boucles: Cependant le while ne fonctionne qu'en infini car il est impossible de récupérer une variable définie et le for fonctionne mais avec un simple for tel que : for i in range(0, 3)
- Les tests (if), cependant impossible d'utiliser une variable
- Les print integer (hors de boucle ou de tests)

Le compilateur reconnait aussi quand une variable n'a pas été défini 
ex: si on écrit "hello" cela va nous renvoyer l'erreur "NameError"
