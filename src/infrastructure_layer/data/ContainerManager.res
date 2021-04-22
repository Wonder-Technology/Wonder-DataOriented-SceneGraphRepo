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
