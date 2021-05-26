(* Zad 1.1 *)
let sil n = 
    let rec sil_inner n acc = if n = 1 then acc else sil_inner (n-1) (acc*n) in
    sil_inner n 1;;

sil 10;;

(* Zad 1.3 *)
let suma start stop= 
    let rec suma_inner start stop acc  = if start > stop then acc else suma_inner (start+1) stop (acc + start) in
    suma_inner start stop 0;;

let zad_1_2 stop = suma 0 stop;;

zad_1_2 10;;


(* zad 1.6 *)
let iloczyn start stop oper = 
    let rec inner start stop oper acc  = if start > stop then acc else inner (start+1) stop oper (acc * (oper start)) in
    inner start stop oper 1;;

let zad_1_4 start stop = iloczyn start stop (fun x -> x*x);;
zad_1_4 1 5;;


let zad_1_5 start stop oper = 
    let rec inner start stop oper acc  = if start > stop then acc else inner (start+1) stop oper (acc + (oper start)) in
    inner start stop oper 0;;

zad_1_5 0 5 (fun x -> x*x);;


let zad_2_1 start stop = 
    let rec inner start stop acc = if start > stop then acc else inner (start) (stop-1) (stop::acc) in
    inner start stop [];;

zad_2_1 0 55;;

let zad_2_2 lista = 
    let rec inner lista acc = match lista with 
        [] -> acc |
        h::t -> inner t (acc+1) in
    inner lista 0;;

zad_2_2 [1;2;3;4;5;];;

let zad_2_3 lista =
    let rec inner lista acc = match lista with 
        [] -> acc |
        h::t -> inner t (acc + h) in
    inner lista 0;;

zad_2_3 [1;2;3;4;5;6;];;

let zad_2_4 lista oper = match lista with 
    [] -> failwith "Error" |
    h::t -> let rec inner l oper acc = match l with 
        [] -> acc |
        head::tail -> inner tail oper (oper acc head) in
        inner t oper h;;

zad_2_4 [1;23;3;4;5;6;7;] (fun  x y -> x+y);;

zad_2_4 (zad_2_1 0 1000000) (fun x y -> x+y);;

zad_2_4 ["ala "; "ma "; "kota"] (fun x y -> x ^ y);;

let fibb n = 
    let rec inner n pre1 pre2 i = if i = n then pre1 else inner n (pre1 + pre2) pre1 (i+1) in
    inner n 0 1 0;;

fibb 56;;

