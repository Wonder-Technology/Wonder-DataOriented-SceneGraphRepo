let init = (
  ~sandbox,
  ~isDebug=true,
  ~transformCount=10,
  ~float9Array1=Matrix3.createIdentityMatrix3(),
  ~float32Array1=Matrix4.createIdentityMatrix4(),
  (),
) => {
  ContainerManager.setPO(CreatePO.create())

  DirectorForJs.init(
    Obj.magic(21),
    {isDebug: isDebug, transformCount: transformCount},
    {float9Array1: float9Array1, float32Array1: float32Array1},
  )->Result.handleFail(err => err->Exception.throwErr)
}
