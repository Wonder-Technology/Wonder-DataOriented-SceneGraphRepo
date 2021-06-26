open TransformPOType

open TransformSharedArrayBufferDataType

let getMaxIndex = () => ContainerManager.getExnTransform().maxIndex

let setMaxIndex = maxIndex =>
  ContainerManager.setTransform({...ContainerManager.getExnTransform(), maxIndex: maxIndex})

let getGameObject = transform =>
  ContainerManager.getExnTransform().gameObjectMap->WonderCommonlib.ImmutableSparseMap.get(transform)

let setGameObject = (transform, gameObject) => {
  let {gameObjectMap} as transformPO = ContainerManager.getExnTransform()

  ContainerManager.setTransform({
    ...transformPO,
    gameObjectMap: gameObjectMap->WonderCommonlib.ImmutableSparseMap.set(transform, gameObject),
  })
}

let getParent = transform =>
  ContainerManager.getExnTransform().parentMap->WonderCommonlib.ImmutableSparseMap.get(transform)

let setParent = (parent, child) => {
  let {parentMap} as transformPO = ContainerManager.getExnTransform()

  ContainerManager.setTransform({
    ...transformPO,
    parentMap: parentMap->WonderCommonlib.ImmutableSparseMap.set(child, parent),
  })
}

let hasParent = transform =>
  ContainerManager.getExnTransform().parentMap->WonderCommonlib.ImmutableSparseMap.has(transform)

let removeParent = transform => {
  let {parentMap} as transformPO = ContainerManager.getExnTransform()

  ContainerManager.setTransform({
    ...transformPO,
    parentMap: parentMap->WonderCommonlib.ImmutableSparseMap.remove(transform),
  })
}

let getChildren = transform =>
  ContainerManager.getExnTransform().childrenMap->WonderCommonlib.ImmutableSparseMap.get(transform)

let setChildren = (parent, children) => {
  let {childrenMap} as transformPO = ContainerManager.getExnTransform()

  ContainerManager.setTransform({
    ...transformPO,
    childrenMap: childrenMap->WonderCommonlib.ImmutableSparseMap.set(parent, children),
  })
}

let addChild = (parent, child) => {
  let {childrenMap} as transformPO = ContainerManager.getExnTransform()

  let children = switch childrenMap->WonderCommonlib.ImmutableSparseMap.get(parent) {
  | None => list{}
  | Some(children) => children
  }

  ContainerManager.setTransform({
    ...transformPO,
    childrenMap: childrenMap->WonderCommonlib.ImmutableSparseMap.set(parent, list{child, ...children}),
  })
}

let removeChild = (parent, child) => {
  let {childrenMap} as transformPO = ContainerManager.getExnTransform()

  switch childrenMap->WonderCommonlib.ImmutableSparseMap.get(parent) {
  | None => ()
  | Some(children) =>
    ContainerManager.setTransform({
      ...transformPO,
      childrenMap: childrenMap->WonderCommonlib.ImmutableSparseMap.set(parent, children->WonderCommonlib.ListSt.remove(child)),
    })
  }
}

let getIsDirty = transform =>
  ContainerManager.getExnTransform().dirtyMap->WonderCommonlib.ImmutableSparseMap.get(transform)

let setIsDirty = (transform, isDirty) => {
  let {dirtyMap} as transformPO = ContainerManager.getExnTransform()

  ContainerManager.setTransform({
    ...transformPO,
    dirtyMap: dirtyMap->WonderCommonlib.ImmutableSparseMap.set(transform, isDirty),
  })
}

let getLocalToWorldMatrix = transform =>
  OperateTypeArrayTransformRepoUtils.getLocalToWorldMatrixTypeArray(
    transform,
    ContainerManager.getExnTransform().localToWorldMatrices,
  )

let getLocalPosition = transform =>
  OperateTypeArrayTransformRepoUtils.getLocalPositionTuple(
    transform,
    ContainerManager.getExnTransform().localPositions,
  )

let setLocalPosition = (transform, position) =>
  OperateTypeArrayTransformRepoUtils.setLocalPosition(
    transform,
    position,
    ContainerManager.getExnTransform().localPositions,
  )

let getLocalRotation = transform =>
  OperateTypeArrayTransformRepoUtils.getLocalRotationTuple(
    transform,
    ContainerManager.getExnTransform().localRotations,
  )

let setLocalRotation = (transform, rotation) =>
  OperateTypeArrayTransformRepoUtils.setLocalRotation(
    transform,
    rotation,
    ContainerManager.getExnTransform().localRotations,
  )

let getLocalScale = transform =>
  OperateTypeArrayTransformRepoUtils.getLocalScaleTuple(
    transform,
    ContainerManager.getExnTransform().localScales,
  )

let setLocalScale = (transform, scale) =>
  OperateTypeArrayTransformRepoUtils.setLocalScale(
    transform,
    scale,
    ContainerManager.getExnTransform().localScales,
  )

let getSharedArrayBufferData = () => {
  let {
    buffer,
    localToWorldMatrices,
    localPositions,
    localRotations,
    localScales,
  } = ContainerManager.getExnTransform()

  {
    buffer: buffer,
    localToWorldMatrices: localToWorldMatrices,
    localPositions: localPositions,
    localRotations: localRotations,
    localScales: localScales,
  }
}
