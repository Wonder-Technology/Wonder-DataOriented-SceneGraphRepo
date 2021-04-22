open Js.Typed_array

type t = Indices(Uint32Array.t)

let create = value => Indices(value)

let value = indices =>
  switch indices {
  | Indices(value) => value
  }

let map = (indices, f) => indices->value->f

let length = indices => indices->map(Uint32Array.length)
