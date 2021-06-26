let setLocalEulerAngles = (gameObject, localEulerAngles) =>
  TransformTool.setLocalEulerAngles(
    GameObjectTool.getTransform(gameObject)->WonderCommonlib.OptionSt.getExn,
    localEulerAngles,
  )->ResultTool.getExnSuccessValueIgnore

let setLocalPosition = (gameObject, localPosition) =>
  TransformTool.setLocalPosition(
    GameObjectTool.getTransform(gameObject)->WonderCommonlib.OptionSt.getExn,
    localPosition,
  )->ResultTool.getExnSuccessValueIgnore

let setLocalScale = (gameObject, localScale) =>
  TransformTool.setLocalScale(
    GameObjectTool.getTransform(gameObject)->WonderCommonlib.OptionSt.getExn,
    localScale,
  )->ResultTool.getExnSuccessValueIgnore
