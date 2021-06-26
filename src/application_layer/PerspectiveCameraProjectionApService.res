open VODOConvertApService

let getIndex = cameraProjection =>
  cameraProjection
  ->perspectiveCameraProjectionVOToPerspectiveCameraProjectionDO
  ->IndexPerspectiveCameraProjectionDoService.getIndex

let toComponent = index =>
  index
  ->IndexPerspectiveCameraProjectionDoService.toComponent
  ->perspectiveCameraProjectionDOToPerspectiveCameraProjectionVO

let create = () =>
  CreatePerspectiveCameraProjectionDoService.create()->perspectiveCameraProjectionDOToPerspectiveCameraProjectionVO

let getGameObject = cameraProjection =>
  GameObjectPerspectiveCameraProjectionDoService.getGameObject(
    cameraProjection->perspectiveCameraProjectionVOToPerspectiveCameraProjectionDO,
  )->WonderCommonlib.OptionSt.map(gameObjectDOToGameObjectVO)

let getPMatrix = cameraProjection =>
  PMatrixPerspectiveCameraProjectionDoService.getPMatrix(
    cameraProjection->perspectiveCameraProjectionVOToPerspectiveCameraProjectionDO,
  )->WonderCommonlib.OptionSt.map(ProjectionMatrixVO.value)

let getFovy = cameraProjection =>
  FrustumPerspectiveCameraProjectionDoService.getFovy(
    cameraProjection->perspectiveCameraProjectionVOToPerspectiveCameraProjectionDO,
  )->WonderCommonlib.OptionSt.map(FovyVO.value)

let setFovy = (cameraProjection, fovy) =>
  FrustumPerspectiveCameraProjectionDoService.setFovy(
    cameraProjection->perspectiveCameraProjectionVOToPerspectiveCameraProjectionDO,
    fovy->FovyVO.create,
  )

let getAspect = cameraProjection =>
  FrustumPerspectiveCameraProjectionDoService.getAspect(
    cameraProjection->perspectiveCameraProjectionVOToPerspectiveCameraProjectionDO,
  )->WonderCommonlib.OptionSt.map(AspectVO.value)

let setAspect = (cameraProjection, aspect) =>
  FrustumPerspectiveCameraProjectionDoService.setAspect(
    cameraProjection->perspectiveCameraProjectionVOToPerspectiveCameraProjectionDO,
    aspect->AspectVO.create,
  )

let getNear = cameraProjection =>
  FrustumPerspectiveCameraProjectionDoService.getNear(
    cameraProjection->perspectiveCameraProjectionVOToPerspectiveCameraProjectionDO,
  )->WonderCommonlib.OptionSt.map(NearVO.value)

let setNear = (cameraProjection, near) =>
  FrustumPerspectiveCameraProjectionDoService.setNear(
    cameraProjection->perspectiveCameraProjectionVOToPerspectiveCameraProjectionDO,
    near->NearVO.create,
  )

let getFar = cameraProjection =>
  FrustumPerspectiveCameraProjectionDoService.getFar(
    cameraProjection->perspectiveCameraProjectionVOToPerspectiveCameraProjectionDO,
  )->WonderCommonlib.OptionSt.map(FarVO.value)

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
