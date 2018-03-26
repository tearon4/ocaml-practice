(* purpose: 文字列のリストを受け取ったらその中の要素を全部くっつけた文字列を返す *)
(* concat : string list -> string *)
let rec concat list = match list with 
  [] -> ""
  | first::rest ->first ^ concat rest

(* Test *)
let test1 = concat ["盛";"者";"必";"衰"] = "盛者必衰"
let test2 = concat [] = ""
