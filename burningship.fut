def N0(c0: (f64,f64)): f64 =
  let
    (_, i) = loop (c,i) = (c0,0) while (i<255) && (c.0*c.0+c.1*c.1<10.0) do
      ((c.0*c.0-c.1*c.1-c0.0,2*f64.abs(c.0*c.1)-c0.1),i+1)
  in i

def burningship N range (c_x,c_y) =
  let N64 = f64.i64 N
  in
    tabulate_2d N N
      (\i j ->
          let x = c_x + 2*range*(f64.i64 i / N64 - 0.5)
          let y = c_y + 2*range*(f64.i64 j / N64 - 0.5)
          in (N0 (x,y)))

entry gen n w x y = burningship n w (x, y)
