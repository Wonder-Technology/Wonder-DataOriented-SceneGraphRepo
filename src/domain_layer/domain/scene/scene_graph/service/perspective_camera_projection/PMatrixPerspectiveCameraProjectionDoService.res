let getPMatrix = cameraProjection =>
  PerspectiveCameraProjectionRepo.getPMatrix(
    cameraProjection->PerspectiveCameraProjectionEntity.value,
  )->WonderCommonlib.OptionSt.map(ProjectionMatrixVO.create)

let setPMatrix = (cameraProjection, pMatrix) =>
  PerspectiveCameraProjectionRepo.setPMatrix(
    cameraProjection->PerspectiveCameraProjectionEntity.value,
    pMatrix->ProjectionMatrixVO.value,
  )
