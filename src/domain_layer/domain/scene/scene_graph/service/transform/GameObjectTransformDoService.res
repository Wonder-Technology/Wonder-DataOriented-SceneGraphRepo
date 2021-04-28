let getGameObject = transform =>
  TransformRepo.getGameObject(transform->TransformEntity.value)->OptionSt.map(
    GameObjectEntity.create,
  )
