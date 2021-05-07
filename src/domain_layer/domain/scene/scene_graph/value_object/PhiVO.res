type t = Phi(float)

let create = value => Phi(value)

let value = phi =>
  switch phi {
  | Phi(value) => value
  }
