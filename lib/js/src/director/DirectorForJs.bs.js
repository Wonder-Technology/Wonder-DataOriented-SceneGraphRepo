'use strict';

var Canvas$WonderDataorientedScenegraphrepo = require("../repo/canvas/Canvas.bs.js");
var OptionSt$WonderDataorientedScenegraphrepo = require("../structure/OptionSt.bs.js");

var init = Canvas$WonderDataorientedScenegraphrepo.setCanvas;

function buildSceneGraphRepo(param) {
  return {
          init: init,
          getCanvas: (function (param) {
              return OptionSt$WonderDataorientedScenegraphrepo.getExn(Canvas$WonderDataorientedScenegraphrepo.getCanvas(undefined));
            })
        };
}

exports.init = init;
exports.buildSceneGraphRepo = buildSceneGraphRepo;
/* Canvas-WonderDataorientedScenegraphrepo Not a pure module */
