let getFovy = cameraProjection =>
  PerspectiveCameraProjectionRepo.getFovy(
    cameraProjection->PerspectiveCameraProjectionEntity.value,
  )->OptionSt.map(FovyVO.create)

let setFovy = (cameraProjection, fovy) => {
  PerspectiveCameraProjectionRepo.setFovy(
    cameraProjection->PerspectiveCameraProjectionEntity.value,
    fovy->FovyVO.value,
  )

  PerspectiveCameraProjectionRepo.markDirty(
    cameraProjection->PerspectiveCameraProjectionEntity.value,
  )
}

let getAspect = cameraProjection =>
  PerspectiveCameraProjectionRepo.getAspect(
    cameraProjection->PerspectiveCameraProjectionEntity.value,
  )->OptionSt.map(AspectVO.create)

let setAspect = (cameraProjection, aspect) => {
  PerspectiveCameraProjectionRepo.setAspect(
    cameraProjection->PerspectiveCameraProjectionEntity.value,
    aspect->AspectVO.value,
  )

  PerspectiveCameraProjectionRepo.markDirty(
    cameraProjection->PerspectiveCameraProjectionEntity.value,
  )
}

let getNear = cameraProjection =>
  PerspectiveCameraProjectionRepo.getNear(
    cameraProjection->PerspectiveCameraProjectionEntity.value,
  )->OptionSt.map(NearVO.create)

let setNear = (cameraProjection, near) => {
  PerspectiveCameraProjectionRepo.setNear(
    cameraProjection->PerspectiveCameraProjectionEntity.value,
    near->NearVO.value,
  )

  PerspectiveCameraProjectionRepo.markDirty(
    cameraProjection->PerspectiveCameraProjectionEntity.value,
  )
}

let getFar = cameraProjection =>
  PerspectiveCameraProjectionRepo.getFar(
    cameraProjection->PerspectiveCameraProjectionEntity.value,
  )->OptionSt.map(FarVO.create)

let setFar = (cameraProjection, far) => {
  PerspectiveCameraProjectionRepo.setFar(
    cameraProjection->PerspectiveCameraProjectionEntity.value,
    far->FarVO.value,
  )

  PerspectiveCameraProjectionRepo.markDirty(
    cameraProjection->PerspectiveCameraProjectionEntity.value,
  )
}

let computeAspect = ((width, height)) => Number.dividInt(width, height)->AspectVO.create
