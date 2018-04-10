let add5 x = x + 5
let times y = y * y

(* 目的: 関数 f 受け取って f を二回施す関数を返す *)
let twice f = let g x = f (f x) in g

(* 13-4 *)
(* 目的: 関数 f と関数 g を受け取ってその二つを合成した関数を返す *)
let compose f g = let h x = f (g x) in h

(* Test *)
let test0 = add5 10 = 15
let test1 = times 4 = 16
let test2 = compose times add5 4 = 81
let test3 = twice times 2 = 16

(* 13-5 *)
(* 目的: twice に twice 自身を施す twice twice する関数を作る *)
let t_twice = twice twice

(* val t_twice : ('_weak1 -> '_weak1) -> '_weak1 -> '_weak1 = <fun> *)