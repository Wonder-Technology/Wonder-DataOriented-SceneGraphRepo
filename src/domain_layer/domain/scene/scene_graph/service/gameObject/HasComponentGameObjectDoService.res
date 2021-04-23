let hasTransform = gameObject => GameObjectRepo.hasTransform(gameObject->GameObjectEntity.value)

let hasPBRMaterial = gameObject => GameObjectRepo.hasPBRMaterial(gameObject->GameObjectEntity.value)

let hasGeometry = gameObject => GameObjectRepo.hasGeometry(gameObject->GameObjectEntity.value)

// let hasDirectionLight = gameObject =>
//   GameObjectRepo.hasDirectionLight(gameObject->GameObjectEntity.value)

// let hasBasicCameraView = gameObject =>
//   GameObjectRepo.hasBasicCameraView(gameObject->GameObjectEntity.value)

// let hasPerspectiveCameraProjection = gameObject =>
//   GameObjectRepo.hasPerspectiveCameraProjection(
//     gameObject->GameObjectEntity.value,
//   )
