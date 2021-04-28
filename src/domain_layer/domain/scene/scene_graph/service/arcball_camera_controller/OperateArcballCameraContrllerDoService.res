let getMinDistance = cameraController =>
  ArcballCameraControllerRepo.getMinDistance(
    cameraController->ArcballCameraControllerEntity.value,
  )->OptionSt.map(DistanceVO.create)

let setMinDistance = (cameraController, minDistance) => {
  ArcballCameraControllerRepo.setMinDistance(
    cameraController->ArcballCameraControllerEntity.value,
    minDistance->DistanceVO.value,
  )

  ArcballCameraControllerRepo.markDirty(cameraController->ArcballCameraControllerEntity.value)
}

let getDistance = cameraController =>
  ArcballCameraControllerRepo.getDistance(
    cameraController->ArcballCameraControllerEntity.value,
  )->OptionSt.map(DistanceVO.create)

let setDistance = (cameraController, distance) => {
  ArcballCameraControllerRepo.markDirty(cameraController->ArcballCameraControllerEntity.value)

  getMinDistance(cameraController)
  ->OptionSt.get
  ->Result.mapSuccess(minDistance => {
    ArcballCameraControllerRepo.setDistance(
      cameraController->ArcballCameraControllerEntity.value,
      NumberDoService.bigThan(distance->DistanceVO.value, minDistance->DistanceVO.value),
    )
  })
}

let getWheelSpeed = cameraController =>
  ArcballCameraControllerRepo.getWheelSpeed(
    cameraController->ArcballCameraControllerEntity.value,
  )->OptionSt.map(SpeedVO.create)

let setWheelSpeed = (cameraController, wheelSpeed) => {
  ArcballCameraControllerRepo.setWheelSpeed(
    cameraController->ArcballCameraControllerEntity.value,
    wheelSpeed->SpeedVO.value,
  )

  ArcballCameraControllerRepo.markDirty(cameraController->ArcballCameraControllerEntity.value)
}

let getPhi = cameraController =>
  ArcballCameraControllerRepo.getPhi(
    cameraController->ArcballCameraControllerEntity.value,
  )->OptionSt.map(PhiVO.create)

let setPhi = (cameraController, phi) => {
  ArcballCameraControllerRepo.setPhi(
    cameraController->ArcballCameraControllerEntity.value,
    phi->PhiVO.value,
  )

  ArcballCameraControllerRepo.markDirty(cameraController->ArcballCameraControllerEntity.value)
}

let _constrainTheta = (theta, thetaMargin) =>
  NumberDoService.clamp(theta, thetaMargin, Js.Math._PI -. thetaMargin)

let getTheta = cameraController =>
  ArcballCameraControllerRepo.getTheta(
    cameraController->ArcballCameraControllerEntity.value,
  )->OptionSt.map(ThetaVO.create)

let getThetaMargin = cameraController =>
  ArcballCameraControllerRepo.getThetaMargin(cameraController->ArcballCameraControllerEntity.value)

let setTheta = (cameraController, theta) => {
  ArcballCameraControllerRepo.markDirty(cameraController->ArcballCameraControllerEntity.value)

  getThetaMargin(cameraController)
  ->OptionSt.get
  ->Result.bind(thetaMargin => {
    _constrainTheta(theta->ThetaVO.value, thetaMargin)
  })
  ->Result.mapSuccess(constrainedTheta => {
    ArcballCameraControllerRepo.setTheta(
      cameraController->ArcballCameraControllerEntity.value,
      constrainedTheta,
    )
  })
}

let setThetaMargin = (cameraController, thetaMargin) => {
  ArcballCameraControllerRepo.setThetaMargin(
    cameraController->ArcballCameraControllerEntity.value,
    thetaMargin,
  )

  ArcballCameraControllerRepo.markDirty(cameraController->ArcballCameraControllerEntity.value)

  getTheta(cameraController)
  ->OptionSt.get
  ->Result.bind(theta => {
    _constrainTheta(theta->ThetaVO.value, thetaMargin)
  })
  ->Result.mapSuccess(constrainedTheta => {
    ArcballCameraControllerRepo.setTheta(
      cameraController->ArcballCameraControllerEntity.value,
      constrainedTheta,
    )
  })
}

let getTarget = cameraController =>
  ArcballCameraControllerRepo.getTarget(
    cameraController->ArcballCameraControllerEntity.value,
  )->OptionSt.map(TargetVO.create)

let setTarget = (cameraController, target) => {
  ArcballCameraControllerRepo.setTarget(
    cameraController->ArcballCameraControllerEntity.value,
    target->TargetVO.value,
  )

  ArcballCameraControllerRepo.markDirty(cameraController->ArcballCameraControllerEntity.value)
}

let getMoveSpeedX = cameraController =>
  ArcballCameraControllerRepo.getMoveSpeedX(
    cameraController->ArcballCameraControllerEntity.value,
  )->OptionSt.map(SpeedVO.create)

let setMoveSpeedX = (cameraController, moveSpeedX) => {
  ArcballCameraControllerRepo.setMoveSpeedX(
    cameraController->ArcballCameraControllerEntity.value,
    moveSpeedX->SpeedVO.value,
  )

  ArcballCameraControllerRepo.markDirty(cameraController->ArcballCameraControllerEntity.value)
}

let getMoveSpeedY = cameraController =>
  ArcballCameraControllerRepo.getMoveSpeedY(
    cameraController->ArcballCameraControllerEntity.value,
  )->OptionSt.map(SpeedVO.create)

let setMoveSpeedY = (cameraController, moveSpeedY) => {
  ArcballCameraControllerRepo.setMoveSpeedY(
    cameraController->ArcballCameraControllerEntity.value,
    moveSpeedY->SpeedVO.value,
  )

  ArcballCameraControllerRepo.markDirty(cameraController->ArcballCameraControllerEntity.value)
}

let getRotateSpeed = cameraController =>
  ArcballCameraControllerRepo.getRotateSpeed(
    cameraController->ArcballCameraControllerEntity.value,
  )->OptionSt.map(SpeedVO.create)

let setRotateSpeed = (cameraController, rotateSpeed) => {
  ArcballCameraControllerRepo.setRotateSpeed(
    cameraController->ArcballCameraControllerEntity.value,
    rotateSpeed->SpeedVO.value,
  )

  ArcballCameraControllerRepo.markDirty(cameraController->ArcballCameraControllerEntity.value)
}
