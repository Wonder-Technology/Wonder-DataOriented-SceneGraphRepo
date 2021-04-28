type t = Distance(float)

let create = value => Distance(value)

let value = distance =>
  switch distance {
  | Distance(value) => value
  }
