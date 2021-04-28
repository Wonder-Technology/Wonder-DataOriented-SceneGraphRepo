let create = () => CreateArcballCameraControllerDoService.create()

let getGameObject = cameraController =>
  GameObjectArcballCameraControllerDoService.getGameObject(cameraController)

let getDistance = cameraController =>
  OperateArcballCameraContrllerDoService.getDistance(cameraController)

let setDistance = (cameraController, distance) =>
  OperateArcballCameraContrllerDoService.setDistance(cameraController, distance)

let getMinDistance = cameraController =>
  OperateArcballCameraContrllerDoService.getMinDistance(cameraController)

let setMinDistance = (cameraController, minDistance) =>
  OperateArcballCameraContrllerDoService.setMinDistance(cameraController, minDistance)

let getWheelSpeed = cameraController =>
  OperateArcballCameraContrllerDoService.getWheelSpeed(cameraController)

let setWheelSpeed = (cameraController, wheelSpeed) =>
  OperateArcballCameraContrllerDoService.setWheelSpeed(cameraController, wheelSpeed)

let getPhi = cameraController => OperateArcballCameraContrllerDoService.getPhi(cameraController)

let setPhi = (cameraController, phi) =>
  OperateArcballCameraContrllerDoService.setPhi(cameraController, phi)

let getTheta = cameraController => OperateArcballCameraContrllerDoService.getTheta(cameraController)

let setTheta = (cameraController, theta) =>
  OperateArcballCameraContrllerDoService.setTheta(cameraController, theta)

let getThetaMargin = cameraController =>
  OperateArcballCameraContrllerDoService.getThetaMargin(cameraController)

let setThetaMargin = (cameraController, thetaMargin) =>
  OperateArcballCameraContrllerDoService.setThetaMargin(cameraController, thetaMargin)

let getTarget = cameraController =>
  OperateArcballCameraContrllerDoService.getTarget(cameraController)

let setTarget = (cameraController, target) =>
  OperateArcballCameraContrllerDoService.setTarget(cameraController, target)

let getRotateSpeed = cameraController =>
  OperateArcballCameraContrllerDoService.getRotateSpeed(cameraController)

let setRotateSpeed = (cameraController, rotateSpeed) =>
  OperateArcballCameraContrllerDoService.setRotateSpeed(cameraController, rotateSpeed)

let getMoveSpeedX = cameraController =>
  OperateArcballCameraContrllerDoService.getMoveSpeedX(cameraController)

let setMoveSpeedX = (cameraController, moveSpeedX) =>
  OperateArcballCameraContrllerDoService.setMoveSpeedX(cameraController, moveSpeedX)

let getMoveSpeedY = cameraController =>
  OperateArcballCameraContrllerDoService.getMoveSpeedY(cameraController)

let setMoveSpeedY = (cameraController, moveSpeedY) =>
  OperateArcballCameraContrllerDoService.setMoveSpeedY(cameraController, moveSpeedY)

let update = UpdateArcballCameraControllerDoService.update

let isArcballCameraController = cameraController => {
  open Wonder_jest
  open Expect
  open! Expect.Operators
  expect(cameraController) >= 0
}

let createGameObject = state => {
  let cameraController = create()

  let (
    gameObject,
    transform,
    (basicCameraView, perspectiveCameraProjection),
  ) = CameraTool.createCameraGameObject()

  GameObjectTool.addArcballCameraController(
    gameObject,
    cameraController,
  )->ResultTool.getExnSuccessValueIgnore

  (gameObject, transform, (cameraController, basicCameraView, perspectiveCameraProjection))
}

let setArcballCameraControllerData = cameraController => {
  let distance = 1.6
  let minDistance = 0.5
  let phi = 1.7
  let theta = 0.5
  let thetaMargin = 0.3
  let target = (0.1, 0.2, 0.5)
  let moveSpeedX = 0.1
  let moveSpeedY = 0.2
  let rotateSpeed = 0.3
  let wheelSpeed = 0.4

  ArcballCameraControllerApService.setMinDistance(cameraController, minDistance)
  ArcballCameraControllerApService.setDistance(
    cameraController,
    distance,
  )->ResultTool.getExnSuccessValueIgnore
  ArcballCameraControllerApService.setPhi(cameraController, phi)
  ArcballCameraControllerApService.setTheta(
    cameraController,
    theta,
  )->ResultTool.getExnSuccessValueIgnore
  ArcballCameraControllerApService.setThetaMargin(
    cameraController,
    thetaMargin,
  )->ResultTool.getExnSuccessValueIgnore
  ArcballCameraControllerApService.setTarget(cameraController, target)
  ArcballCameraControllerApService.setMoveSpeedX(cameraController, moveSpeedX)
  ArcballCameraControllerApService.setMoveSpeedY(cameraController, moveSpeedY)
  ArcballCameraControllerApService.setRotateSpeed(cameraController, rotateSpeed)
  ArcballCameraControllerApService.setWheelSpeed(cameraController, wheelSpeed)

  (
    distance,
    minDistance,
    phi,
    theta,
    thetaMargin,
    target,
    moveSpeedX,
    moveSpeedY,
    rotateSpeed,
    wheelSpeed,
  )
}

let getMaxIndex = () => ContainerManager.getArcballCameraController().maxIndex

let getUniqueDirtyList = () => DirtyArcballCameraControllerDoService.getUniqueDirtyList()

let clearDirtyList = () =>
  ContainerManager.setArcballCameraController({
    ...ContainerManager.getArcballCameraController(),
    dirtyList: list{},
  })

// let getDirtyArray = state => state.arcballCameraControllerRecord.dirtyArray;

// /* let getPointDragStartEventHandleFuncMap =
//      ({arcballCameraControllerRecord} as state) =>
//    arcballCameraControllerRecord.pointDragStartEventHandleFuncMap; */

// let addPointDragStartEventHandleFunc =
//     (cameraController, handleFunc, {arcballCameraControllerRecord} as state) => {
//   ...state,
//   arcballCameraControllerRecord:
//     EventArcballCameraControllerMainService._addPointDragStartEventHandleFunc(
//       cameraController,
//       handleFunc,
//       arcballCameraControllerRecord,
//     ),
// };

// let addPointDragDropEventHandleFunc =
//     (cameraController, handleFunc, {arcballCameraControllerRecord} as state) => {
//   ...state,
//   arcballCameraControllerRecord:
//     EventArcballCameraControllerMainService._addPointDragDropEventHandleFunc(
//       cameraController,
//       handleFunc,
//       arcballCameraControllerRecord,
//     ),
// };

// let addPointDragOverEventHandleFunc =
//     (cameraController, handleFunc, {arcballCameraControllerRecord} as state) => {
//   ...state,
//   arcballCameraControllerRecord:
//     EventArcballCameraControllerMainService._addPointDragOverEventHandleFunc(
//       cameraController,
//       handleFunc,
//       arcballCameraControllerRecord,
//     ),
// };

// let addPointScaleEventHandleFunc =
//     (cameraController, handleFunc, {arcballCameraControllerRecord} as state) => {
//   ...state,
//   arcballCameraControllerRecord:
//     EventArcballCameraControllerMainService._addPointScaleEventHandleFunc(
//       cameraController,
//       handleFunc,
//       arcballCameraControllerRecord,
//     ),
// };

// let addKeydownEventHandleFunc =
//     (cameraController, handleFunc, {arcballCameraControllerRecord} as state) => {
//   ...state,
//   arcballCameraControllerRecord:
//     EventArcballCameraControllerMainService._addKeydownEventHandleFunc(
//       cameraController,
//       handleFunc,
//       arcballCameraControllerRecord,
//     ),
// };
