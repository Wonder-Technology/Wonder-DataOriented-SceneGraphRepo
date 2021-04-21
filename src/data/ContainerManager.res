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
