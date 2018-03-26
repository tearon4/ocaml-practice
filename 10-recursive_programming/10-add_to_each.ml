(* purpose: 受け取ったリストの要素のそれぞれの先頭にnをくっつけて返す *)
(* add_to_each : int -> int list list -> int list list *)
let rec add_to_each n lst = match lst with 
  [] -> []
  | first::rest -> (n::first) :: add_to_each n rest

(* Test *)
let test1 = add_to_each 1 [] = []
let test2 = add_to_each 1 [[2]] = [[1;2]]
let test3 = add_to_each 1 [[2];[2;3]] = [[1;2];[1;2;3]]
let test4 = add_to_each 5 [[2;6;3];[7;1;9]] = [[5;2;6;3];[5;7;1;9]]
let test5 = add_to_each 1 [[]] = [[1]]


(* purpose: 受け取ったリストの接頭語のリストを返す *)
(* prefix : int list -> int list list *)
let rec prefix lst = match lst with 
  [] -> []
  | first::rest -> [first]:: add_to_each first (prefix rest)

(* Test *)
let test6 = prefix [] = []
let test7 = prefix [1] = [[1]]
let test8 = prefix [2;3] = [[2];[2;3]]
let test8 = prefix [1;2;3;4] = [[1];[1;2];[1;2;3];[1;2;3;4]]

(*
  考え方のプロセス

  first 1
  rest [2;3;4]

  prefix rest [[2];[2;3];[2;3;4]]
  result [[1];[1;2];[1;2;3];[1;2;3;4]]

  この差分を見ると最初の[1]の要素( = [first] )以外は
  add_to_each first (prefix rest)
*)