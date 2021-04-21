// let init = (~sandbox, ~isDebug=true, ~transformCount=10, ()) => {
let init = (~sandbox,  ()) => {
  // DependencyTool.injectAllDependencies(~isDebug, ~transformCount, ())

  // POConfigTool.setAllCount(~transformCount, ())

  ContainerManager.setPO(CreatePO.create())

  // DirectorCPApService._createAndSetAllComponentPOs()->Result.handleFail(err =>
  //   err->Exception.throwErr
  // )
}
