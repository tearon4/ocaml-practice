(* データ構造の定義 *)
let list = []
(* purpose: 受け取ったリストlstの要素数を返す *)
(* length : 'a list -> int *)
let rec length lst = match lst with
    [] -> 0
  | first::rest -> 1 + length rest

(* Test *)
let test1 = length [] = 0
let test2 = length [1] = 1
let test3 = length [1;2;3;4;5] = 5
let test4 = length [1;2;3;4;5;6;7;8;9;10] = 10
