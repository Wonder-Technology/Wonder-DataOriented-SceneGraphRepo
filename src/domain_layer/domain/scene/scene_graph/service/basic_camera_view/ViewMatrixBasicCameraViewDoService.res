let getViewWorldToCameraMatrix = cameraView =>
  GameObjectBasicCameraViewDoService.getGameObject(cameraView)
  ->WonderCommonlib.OptionSt.map(gameObject =>
    GetComponentGameObjectDoService.getTransform(gameObject)->WonderCommonlib.OptionSt.map(transform =>
      Matrix4.createIdentityMatrix4()
      ->LocalToWorldMatrixVO.invert(ModelMatrixTransformDoService.getLocalToWorldMatrix(transform))
      ->WonderCommonlib.Result.mapSuccess(mat => mat->ViewMatrixVO.create)
    )
  )
  ->WonderCommonlib.OptionSt.open_
  ->WonderCommonlib.OptionSt.sequenceResultM
