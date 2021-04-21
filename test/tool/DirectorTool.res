let init = (~canvas=Obj.magic(112), ~isDebug=true, ~transformCount=10, ()) =>
  DirectorForJs.buildSceneGraphRepo().init(canvas, isDebug, transformCount)
