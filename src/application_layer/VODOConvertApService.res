external sceneDOToSceneVO: SceneRoot.t => ISceneGraphRepoForJs.scene = "%identity"

external sceneVOToSceneDO: ISceneGraphRepoForJs.scene => SceneRoot.t = "%identity"

external gameObjectDOToGameObjectVO: GameObjectEntity.t => ISceneGraphRepoForJs.gameObject =
  "%identity"

external gameObjectVOToGameObjectDO: ISceneGraphRepoForJs.gameObject => GameObjectEntity.t =
  "%identity"

external transformDOToTransformVO: TransformEntity.t => ISceneGraphRepoForJs.transform = "%identity"

external transformVOToTransformDO: ISceneGraphRepoForJs.transform => TransformEntity.t = "%identity"

external geometryDOToGeometryVO: GeometryEntity.t => ISceneGraphRepoForJs.geometry = "%identity"

external geometryVOToGeometryDO: ISceneGraphRepoForJs.geometry => GeometryEntity.t = "%identity"

external pbrMaterialDOToPBRMaterialVO: PBRMaterialEntity.t => ISceneGraphRepoForJs.pbrMaterial =
  "%identity"

external pbrMaterialVOToPBRMaterialDO: ISceneGraphRepoForJs.pbrMaterial => PBRMaterialEntity.t =
  "%identity"

external diffuseMapDOToDiffuseMapVO: PBRMaterialPOType.diffuseMap => ISceneGraphRepoForJs.diffuseMap =
  "%identity"

external diffuseMapVOToDiffuseMapDO: ISceneGraphRepoForJs.diffuseMap => PBRMaterialPOType.diffuseMap =
  "%identity"

external emissionMapDOToEmissionMapVO: PBRMaterialPOType.emissionMap => ISceneGraphRepoForJs.emissionMap =
  "%identity"

external emissionMapVOToEmissionMapDO: ISceneGraphRepoForJs.emissionMap => PBRMaterialPOType.emissionMap =
  "%identity"

external normalMapDOToNormalMapVO: PBRMaterialPOType.normalMap => ISceneGraphRepoForJs.normalMap =
  "%identity"

external normalMapVOToNormalMapDO: ISceneGraphRepoForJs.normalMap => PBRMaterialPOType.normalMap =
  "%identity"

external channelRoughnessMetallicMapDOToChannelRoughnessMetallicMapVO: PBRMaterialPOType.channelRoughnessMetallicMap => ISceneGraphRepoForJs.channelRoughnessMetallicMap =
  "%identity"

external channelRoughnessMetallicMapVOToChannelRoughnessMetallicMapDO: ISceneGraphRepoForJs.channelRoughnessMetallicMap => PBRMaterialPOType.channelRoughnessMetallicMap =
  "%identity"

external transmissionMapDOToTransmissionMapVO: PBRMaterialPOType.transmissionMap => ISceneGraphRepoForJs.transmissionMap =
  "%identity"

external transmissionMapVOToTransmissionMapDO: ISceneGraphRepoForJs.transmissionMap => PBRMaterialPOType.transmissionMap =
  "%identity"

external specularMapDOToSpecularMapVO: PBRMaterialPOType.specularMap => ISceneGraphRepoForJs.specularMap =
  "%identity"

external specularMapVOToSpecularMapDO: ISceneGraphRepoForJs.specularMap => PBRMaterialPOType.specularMap =
  "%identity"

external directionLightDOToDirectionLightVO: DirectionLightEntity.t => ISceneGraphRepoForJs.directionLight =
  "%identity"

external directionLightVOToDirectionLightDO: ISceneGraphRepoForJs.directionLight => DirectionLightEntity.t =
  "%identity"

external basicCameraViewDOToBasicCameraViewVO: BasicCameraViewEntity.t => ISceneGraphRepoForJs.basicCameraView =
  "%identity"

external basicCameraViewVOToBasicCameraViewDO: ISceneGraphRepoForJs.basicCameraView => BasicCameraViewEntity.t =
  "%identity"
