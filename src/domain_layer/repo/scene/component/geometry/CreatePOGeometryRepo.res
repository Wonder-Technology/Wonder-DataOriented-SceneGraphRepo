let _initBufferData = (geometryPointCount, geometryCount) =>
  BufferGeometryRepoUtils.createBuffer(
    geometryPointCount,
    geometryCount,
  )->Result.mapSuccess(buffer => (
    buffer,
    CreateTypeArrayGeometryRepoUtils.createTypeArrays(buffer, geometryPointCount, geometryCount),
  ))

let createPO = () => {
  let geometryPointCount = ConfigRepo.getGeometryPointCount()
  let geometryCount = ConfigRepo.getGeometryCount()

  _initBufferData(geometryPointCount, geometryCount)->Result.mapSuccess(((
    buffer,
    (
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
    ),
  )): GeometryPOType.geometryPO => {
    maxIndex: 0,
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
    verticesOffset: 0,
    texCoordsOffset: 0,
    normalsOffset: 0,
    tangentsOffset: 0,
    indicesOffset: 0,
    gameObjectsMap: CreateMapComponentRepoUtils.createEmptyMap(geometryCount),
  })
}
