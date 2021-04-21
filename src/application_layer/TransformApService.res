open VODOConvertApService

let create = () => CreateTransformDoService.create()->Result.mapSuccess(transformDOToTransformVO)

let getGameObject = transform =>
  GameObjectTransformDoService.getGameObject(transform->transformVOToTransformDO)->OptionSt.map(
    gameObjectDOToGameObjectVO,
  )
