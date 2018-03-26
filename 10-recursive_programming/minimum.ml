(* purpose: 受け取ったリストの最小の要素を返す *)
(* minimum : int list -> int *)
let rec minimum lst = match lst with 
  [] -> max_int
  | first::rest -> 
    let min_rest = minimum rest in (* 局所変数 *)
    if first > min_rest 
    then min_rest 
    else first

(* Test *)
let test1 = minimum [] = max_int
let test2 = minimum [8] = 8
let test3 = minimum [2;5] = 2
let test4 = minimum [4;7;9;3] = 3

(*
入力されたリストの要素が全てmax_initだった場合と
そもそも空リストだった場合とを見分けることができない。
これを解消するには18章で学ぶ例外処理が使える。
*)
