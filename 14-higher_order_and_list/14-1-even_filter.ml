(* 14-1 *)
let is_even n = n mod 2 = 0

let rec filter p lst = match lst with
  [] -> []
  | first::rest -> if p first then first :: (filter p rest) else filter p rest

  (* データ構造の定義 *)
let even_filter lst = filter is_even lst

(* Test *)
let test1 = even_filter [] = []
let test2 = even_filter [1] = []
let test3 = even_filter [1;2;3;4;5] = [2;4]
let test4 = even_filter [6;7;8;9;10] = [6;8;10]

(* 14-5 *)
let even_filter2 lst =
  let is_even2 n = n mod 2 = 0
  in filter is_even2 lst

  (* Test *)
let test1 = even_filter [] = []
let test2 = even_filter [1] = []
let test3 = even_filter [1;2;3;4;5] = [2;4]
let test4 = even_filter [6;7;8;9;10] = [6;8;10]