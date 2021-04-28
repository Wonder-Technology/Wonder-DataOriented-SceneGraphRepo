open VODOConvertApService

let create = () =>
  CreatePerspectiveCameraProjectionDoService.create()->perspectiveCameraProjectionDOToPerspectiveCameraProjectionVO

let getGameObject = cameraProjection =>
  GameObjectPerspectiveCameraProjectionDoService.getGameObject(
    cameraProjection->perspectiveCameraProjectionVOToPerspectiveCameraProjectionDO,
  )->OptionSt.map(gameObjectDOToGameObjectVO)

let getPMatrix = cameraProjection =>
  PMatrixPerspectiveCameraProjectionDoService.getPMatrix(
    cameraProjection->perspectiveCameraProjectionVOToPerspectiveCameraProjectionDO,
  )->OptionSt.map(ProjectionMatrixVO.value)

let getFovy = cameraProjection =>
  FrustumPerspectiveCameraProjectionDoService.getFovy(
    cameraProjection->perspectiveCameraProjectionVOToPerspectiveCameraProjectionDO,
  )->OptionSt.map(FovyVO.value)

let setFovy = (cameraProjection, fovy) =>
  FrustumPerspectiveCameraProjectionDoService.setFovy(
    cameraProjection->perspectiveCameraProjectionVOToPerspectiveCameraProjectionDO,
    fovy->FovyVO.create,
  )

let getAspect = cameraProjection =>
  FrustumPerspectiveCameraProjectionDoService.getAspect(
    cameraProjection->perspectiveCameraProjectionVOToPerspectiveCameraProjectionDO,
  )->OptionSt.map(AspectVO.value)

let setAspect = (cameraProjection, aspect) =>
  FrustumPerspectiveCameraProjectionDoService.setAspect(
    cameraProjection->perspectiveCameraProjectionVOToPerspectiveCameraProjectionDO,
    aspect->AspectVO.create,
  )

let getNear = cameraProjection =>
  FrustumPerspectiveCameraProjectionDoService.getNear(
    cameraProjection->perspectiveCameraProjectionVOToPerspectiveCameraProjectionDO,
  )->OptionSt.map(NearVO.value)

let setNear = (cameraProjection, near) =>
  FrustumPerspectiveCameraProjectionDoService.setNear(
    cameraProjection->perspectiveCameraProjectionVOToPerspectiveCameraProjectionDO,
    near->NearVO.create,
  )

let getFar = cameraProjection =>
  FrustumPerspectiveCameraProjectionDoService.getFar(
    cameraProjection->perspectiveCameraProjectionVOToPerspectiveCameraProjectionDO,
  )->OptionSt.map(FarVO.value)

let setFar = (cameraProjection, far) =>
  FrustumPerspectiveCameraProjectionDoService.setFar(
    cameraProjection->perspectiveCameraProjectionVOToPerspectiveCameraProjectionDO,
    far->FarVO.create,
  )

let markDirty = cameraProjection =>
  DirtyPerspectiveCameraProjectionDoService.markDirty(
    cameraProjection->perspectiveCameraProjectionVOToPerspectiveCameraProjectionDO,
  )

let markNotDirty = cameraProjection =>
  DirtyPerspectiveCameraProjectionDoService.markNotDirty(
    cameraProjection->perspectiveCameraProjectionVOToPerspectiveCameraProjectionDO,
  )

let update = UpdatePerspectiveCameraProjectionDoService.update
