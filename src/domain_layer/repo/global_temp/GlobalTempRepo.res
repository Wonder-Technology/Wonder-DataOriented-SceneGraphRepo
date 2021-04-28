let getFloat9Array1 = () => {
  ContainerManager.getGlobalTemp().float9Array1
}

let setFloat9Array1 = float9Array1 => {
  ContainerManager.setGlobalTemp({...ContainerManager.getGlobalTemp(), float9Array1: float9Array1})
}

let getFloat32Array1 = () => {
  ContainerManager.getGlobalTemp().float32Array1
}

let setFloat32Array1 = float32Array1 => {
  ContainerManager.setGlobalTemp({
    ...ContainerManager.getGlobalTemp(),
    float32Array1: float32Array1,
  })
}
