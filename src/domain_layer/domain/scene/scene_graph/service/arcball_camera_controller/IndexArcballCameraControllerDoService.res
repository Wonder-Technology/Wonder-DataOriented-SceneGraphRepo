let getMaxIndex = () => ArcballCameraControllerRepo.getMaxIndex()

let setMaxIndex = maxIndex => ArcballCameraControllerRepo.setMaxIndex(maxIndex)

let getIndex = cameraController => cameraController->ArcballCameraControllerEntity.value

let toComponent = index => index->ArcballCameraControllerEntity.create
