(* Zad3 *)
let rec print_list_all lista print = match lista with
[] -> () |
h::t -> print h; print_char ' '; print_list_all t print;;

(* Zad 1 *)
let print_list_int lista = print_list_all lista print_int;;

(* Zad 2 *)
let print_list_float lista = print_list_all lista print_float;;

(* Zad 6 *)
let rec reduce lista operacja = match lista with
[] -> failwith "Error" |
[x] -> x |
h::t -> operacja h (reduce t operacja);;

(* Zad 4 *)
let suma_int lista = reduce lista (+) ;; 

(* Zad 5 *)
let suma_float lista = reduce lista (+.);;

(* Zad 7*)
let min_list_int lista = reduce lista min;;

(* Zad 8 *)
let max_list_int lista = reduce lista max;;

(* Zad 9 *)
let min_list_float lista = reduce lista min;;

(* Zad 10 *)
let max_list_float lista = reduce lista max;;

(* Zad12 *)
let rec map lista operacja = match lista with
[] -> [] |
h::t -> operacja h  :: (map t operacja);;

(* Zad 11 *)
let kwadraty lista =  map lista (fun x -> x*x);;

map ["abc"; "cda"; "eda"] String.length;;

