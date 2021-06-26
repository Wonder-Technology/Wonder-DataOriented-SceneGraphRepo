open VODOConvertApService

let getIndex = geometry => geometry->geometryVOToGeometryDO->IndexGeometryDoService.getIndex

let toComponent = index => index->IndexGeometryDoService.toComponent->geometryDOToGeometryVO

let create = () => CreateGeometryDoService.create()->WonderCommonlib.Result.mapSuccess(geometryDOToGeometryVO)

let getGameObjects = geometry =>
  GameObjectGeometryDoService.getGameObjects(
    geometry->geometryVOToGeometryDO,
  )->WonderCommonlib.OptionSt.map(gameObjects => gameObjects->WonderCommonlib.ListSt.map(gameObjectDOToGameObjectVO))

let createTriangleGeometry = () =>
  CreateTriangleGeometryDoService.create()->WonderCommonlib.Result.mapSuccess(geometryDOToGeometryVO)

let createSphereGeometry = (radius, bands) =>
  CreateSphereGeometryDoService.create(radius, bands)->WonderCommonlib.Result.mapSuccess(geometryDOToGeometryVO)

let createPlaneGeometry = (width, height, widthSegments, heightSegments) =>
  CreatePlaneGeometryDoService.create(
    width,
    height,
    widthSegments,
    heightSegments,
  )->WonderCommonlib.Result.mapSuccess(geometryDOToGeometryVO)

let getVertices = geometry =>
  VerticesGeometryDoService.getVertices(geometry->geometryVOToGeometryDO)->WonderCommonlib.Result.mapSuccess(
    VerticesVO.value,
  )

let setVertices = (geometry, vertices) =>
  VerticesGeometryDoService.setVertices(
    geometry->geometryVOToGeometryDO,
    vertices->VerticesVO.create,
  )

let getTexCoords = geometry =>
  TexCoordsGeometryDoService.getTexCoords(geometry->geometryVOToGeometryDO)->WonderCommonlib.Result.mapSuccess(
    TexCoordsVO.value,
  )

let setTexCoords = (geometry, texCoords) =>
  TexCoordsGeometryDoService.setTexCoords(
    geometry->geometryVOToGeometryDO,
    texCoords->TexCoordsVO.create,
  )

let getNormals = geometry =>
  NormalsGeometryDoService.getNormals(geometry->geometryVOToGeometryDO)->WonderCommonlib.Result.mapSuccess(
    NormalsVO.value,
  )

let setNormals = (geometry, normals) =>
  NormalsGeometryDoService.setNormals(geometry->geometryVOToGeometryDO, normals->NormalsVO.create)

let getTangents = geometry =>
  TangentsGeometryDoService.getTangents(geometry->geometryVOToGeometryDO)->WonderCommonlib.Result.mapSuccess(
    TangentsVO.value,
  )

let setTangents = (geometry, tangents) =>
  TangentsGeometryDoService.setTangents(
    geometry->geometryVOToGeometryDO,
    tangents->TangentsVO.create,
  )

let getIndices = geometry =>
  IndicesGeometryDoService.getIndices(geometry->geometryVOToGeometryDO)->WonderCommonlib.Result.mapSuccess(
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
