(* 時給と基本給(共に単位は円) *)
let jikyu     = 950
let kihonkyu  = 100
let ex_jikyu  = 980

(* Purpose: 働いた時間 t に応じたアルバイト代を計算 *)
(* 30時間以上働いた場合は特別時給(ex_jikyu)が適用される *)
(* kyuyo : int -> int *)
let kyuyo t = kihonkyu + t * (if t < 30 then jikyu else ex_jikyu)

(* Test *)
let test1 = (kyuyo 25 = 23850)
let test2 = (kyuyo 28 = 26700)
let test3 = (kyuyo 31 = 30480)
