let getScene = () => SceneRoot.getScene()

let setScene = scene => SceneRoot.setScene(scene)

let create = () => {
  CreateGameObjectDoService.create()
}

let getAllRenderGameObjects = scene => AllGameObjectsDoService.getAllRenderGameObjects()

let getAllGameObjectGeometries = scene => AllGameObjectsDoService.getAllGameObjectGeometries()

let getAllGameObjectPBRMaterials = scene => AllGameObjectsDoService.getAllGameObjectPBRMaterials()
