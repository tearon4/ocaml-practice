(* 10-1 *)
(* purpose: あらかじめ昇順に並んでいる整数リスト lst と整数1つ n を受け取って n を含めた昇順の整数リストを返す *)
(* insert : int list -> int -> int list *)
let rec insert lst n = match lst with 
  [] -> n::[]
  | first::rest -> if first < n then first::(insert rest n)
                                else n::lst
(* Test *)
let test1 = insert [] 4 = [4]
let test2 = insert [3] 4 = [3;4]
let test3 = insert [2;7] 4 = [2;4;7]
let test4 = insert [5;8;9] 4 = [4;5;8;9]

(* 10-2 *)
(* purpose: 整数リストを受け取ったらそれを昇順に整列したリストを返す *)
(* ins_sort : list -> list *)
let rec ins_sort lst = match lst with
  [] -> []
  | first::rest -> insert (ins_sort rest) first

(* Test *)
let test5 = ins_sort [] = []
let test6 = ins_sort [6] = [6]
let test7 = ins_sort [2;9;4] = [2;4;9]
let test8 = ins_sort [7;2;5;1] = [1;2;5;7]
