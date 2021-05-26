let samogloski = ['a'; 'e'; 'i'; 'o'; 'y'];;

let litery = ['a'; 'b'; 'c'; 'd'; 'e'; 'f'; 'f'];;

let is_samo = (fun x -> List.mem x samogloski);;

let zad_1 vals = List.partition is_samo vals;;

zad_1 litery;;

let zad_2 vals = List.filter is_samo vals;;

zad_2 litery;;

let nums_f = [1.1; 2.3; 4.5;];;
let zad_3 vals = List.fold_left ( *. ) 1. vals;;

zad_3 nums_f;;


let nums_i = [1; 3; 4; 5; 6; 7; 1000; 1003; 2002;];;
let zad_4 vals = List.find (fun x -> x mod 2 = 0) vals;;

zad_4 nums_i;;

let words = ["o"; "five"; "two"];;
let str_compare word1 word2 = compare (String.length word1) (String.length word2) 
let zad_5 vals = List.sort str_compare vals;;
zad_5 words;;

let int_compare int1 int2 = compare (int1 mod 1000) (int2 mod 1000);;
let zad_6 vals = List.sort int_compare vals;;
zad_6 nums_i;;

let zad_7 vals = List.for_all is_samo vals;;
zad_7 litery;;

let zad_8 vals = List.map String.length vals;;
zad_8 words;;

let zad_9 vals = List.sort List.compare_lengths vals;;
zad_9 [[1; 2; 3;]; [1;]; [1;2;];];;
zad_9 [['a'; 'b'; 'b';]; ['c'];];;
zad_9 [["ala"; "ma"; "kota";]; ["ala"];  ["ala"; "ma";]];;


