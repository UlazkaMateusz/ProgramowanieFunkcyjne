let rec zad1 lista = match lista with
[] -> 0 |
h::t -> 1 + zad1 t;;
(* 'a list -> int *)

let rec zad2 lista = match lista with 
[] -> 1 |
h::t -> h * zad2 t;;
(* int list -> int *)

let rec zad3 lista = match lista with  
[] -> [] |
h :: t -> (zad3 t) @ [h];;

zad3 [1; 2; 3;] ;;

let rec zad4 lista = match lista with 
[] -> [] |
h::t -> (h*h) :: zad4 t;;
(* int list -> int list *)

let rec zad5 lista operacja =  match lista with
[] -> [] |
h::t -> operacja h :: zad5 t operacja;;
(* 'a list -> ('a -> 'a) -> 'a list *)

zad5 [1;2;3;] (fun x -> x+5);;

let rec zad6 lista1 lista2 = match (lista1, lista2) with
[],[] -> 0 |
(h1::t1),(h2::t2) -> (h1*h2) + zad6 t1 t2;;
(* int list -> int list -> int *)

let rec zad7 lista = match lista with 
[] -> false |
h::t -> if h mod 2 = 0 then true else zad7 lista;;
(* int lista -> bool *)

let rec zad8 lista operacja = match lista with 
[] -> false |
h::t -> if operacja h then true else zad8 t operacja;;
(* 'a list -> ('a -> bool) -> bool *)

let rec zad9 lista = match lista with 
[] -> true |
h::t -> if h mod 2 = 1 then zad9 lista else false;;
(* int list -> bool *)

let rec zad10 lista operacja = match lista with
[] -> true |
h::t -> if operacja h then zad10 t operacja else false;;
(* 'a list -> ('a -> bool) -> bool *)
zad10 [2;4;6;8;] (fun x -> x mod 2 = 0);;
(* true *)
zad10 [2;4;6;8;1;] (fun x -> x mod 2 = 0);;
(* false *) 

let rec zad11 lista = match lista with
[] -> [] |
h::t -> if h > 0 then h :: zad11 t else zad11 t;;
(* int list -> int list *)

let rec zad12 lista operacja = match lista with
[] -> [] |
h::t -> if operacja h then h :: zad12 t operacja else zad12 t operacja;;
(* 'a list -> ('a -> bool) -> 'a list *)

let zad13 lista = match lista with 
[] -> None |
h::t -> Some h ;;
(* 'a list list -> 'a list *)


let zad14 lista = match lista with 
[] -> None |
h::t -> if t = [] then None else Some t ;;
(* 'a list list -> 'a list *)

let rec adder pocz kon lista = if pocz <= kon then pocz :: adder (pocz +1) kon lista else lista;; 
let zad15 pocz kon = adder pocz kon [];;
(* int -> int -> int list *)
zad15 3 7;;

let zad16 lista = lista;;
(* 'a -> 'a *)

let rec zad17 lista element = match lista with
[] -> false |
h::t -> if h = element then true else zad17 t element;;
(* 'a list -> 'a -> bool *)

let rec zad18 lista element = match lista with
  [] -> 0 |
  h::t -> (if h=el then 1 else 0) + zad18 t el;;

zad18 [1;2;3;4;5;5;5;] 5;;
(* 'a list -> 'a -> int *)

let rec zad19 len element = 
    if len = 0 
    then 
        element :: []
    else 
        element :: zad19 (len - 1) element;;
(* int -> 'a > 'a list *)

zad19 5 4;;
