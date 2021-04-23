let init = (
  ~canvas=Obj.magic(221),
  ~isDebug=true,
  ~transformCount=10,
  ~geometryCount=10,
  ~geometryPointCount=10,
  ~pbrMaterialCount=10,
  ~directionLightCount=2,
  ~float9Array1=Js.Typed_array.Float32Array.make([]),
  ~float32Array1=Js.Typed_array.Float32Array.make([]),
  (),
) =>
  DirectorForJs.buildSceneGraphRepo().init(
    canvas,
    {
      isDebug: isDebug,
      transformCount: transformCount,
      geometryCount: geometryCount,
      geometryPointCount: geometryPointCount,
      pbrMaterialCount: pbrMaterialCount,
      directionLightCount: directionLightCount,
    },
    {float9Array1: float9Array1, float32Array1: float32Array1},
  )
