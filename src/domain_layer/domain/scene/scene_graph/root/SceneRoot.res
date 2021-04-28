type t = GameObjectEntity.t

let getScene = () => SceneRepo.getScene()->OptionSt.map(GameObjectEntity.create)

let setScene = sceneGameObject => SceneRepo.setScene(sceneGameObject->GameObjectEntity.value)
