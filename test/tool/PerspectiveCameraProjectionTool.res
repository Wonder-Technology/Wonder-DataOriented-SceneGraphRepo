open Js.Typed_array

let getId = cameraProjection => cameraProjection->IndexPerspectiveCameraProjectionDoService.getId

let create = () => CreatePerspectiveCameraProjectionDoService.create()

let getGameObject = cameraProjection =>
  GameObjectPerspectiveCameraProjectionDoService.getGameObject(cameraProjection)

let getPMatrix = cameraProjection =>
  PMatrixPerspectiveCameraProjectionDoService.getPMatrix(cameraProjection)

let getFovy = cameraProjection =>
  FrustumPerspectiveCameraProjectionDoService.getFovy(cameraProjection)

let setFovy = (cameraProjection, fovy) =>
  FrustumPerspectiveCameraProjectionDoService.setFovy(cameraProjection, fovy)

let getAspect = cameraProjection =>
  FrustumPerspectiveCameraProjectionDoService.getAspect(cameraProjection)

let setAspect = (cameraProjection, aspect) =>
  FrustumPerspectiveCameraProjectionDoService.setAspect(cameraProjection, aspect)

let getNear = cameraProjection =>
  FrustumPerspectiveCameraProjectionDoService.getNear(cameraProjection)

let setNear = (cameraProjection, near) =>
  FrustumPerspectiveCameraProjectionDoService.setNear(cameraProjection, near)

let getFar = cameraProjection =>
  FrustumPerspectiveCameraProjectionDoService.getFar(cameraProjection)

let setFar = (cameraProjection, far) =>
  FrustumPerspectiveCameraProjectionDoService.setFar(cameraProjection, far)

let markDirty = DirtyPerspectiveCameraProjectionDoService.markDirty

let markNotDirty = DirtyPerspectiveCameraProjectionDoService.markNotDirty

let update = UpdatePerspectiveCameraProjectionDoService.update

let isPerspectiveCameraProjection = cameraProjection => {
  open Wonder_jest
  open Expect
  open! Expect.Operators
  expect(cameraProjection->PerspectiveCameraProjectionEntity.value) >= 0
}

let getMaxIndex = () => ContainerManager.getPerspectiveCameraProjection().maxIndex

let getUniqueDirtyList = () => DirtyPerspectiveCameraProjectionDoService.getUniqueDirtyList()

let clearDirtyList = () =>
  ContainerManager.setPerspectiveCameraProjection({
    ...ContainerManager.getPerspectiveCameraProjection(),
    dirtyList: list{},
  })
