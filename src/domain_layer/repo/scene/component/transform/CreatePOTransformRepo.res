let _setAllTypeArrDataToDefault = (
  (localToWorldMatrices, localPositions, localRotations, localScales),
  count,
  (defaultLocalToWorldMatrix, defaultLocalPosition, defaultLocalRotation, defaultLocalScale),
) =>
  WonderCommonlib.ListSt.range(0, count - 1)
  /* ! shouldn't use traverseResultM! it will cause max size stack err! */
  ->WonderCommonlib.ListSt.reduce(WonderCommonlib.Result.succeed(), (result, index) =>
    result->WonderCommonlib.Result.bind(() =>
      OperateTypeArrayTransformRepoUtils.setLocalToWorldMatrix(
        index,
        defaultLocalToWorldMatrix,
        localToWorldMatrices,
      )->WonderCommonlib.Result.bind(() =>
        OperateTypeArrayTransformRepoUtils.setLocalPosition(
          index,
          defaultLocalPosition,
          localPositions,
        )->WonderCommonlib.Result.bind(() =>
          OperateTypeArrayTransformRepoUtils.setLocalRotation(
            index,
            defaultLocalRotation,
            localRotations,
          )->WonderCommonlib.Result.bind(() =>
            OperateTypeArrayTransformRepoUtils.setLocalScale(index, defaultLocalScale, localScales)
          )
        )
      )
    )
  )
  ->WonderCommonlib.Result.mapSuccess(() => (localToWorldMatrices, localPositions, localRotations, localScales))

let _initBufferData = (count, defaultDataTuple) =>
  BufferTransformRepoUtils.createBuffer(count)->WonderCommonlib.Result.bind(buffer =>
    CreateTypeArrayTransformRepoUtils.createTypeArrays(buffer, count)
    ->_setAllTypeArrDataToDefault(count, defaultDataTuple)
    ->WonderCommonlib.Result.mapSuccess(typeArrData => (buffer, typeArrData))
  )

let createPOWithSharedArrayBufferData = (
  {
    buffer,
    localToWorldMatrices,
    localPositions,
    localRotations,
    localScales,
  }: TransformSharedArrayBufferDataType.transformSharedArrayBufferData,
): TransformPOType.transformPO => {
  let transformCount = ConfigRepo.getTransformCount()

  let defaultLocalToWorldMatrix = (1., 0., 0., 0., 0., 1., 0., 0., 0., 0., 1., 0., 0., 0., 0., 1.)
  let defaultLocalPosition = (0., 0., 0.)
  let defaultLocalRotation = (0., 0., 0., 1.)
  let defaultLocalScale = (1., 1., 1.)

  {
    maxIndex: 0,
    buffer: buffer,
    localToWorldMatrices: localToWorldMatrices,
    localPositions: localPositions,
    localRotations: localRotations,
    localScales: localScales,
    defaultLocalToWorldMatrix: defaultLocalToWorldMatrix,
    defaultLocalPosition: defaultLocalPosition,
    defaultLocalRotation: defaultLocalRotation,
    defaultLocalScale: defaultLocalScale,
    parentMap: CreateMapComponentRepoUtils.createEmptyMap(transformCount),
    childrenMap: CreateMapComponentRepoUtils.createEmptyMap(transformCount),
    gameObjectMap: CreateMapComponentRepoUtils.createEmptyMap(transformCount),
    dirtyMap: CreateMapComponentRepoUtils.createEmptyMap(transformCount),
  }
}

let createPO = () => {
  let transformCount = ConfigRepo.getTransformCount()

  let defaultLocalToWorldMatrix = (1., 0., 0., 0., 0., 1., 0., 0., 0., 0., 1., 0., 0., 0., 0., 1.)
  let defaultLocalPosition = (0., 0., 0.)
  let defaultLocalRotation = (0., 0., 0., 1.)
  let defaultLocalScale = (1., 1., 1.)

  _initBufferData(
    transformCount,
    (defaultLocalToWorldMatrix, defaultLocalPosition, defaultLocalRotation, defaultLocalScale),
  )->WonderCommonlib.Result.mapSuccess(((
    buffer,
    (localToWorldMatrices, localPositions, localRotations, localScales),
  )): TransformPOType.transformPO =>
    createPOWithSharedArrayBufferData(
      (
        {
          buffer: buffer,
          localToWorldMatrices: localToWorldMatrices,
          localPositions: localPositions,
          localRotations: localRotations,
          localScales: localScales,
        }: TransformSharedArrayBufferDataType.transformSharedArrayBufferData
      ),
    )
  )
}
