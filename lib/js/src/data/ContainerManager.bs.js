'use strict';

var Caml_option = require("bs-platform/lib/js/caml_option.js");
var Container$WonderDataorientedScenegraphrepo = require("./container/Container.bs.js");

function getPO(param) {
  return Container$WonderDataorientedScenegraphrepo.poContainer.po;
}

function setPO(po) {
  Container$WonderDataorientedScenegraphrepo.poContainer.po = po;
  
}

function getCanvas(param) {
  return Container$WonderDataorientedScenegraphrepo.poContainer.po.canvas;
}

function setCanvas(canvas) {
  Container$WonderDataorientedScenegraphrepo.poContainer.po = {
    canvas: Caml_option.some(canvas)
  };
  
}

exports.getPO = getPO;
exports.setPO = setPO;
exports.getCanvas = getCanvas;
exports.setCanvas = setCanvas;
/* Container-WonderDataorientedScenegraphrepo Not a pure module */
