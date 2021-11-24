
"use strict";

let CallSnapIt = require('./CallSnapIt.js')
let TowerPickUp = require('./TowerPickUp.js')
let ICPAlign = require('./ICPAlign.js')
let WhiteBalancePoints = require('./WhiteBalancePoints.js')
let PolygonOnEnvironment = require('./PolygonOnEnvironment.js')
let SnapFootstep = require('./SnapFootstep.js')
let CheckCollision = require('./CheckCollision.js')
let CallPolygon = require('./CallPolygon.js')
let SetTemplate = require('./SetTemplate.js')
let CheckCircle = require('./CheckCircle.js')
let TowerRobotMoveCommand = require('./TowerRobotMoveCommand.js')
let UpdateOffset = require('./UpdateOffset.js')
let EnvironmentLock = require('./EnvironmentLock.js')
let SetLabels = require('./SetLabels.js')
let NonMaximumSuppression = require('./NonMaximumSuppression.js')
let SwitchTopic = require('./SwitchTopic.js')
let SetDepthCalibrationParameter = require('./SetDepthCalibrationParameter.js')
let TransformScreenpoint = require('./TransformScreenpoint.js')
let ICPAlignWithBox = require('./ICPAlignWithBox.js')
let WhiteBalance = require('./WhiteBalance.js')
let EuclideanSegment = require('./EuclideanSegment.js')
let SetPointCloud2 = require('./SetPointCloud2.js')
let SaveMesh = require('./SaveMesh.js')
let RobotPickupReleasePoint = require('./RobotPickupReleasePoint.js')

module.exports = {
  CallSnapIt: CallSnapIt,
  TowerPickUp: TowerPickUp,
  ICPAlign: ICPAlign,
  WhiteBalancePoints: WhiteBalancePoints,
  PolygonOnEnvironment: PolygonOnEnvironment,
  SnapFootstep: SnapFootstep,
  CheckCollision: CheckCollision,
  CallPolygon: CallPolygon,
  SetTemplate: SetTemplate,
  CheckCircle: CheckCircle,
  TowerRobotMoveCommand: TowerRobotMoveCommand,
  UpdateOffset: UpdateOffset,
  EnvironmentLock: EnvironmentLock,
  SetLabels: SetLabels,
  NonMaximumSuppression: NonMaximumSuppression,
  SwitchTopic: SwitchTopic,
  SetDepthCalibrationParameter: SetDepthCalibrationParameter,
  TransformScreenpoint: TransformScreenpoint,
  ICPAlignWithBox: ICPAlignWithBox,
  WhiteBalance: WhiteBalance,
  EuclideanSegment: EuclideanSegment,
  SetPointCloud2: SetPointCloud2,
  SaveMesh: SaveMesh,
  RobotPickupReleasePoint: RobotPickupReleasePoint,
};
