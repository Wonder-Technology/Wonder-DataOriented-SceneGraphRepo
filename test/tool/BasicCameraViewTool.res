open Js.Typed_array

let getId = cameraView => cameraView->IndexBasicCameraViewDoService.getId

let create = () => CreateBasicCameraViewDoService.create()

let getGameObject = cameraView => GameObjectBasicCameraViewDoService.getGameObject(cameraView)

let getViewWorldToCameraMatrix = cameraView =>
  ViewMatrixBasicCameraViewDoService.getViewWorldToCameraMatrix(cameraView)

let isActive = cameraView => ActiveBasicCameraViewDoService.isActive(cameraView)

let active = cameraView => ActiveBasicCameraViewDoService.active(cameraView)

let unactive = cameraView => ActiveBasicCameraViewDoService.unactive(cameraView)

let setActive = (cameraView, isActive) =>
  ActiveBasicCameraViewDoService.setActive(cameraView, isActive)

let getActiveBasicCameraView = () => ActiveBasicCameraViewDoService.getActiveCameraView()

let isBasicCameraView = cameraView => {
  open Wonder_jest
  open Expect
  open! Expect.Operators
  expect(cameraView->BasicCameraViewEntity.value) >= 0
}

let getMaxIndex = () => ContainerManager.getBasicCameraView().maxIndex
