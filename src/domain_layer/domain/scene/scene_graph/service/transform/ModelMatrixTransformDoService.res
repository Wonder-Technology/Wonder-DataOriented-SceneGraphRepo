let getLocalToWorldMatrix = transform =>
  TransformRepo.getLocalToWorldMatrix(transform->TransformEntity.value)->LocalToWorldMatrixVO.create

let getNormalMatrix = transform =>
  GlobalTempRepo.getFloat9Array1()
  ->Matrix4.invertTo3x3(TransformRepo.getLocalToWorldMatrix(transform->TransformEntity.value))
  ->Result.mapSuccess(mat3 => mat3->Matrix3.transposeSelf->NormalMatrixVO.create)

let getLocalPosition = transform =>
  TransformRepo.getLocalPosition(transform->TransformEntity.value)->PositionVO.create

let setLocalPosition = (transform, localPosition) =>
  TransformRepo.setLocalPosition(
    transform->TransformEntity.value,
    localPosition->PositionVO.value,
  )->Result.mapSuccess(() => HierachyTransformDoService.markHierachyDirty(transform))

let setPosition = (transform, parent, position) =>
  GlobalTempRepo.getFloat32Array1()
  ->LocalToWorldMatrixVO.invert(getLocalToWorldMatrix(parent))
  ->Result.bind(mat4 =>
    setLocalPosition(
      transform,
      position->PositionVO.value->Vector3.transformMat4Tuple(mat4)->PositionVO.create,
    )
  )

let getLocalRotation = transform =>
  TransformRepo.getLocalRotation(transform->TransformEntity.value)->RotationVO.create

let setLocalRotation = (transform, localRotation) =>
  TransformRepo.setLocalRotation(
    transform->TransformEntity.value,
    localRotation->RotationVO.value,
  )->Result.mapSuccess(() => HierachyTransformDoService.markHierachyDirty(transform))

let getLocalEulerAngles = transform =>
  TransformRepo.getLocalRotation(transform->TransformEntity.value)
  ->Quaternion.getEulerAngles
  ->Tuple3.map(AngleVO.create)
  ->EulerAnglesVO.create

let setLocalEulerAngles = (transform, localEulerAngles) =>
  setLocalRotation(
    transform,
    localEulerAngles->EulerAnglesVO.convertToQuaternion->RotationVO.create,
  )

let getLocalScale = transform =>
  TransformRepo.getLocalScale(transform->TransformEntity.value)->ScaleVO.create

let setLocalScale = (transform, localScale) =>
  TransformRepo.setLocalScale(
    transform->TransformEntity.value,
    localScale->ScaleVO.value,
  )->Result.mapSuccess(() => HierachyTransformDoService.markHierachyDirty(transform))

let setScale = (transform, parent, scale) =>
  GlobalTempRepo.getFloat32Array1()
  ->LocalToWorldMatrixVO.invert(getLocalToWorldMatrix(parent))
  ->Result.bind(mat4 =>
    setLocalScale(transform, scale->ScaleVO.value->Vector3.transformMat4Tuple(mat4)->ScaleVO.create)
  )
