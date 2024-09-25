
"use strict";

let StopController = require('./StopController.js')
let SetTorqueLimit = require('./SetTorqueLimit.js')
let RestartController = require('./RestartController.js')
let SetComplianceMargin = require('./SetComplianceMargin.js')
let SetSpeed = require('./SetSpeed.js')
let StartController = require('./StartController.js')
let TorqueEnable = require('./TorqueEnable.js')
let SetCompliancePunch = require('./SetCompliancePunch.js')
let SetComplianceSlope = require('./SetComplianceSlope.js')

module.exports = {
  StopController: StopController,
  SetTorqueLimit: SetTorqueLimit,
  RestartController: RestartController,
  SetComplianceMargin: SetComplianceMargin,
  SetSpeed: SetSpeed,
  StartController: StartController,
  TorqueEnable: TorqueEnable,
  SetCompliancePunch: SetCompliancePunch,
  SetComplianceSlope: SetComplianceSlope,
};
