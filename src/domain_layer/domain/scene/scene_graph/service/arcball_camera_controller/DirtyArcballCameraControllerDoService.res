let markDirty = cameraController =>
  ArcballCameraControllerRepo.markDirty(cameraController->ArcballCameraControllerEntity.value)

let markNotDirty = cameraController =>
  ArcballCameraControllerRepo.markNotDirty(cameraController->ArcballCameraControllerEntity.value)

let getUniqueDirtyList = () =>
  ArcballCameraControllerRepo.getDirtyList()
  ->ListSt.removeDuplicateItems
  ->ListSt.map(ArcballCameraControllerEntity.create)
