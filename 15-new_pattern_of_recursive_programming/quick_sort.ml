(* take : lstの中からtargetに対して与えられた演算子operatorを満たす要素のみ取り出す *)
let take target operator lst = List.filter (fun item -> operator item target) lst

(* take_less : lstの中でnより小さい要素を取り出す *)
let take_less n lst = take n (<) lst
(* take_less : lstの中でnより大きい要素を取り出す *)
let take_greater n lst = take n (>) lst

(* quick_sort : 昇順のクイックソート *)
let rec quick_sort lst = match lst with
  [] -> []
  | first::rest -> quick_sort (take_less first rest)
                  @ [first]
                  @ quick_sort (take_greater first rest)

let test0 = quick_sort [] = []
let test1 = quick_sort [6] = [6]
let test2 = quick_sort [4;5;1;3;8] = [1;3;4;5;8]