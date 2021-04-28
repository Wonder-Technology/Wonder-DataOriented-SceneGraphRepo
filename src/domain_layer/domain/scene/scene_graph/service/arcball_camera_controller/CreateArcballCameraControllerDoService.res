let _setDefaultValue = cameraController => {
  ArcballCameraControllerRepo.setDistance(cameraController, 10.)
  ArcballCameraControllerRepo.setMinDistance(cameraController, 0.05)
  ArcballCameraControllerRepo.setPhi(cameraController, Js.Math._PI /. 2.)
  ArcballCameraControllerRepo.setTheta(cameraController, Js.Math._PI /. 2.)
  ArcballCameraControllerRepo.setThetaMargin(cameraController, 0.05)
  ArcballCameraControllerRepo.setTarget(cameraController, (0., 0., 0.))
  ArcballCameraControllerRepo.setMoveSpeedX(cameraController, 1.)
  ArcballCameraControllerRepo.setMoveSpeedY(cameraController, 1.)
  ArcballCameraControllerRepo.setRotateSpeed(cameraController, 1.)
  ArcballCameraControllerRepo.setWheelSpeed(cameraController, 1.)
}

let create = () => {
  let index = IndexBasicCameraViewDoService.getMaxIndex()
  let newIndex = index->IndexComponentDoService.generateIndex

  IndexArcballCameraControllerDoService.setMaxIndex(newIndex)

  _setDefaultValue(index)

  ArcballCameraControllerRepo.addToDirtyList(index)

  index->ArcballCameraControllerEntity.create
}
