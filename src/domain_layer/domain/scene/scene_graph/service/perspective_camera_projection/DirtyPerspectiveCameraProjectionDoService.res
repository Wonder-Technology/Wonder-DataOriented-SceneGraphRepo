let markDirty = cameraProjection =>
  PerspectiveCameraProjectionRepo.markDirty(
    cameraProjection->PerspectiveCameraProjectionEntity.value,
  )

let markNotDirty = cameraProjection =>
  PerspectiveCameraProjectionRepo.markNotDirty(
    cameraProjection->PerspectiveCameraProjectionEntity.value,
  )

let getUniqueDirtyList = () =>
  PerspectiveCameraProjectionRepo.getDirtyList()
  ->WonderCommonlib.ListSt.removeDuplicateItems
  ->WonderCommonlib.ListSt.map(PerspectiveCameraProjectionEntity.create)
