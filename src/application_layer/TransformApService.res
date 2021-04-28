open VODOConvertApService

let create = () => CreateTransformDoService.create()->Result.mapSuccess(transformDOToTransformVO)

let getGameObject = transform =>
  GameObjectTransformDoService.getGameObject(transform->transformVOToTransformDO)->OptionSt.map(
    gameObjectDOToGameObjectVO,
  )

let getParent = transform =>
  HierachyTransformDoService.getParent(transform->transformVOToTransformDO)->OptionSt.map(
    transformDOToTransformVO,
  )

let hasParent = transform =>
  HierachyTransformDoService.hasParent(transform->transformVOToTransformDO)

let setParent = (parent, child) =>
  HierachyTransformDoService.setParent(
    parent->transformVOToTransformDO,
    child->transformVOToTransformDO,
  )

let removeParent = parent =>
  HierachyTransformDoService.removeParent(parent->transformVOToTransformDO)

let getChildren = transform =>
  HierachyTransformDoService.getChildren(
    transform->transformVOToTransformDO,
  )->OptionSt.map(children => children->ListSt.map(transformDOToTransformVO))

let getLocalPosition = transform =>
  ModelMatrixTransformDoService.getLocalPosition(
    transform->transformVOToTransformDO,
  )->PositionVO.value

let setLocalPosition = (transform, localPosition) =>
  ModelMatrixTransformDoService.setLocalPosition(
    transform->transformVOToTransformDO,
    localPosition->PositionVO.create,
  )

let getPosition = transform =>
  UpdateTransformDoService.updateAndGetPosition(
    transform->transformVOToTransformDO,
  )->PositionVO.value

let setPosition = (transform, position) =>
  UpdateTransformDoService.updateAndSetPosition(
    transform->transformVOToTransformDO,
    position->PositionVO.create,
  )

let getLocalRotation = transform =>
  ModelMatrixTransformDoService.getLocalRotation(
    transform->transformVOToTransformDO,
  )->RotationVO.value

let setLocalRotation = (transform, localRotation) =>
  ModelMatrixTransformDoService.setLocalRotation(
    transform->transformVOToTransformDO,
    localRotation->RotationVO.create,
  )

let getRotation = transform =>
  UpdateTransformDoService.updateAndGetRotation(
    transform->transformVOToTransformDO,
  )->RotationVO.value

let setRotation = (transform, rotation) =>
  UpdateTransformDoService.updateAndSetRotation(
    transform->transformVOToTransformDO,
    rotation->RotationVO.create,
  )

let getLocalScale = transform =>
  ModelMatrixTransformDoService.getLocalScale(transform->transformVOToTransformDO)->ScaleVO.value

let setLocalScale = (transform, localScale) =>
  ModelMatrixTransformDoService.setLocalScale(
    transform->transformVOToTransformDO,
    localScale->ScaleVO.create,
  )

let getScale = transform =>
  UpdateTransformDoService.updateAndGetScale(transform->transformVOToTransformDO)->ScaleVO.value

let setScale = (transform, scale) =>
  UpdateTransformDoService.updateAndSetScale(
    transform->transformVOToTransformDO,
    scale->ScaleVO.create,
  )

let getLocalEulerAngles = transform =>
  ModelMatrixTransformDoService.getLocalEulerAngles(
    transform->transformVOToTransformDO,
  )->EulerAnglesVO.getPrimitiveValue

let setLocalEulerAngles = (transform, localEulerAngles) =>
  ModelMatrixTransformDoService.setLocalEulerAngles(
    transform->transformVOToTransformDO,
    localEulerAngles->Tuple3.map(AngleVO.create)->EulerAnglesVO.create,
  )

let getEulerAngles = transform =>
  UpdateTransformDoService.updateAndGetEulerAngles(
    transform->transformVOToTransformDO,
  )->EulerAnglesVO.getPrimitiveValue

let setEulerAngles = (transform, eulerAngles) =>
  UpdateTransformDoService.updateAndSetEulerAngles(
    transform->transformVOToTransformDO,
    eulerAngles->Tuple3.map(AngleVO.create)->EulerAnglesVO.create,
  )

let rotateLocalOnAxis = (transform, (angle, localAxis)) =>
  RotateTransformDoService.rotateLocalOnAxis(
    transform->transformVOToTransformDO,
    (angle->AngleVO.create, localAxis->AxisVO.create),
  )

let rotateWorldOnAxis = (transform, (angle, worldAxis)) =>
  RotateTransformDoService.rotateWorldOnAxis(
    transform->transformVOToTransformDO,
    (angle->AngleVO.create, worldAxis->AxisVO.create),
  )

let getLocalToWorldMatrix = transform =>
  ModelMatrixTransformDoService.getLocalToWorldMatrix(
    transform->transformVOToTransformDO,
  )->LocalToWorldMatrixVO.value

let getNormalMatrix = transform =>
  ModelMatrixTransformDoService.getNormalMatrix(
    transform->transformVOToTransformDO,
  )->Result.mapSuccess(NormalMatrixVO.value)

let lookAt = (transform, target) =>
  LookAtTransformDoService.lookAt(
    ~transform=transform->transformVOToTransformDO,
    ~target=target->TargetVO.create,
    (),
  )
