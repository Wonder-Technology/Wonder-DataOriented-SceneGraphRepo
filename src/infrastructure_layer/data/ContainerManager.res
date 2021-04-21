let getPO = () => Container.poContainer.po

let setPO = po => Container.poContainer.po = po

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
