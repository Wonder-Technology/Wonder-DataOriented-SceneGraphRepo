let getDirection = light =>
  GameObjectDirectionLightDoService.getGameObject(light)
  ->WonderCommonlib.OptionSt.map(gameObject =>
    GetComponentGameObjectDoService.getTransform(gameObject)->WonderCommonlib.OptionSt.map(transform =>
      UpdateTransformDoService.updateAndGetEulerAngles(transform)
      ->EulerAnglesVO.convertToQuaternion
      ->Vector3.transformQuat((0., 0., 1.))
      ->DirectionVO.create
    )
  )
  ->WonderCommonlib.OptionSt.open_
