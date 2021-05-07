type t = Theta(float)

let create = value => Theta(value)

let value = theta =>
  switch theta {
  | Theta(value) => value
  }
