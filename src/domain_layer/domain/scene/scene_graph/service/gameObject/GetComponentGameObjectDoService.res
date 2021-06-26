let getTransform = gameObject =>
  GameObjectRepo.getTransform(gameObject->GameObjectEntity.value)->WonderCommonlib.OptionSt.map(
    TransformEntity.create,
  )

let getPBRMaterial = gameObject =>
  GameObjectRepo.getPBRMaterial(gameObject->GameObjectEntity.value)->WonderCommonlib.OptionSt.map(
    PBRMaterialEntity.create,
  )

let getGeometry = gameObject =>
  GameObjectRepo.getGeometry(gameObject->GameObjectEntity.value)->WonderCommonlib.OptionSt.map(
    GeometryEntity.create,
  )

let getDirectionLight = gameObject =>
  GameObjectRepo.getDirectionLight(gameObject->GameObjectEntity.value)->WonderCommonlib.OptionSt.map(
    DirectionLightEntity.create,
  )

let getBasicCameraView = gameObject =>
  GameObjectRepo.getBasicCameraView(gameObject->GameObjectEntity.value)->WonderCommonlib.OptionSt.map(
    BasicCameraViewEntity.create,
  )

let getPerspectiveCameraProjection = gameObject =>
  GameObjectRepo.getPerspectiveCameraProjection(gameObject->GameObjectEntity.value)->WonderCommonlib.OptionSt.map(
    PerspectiveCameraProjectionEntity.create,
  )

let getArcballCameraController = gameObject =>
  GameObjectRepo.getArcballCameraController(gameObject->GameObjectEntity.value)->WonderCommonlib.OptionSt.map(
    ArcballCameraControllerEntity.create,
  )
