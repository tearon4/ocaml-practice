(* データ構造の定義 *)
let list = []
(* purpose: 整数のリストを受け取ったらその中の偶数の要素のみを含むリストを返す *)
(* even : int list -> int list *)
let rec even list = match list with 
  [] -> [] 
  | first::rest -> if first mod 2 = 0 then first :: even rest
                                      else even rest

(* Test *)
let test1 = even [] = []
let test2 = even [1] = []
let test3 = even [1;2;3;4;5] = [2;4]
let test4 = even [6;7;8;9;10] = [6;8;10]
