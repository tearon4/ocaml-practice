(* Purpose: x座標とy座標の組で表された平面座標を受け取ったらx軸について対称な点の座標を返す *)
(* taisho_x : float * float -> float * float *)
let taisho_x coord = match coord with 
    (x, y) -> (+.x, -.y)

(* Test *)
let test1 = taisho_x (5.0, 7.0) = (5.0, -.7.0)
let test2 = taisho_x (2.6, 1.9) = (2.6, -.1.9)
let test3 = taisho_x (8.1, 4.4) = (8.1, -.4.4)
