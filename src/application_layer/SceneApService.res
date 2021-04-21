external sceneDOToSceneVO: SceneRoot.t => ISceneGraphRepoForJs.scene = "%identity"

external sceneVOToSceneDO: ISceneGraphRepoForJs.scene => SceneRoot.t = "%identity"

let getScene = () => SceneRoot.getScene()->OptionSt.map(sceneDOToSceneVO)

let setScene = scene => SceneRoot.setScene(scene->sceneVOToSceneDO)

let add = (scene, gameObject) => ()

let create = () => {
  CreateGameObjectDoService.create()->sceneDOToSceneVO
}
