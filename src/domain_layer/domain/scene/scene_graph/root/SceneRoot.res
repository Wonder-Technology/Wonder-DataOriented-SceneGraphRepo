type t = GameObjectEntity.t

let getScene = () => SceneRepo.getScene()->WonderCommonlib.OptionSt.map(GameObjectEntity.create)

let setScene = sceneGameObject => SceneRepo.setScene(sceneGameObject->GameObjectEntity.value)
