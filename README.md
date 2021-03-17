# Definicje

## Nazwy
V - zmienna  
(EF) - aplikacja  
(λV.E) - abstrakcja  

## Nawiasy
(((E1E2)...)EN) -> E1E2...EN  
(λV.(E1E2...EN)) -> λV.E1E2...EN  
(λV.(...(λN.E))) -> λV. ... λN.E  

## Podstawienia
E[E'/V] -> W wyrażeniu E za V podstawiamy E'

## Redukcje
* Alfa redukcja λV.E -> λV'.E[V'/v]
* Beta redukcja (λV.E)F -> E[F/V]
* Eta redukcja λV.E V może zostać zredukowane do E pod warunkiem, że zmienna V nie jest zmienną wolną w termie E

## Ważne
* Prawo Leibnitz'a: Jeżeli E = F, to λV.E = λV.F
* Własność Churcha-Rossera - Kolejność redukcji nie ma wpływu na końcowy wynik

## Definicje
* LET true = λxy.x
* LET false = λx.y.y
* LET not = λz.z T F
* LET E -> G|H = EGH
* LET and = λxy.x->x|F
* LET or = λxy.x->T|y 
* LET 0 = λfx.x
* LET 1 = λfx.fx
* LET 2 = λfx.f(fx)
* LET n = λfx.f^n x
* LET suc = λnfx.nf(fx)
* LET add = λmnfx.mf(nfx)
* LET iszero = λn.n(λx.F)T
