let markDirty = cameraController =>
  ArcballCameraControllerRepo.markDirty(cameraController->ArcballCameraControllerEntity.value)

let markNotDirty = cameraController =>
  ArcballCameraControllerRepo.markNotDirty(cameraController->ArcballCameraControllerEntity.value)

let getUniqueDirtyList = () =>
  ArcballCameraControllerRepo.getDirtyList()
  ->WonderCommonlib.ListSt.removeDuplicateItems
  ->WonderCommonlib.ListSt.map(ArcballCameraControllerEntity.create)
