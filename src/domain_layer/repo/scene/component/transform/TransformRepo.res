open TransformPOType

let getMaxIndex = () => ContainerManager.getExnTransform().maxIndex

let setMaxIndex = maxIndex =>
  ContainerManager.setTransform({...ContainerManager.getExnTransform(), maxIndex: maxIndex})

let getGameObject = transform =>
  ContainerManager.getExnTransform().gameObjectMap->ImmutableSparseMap.get(transform)

let setGameObject = (transform, gameObject) => {
  let {gameObjectMap} as transformPO = ContainerManager.getExnTransform()

  ContainerManager.setTransform({
    ...transformPO,
    gameObjectMap: gameObjectMap->ImmutableSparseMap.set(transform, gameObject),
  })
}

let getParent = transform =>
  ContainerManager.getExnTransform().parentMap->ImmutableSparseMap.get(transform)

let setParent = (parent, child) => {
  let {parentMap} as transformPO = ContainerManager.getExnTransform()

  ContainerManager.setTransform({
    ...transformPO,
    parentMap: parentMap->ImmutableSparseMap.set(child, parent),
  })
}

let hasParent = transform =>
  ContainerManager.getExnTransform().parentMap->ImmutableSparseMap.has(transform)

let removeParent = transform => {
  let {parentMap} as transformPO = ContainerManager.getExnTransform()

  ContainerManager.setTransform({
    ...transformPO,
    parentMap: parentMap->ImmutableSparseMap.remove(transform),
  })
}

let getChildren = transform =>
  ContainerManager.getExnTransform().childrenMap->ImmutableSparseMap.get(transform)

let setChildren = (parent, children) => {
  let {childrenMap} as transformPO = ContainerManager.getExnTransform()

  ContainerManager.setTransform({
    ...transformPO,
    childrenMap: childrenMap->ImmutableSparseMap.set(parent, children),
  })
}

let addChild = (parent, child) => {
  let {childrenMap} as transformPO = ContainerManager.getExnTransform()

  let children = switch childrenMap->ImmutableSparseMap.get(parent) {
  | None => list{}
  | Some(children) => children
  }

  ContainerManager.setTransform({
    ...transformPO,
    childrenMap: childrenMap->ImmutableSparseMap.set(parent, list{child, ...children}),
  })
}

let removeChild = (parent, child) => {
  let {childrenMap} as transformPO = ContainerManager.getExnTransform()

  switch childrenMap->ImmutableSparseMap.get(parent) {
  | None => ()
  | Some(children) =>
    ContainerManager.setTransform({
      ...transformPO,
      childrenMap: childrenMap->ImmutableSparseMap.set(parent, children->ListSt.remove(child)),
    })
  }
}

let getIsDirty = transform =>
  ContainerManager.getExnTransform().dirtyMap->ImmutableSparseMap.get(transform)

let setIsDirty = (transform, isDirty) => {
  let {dirtyMap} as transformPO = ContainerManager.getExnTransform()

  ContainerManager.setTransform({
    ...transformPO,
    dirtyMap: dirtyMap->ImmutableSparseMap.set(transform, isDirty),
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
