let create = (): POType.po => {
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
