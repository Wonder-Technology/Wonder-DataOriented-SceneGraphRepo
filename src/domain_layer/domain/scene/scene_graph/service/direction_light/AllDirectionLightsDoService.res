let getAllLights = () =>
  WonderCommonlib.ListSt.range(0, IndexDirectionLightDoService.getMaxIndex())->WonderCommonlib.ListSt.map(
    DirectionLightEntity.create,
  )

let getLightCount = () => getAllLights()->WonderCommonlib.ListSt.length
