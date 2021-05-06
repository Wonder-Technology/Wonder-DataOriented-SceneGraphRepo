open VODOConvertApService

let getScene = () => SceneRoot.getScene()->OptionSt.map(sceneDOToSceneVO)

let setScene = scene => SceneRoot.setScene(scene->sceneVOToSceneDO)

let add = (scene, gameObject) => ()

let create = () => {
  CreateGameObjectDoService.create()->Result.mapSuccess(sceneDOToSceneVO)
}

let getAllGameObjects = scene =>
  AllGameObjectsDoService.getAllGameObjects()->ListSt.map(gameObjectDOToGameObjectVO)

let getAllRenderGameObjects = scene =>
  AllGameObjectsDoService.getAllRenderGameObjects()->ListSt.map(gameObjectDOToGameObjectVO)

let getAllGameObjectGeometries = scene =>
  AllGameObjectsDoService.getAllGameObjectGeometries()->ListSt.map(geometryDOToGeometryVO)

let getAllGameObjectPBRMaterials = scene =>
  AllGameObjectsDoService.getAllGameObjectPBRMaterials()->ListSt.map(pbrMaterialDOToPBRMaterialVO)
