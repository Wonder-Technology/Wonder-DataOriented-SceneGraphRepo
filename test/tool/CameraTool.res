let createBasicCameraViewPerspectiveCamera = () => {
  // let perspectiveCameraProjection = PerspectiveCameraProjectionRunAPI.create()
  let basicCameraView = BasicCameraViewTool.create()

  // PerspectiveCameraProjectionRunAPI.setNear(perspectiveCameraProjection, 0.1->NearVO.create)
  // PerspectiveCameraProjectionRunAPI.setFar(perspectiveCameraProjection, 1000.->FarVO.create)
  // PerspectiveCameraProjectionRunAPI.setFovy(perspectiveCameraProjection, 60.->FovyVO.create)
  // PerspectiveCameraProjectionRunAPI.setAspect(perspectiveCameraProjection, 1.->AspectVO.create)

  // (basicCameraView, perspectiveCameraProjection)
  (basicCameraView, 1->Obj.magic)
}

let createCameraGameObjectWithFunc = createBasicCameraViewPerspectiveCameraFunc => {
  let (basicCameraView, perspectiveCameraProjection) = createBasicCameraViewPerspectiveCameraFunc()
  let gameObject = GameObjectTool.create()->ResultTool.getExnSuccessValue

  GameObjectTool.addBasicCameraView(
    gameObject,
    basicCameraView,
  )->ResultTool.getExnSuccessValueIgnore
  // GameObjectTool.addPerspectiveCameraProjection(
  //   gameObject,
  //   perspectiveCameraProjection,
  // )->ResultTool.getExnSuccessValueIgnore

  BasicCameraViewTool.active(basicCameraView)

  (
    gameObject,
    GameObjectTool.getTransform(gameObject)->OptionSt.getExn,
    (basicCameraView, perspectiveCameraProjection),
  )
}

let createCameraGameObject = () =>
  createCameraGameObjectWithFunc(createBasicCameraViewPerspectiveCamera)
