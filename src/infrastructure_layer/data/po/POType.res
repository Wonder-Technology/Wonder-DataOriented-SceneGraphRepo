type po = {
  config: ConfigPOType.configPO,
  globalTemp: GlobalTempPOType.globalTempPO,
  canvas: option<CanvasPOType.canvas>,
  scene: ScenePOType.scenePO,
  gameObject: GameObjectPOType.gameObjectPO,
  transform: option<TransformPOType.transformPO>,
  geometry: option<GeometryPOType.geometryPO>,
  pbrMaterial: option<PBRMaterialPOType.pbrMaterialPO>,
  directionLight: option<DirectionLightPOType.directionLightPO>,
  basicCameraView: BasicCameraViewPOType.basicCameraViewPO,
  perspectiveCameraProjection: PerspectiveCameraProjectionPOType.perspectiveCameraProjectionPO,
}
