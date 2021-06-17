let _createAndSetAllComponentPOs = () =>
  CreatePOTransformRepo.createPO()
  ->Result.mapSuccess(po => po->ContainerManager.setTransform)
  ->Result.bind(() =>
    CreatePOPBRMaterialRepo.createPO()->Result.mapSuccess(po => po->ContainerManager.setPBRMaterial)
  )
  ->Result.bind(() =>
    CreatePOGeometryRepo.createPO()->Result.mapSuccess(po => po->ContainerManager.setGeometry)
  )
  ->Result.bind(() =>
    CreatePODirectionLightRepo.createPO()->Result.mapSuccess(po =>
      po->ContainerManager.setDirectionLight
    )
  )

let init = (
  canvas,
  {
    isDebug,
    transformCount,
    geometryCount,
    geometryPointCount,
    pbrMaterialCount,
    directionLightCount,
  }: WonderEngineAbstract.ISceneGraphRepoForJs.configData,
  {float9Array1, float32Array1}: WonderEngineAbstract.ISceneGraphRepoForJs.globalTempData,
) => {
  CanvasApService.setCanvas(canvas)

  ConfigApService.setIsDebug(isDebug)
  ConfigApService.setTransformCount(transformCount)
  ConfigApService.setGeometryCount(geometryCount)
  ConfigApService.setGeometryPointCount(geometryPointCount)
  ConfigApService.setPBRMaterialCount(pbrMaterialCount)
  ConfigApService.setDirectionLightCount(directionLightCount)

  GlobalTempApService.setFloat9Array1(float9Array1)
  GlobalTempApService.setFloat32Array1(float32Array1)

  _createAndSetAllComponentPOs()
}

let buildSceneGraphRepo = (): WonderEngineAbstract.ISceneGraphRepoForJs.sceneGraphRepo => {
  init: (canvas, configData, globalTempData) =>
    init(canvas, configData, globalTempData)->Result.getExn,
  getCanvas: () => CanvasApService.getCanvas()->OptionSt.toNullable,
  configRepo: {
    getIsDebug: ConfigApService.getIsDebug,
    setIsDebug: ConfigApService.setIsDebug,
    getTransformCount: ConfigApService.getTransformCount,
    setTransformCount: ConfigApService.setTransformCount,
    getGeometryCount: ConfigApService.getGeometryCount,
    setGeometryCount: ConfigApService.setGeometryCount,
    getGeometryPointCount: ConfigApService.getGeometryPointCount,
    setGeometryPointCount: ConfigApService.setGeometryPointCount,
    getDirectionLightCount: ConfigApService.getDirectionLightCount,
    setDirectionLightCount: ConfigApService.setDirectionLightCount,
    getPBRMaterialCount: ConfigApService.getPBRMaterialCount,
    setPBRMaterialCount: ConfigApService.setPBRMaterialCount,
  },
  sceneRepo: {
    create: () => SceneApService.create()->Result.getExn,
    add: SceneApService.add,
    getScene: unit => SceneApService.getScene()->OptionSt.toNullable,
    setScene: SceneApService.setScene,
    getAllGameObjects: scene => SceneApService.getAllGameObjects(scene)->ListSt.toArray,
    getAllRenderGameObjects: scene => SceneApService.getAllRenderGameObjects(scene)->ListSt.toArray,
    getAllGeometries: scene => SceneApService.getAllGameObjectGeometries(scene)->ListSt.toArray,
    getAllPBRMaterials: scene => SceneApService.getAllGameObjectPBRMaterials(scene)->ListSt.toArray,
  },
  gameObjectRepo: {
    create: () => GameObjectApService.create()->Result.getExn,
    addTransform: (gameObject, transform) =>
      GameObjectApService.addTransform(gameObject, transform)->Result.getExn,
    getTransform: gameObject => GameObjectApService.getTransform(gameObject)->OptionSt.toNullable,
    hasTransform: GameObjectApService.hasTransform,
    addGeometry: (gameObject, geometry) =>
      GameObjectApService.addGeometry(gameObject, geometry)->Result.getExn,
    getGeometry: gameObject => GameObjectApService.getGeometry(gameObject)->OptionSt.toNullable,
    hasGeometry: GameObjectApService.hasGeometry,
    addPBRMaterial: (gameObject, material) =>
      GameObjectApService.addPBRMaterial(gameObject, material)->Result.getExn,
    getPBRMaterial: gameObject =>
      GameObjectApService.getPBRMaterial(gameObject)->OptionSt.toNullable,
    hasPBRMaterial: GameObjectApService.hasPBRMaterial,
    addDirectionLight: (gameObject, light) =>
      GameObjectApService.addDirectionLight(gameObject, light)->Result.getExn,
    getDirectionLight: gameObject =>
      GameObjectApService.getDirectionLight(gameObject)->OptionSt.toNullable,
    hasDirectionLight: GameObjectApService.hasDirectionLight,
    addBasicCameraView: (gameObject, cameraView) =>
      GameObjectApService.addBasicCameraView(gameObject, cameraView)->Result.getExn,
    getBasicCameraView: gameObject =>
      GameObjectApService.getBasicCameraView(gameObject)->OptionSt.toNullable,
    hasBasicCameraView: GameObjectApService.hasBasicCameraView,
    addPerspectiveCameraProjection: (gameObject, cameraProjection) =>
      GameObjectApService.addPerspectiveCameraProjection(
        gameObject,
        cameraProjection,
      )->Result.getExn,
    getPerspectiveCameraProjection: gameObject =>
      GameObjectApService.getPerspectiveCameraProjection(gameObject)->OptionSt.toNullable,
    hasPerspectiveCameraProjection: GameObjectApService.hasPerspectiveCameraProjection,
    addArcballCameraController: (gameObject, cameraController) =>
      GameObjectApService.addArcballCameraController(gameObject, cameraController)->Result.getExn,
    getArcballCameraController: gameObject =>
      GameObjectApService.getArcballCameraController(gameObject)->OptionSt.toNullable,
    hasArcballCameraController: GameObjectApService.hasArcballCameraController,
  },
  transformRepo: {
    getIndex: TransformApService.getIndex,
    toComponent: TransformApService.toComponent,
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
  geometryRepo: {
    getIndex: GeometryApService.getIndex,
    toComponent: GeometryApService.toComponent,
    create: () => GeometryApService.create()->Result.getExn,
    createTriangleGeometry: () => GeometryApService.createTriangleGeometry()->Result.getExn,
    createSphereGeometry: (radius, bands) =>
      GeometryApService.createSphereGeometry(radius, bands)->Result.getExn,
    createPlaneGeometry: (width, height, widthSegments, heightSegments) =>
      GeometryApService.createPlaneGeometry(
        width,
        height,
        widthSegments,
        heightSegments,
      )->Result.getExn,
    getGameObjects: geometry =>
      GeometryApService.getGameObjects(geometry)->OptionSt.map(ListSt.toArray)->OptionSt.toNullable,
    getVertices: geometry => GeometryApService.getVertices(geometry)->Result.toNullable,
    setVertices: (geometry, vertices) =>
      GeometryApService.setVertices(geometry, vertices)->Result.getExn,
    getNormals: geometry => GeometryApService.getNormals(geometry)->Result.toNullable,
    setNormals: (geometry, normals) =>
      GeometryApService.setNormals(geometry, normals)->Result.getExn,
    getTexCoords: geometry => GeometryApService.getTexCoords(geometry)->Result.toNullable,
    setTexCoords: (geometry, texCoords) =>
      GeometryApService.setTexCoords(geometry, texCoords)->Result.getExn,
    getTangents: geometry => GeometryApService.getTangents(geometry)->Result.toNullable,
    setTangents: (geometry, tangents) =>
      GeometryApService.setTangents(geometry, tangents)->Result.getExn,
    getIndices: geometry => GeometryApService.getIndices(geometry)->Result.toNullable,
    setIndices: (geometry, indices) =>
      GeometryApService.setIndices(geometry, indices)->Result.getExn,
    hasVertices: geometry => GeometryApService.hasVertices(geometry)->Result.getExn,
    hasNormals: geometry => GeometryApService.hasNormals(geometry)->Result.getExn,
    hasTexCoords: geometry => GeometryApService.hasTexCoords(geometry)->Result.getExn,
    hasTangents: geometry => GeometryApService.hasTangents(geometry)->Result.getExn,
    hasIndices: geometry => GeometryApService.hasIndices(geometry)->Result.getExn,
    getIndicesCount: geometry => GeometryApService.getIndicesCount(geometry)->Result.toNullable,
    computeTangents: GeometryApService.computeTangents,
  },
  pbrMaterialRepo: {
    getIndex: PBRMaterialApService.getIndex,
    toComponent: PBRMaterialApService.toComponent,
    create: () => PBRMaterialApService.create()->Result.getExn,
    getGameObjects: pbrMaterial =>
      PBRMaterialApService.getGameObjects(pbrMaterial)
      ->OptionSt.map(ListSt.toArray)
      ->OptionSt.toNullable,
    getDiffuseColor: material => PBRMaterialApService.getDiffuseColor(material),
    setDiffuseColor: (material, color) =>
      PBRMaterialApService.setDiffuseColor(material, color)->Result.getExn,
    getSpecularColor: material => PBRMaterialApService.getSpecularColor(material),
    setSpecularColor: (material, color) =>
      PBRMaterialApService.setSpecularColor(material, color)->Result.getExn,
    getSpecular: material => PBRMaterialApService.getSpecular(material),
    setSpecular: (material, specular) =>
      PBRMaterialApService.setSpecular(material, specular)->Result.getExn,
    getRoughness: material => PBRMaterialApService.getRoughness(material),
    setRoughness: (material, roughness) =>
      PBRMaterialApService.setRoughness(material, roughness)->Result.getExn,
    getMetalness: material => PBRMaterialApService.getMetalness(material),
    setMetalness: (material, metalness) =>
      PBRMaterialApService.setMetalness(material, metalness)->Result.getExn,
    getTransmission: material => PBRMaterialApService.getTransmission(material),
    setTransmission: (material, transmission) =>
      PBRMaterialApService.setTransmission(material, transmission)->Result.getExn,
    getIOR: material => PBRMaterialApService.getIOR(material),
    setIOR: (material, ior) => PBRMaterialApService.setIOR(material, ior)->Result.getExn,
    getDiffuseMap: material => PBRMaterialApService.getDiffuseMap(material)->OptionSt.toNullable,
    setDiffuseMap: (material, map) => PBRMaterialApService.setDiffuseMap(material, map),
    getChannelRoughnessMetallicMap: material =>
      PBRMaterialApService.getChannelRoughnessMetallicMap(material)->OptionSt.toNullable,
    setChannelRoughnessMetallicMap: (material, map) =>
      PBRMaterialApService.setChannelRoughnessMetallicMap(material, map),
    getEmissionMap: material => PBRMaterialApService.getEmissionMap(material)->OptionSt.toNullable,
    setEmissionMap: (material, map) => PBRMaterialApService.setEmissionMap(material, map),
    getNormalMap: material => PBRMaterialApService.getNormalMap(material)->OptionSt.toNullable,
    setNormalMap: (material, map) => PBRMaterialApService.setNormalMap(material, map),
    getTransmissionMap: material =>
      PBRMaterialApService.getTransmissionMap(material)->OptionSt.toNullable,
    setTransmissionMap: (material, map) => PBRMaterialApService.setTransmissionMap(material, map),
    getSpecularMap: material => PBRMaterialApService.getSpecularMap(material)->OptionSt.toNullable,
    setSpecularMap: (material, map) => PBRMaterialApService.setSpecularMap(material, map),
  },
  directionLightRepo: {
    getIndex: DirectionLightApService.getIndex,
    toComponent: DirectionLightApService.toComponent,
    create: () => DirectionLightApService.create()->Result.getExn,
    getGameObject: light => DirectionLightApService.getGameObject(light)->OptionSt.toNullable,
    getColor: light => DirectionLightApService.getColor(light),
    setColor: (light, color) => DirectionLightApService.setColor(light, color)->Result.getExn,
    getIntensity: light => DirectionLightApService.getIntensity(light),
    setIntensity: (light, intensity) =>
      DirectionLightApService.setIntensity(light, intensity)->Result.getExn,
    getAllLights: () => DirectionLightApService.getAllLights(),
    getDirection: light => DirectionLightApService.getDirection(light)->OptionSt.toNullable,
    getLightCount: () => DirectionLightApService.getLightCount(),
  },
  basicCameraViewRepo: {
    getIndex: BasicCameraViewApService.getIndex,
    toComponent: BasicCameraViewApService.toComponent,
    create: () => BasicCameraViewApService.create(),
    getGameObject: cameraView =>
      BasicCameraViewApService.getGameObject(cameraView)->OptionSt.toNullable,
    getViewWorldToCameraMatrix: cameraView =>
      BasicCameraViewApService.getViewWorldToCameraMatrix(cameraView)
      ->Result.mapSuccess(OptionSt.toNullable)
      ->Result.getExn,
    isActive: cameraView => BasicCameraViewApService.isActive(cameraView),
    active: cameraView => BasicCameraViewApService.active(cameraView),
    unactive: cameraView => BasicCameraViewApService.unactive(cameraView),
    setActive: (cameraView, isActive) => BasicCameraViewApService.setActive(cameraView, isActive),
    getActiveBasicCameraView: () =>
      BasicCameraViewApService.getActiveBasicCameraView()
      ->Result.mapSuccess(OptionSt.toNullable)
      ->Result.getExn,
  },
  perspectiveCameraProjectionRepo: {
    getIndex: PerspectiveCameraProjectionApService.getIndex,
    toComponent: PerspectiveCameraProjectionApService.toComponent,
    create: () => PerspectiveCameraProjectionApService.create(),
    getGameObject: cameraProjection =>
      PerspectiveCameraProjectionApService.getGameObject(cameraProjection)->OptionSt.toNullable,
    getPMatrix: cameraProjection =>
      PerspectiveCameraProjectionApService.getPMatrix(cameraProjection)->OptionSt.toNullable,
    getFovy: cameraProjection =>
      PerspectiveCameraProjectionApService.getFovy(cameraProjection)->OptionSt.toNullable,
    setFovy: (cameraProjection, fovy) =>
      PerspectiveCameraProjectionApService.setFovy(cameraProjection, fovy),
    getAspect: cameraProjection =>
      PerspectiveCameraProjectionApService.getAspect(cameraProjection)->OptionSt.toNullable,
    setAspect: (cameraProjection, fovy) =>
      PerspectiveCameraProjectionApService.setAspect(cameraProjection, fovy),
    getNear: cameraProjection =>
      PerspectiveCameraProjectionApService.getNear(cameraProjection)->OptionSt.toNullable,
    setNear: (cameraProjection, fovy) =>
      PerspectiveCameraProjectionApService.setNear(cameraProjection, fovy),
    getFar: cameraProjection =>
      PerspectiveCameraProjectionApService.getFar(cameraProjection)->OptionSt.toNullable,
    setFar: (cameraProjection, fovy) =>
      PerspectiveCameraProjectionApService.setFar(cameraProjection, fovy),
    markDirty: cameraProjection => PerspectiveCameraProjectionApService.markDirty(cameraProjection),
    markNotDirty: cameraProjection =>
      PerspectiveCameraProjectionApService.markNotDirty(cameraProjection),
    update: () => PerspectiveCameraProjectionApService.update()->Result.getExn,
  },
  arcballCameraControllerRepo: {
    getIndex: ArcballCameraControllerApService.getIndex,
    toComponent: ArcballCameraControllerApService.toComponent,
    create: () => ArcballCameraControllerApService.create(),
    getGameObject: cameraController =>
      ArcballCameraControllerApService.getGameObject(cameraController)->OptionSt.toNullable,
    getDistance: cameraController =>
      ArcballCameraControllerApService.getDistance(cameraController)->OptionSt.toNullable,
    setDistance: (cameraController, distance) =>
      ArcballCameraControllerApService.setDistance(cameraController, distance)->Result.getExn,
    getMinDistance: cameraController =>
      ArcballCameraControllerApService.getMinDistance(cameraController)->OptionSt.toNullable,
    setMinDistance: (cameraController, minDistance) =>
      ArcballCameraControllerApService.setMinDistance(cameraController, minDistance),
    getWheelSpeed: cameraController =>
      ArcballCameraControllerApService.getWheelSpeed(cameraController)->OptionSt.toNullable,
    setWheelSpeed: (cameraController, wheelSpeed) =>
      ArcballCameraControllerApService.setWheelSpeed(cameraController, wheelSpeed),
    getPhi: cameraController =>
      ArcballCameraControllerApService.getPhi(cameraController)->OptionSt.toNullable,
    setPhi: (cameraController, phi) =>
      ArcballCameraControllerApService.setPhi(cameraController, phi),
    getTheta: cameraController =>
      ArcballCameraControllerApService.getTheta(cameraController)->OptionSt.toNullable,
    setTheta: (cameraController, theta) =>
      ArcballCameraControllerApService.setTheta(cameraController, theta)->Result.getExn,
    getThetaMargin: cameraController =>
      ArcballCameraControllerApService.getThetaMargin(cameraController)->OptionSt.toNullable,
    setThetaMargin: (cameraController, thetaMargin) =>
      ArcballCameraControllerApService.setThetaMargin(cameraController, thetaMargin)->Result.getExn,
    getTarget: cameraController =>
      ArcballCameraControllerApService.getTarget(cameraController)->OptionSt.toNullable,
    setTarget: (cameraController, target) =>
      ArcballCameraControllerApService.setTarget(cameraController, target),
    getRotateSpeed: cameraController =>
      ArcballCameraControllerApService.getRotateSpeed(cameraController)->OptionSt.toNullable,
    setRotateSpeed: (cameraController, rotateSpeed) =>
      ArcballCameraControllerApService.setRotateSpeed(cameraController, rotateSpeed),
    getMoveSpeedX: cameraController =>
      ArcballCameraControllerApService.getMoveSpeedX(cameraController)->OptionSt.toNullable,
    setMoveSpeedX: (cameraController, moveSpeedX) =>
      ArcballCameraControllerApService.setMoveSpeedX(cameraController, moveSpeedX),
    getMoveSpeedY: cameraController =>
      ArcballCameraControllerApService.getMoveSpeedY(cameraController)->OptionSt.toNullable,
    setMoveSpeedY: (cameraController, moveSpeedY) =>
      ArcballCameraControllerApService.setMoveSpeedY(cameraController, moveSpeedY),
    update: () => ArcballCameraControllerApService.update()->Result.getExn,
  },
}
