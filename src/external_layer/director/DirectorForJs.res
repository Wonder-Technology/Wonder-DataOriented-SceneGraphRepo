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

let init = (
  canvas,
  {isDebug, transformCount}: ISceneGraphRepoForJs.configData,
  {float9Array1, float32Array1}: ISceneGraphRepoForJs.globalTempData,
) => {
  CanvasApService.setCanvas(canvas)

  ConfigApService.setIsDebug(isDebug)
  ConfigApService.setTransformCount(transformCount)

  GlobalTempApService.setFloat9Array1(float9Array1)
  GlobalTempApService.setFloat32Array1(float32Array1)

  _createAndSetAllComponentPOs()
}

let buildSceneGraphRepo = (): ISceneGraphRepoForJs.sceneGraphRepo => {
  init: (canvas, configData, globalTempData) =>
    init(canvas, configData, globalTempData)->Result.getExn,
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
    hasTransform: GameObjectApService.hasTransform,
  },
  transformRepo: {
    create: () => TransformApService.create()->Result.getExn,
    getGameObject: transform => TransformApService.getGameObject(transform)->OptionSt.toNullable,
    getParent: transform => TransformApService.getParent(transform)->OptionSt.toNullable,
    hasParent: TransformApService.hasParent,
    removeParent: TransformApService.removeParent,
    getChildren: transform =>
      TransformApService.getChildren(transform)->OptionSt.map(ListSt.toArray)->OptionSt.toNullable,
    getLocalPosition: TransformApService.getLocalPosition,
    setLocalPosition: (transform, localPosition) =>
      TransformApService.setLocalPosition(transform, localPosition)->Result.getExn,
    getPosition: TransformApService.getPosition,
    setPosition: (transform, position) =>
      TransformApService.setPosition(transform, position)->Result.getExn,
    getLocalRotation: TransformApService.getLocalRotation,
    setLocalRotation: (transform, localRotation) =>
      TransformApService.setLocalRotation(transform, localRotation)->Result.getExn,
    getRotation: TransformApService.getRotation,
    setRotation: (transform, rotation) =>
      TransformApService.setRotation(transform, rotation)->Result.getExn,
    getLocalScale: TransformApService.getLocalScale,
    setLocalScale: (transform, localScale) =>
      TransformApService.setLocalScale(transform, localScale)->Result.getExn,
    getScale: TransformApService.getScale,
    setScale: (transform, scale) => TransformApService.setScale(transform, scale)->Result.getExn,
    getLocalEulerAngles: TransformApService.getLocalEulerAngles,
    setLocalEulerAngles: (transform, localEulerAngles) =>
      TransformApService.setLocalEulerAngles(transform, localEulerAngles)->Result.getExn,
    getEulerAngles: TransformApService.getEulerAngles,
    setEulerAngles: (transform, eulerAngles) =>
      TransformApService.setEulerAngles(transform, eulerAngles)->Result.getExn,
    rotateLocalOnAxis: (transform, (angle, localAxis)) =>
      TransformApService.rotateLocalOnAxis(transform, (angle, localAxis))->Result.getExn,
    rotateWorldOnAxis: (transform, (angle, localAxis)) =>
      TransformApService.rotateWorldOnAxis(transform, (angle, localAxis))->Result.getExn,
    getLocalToWorldMatrix: TransformApService.getLocalToWorldMatrix,
    getNormalMatrix: transform => TransformApService.getNormalMatrix(transform)->Result.getExn,
    lookAt: (transform, target) => TransformApService.lookAt(transform, target)->Result.getExn,
  },
}
