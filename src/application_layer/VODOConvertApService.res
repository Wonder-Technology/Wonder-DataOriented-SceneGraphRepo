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
