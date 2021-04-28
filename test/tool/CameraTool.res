let createBasicCameraViewPerspectiveCamera = () => {
  let perspectiveCameraProjection = PerspectiveCameraProjectionTool.create()
  let basicCameraView = BasicCameraViewTool.create()

  PerspectiveCameraProjectionTool.setNear(perspectiveCameraProjection, 0.1->NearVO.create)
  PerspectiveCameraProjectionTool.setFar(perspectiveCameraProjection, 1000.->FarVO.create)
  PerspectiveCameraProjectionTool.setFovy(perspectiveCameraProjection, 60.->FovyVO.create)
  PerspectiveCameraProjectionTool.setAspect(perspectiveCameraProjection, 1.->AspectVO.create)

  (basicCameraView, perspectiveCameraProjection)
}

let createCameraGameObjectWithFunc = createBasicCameraViewPerspectiveCameraFunc => {
  let (basicCameraView, perspectiveCameraProjection) = createBasicCameraViewPerspectiveCameraFunc()
  let gameObject = GameObjectTool.create()->ResultTool.getExnSuccessValue

  GameObjectTool.addBasicCameraView(
    gameObject,
    basicCameraView,
  )->ResultTool.getExnSuccessValueIgnore
  GameObjectTool.addPerspectiveCameraProjection(
    gameObject,
    perspectiveCameraProjection,
  )->ResultTool.getExnSuccessValueIgnore

  BasicCameraViewTool.active(basicCameraView)

  (
    gameObject,
    GameObjectTool.getTransform(gameObject)->OptionSt.getExn,
    (basicCameraView, perspectiveCameraProjection),
  )
}

let createCameraGameObject = () =>
  createCameraGameObjectWithFunc(createBasicCameraViewPerspectiveCamera)
