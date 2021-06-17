open VODOConvertApService

let getIndex = geometry => geometry->geometryVOToGeometryDO->IndexGeometryDoService.getIndex

let toComponent = index => index->IndexGeometryDoService.toComponent->geometryDOToGeometryVO

let create = () => CreateGeometryDoService.create()->Result.mapSuccess(geometryDOToGeometryVO)

let getGameObjects = geometry =>
  GameObjectGeometryDoService.getGameObjects(
    geometry->geometryVOToGeometryDO,
  )->OptionSt.map(gameObjects => gameObjects->ListSt.map(gameObjectDOToGameObjectVO))

let createTriangleGeometry = () =>
  CreateTriangleGeometryDoService.create()->Result.mapSuccess(geometryDOToGeometryVO)

let createSphereGeometry = (radius, bands) =>
  CreateSphereGeometryDoService.create(radius, bands)->Result.mapSuccess(geometryDOToGeometryVO)

let createPlaneGeometry = (width, height, widthSegments, heightSegments) =>
  CreatePlaneGeometryDoService.create(
    width,
    height,
    widthSegments,
    heightSegments,
  )->Result.mapSuccess(geometryDOToGeometryVO)

let getVertices = geometry =>
  VerticesGeometryDoService.getVertices(geometry->geometryVOToGeometryDO)->Result.mapSuccess(
    VerticesVO.value,
  )

let setVertices = (geometry, vertices) =>
  VerticesGeometryDoService.setVertices(
    geometry->geometryVOToGeometryDO,
    vertices->VerticesVO.create,
  )

let getTexCoords = geometry =>
  TexCoordsGeometryDoService.getTexCoords(geometry->geometryVOToGeometryDO)->Result.mapSuccess(
    TexCoordsVO.value,
  )

let setTexCoords = (geometry, texCoords) =>
  TexCoordsGeometryDoService.setTexCoords(
    geometry->geometryVOToGeometryDO,
    texCoords->TexCoordsVO.create,
  )

let getNormals = geometry =>
  NormalsGeometryDoService.getNormals(geometry->geometryVOToGeometryDO)->Result.mapSuccess(
    NormalsVO.value,
  )

let setNormals = (geometry, normals) =>
  NormalsGeometryDoService.setNormals(geometry->geometryVOToGeometryDO, normals->NormalsVO.create)

let getTangents = geometry =>
  TangentsGeometryDoService.getTangents(geometry->geometryVOToGeometryDO)->Result.mapSuccess(
    TangentsVO.value,
  )

let setTangents = (geometry, tangents) =>
  TangentsGeometryDoService.setTangents(
    geometry->geometryVOToGeometryDO,
    tangents->TangentsVO.create,
  )

let getIndices = geometry =>
  IndicesGeometryDoService.getIndices(geometry->geometryVOToGeometryDO)->Result.mapSuccess(
    IndicesVO.value,
  )

let setIndices = (geometry, indices) =>
  IndicesGeometryDoService.setIndices(geometry->geometryVOToGeometryDO, indices->IndicesVO.create)

let hasVertices = geometry =>
  VerticesGeometryDoService.hasVertices(geometry->geometryVOToGeometryDO)

let hasNormals = geometry => NormalsGeometryDoService.hasNormals(geometry->geometryVOToGeometryDO)

let hasTexCoords = geometry =>
  TexCoordsGeometryDoService.hasTexCoords(geometry->geometryVOToGeometryDO)

let hasTangents = geometry =>
  TangentsGeometryDoService.hasTangents(geometry->geometryVOToGeometryDO)

let hasIndices = geometry => IndicesGeometryDoService.hasIndices(geometry->geometryVOToGeometryDO)

let getIndicesCount = geometry =>
  IndicesGeometryDoService.getIndicesCount(geometry->geometryVOToGeometryDO)

let computeTangents = (vertices, texCoords, normals, indices) =>
  TangentsGeometryDoService.computeTangents(
    vertices->VerticesVO.create,
    texCoords->TexCoordsVO.create,
    normals->NormalsVO.create,
    indices->IndicesVO.create,
  )->TangentsVO.value
