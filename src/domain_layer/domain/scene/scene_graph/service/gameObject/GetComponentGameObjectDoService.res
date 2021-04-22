let getTransform = gameObject =>
  GameObjectRepo.getTransform(gameObject->GameObjectEntity.value)->OptionSt.map(
    TransformEntity.create,
  )

// let getBSDFMaterial = gameObject =>
//   GameObjectRepo.getBSDFMaterial(
//     gameObject->GameObjectEntity.value,
//   )->OptionSt.map(BSDFMaterialEntity.create)

let getGeometry = gameObject =>
  GameObjectRepo.getGeometry(
    gameObject->GameObjectEntity.value,
  )->OptionSt.map(GeometryEntity.create)

// let getDirectionLight = gameObject =>
//   GameObjectRepo.getDirectionLight(
//     gameObject->GameObjectEntity.value,
//   )->OptionSt.map(DirectionLightEntity.create)

// let getBasicCameraView = gameObject =>
//   GameObjectRepo.getBasicCameraView(
//     gameObject->GameObjectEntity.value,
//   )->OptionSt.map(BasicCameraViewEntity.create)

// let getPerspectiveCameraProjection = gameObject =>
//   GameObjectRepo.getPerspectiveCameraProjection(
//     gameObject->GameObjectEntity.value,
//   )->OptionSt.map(PerspectiveCameraProjectionEntity.create)
