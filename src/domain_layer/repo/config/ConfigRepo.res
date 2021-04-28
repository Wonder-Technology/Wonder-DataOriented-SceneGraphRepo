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

let getGeometryCount = () => {
  ContainerManager.getConfig().geometryCount
}

let setGeometryCount = geometryCount => {
  ContainerManager.setConfig({...ContainerManager.getConfig(), geometryCount: geometryCount})
}

let getGeometryPointCount = () => {
  ContainerManager.getConfig().geometryPointCount
}

let setGeometryPointCount = geometryPointCount => {
  ContainerManager.setConfig({
    ...ContainerManager.getConfig(),
    geometryPointCount: geometryPointCount,
  })
}

let getPBRMaterialCount = () => {
  ContainerManager.getConfig().pbrMaterialCount
}

let setPBRMaterialCount = pbrMaterialCount => {
  ContainerManager.setConfig({...ContainerManager.getConfig(), pbrMaterialCount: pbrMaterialCount})
}

let getDirectionLightCount = () => {
  ContainerManager.getConfig().geometryCount
}

let setDirectionLightCount = directionLightCount => {
  ContainerManager.setConfig({
    ...ContainerManager.getConfig(),
    directionLightCount: directionLightCount,
  })
}
