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

let addGeometry = (gameObject, geometry) =>
  AddComponentGameObjectDoService.addGeometry(
    gameObject->gameObjectVOToGameObjectDO,
    geometry->geometryVOToGeometryDO,
  )->Result.mapSuccess(gameObjectDOToGameObjectVO)

let getGeometry = gameObject =>
  GetComponentGameObjectDoService.getGeometry(gameObject->gameObjectVOToGameObjectDO)->OptionSt.map(
    geometryDOToGeometryVO,
  )

let hasGeometry = gameObject =>
  HasComponentGameObjectDoService.hasGeometry(gameObject->gameObjectVOToGameObjectDO)

let addPBRMaterial = (gameObject, material) =>
  AddComponentGameObjectDoService.addPBRMaterial(
    gameObject->gameObjectVOToGameObjectDO,
    material->pbrMaterialVOToPBRMaterialDO,
  )->Result.mapSuccess(gameObjectDOToGameObjectVO)

let getPBRMaterial = gameObject =>
  GetComponentGameObjectDoService.getPBRMaterial(
    gameObject->gameObjectVOToGameObjectDO,
  )->OptionSt.map(pbrMaterialDOToPBRMaterialVO)

let hasPBRMaterial = gameObject =>
  HasComponentGameObjectDoService.hasPBRMaterial(gameObject->gameObjectVOToGameObjectDO)

let addDirectionLight = (gameObject, light) =>
  AddComponentGameObjectDoService.addDirectionLight(
    gameObject->gameObjectVOToGameObjectDO,
    light->directionLightVOToDirectionLightDO,
  )->Result.mapSuccess(gameObjectDOToGameObjectVO)

let getDirectionLight = gameObject =>
  GetComponentGameObjectDoService.getDirectionLight(
    gameObject->gameObjectVOToGameObjectDO,
  )->OptionSt.map(directionLightDOToDirectionLightVO)

let hasDirectionLight = gameObject =>
  HasComponentGameObjectDoService.hasDirectionLight(gameObject->gameObjectVOToGameObjectDO)

let addBasicCameraView = (gameObject, cameraView) =>
  AddComponentGameObjectDoService.addBasicCameraView(
    gameObject->gameObjectVOToGameObjectDO,
    cameraView->basicCameraViewVOToBasicCameraViewDO,
  )->Result.mapSuccess(gameObjectDOToGameObjectVO)

let getBasicCameraView = gameObject =>
  GetComponentGameObjectDoService.getBasicCameraView(
    gameObject->gameObjectVOToGameObjectDO,
  )->OptionSt.map(basicCameraViewDOToBasicCameraViewVO)

let hasBasicCameraView = gameObject =>
  HasComponentGameObjectDoService.hasBasicCameraView(gameObject->gameObjectVOToGameObjectDO)
