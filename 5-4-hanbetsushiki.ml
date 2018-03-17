(* Purpose: 二次関数ax^2+bx+c=0の係数(a,b,c)を与えられた時の判別式の値を返す *)
(* hanbetsushiki : float -> float -> float -> float *)
let hanbetsushiki a b c = b ** 2.0 -. 4.0 *. a *. c

(* Test *)
let test1 = hanbetsushiki 2.0 3.0 1.0 = 1.0
let test2 = hanbetsushiki 1.0 4.0 4.0 = 0.0
let test3 = hanbetsushiki 5.0 4.0 1.0 = -. 4.0

(* Purpose: 二次関数ax^2+bx+c=0の係数(a,b,c)を与えられた時の解の個数を返す *)
(* kai_no_kosuu : float -> float -> float -> int *)
let kai_no_kosuu a b c = if hanbetsushiki a b c > 0.0 then 2 
                          else if hanbetsushiki a b c = 0.0 then 1 
                          else 0

(* Test *)
let test1 = kai_no_kosuu 2.0 3.0 1.0 = 2
let test2 = kai_no_kosuu 1.0 4.0 4.0 = 1
let test3 = kai_no_kosuu 5.0 4.0 1.0 = 0

(* Purpose: 二次関数ax^2+bx+c=0の係数(a,b,c)を与えられた時、虚数解を持つかどうかを返す *)
(* kyosuukai : float -> float -> float -> bool *)
let kyosuukai a b c = if kai_no_kosuu a b c = 0 then true 
                      else false

(* Test *)
let test1 = kyosuukai 2.0 3.0 1.0 = false
let test2 = kyosuukai 1.0 4.0 4.0 = false
let test3 = kyosuukai 5.0 4.0 1.0 = true
