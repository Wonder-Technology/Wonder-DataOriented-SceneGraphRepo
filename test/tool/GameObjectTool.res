open VODOConvertApService

let create = () => GameObjectApService.create()->Result.mapSuccess(gameObjectVOToGameObjectDO)

let addTransform = (gameObject, transform) =>
  //   GameObjectApService.addTransform(
  //     gameObject->gameObjectDOToGameObjectVO,
  //     transform->transformDOToTransformVO,
  //   )
  AddComponentGameObjectDoService.addTransform(gameObject, transform)

// let getTransform = GameObjectApService.getTransform

// let hasTransform = GameObjectApService.hasTransform

let getTransform = gameObject => GetComponentGameObjectDoService.getTransform(gameObject)

let hasTransform = gameObject => HasComponentGameObjectDoService.hasTransform(gameObject)

let getMaxUID = () => ContainerManager.getGameObject().maxUID
