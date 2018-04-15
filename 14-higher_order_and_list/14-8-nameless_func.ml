(* 14-8 *)
let hoge = fun x -> (x ** 2.0) -. 1.0

(* Test *)
let test0 = hoge 2. = 3.
let test1 = hoge 0. = -. 1.
let test2 = hoge 5. = 24.

(* 14-9 *)
type person_t = {
  name       : string;
  age        : int;
  birthday   : string;
  blood_type : string;
}

let fuga = fun person_t -> match person_t with {name = n;} -> "name : " ^ n

let ikuchan = {name = "生田絵梨花"; age = 21; birthday = "1997/01/22"; blood_type ="A";}
let maiyan = {name = "白石麻衣"; age = 25; birthday = "1992/08/20"; blood_type = "A";}

let test3 = fuga ikuchan = "name : 生田絵梨花"
let test4 = fuga maiyan =  "name : 白石麻衣"
