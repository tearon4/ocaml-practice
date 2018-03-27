(* 10-9 *)
(* purpose: 二つのリストを受け取ってそれらの長さが同じかどうかを判定する *)
(* length : int list -> int list -> bool *)
let rec length lst1 lst2 = match (lst1, lst2) with
  ([], []) -> true
  | ([], f2::r2) -> false
  | (f1::r1, []) -> false
  | (f1::r1, f2::r2) -> length r1 r2

(* Test *)
let test1 = length [] [] = true
let test2 = length [4] [] = false
let test3 = length [] [3;7] = false
let test4 = length [5;1] [6;8] = true
