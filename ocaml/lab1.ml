let f1_a (a: int) (b: int) = a*a + b*b;;
f1_a 1 1;;

let f1_b a b = a*a + b*b;;
f1_b 1 1;;

let f1_c = function a -> function b -> a*a + b*b;;
f1_c 1 1;;

let f1_d = fun a b -> a*a + b*b;; 
f1_d 1 1;;

let f2_a (a: int) (b: float) = float_of_int (a*a) +. b*.b;; 
f2_a 1 1.0;

let f2_b a b = float_of_int (a*a) +. b*.b;; 
f2_b 1 1.0;;

let f2_c = function a -> function b -> float_of_int (a*a) +. b*.b;; 
f2_c 1 1.0;;

let f2_d = fun a b -> float_of_int (a*a) +. b*.b;; 
f2_d 1 1.0;;

let f3_a ((a: float), (b: int), (c: int)) = (a +. float_of_int(b) +. float_of_int(c)) ** 2.0;;
f3_a (1.0, 1, 1)

let f3_b (a, b, c) = (a +. float_of_int(b) +. float_of_int(c)) ** 2.0;;
f3_b (1.0, 1, 1)

let f3_c = function (a, b, c) -> (a +. float_of_int(b) +. float_of_int(c)) ** 2.0;;
f3_c (1.0, 1, 1)

let f3_d = fun (a, b, c) -> (a +. float_of_int(b) +. float_of_int(c)) ** 2.0;;
f3_d (1.0, 1, 1)


let switch_a ((a: 'a), (b: 'b)) = (b, a);;
switch_a (1, 2)

let switfh_b (a, b) = (b, a);;
switch_b (1, 2)

let switfh_c = function (a, b) -> (b, a);;
switch_c (1, 2)

let switfh_d = fun (a, b) -> (b, a);;
switch_d (1, 2)


let mean_a (a: float) (b: float) = (a+.b) /. 2.0;;
mean_a 1.0 1.0;;

let mean_b a b = (a+.b) /. 2.0;;
mean_b 1.0 1.0;;

let mean_c = function a -> function b -> (a+.b) /. 2.0;;
mean_c 1.0 1.0;;

let mean_d = fun a b -> (a+.b) /. 2.0;;
mean_d 1.0 1.0;;


let mean2_a (a: int) (b: int) = float_of_int (a + b) /. 2.0;;
mean2_a 1 1;

let mean2_b a b = float_of_int (a + b) /. 2.0;;
mean2_b 1 1;

let mean2_c = function a -> function b ->  float_of_int (a + b) /. 2.0;;
mean2_c 1 1;

let mean2_d = fun a b ->  float_of_int (a + b) /. 2.0;;
mean2_d 1 1;


let max_a (a: int) (b: int) = if a > b then a else b;;
max_a 1 2;;

let max_b a b = if a > b then a else b;;
max_b 1 2;;

let max_c = function a -> function b -> if a > b then a else b;;
max_c 1 2;;

let max_d = fun a b -> if a > b then a else b;;
max_d 1 2;;


let max2_a (a: float) (b: float) = if a > b then a else b;;
max2_a 1.0 1.0;;

let max2_b a b = if a > b then a else b;;
max2_b 1.0 1.0;;

let max2_c = function a -> function b -> if a > b then a else b;;
max2_c 1.0 1.0;;

let max2_d = fun a b -> if a > b then a else b;;
max2_d 1.0 1.0;;


let rec silnia_a (n : int) = if n = 0 then 1 else n * silnia_a (n-1);;
silnia_a 5;;

let rec silnia_b n = if n = 0 then 1 else n * silnia_b (n-1);;
silnia_b 5;;

let rec silnia_c = function n -> if n = 0 then 1 else n * silnia_c (n-1);;
silnia_c 5;;

let rec silnia_d = fun n -> if n = 0 then 1 else n * silnia_d (n-1);;
silnia_d 5;;


let rec pot_a (a: float) (b: int) = if b = 0 then 1.0 else a *. pot_a a (b-1);;
pot_a 2.0 3;;

let rec pot_b a b = if b = 0 then 1.0 else a *. pot_b a (b-1);;
pot_b 2.0 3;;

let rec pot_c = function a -> function b -> if b = 0 then 1.0 else a *. pot_c a (b-1);;
pot_c 2.0 3;;

let rec pot_d = fun a b -> if b = 0 then 1.0 else a *. pot_d a (b-1);;
pot_d 2.0 3;;


