let getIsDebug = () => {
  ContainerManager.getConfig().isDebug
}

let setIsDebug = isDebug => {
  ContainerManager.setConfig({...ContainerManager.getConfig(), isDebug: isDebug})
}

let getTransformCount = () => {
  ContainerManager.getConfig().transformCount
}

let setTransformCount = transformCount => {
  ContainerManager.setConfig({...ContainerManager.getConfig(), transformCount: transformCount})
}
