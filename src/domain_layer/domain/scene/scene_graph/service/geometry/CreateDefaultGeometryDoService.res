open Js.Typed_array

let create = ((vertices, texCoords, normals, tangents, indices)) => {
  let vertices = vertices->VerticesVO.create
  let texCoords = texCoords->TexCoordsVO.create
  let normals = normals->NormalsVO.create
  let tangents = tangents->TangentsVO.create
  let indices = indices->IndicesVO.create

  CreateGeometryDoService.create()->WonderCommonlib.Result.bind(geometry =>
    VerticesGeometryDoService.setVertices(geometry, vertices)
    ->WonderCommonlib.Result.bind(() => TexCoordsGeometryDoService.setTexCoords(geometry, texCoords))
    ->WonderCommonlib.Result.bind(() => NormalsGeometryDoService.setNormals(geometry, normals))
    ->WonderCommonlib.Result.bind(() => TangentsGeometryDoService.setTangents(geometry, tangents))
    ->WonderCommonlib.Result.bind(() => IndicesGeometryDoService.setIndices(geometry, indices))
    ->WonderCommonlib.Result.mapSuccess(() => geometry)
  )
}
