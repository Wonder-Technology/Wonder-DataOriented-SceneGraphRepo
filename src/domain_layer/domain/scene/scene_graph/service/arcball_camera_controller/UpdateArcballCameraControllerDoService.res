let _updateTransform = cameraController => {
  Tuple5.collectOption(
    GameObjectArcballCameraControllerDoService.getGameObject(cameraController)->OptionSt.bind(
      GetComponentGameObjectDoService.getTransform,
    ),
    OperateArcballCameraContrllerDoService.getDistance(cameraController)->OptionSt.map(
      DistanceVO.value,
    ),
    OperateArcballCameraContrllerDoService.getPhi(cameraController)->OptionSt.map(PhiVO.value),
    OperateArcballCameraContrllerDoService.getTheta(cameraController)->OptionSt.map(ThetaVO.value),
    OperateArcballCameraContrllerDoService.getTarget(cameraController)->OptionSt.map(
      TargetVO.value,
    ),
  )->Result.bind(((transform, distance, phi, theta, (x, y, z) as target)) => {
    ModelMatrixTransformDoService.setLocalPosition(
      transform,
      (
        distance *. Js.Math.cos(phi) *. Js.Math.sin(theta) +. x,
        distance *. Js.Math.cos(theta) +. y,
        distance *. Js.Math.sin(phi) *. Js.Math.sin(theta) +. z,
      )->PositionVO.create,
    )->Result.bind(() => {
      LookAtTransformDoService.lookAt(~transform, ~target=target->TargetVO.create, ())
    })
  })
}

let update = () =>
  DirtyArcballCameraControllerDoService.getUniqueDirtyList()
  ->ListSt.traverseResultM(cameraController => _updateTransform(cameraController))
  ->Result.mapSuccess(_ => {
    ArcballCameraControllerRepo.clearDirtyList()
  })
