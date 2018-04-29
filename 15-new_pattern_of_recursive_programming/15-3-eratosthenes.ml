(* natural : ある自然数nを受け取って2以上n以下の自然数リストを返す *)
let rec natural n =
  let rec loop i =
    if i > n
      then []
      else i::loop (i + 1)
  in loop 2

(* sieve : 受け取ったリストの中から2以上n以下の素数のリストを返す *)
let rec sieve lst = match lst with
    [] -> []
    (* firstは確定で残りのrestのうちfirstの倍数ではない（割り切れない）やつで再帰 *)
    | first :: rest -> first :: sieve (List.filter (fun x -> x mod first <> 0) rest)

(* prime: ある自然数nを受け取って2以上n以下の素数を返す *)
let prime n = sieve (natural n)

(* TEST *)
let test0 = prime 7 = [2;3;5;7]
let test1 = prime 17 = [2;3;5;7;11;13;17]
