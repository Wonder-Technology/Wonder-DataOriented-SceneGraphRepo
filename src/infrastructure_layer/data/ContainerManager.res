let getPO = () => Container.poContainer.po

let setPO = po => Container.poContainer.po = po

let getGlobalTemp = () => {
  let po = getPO()

  po.globalTemp
}

let setGlobalTemp = globalTemp => {
  let po = getPO()

  {...po, globalTemp: globalTemp}->setPO
}

let getConfig = () => {
  let po = getPO()

  po.config
}

let setConfig = config => {
  let po = getPO()

  {...po, config: config}->setPO
}

let getCanvas = () => {
  let po = getPO()

  po.canvas
}

let setCanvas = canvas => {
  let po = getPO()

  {...po, canvas: Some(canvas)}->setPO
}

let getScene = () => {
  let po = getPO()

  po.scene
}

let setScene = scene => {
  let po = getPO()

  {...po, scene: scene}->setPO
}

let getGameObject = () => {
  let po = getPO()

  po.gameObject
}

let setGameObject = gameObject => {
  let po = getPO()

  {...po, gameObject: gameObject}->setPO
}

let getExnTransform = () => {
  let po = getPO()

  po.transform->OptionSt.getExn
}

let setTransform = transform => {
  let po = getPO()

  {...po, transform: transform->Some}->setPO
}

let getExnGeometry = () => {
  let po = getPO()

  po.geometry->OptionSt.getExn
}

let setGeometry = geometry => {
  let po = getPO()

  {...po, geometry: geometry->Some}->setPO
}

let getExnPBRMaterial = () => {
  let po = getPO()

  po.pbrMaterial->OptionSt.getExn
}

let setPBRMaterial = pbrMaterial => {
  let po = getPO()

  {...po, pbrMaterial: pbrMaterial->Some}->setPO
}

let getExnDirectionLight = () => {
  let po = getPO()

  po.directionLight->OptionSt.getExn
}

let setDirectionLight = directionLight => {
  let po = getPO()

  {...po, directionLight: directionLight->Some}->setPO
}

let getBasicCameraView = () => {
  let po = getPO()

  po.basicCameraView
}

let setBasicCameraView = basicCameraView => {
  let po = getPO()

  {...po, basicCameraView: basicCameraView}->setPO
}

let getPerspectiveCameraProjection = () => {
  let po = getPO()

  po.perspectiveCameraProjection
}

let setPerspectiveCameraProjection = perspectiveCameraProjection => {
  let po = getPO()

  {...po, perspectiveCameraProjection: perspectiveCameraProjection}->setPO
}

let getArcballCameraController = () => {
  let po = getPO()

  po.arcballCameraController
}

let setArcballCameraController = arcballCameraController => {
  let po = getPO()

  {...po, arcballCameraController: arcballCameraController}->setPO
}
