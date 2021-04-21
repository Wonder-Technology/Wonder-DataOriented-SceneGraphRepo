let getMaxUID = () => ContainerManager.getGameObject().maxUID

let setMaxUID = maxUID =>
  ContainerManager.setGameObject({...ContainerManager.getGameObject(), maxUID: maxUID})
