let getScene = () => ContainerManager.getScene().scene

let setScene = scene =>
  ContainerManager.setScene({...ContainerManager.getScene(), scene: scene->Some})
