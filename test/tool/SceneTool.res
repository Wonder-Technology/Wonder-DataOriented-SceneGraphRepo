let getScene = () => SceneRoot.getScene()

let setScene = scene => SceneRoot.setScene(scene)

let create = () => {
  CreateGameObjectDoService.create()
}

let getAllGameObjectGeometries = scene => AllGameObjectsDoService.getAllGameObjectGeometries()

let getAllGameObjectPBRMaterials = scene => AllGameObjectsDoService.getAllGameObjectPBRMaterials()
