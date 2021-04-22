let _check = (hasComponentFunc, gameObject) => Contract.requireCheck(() => {
    open Contract
    open Operators
    test(
      Log.buildAssertMessage(
        ~expect=j`this type of the component shouldn't be added before`,
        ~actual=j`not`,
      ),
      () => hasComponentFunc(gameObject)->assertFalse,
    )
  }, ConfigRepo.getIsDebug())

let _addComponent = (
  (hasComponentFunc, addComponentFunc, handleAddComponentFunc),
  (gameObject, component),
) =>
  _check(hasComponentFunc, gameObject)->Result.mapSuccess(() => {
    addComponentFunc(gameObject, component)

    handleAddComponentFunc(. component, gameObject)

    gameObject->GameObjectEntity.create
  })

let addTransform = (gameObject, transform) =>
  _addComponent(
    (
      GameObjectRepo.hasTransform,
      GameObjectRepo.addTransform,
      AddTransformDoService.handleAddComponent,
    ),
    (gameObject->GameObjectEntity.value, transform->TransformEntity.value),
  )

// let addBSDFMaterial = (gameObject, material) =>
//   _addComponent(
//     (
//       GameObjectRepo.hasBSDFMaterial,
//       GameObjectRepo.addBSDFMaterial,
//       AddBSDFMaterialDoService.handleAddComponent,
//     ),
//     (gameObject->GameObjectEntity.value, material->BSDFMaterialEntity.value),
//   )

let addGeometry = (gameObject, geometry) =>
  _addComponent(
    (
      GameObjectRepo.hasGeometry,
      GameObjectRepo.addGeometry,
      AddGeometryDoService.handleAddComponent,
    ),
    (gameObject->GameObjectEntity.value, geometry->GeometryEntity.value),
  )

// let addDirectionLight = (gameObject, light) =>
//   _addComponent(
//     (
//       GameObjectRepo.hasDirectionLight,
//       GameObjectRepo.addDirectionLight,
//       AddDirectionLightDoService.handleAddComponent,
//     ),
//     (gameObject->GameObjectEntity.value, light->DirectionLightEntity.value),
//   )

// let addBasicCameraView = (gameObject, cameraView) =>
//   _addComponent(
//     (
//       GameObjectRepo.hasBasicCameraView,
//       GameObjectRepo.addBasicCameraView,
//       AddBasicCameraViewDoService.handleAddComponent,
//     ),
//     (gameObject->GameObjectEntity.value, cameraView->BasicCameraViewEntity.value),
//   )

// let addPerspectiveCameraProjection = (gameObject, cameraProjection) =>
//   _addComponent(
//     (
//       GameObjectRepo.hasPerspectiveCameraProjection,
//       GameObjectRepo.addPerspectiveCameraProjection,
//       AddPerspectiveCameraProjectionDoService.handleAddComponent,
//     ),
//     (gameObject->GameObjectEntity.value, cameraProjection->PerspectiveCameraProjectionEntity.value),
//   )
