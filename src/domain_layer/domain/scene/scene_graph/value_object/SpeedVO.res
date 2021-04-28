type t = Speed(float)

let create = value => Speed(value)

let value = speed =>
  switch speed {
  | Speed(value) => value
  }
