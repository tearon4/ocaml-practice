(* 時給と基本給(共に単位は円) *)
let jikyu     = 950
let kihonkyu  = 100

(* Purpose: 働いた時間 t に応じたアルバイト代を計算 *)
(* kyuyo : int -> int *)
let kyuyo t = kihonkyu + jikyu * t

(* Test *)
let test1 = (kyuyo 25 = 23850)
let test2 = (kyuyo 28 = 26700)
let test3 = (kyuyo 31 = 29550)
