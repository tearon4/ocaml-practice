(* Purpose: 時間を受け取ったら午前か午後かを返す *)
(* jikan : int -> int *)
let jikan hh mm = 
  if hh > 24 || mm > 60 then "error" 
                        else if (hh < 12) then "am"
                                          else "pm"

(* Test *)
let test1 = jikan 11 26 = "am"
let test2 = jikan 16 54 = "pm"
let test3 = jikan 05 07 = "am"
let test4 = jikan 20 43 = "pm"
let test5 = jikan 25 00 = "error"
let test5 = jikan 00 61 = "error"