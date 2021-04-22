let getTexCoords = geometry =>
  GeometryRepo.getTexCoords(geometry->GeometryEntity.value)->Result.mapSuccess(TexCoordsVO.create)

let setTexCoords = (geometry, texCoords) => Contract.requireCheck(() => {
    open Contract
    open Operators
    test(Log.buildAssertMessage(~expect=j`texCoords in [0.0, 1.0]`, ~actual=j`not`), () =>
      texCoords
      ->TexCoordsVO.value
      ->TypeArrayRepoUtils.reduceFloat32Array(true, (. result, value) =>
        result && (\">=."(value, 0.0) && \"<=."(value, 1.0))
      )
    )
  }, ConfigRepo.getIsDebug())->Result.bind(() =>
    GeometryRepo.setTexCoords(geometry->GeometryEntity.value, texCoords->TexCoordsVO.value)
  )

let hasTexCoords = geometry => GeometryRepo.hasTexCoords(geometry->GeometryEntity.value)
