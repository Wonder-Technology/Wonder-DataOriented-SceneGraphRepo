open VODOConvertApService

let getId = cameraController =>
  cameraController
  ->arcballCameraControllerVOToArcballCameraControllerDO
  ->IndexArcballCameraControllerDoService.getId

let create = () =>
  CreateArcballCameraControllerDoService.create()->arcballCameraControllerDOToArcballCameraControllerVO

let getGameObject = cameraController =>
  GameObjectArcballCameraControllerDoService.getGameObject(
    cameraController->arcballCameraControllerVOToArcballCameraControllerDO,
  )->OptionSt.map(gameObjectDOToGameObjectVO)

let getDistance = cameraController =>
  OperateArcballCameraContrllerDoService.getDistance(
    cameraController->arcballCameraControllerVOToArcballCameraControllerDO,
  )->OptionSt.map(DistanceVO.value)

let setDistance = (cameraController, distance) =>
  OperateArcballCameraContrllerDoService.setDistance(
    cameraController->arcballCameraControllerVOToArcballCameraControllerDO,
    distance->DistanceVO.create,
  )

let getMinDistance = cameraController =>
  OperateArcballCameraContrllerDoService.getMinDistance(
    cameraController->arcballCameraControllerVOToArcballCameraControllerDO,
  )->OptionSt.map(DistanceVO.value)

let setMinDistance = (cameraController, minDistance) =>
  OperateArcballCameraContrllerDoService.setMinDistance(
    cameraController->arcballCameraControllerVOToArcballCameraControllerDO,
    minDistance->DistanceVO.create,
  )

let getWheelSpeed = cameraController =>
  OperateArcballCameraContrllerDoService.getWheelSpeed(
    cameraController->arcballCameraControllerVOToArcballCameraControllerDO,
  )->OptionSt.map(SpeedVO.value)

let setWheelSpeed = (cameraController, wheelSpeed) =>
  OperateArcballCameraContrllerDoService.setWheelSpeed(
    cameraController->arcballCameraControllerVOToArcballCameraControllerDO,
    wheelSpeed->SpeedVO.create,
  )

let getPhi = cameraController =>
  OperateArcballCameraContrllerDoService.getPhi(
    cameraController->arcballCameraControllerVOToArcballCameraControllerDO,
  )->OptionSt.map(PhiVO.value)

let setPhi = (cameraController, phi) =>
  OperateArcballCameraContrllerDoService.setPhi(
    cameraController->arcballCameraControllerVOToArcballCameraControllerDO,
    phi->PhiVO.create,
  )

let getTheta = cameraController =>
  OperateArcballCameraContrllerDoService.getTheta(
    cameraController->arcballCameraControllerVOToArcballCameraControllerDO,
  )->OptionSt.map(ThetaVO.value)

let setTheta = (cameraController, theta) =>
  OperateArcballCameraContrllerDoService.setTheta(
    cameraController->arcballCameraControllerVOToArcballCameraControllerDO,
    theta->ThetaVO.create,
  )

let getThetaMargin = cameraController =>
  OperateArcballCameraContrllerDoService.getThetaMargin(
    cameraController->arcballCameraControllerVOToArcballCameraControllerDO,
  )

let setThetaMargin = (cameraController, thetaMargin) =>
  OperateArcballCameraContrllerDoService.setThetaMargin(
    cameraController->arcballCameraControllerVOToArcballCameraControllerDO,
    thetaMargin,
  )

let getTarget = cameraController =>
  OperateArcballCameraContrllerDoService.getTarget(
    cameraController->arcballCameraControllerVOToArcballCameraControllerDO,
  )->OptionSt.map(TargetVO.value)

let setTarget = (cameraController, target) =>
  OperateArcballCameraContrllerDoService.setTarget(
    cameraController->arcballCameraControllerVOToArcballCameraControllerDO,
    target->TargetVO.create,
  )

let getRotateSpeed = cameraController =>
  OperateArcballCameraContrllerDoService.getRotateSpeed(
    cameraController->arcballCameraControllerVOToArcballCameraControllerDO,
  )->OptionSt.map(SpeedVO.value)

let setRotateSpeed = (cameraController, rotateSpeed) =>
  OperateArcballCameraContrllerDoService.setRotateSpeed(
    cameraController->arcballCameraControllerVOToArcballCameraControllerDO,
    rotateSpeed->SpeedVO.create,
  )

let getMoveSpeedX = cameraController =>
  OperateArcballCameraContrllerDoService.getMoveSpeedX(
    cameraController->arcballCameraControllerVOToArcballCameraControllerDO,
  )->OptionSt.map(SpeedVO.value)

let setMoveSpeedX = (cameraController, moveSpeedX) =>
  OperateArcballCameraContrllerDoService.setMoveSpeedX(
    cameraController->arcballCameraControllerVOToArcballCameraControllerDO,
    moveSpeedX->SpeedVO.create,
  )

let getMoveSpeedY = cameraController =>
  OperateArcballCameraContrllerDoService.getMoveSpeedY(
    cameraController->arcballCameraControllerVOToArcballCameraControllerDO,
  )->OptionSt.map(SpeedVO.value)

let setMoveSpeedY = (cameraController, moveSpeedY) =>
  OperateArcballCameraContrllerDoService.setMoveSpeedY(
    cameraController->arcballCameraControllerVOToArcballCameraControllerDO,
    moveSpeedY->SpeedVO.create,
  )

let update = UpdateArcballCameraControllerDoService.update
