let _createAndSetAllComponentPOs = () =>
  CreatePOTransformRepo.createPO()->Result.mapSuccess(po => po->ContainerManager.setTransform)
// ->Result.bind(() =>
//   CreatePOBSDFMaterialRepo.createPO()->Result.mapSuccess(po => po->ContainerManager.setBSDFMaterial)
// )
// ->Result.bind(() =>
//   CreatePOGeometryRepo.createPO()->Result.mapSuccess(po => po->ContainerManager.setGeometry)
// )
// ->Result.bind(() =>
//   CreatePODirectionLightRepo.createPO()->Result.mapSuccess(po => po->ContainerManager.setDirectionLight)
// )

let init = (canvas, isDebug, transformCount) => {
  CanvasApService.setCanvas(canvas)
  ConfigApService.setIsDebug(isDebug)
  ConfigApService.setTransformCount(transformCount)

  _createAndSetAllComponentPOs()
}

let buildSceneGraphRepo = (): ISceneGraphRepoForJs.sceneGraphRepo => {
  init: (canvas, isDebug, transformCount) => init(canvas, isDebug, transformCount)->Result.getExn,
  getCanvas: () => CanvasApService.getCanvas()->OptionSt.toNullable,
  configRepo: {
    getIsDebug: ConfigApService.getIsDebug,
    setIsDebug: ConfigApService.setIsDebug,
    getTransformCount: ConfigApService.getTransformCount,
    setTransformCount: ConfigApService.setTransformCount,
  },
  sceneRepo: {
    create: () => SceneApService.create()->Result.getExn,
    add: SceneApService.add,
    getScene: unit => SceneApService.getScene()->OptionSt.toNullable,
    setScene: SceneApService.setScene,
  },
  gameObjectRepo: {
    create: () => GameObjectApService.create()->Result.getExn,
    addTransform: (gameObject, transform) =>
      GameObjectApService.addTransform(gameObject, transform)->Result.getExn,
    getTransform: gameObject => GameObjectApService.getTransform(gameObject)->OptionSt.toNullable,
    hasTransform: gameObject => GameObjectApService.hasTransform(gameObject),
  },
  transformRepo: {
    create: () => TransformApService.create()->Result.getExn,
    getGameObject: transform => TransformApService.getGameObject(transform)->OptionSt.toNullable,
  },
}
