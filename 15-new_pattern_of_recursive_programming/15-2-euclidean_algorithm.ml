(* gcd : ユークリッドの互除法 *)
let rec gcd m n =
  if n = 0
    then m
    else gcd n (m mod n)

let test0 = gcd 54 12 = 6
let test1 = gcd 63 24 = 3
let test2 = gcd 72 32 = 8