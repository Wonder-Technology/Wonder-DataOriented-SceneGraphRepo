open VODOConvertApService

let create = () => CreateGameObjectDoService.create()->Result.mapSuccess(gameObjectDOToGameObjectVO)

let addTransform = (gameObject, transform) =>
  AddComponentGameObjectDoService.addTransform(
    gameObject->gameObjectVOToGameObjectDO,
    transform->transformVOToTransformDO,
  )->Result.mapSuccess(gameObjectDOToGameObjectVO)

let getTransform = gameObject =>
  GetComponentGameObjectDoService.getTransform(
    gameObject->gameObjectVOToGameObjectDO,
  )->OptionSt.map(transformDOToTransformVO)

let hasTransform = gameObject =>
  HasComponentGameObjectDoService.hasTransform(gameObject->gameObjectVOToGameObjectDO)
