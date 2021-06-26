open GeometryPOType

open GeometrySharedArrayBufferDataType

open ReallocatedPointsGeometryRepoUtils

open Js.Typed_array

open TypeArrayRepoUtils

let getMaxIndex = () => ContainerManager.getExnGeometry().maxIndex

let setMaxIndex = maxIndex =>
  ContainerManager.setGeometry({...ContainerManager.getExnGeometry(), maxIndex: maxIndex})

let getGameObjects = geometry =>
  ContainerManager.getExnGeometry().gameObjectsMap->WonderCommonlib.ImmutableSparseMap.get(geometry)

let addGameObject = (geometry, gameObject) => {
  let {gameObjectsMap} as geometryPO = ContainerManager.getExnGeometry()

  ContainerManager.setGeometry({
    ...geometryPO,
    gameObjectsMap: gameObjectsMap->ListMapRepoUtils.addValue(geometry, gameObject),
  })
}

let getVertices = geometry => {
  let {vertices, verticesInfos} = ContainerManager.getExnGeometry()

  getFloat32PointData(BufferGeometryRepoUtils.getInfoIndex(geometry), vertices, verticesInfos)
}

let setVertices = (geometry, data) => {
  let {verticesInfos, vertices, verticesOffset} as geometryPO = ContainerManager.getExnGeometry()

  setFloat32PointData(
    (
      BufferGeometryRepoUtils.getInfoIndex(geometry),
      verticesInfos,
      verticesOffset,
      Float32Array.length(data),
    ),
    fillFloat32ArrayWithOffset(vertices, data),
  )->WonderCommonlib.Result.mapSuccess(verticesOffset =>
    ContainerManager.setGeometry({...geometryPO, verticesOffset: verticesOffset})
  )
}

let getNormals = geometry => {
  let {normals, normalsInfos} = ContainerManager.getExnGeometry()

  getFloat32PointData(BufferGeometryRepoUtils.getInfoIndex(geometry), normals, normalsInfos)
}

let setNormals = (geometry, data) => {
  let {normalsInfos, normals, normalsOffset} as geometryPO = ContainerManager.getExnGeometry()

  setFloat32PointData(
    (
      BufferGeometryRepoUtils.getInfoIndex(geometry),
      normalsInfos,
      normalsOffset,
      Float32Array.length(data),
    ),
    fillFloat32ArrayWithOffset(normals, data),
  )->WonderCommonlib.Result.mapSuccess(normalsOffset =>
    ContainerManager.setGeometry({...geometryPO, normalsOffset: normalsOffset})
  )
}

let getTexCoords = geometry => {
  let {texCoords, texCoordsInfos} = ContainerManager.getExnGeometry()

  getFloat32PointData(BufferGeometryRepoUtils.getInfoIndex(geometry), texCoords, texCoordsInfos)
}

let setTexCoords = (geometry, data) => {
  let {texCoordsInfos, texCoords, texCoordsOffset} as geometryPO = ContainerManager.getExnGeometry()

  setFloat32PointData(
    (
      BufferGeometryRepoUtils.getInfoIndex(geometry),
      texCoordsInfos,
      texCoordsOffset,
      Float32Array.length(data),
    ),
    fillFloat32ArrayWithOffset(texCoords, data),
  )->WonderCommonlib.Result.mapSuccess(texCoordsOffset =>
    ContainerManager.setGeometry({...geometryPO, texCoordsOffset: texCoordsOffset})
  )
}

let getTangents = geometry => {
  let {tangents, tangentsInfos} = ContainerManager.getExnGeometry()

  getFloat32PointData(BufferGeometryRepoUtils.getInfoIndex(geometry), tangents, tangentsInfos)
}

let setTangents = (geometry, data) => {
  let {tangentsInfos, tangents, tangentsOffset} as geometryPO = ContainerManager.getExnGeometry()

  setFloat32PointData(
    (
      BufferGeometryRepoUtils.getInfoIndex(geometry),
      tangentsInfos,
      tangentsOffset,
      Float32Array.length(data),
    ),
    fillFloat32ArrayWithOffset(tangents, data),
  )->WonderCommonlib.Result.mapSuccess(tangentsOffset =>
    ContainerManager.setGeometry({...geometryPO, tangentsOffset: tangentsOffset})
  )
}

let getIndices = geometry => {
  let {indices, indicesInfos} = ContainerManager.getExnGeometry()

  getUint32PointData(BufferGeometryRepoUtils.getInfoIndex(geometry), indices, indicesInfos)
}

let setIndices = (geometry, data) => {
  let {indicesInfos, indices, indicesOffset} as geometryPO = ContainerManager.getExnGeometry()

  setUint32PointData(
    (
      BufferGeometryRepoUtils.getInfoIndex(geometry),
      indicesInfos,
      indicesOffset,
      Uint32Array.length(data),
    ),
    fillUint32ArrayWithOffset(indices, data),
  )->WonderCommonlib.Result.mapSuccess(indicesOffset =>
    ContainerManager.setGeometry({...geometryPO, indicesOffset: indicesOffset})
  )
}

let hasVertices = geometry => {
  let {verticesInfos} = ContainerManager.getExnGeometry()

  hasPointData(BufferGeometryRepoUtils.getInfoIndex(geometry), verticesInfos)
}

let hasNormals = geometry => {
  let {normalsInfos} = ContainerManager.getExnGeometry()

  hasPointData(BufferGeometryRepoUtils.getInfoIndex(geometry), normalsInfos)
}

let hasTexCoords = geometry => {
  let {texCoordsInfos} = ContainerManager.getExnGeometry()

  hasPointData(BufferGeometryRepoUtils.getInfoIndex(geometry), texCoordsInfos)
}

let hasTangents = geometry => {
  let {tangentsInfos} = ContainerManager.getExnGeometry()

  hasPointData(BufferGeometryRepoUtils.getInfoIndex(geometry), tangentsInfos)
}

let hasIndices = geometry =>
  ReallocatedPointsGeometryRepoUtils.hasPointData(
    BufferGeometryRepoUtils.getInfoIndex(geometry),
    ContainerManager.getExnGeometry().indicesInfos,
  )

let getIndicesCount = geometry => {
  let {indicesInfos} = ContainerManager.getExnGeometry()

  ReallocatedPointsGeometryRepoUtils.getInfo(
    BufferGeometryRepoUtils.getInfoIndex(geometry),
    indicesInfos,
  )->WonderCommonlib.Result.mapSuccess(((startIndex, endIndex)) => endIndex - startIndex)
}

let getSharedArrayBufferData = () => {
  let {
    buffer,
    vertices,
    texCoords,
    normals,
    tangents,
    indices,
    verticesInfos,
    texCoordsInfos,
    normalsInfos,
    tangentsInfos,
    indicesInfos,
  } = ContainerManager.getExnGeometry()

  {
    buffer: buffer,
    vertices: vertices,
    texCoords: texCoords,
    normals: normals,
    tangents: tangents,
    indices: indices,
    verticesInfos: verticesInfos,
    texCoordsInfos: texCoordsInfos,
    normalsInfos: normalsInfos,
    tangentsInfos: tangentsInfos,
    indicesInfos: indicesInfos,
  }
}
