// let mark = (transform, isDirty) =>
//   TransformRepo.setIsDirty(transform->TransformEntity.value, isDirty)

let isDirty = transform =>
  switch TransformRepo.getIsDirty(transform->TransformEntity.value) {
  | None => false
  | Some(isDirty) => isDirty === true
  }
