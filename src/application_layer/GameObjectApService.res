open VODOConvertApService

let create = () => CreateGameObjectDoService.create()->WonderCommonlib.Result.mapSuccess(gameObjectDOToGameObjectVO)

let addTransform = (gameObject, transform) =>
  AddComponentGameObjectDoService.addTransform(
    gameObject->gameObjectVOToGameObjectDO,
    transform->transformVOToTransformDO,
  )->WonderCommonlib.Result.mapSuccess(gameObjectDOToGameObjectVO)

let getTransform = gameObject =>
  GetComponentGameObjectDoService.getTransform(
    gameObject->gameObjectVOToGameObjectDO,
  )->WonderCommonlib.OptionSt.map(transformDOToTransformVO)

let hasTransform = gameObject =>
  HasComponentGameObjectDoService.hasTransform(gameObject->gameObjectVOToGameObjectDO)

let addGeometry = (gameObject, geometry) =>
  AddComponentGameObjectDoService.addGeometry(
    gameObject->gameObjectVOToGameObjectDO,
    geometry->geometryVOToGeometryDO,
  )->WonderCommonlib.Result.mapSuccess(gameObjectDOToGameObjectVO)

let getGeometry = gameObject =>
  GetComponentGameObjectDoService.getGeometry(gameObject->gameObjectVOToGameObjectDO)->WonderCommonlib.OptionSt.map(
    geometryDOToGeometryVO,
  )

let hasGeometry = gameObject =>
  HasComponentGameObjectDoService.hasGeometry(gameObject->gameObjectVOToGameObjectDO)

let addPBRMaterial = (gameObject, material) =>
  AddComponentGameObjectDoService.addPBRMaterial(
    gameObject->gameObjectVOToGameObjectDO,
    material->pbrMaterialVOToPBRMaterialDO,
  )->WonderCommonlib.Result.mapSuccess(gameObjectDOToGameObjectVO)

let getPBRMaterial = gameObject =>
  GetComponentGameObjectDoService.getPBRMaterial(
    gameObject->gameObjectVOToGameObjectDO,
  )->WonderCommonlib.OptionSt.map(pbrMaterialDOToPBRMaterialVO)

let hasPBRMaterial = gameObject =>
  HasComponentGameObjectDoService.hasPBRMaterial(gameObject->gameObjectVOToGameObjectDO)

let addDirectionLight = (gameObject, light) =>
  AddComponentGameObjectDoService.addDirectionLight(
    gameObject->gameObjectVOToGameObjectDO,
    light->directionLightVOToDirectionLightDO,
  )->WonderCommonlib.Result.mapSuccess(gameObjectDOToGameObjectVO)

let getDirectionLight = gameObject =>
  GetComponentGameObjectDoService.getDirectionLight(
    gameObject->gameObjectVOToGameObjectDO,
  )->WonderCommonlib.OptionSt.map(directionLightDOToDirectionLightVO)

let hasDirectionLight = gameObject =>
  HasComponentGameObjectDoService.hasDirectionLight(gameObject->gameObjectVOToGameObjectDO)

let addBasicCameraView = (gameObject, cameraView) =>
  AddComponentGameObjectDoService.addBasicCameraView(
    gameObject->gameObjectVOToGameObjectDO,
    cameraView->basicCameraViewVOToBasicCameraViewDO,
  )->WonderCommonlib.Result.mapSuccess(gameObjectDOToGameObjectVO)

let getBasicCameraView = gameObject =>
  GetComponentGameObjectDoService.getBasicCameraView(
    gameObject->gameObjectVOToGameObjectDO,
  )->WonderCommonlib.OptionSt.map(basicCameraViewDOToBasicCameraViewVO)

let hasBasicCameraView = gameObject =>
  HasComponentGameObjectDoService.hasBasicCameraView(gameObject->gameObjectVOToGameObjectDO)

let addPerspectiveCameraProjection = (gameObject, cameraProjection) =>
  AddComponentGameObjectDoService.addPerspectiveCameraProjection(
    gameObject->gameObjectVOToGameObjectDO,
    cameraProjection->perspectiveCameraProjectionVOToPerspectiveCameraProjectionDO,
  )->WonderCommonlib.Result.mapSuccess(gameObjectDOToGameObjectVO)

let getPerspectiveCameraProjection = gameObject =>
  GetComponentGameObjectDoService.getPerspectiveCameraProjection(
    gameObject->gameObjectVOToGameObjectDO,
  )->WonderCommonlib.OptionSt.map(perspectiveCameraProjectionDOToPerspectiveCameraProjectionVO)

let hasPerspectiveCameraProjection = gameObject =>
  HasComponentGameObjectDoService.hasPerspectiveCameraProjection(
    gameObject->gameObjectVOToGameObjectDO,
  )

let addArcballCameraController = (gameObject, cameraController) =>
  AddComponentGameObjectDoService.addArcballCameraController(
    gameObject->gameObjectVOToGameObjectDO,
    cameraController->arcballCameraControllerVOToArcballCameraControllerDO,
  )->WonderCommonlib.Result.mapSuccess(gameObjectDOToGameObjectVO)

let getArcballCameraController = gameObject =>
  GetComponentGameObjectDoService.getArcballCameraController(
    gameObject->gameObjectVOToGameObjectDO,
  )->WonderCommonlib.OptionSt.map(arcballCameraControllerDOToArcballCameraControllerVO)

let hasArcballCameraController = gameObject =>
  HasComponentGameObjectDoService.hasArcballCameraController(gameObject->gameObjectVOToGameObjectDO)
