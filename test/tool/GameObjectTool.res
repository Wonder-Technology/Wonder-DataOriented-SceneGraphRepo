open VODOConvertApService

let create = () => GameObjectApService.create()->Result.mapSuccess(gameObjectVOToGameObjectDO)

let addTransform = (gameObject, transform) =>
  AddComponentGameObjectDoService.addTransform(gameObject, transform)

let getTransform = gameObject => GetComponentGameObjectDoService.getTransform(gameObject)

let hasTransform = gameObject => HasComponentGameObjectDoService.hasTransform(gameObject)

let getMaxUID = () => ContainerManager.getGameObject().maxUID

let getMaxUID = () => ContainerManager.getGameObject().maxUID

let createGameObject = () => {
  let gameObject = create()->ResultTool.getExnSuccessValue

  (gameObject, getTransform(gameObject)->OptionSt.getExn)
}
