(* Purpose: ５教科の点数を与えられたら、その合計点と平均点を組にして返す *)
(* goukei_to_heikin : float -> float -> float -> float -> float -> float * float *)
let goukei_to_heikin japanese math english science society = 
  ( (japanese +. math +. english +. science +. society) , (japanese +. math +. english +. science +. society) /. 5.0)

(* Test *)
let test1 = goukei_to_heikin 12.0 16.0  8.0  7.0  7.0 = (50.0  , 10.0)
let test2 = goukei_to_heikin 13.0 15.0 28.0 28.0 41.0 = (125.0 , 25.0)
let test3 = goukei_to_heikin 21.0 38.0  5.0 22.0 14.0 = (100.0 , 20.0)