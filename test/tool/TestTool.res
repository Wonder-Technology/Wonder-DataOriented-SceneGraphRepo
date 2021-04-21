let init = (~sandbox, ~isDebug=true, ~transformCount=10, ()) => {
  // let init = (~sandbox, ()) => {
  // DependencyTool.injectAllDependencies(~isDebug, ~transformCount, ())

  // POConfigTool.setAllCount(~transformCount, ())

  ContainerManager.setPO(CreatePO.create())

  DirectorForJs.init(Obj.magic(21), isDebug, transformCount)->Result.handleFail(err =>
    err->Exception.throwErr
  )
}
