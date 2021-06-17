let getMaxIndex = () => TransformRepo.getMaxIndex()

let setMaxIndex = maxIndex => TransformRepo.setMaxIndex(maxIndex)

let getIndex = transform => transform->TransformEntity.value

let toComponent = index => index->TransformEntity.create
