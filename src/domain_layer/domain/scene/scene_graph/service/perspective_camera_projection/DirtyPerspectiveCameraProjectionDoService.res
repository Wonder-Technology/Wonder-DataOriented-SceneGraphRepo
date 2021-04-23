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
  ->ListSt.removeDuplicateItems
  ->ListSt.map(PerspectiveCameraProjectionEntity.create)
