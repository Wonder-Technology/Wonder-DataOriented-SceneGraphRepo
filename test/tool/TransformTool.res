open VODOConvertApService

let create = () => TransformApService.create()->Result.mapSuccess(transformVOToTransformDO)

// let getGameObject = transform =>
//   TransformApService.getGameObject(transform)->OptionSt.map(gameObjectVOToGameObjectDO)

let getGameObject = transform => GameObjectTransformDoService.getGameObject(transform)

let isTransform = transform => {
  open Wonder_jest
  open Expect
  open! Expect.Operators
  expect(transform->TransformEntity.value) >= 0
}

let getMaxIndex = () => ContainerManager.getExnTransform().maxIndex

let isDirty = transform => DirtyTransformDoService.isDirty(transform)
