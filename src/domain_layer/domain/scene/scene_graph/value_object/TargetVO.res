type t = Target((float, float, float))

let create = value => Target(value)

let value = target =>
  switch target {
  | Target(value) => value
  }
