let getMaxIndex = () => PerspectiveCameraProjectionRepo.getMaxIndex()

let setMaxIndex = maxIndex => PerspectiveCameraProjectionRepo.setMaxIndex(maxIndex)

let getIndex = cameraProjection => cameraProjection->PerspectiveCameraProjectionEntity.value

let toComponent = index => index->PerspectiveCameraProjectionEntity.create
