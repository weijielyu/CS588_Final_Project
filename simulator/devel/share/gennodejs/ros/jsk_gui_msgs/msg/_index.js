
"use strict";

let SlackMessage = require('./SlackMessage.js');
let VoiceMessage = require('./VoiceMessage.js');
let Action = require('./Action.js');
let TouchEvent = require('./TouchEvent.js');
let DeviceSensor = require('./DeviceSensor.js');
let MagneticField = require('./MagneticField.js');
let AndroidSensor = require('./AndroidSensor.js');
let MultiTouch = require('./MultiTouch.js');
let Touch = require('./Touch.js');
let Tablet = require('./Tablet.js');
let Gravity = require('./Gravity.js');

module.exports = {
  SlackMessage: SlackMessage,
  VoiceMessage: VoiceMessage,
  Action: Action,
  TouchEvent: TouchEvent,
  DeviceSensor: DeviceSensor,
  MagneticField: MagneticField,
  AndroidSensor: AndroidSensor,
  MultiTouch: MultiTouch,
  Touch: Touch,
  Tablet: Tablet,
  Gravity: Gravity,
};
