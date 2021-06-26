let getGameObject = transform =>
  TransformRepo.getGameObject(transform->TransformEntity.value)->WonderCommonlib.OptionSt.map(
    GameObjectEntity.create,
  )
