let create = (): POType.po => {
  globalTemp: {
    float9Array1: Js.Typed_array.Float32Array.make([1., 0., 0., 0., 1., 0., 0., 0., 1.]),
    float32Array1: Js.Typed_array.Float32Array.make([
      1.,
      0.,
      0.,
      0.,
      0.,
      1.,
      0.,
      0.,
      0.,
      0.,
      1.,
      0.,
      0.,
      0.,
      0.,
      1.,
    ]),
  },
  config: {
    isDebug: true,
    transformCount: 10,
  },
  canvas: None,
  scene: {
    scene: None,
  },
  gameObject: {
    maxUID: 0,
    transformMap: ImmutableSparseMap.createEmpty(),
  },
  transform: None,
}
