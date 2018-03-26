(* 8-6 駅と駅の接続情報（駅間の情報）を格納するレコード型を宣言せよ *)
type ekikan_t = {
  kiten  : string;
  shuten : string;
  keiyu  : string;
  kyori  : float;
  jikan  : int;
}
