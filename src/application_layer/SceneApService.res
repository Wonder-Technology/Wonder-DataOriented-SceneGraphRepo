open VODOConvertApService

let getScene = () => SceneRoot.getScene()->WonderCommonlib.OptionSt.map(sceneDOToSceneVO)

let setScene = scene => SceneRoot.setScene(scene->sceneVOToSceneDO)

let add = (scene, gameObject) => ()

let create = () => {
  CreateGameObjectDoService.create()->WonderCommonlib.Result.mapSuccess(sceneDOToSceneVO)
}

let getAllGameObjects = scene =>
  AllGameObjectsDoService.getAllGameObjects()->WonderCommonlib.ListSt.map(gameObjectDOToGameObjectVO)

let getAllRenderGameObjects = scene =>
  AllGameObjectsDoService.getAllRenderGameObjects()->WonderCommonlib.ListSt.map(gameObjectDOToGameObjectVO)

let getAllGameObjectGeometries = scene =>
  AllGameObjectsDoService.getAllGameObjectGeometries()->WonderCommonlib.ListSt.map(geometryDOToGeometryVO)

let getAllGameObjectPBRMaterials = scene =>
  AllGameObjectsDoService.getAllGameObjectPBRMaterials()->WonderCommonlib.ListSt.map(pbrMaterialDOToPBRMaterialVO)
