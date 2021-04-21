open VODOConvertApService

let getScene = () => SceneRoot.getScene()->OptionSt.map(sceneDOToSceneVO)

let setScene = scene => SceneRoot.setScene(scene->sceneVOToSceneDO)

let add = (scene, gameObject) => ()

let create = () => {
  CreateGameObjectDoService.create()->Result.mapSuccess(sceneDOToSceneVO)
}
