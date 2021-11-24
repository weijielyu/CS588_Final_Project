
"use strict";

let ImageDifferenceValue = require('./ImageDifferenceValue.js');
let PeoplePose = require('./PeoplePose.js');
let RectArray = require('./RectArray.js');
let DepthCalibrationParameter = require('./DepthCalibrationParameter.js');
let ClassificationResult = require('./ClassificationResult.js');
let SnapItRequest = require('./SnapItRequest.js');
let HumanSkeletonArray = require('./HumanSkeletonArray.js');
let SlicedPointCloud = require('./SlicedPointCloud.js');
let ContactSensorArray = require('./ContactSensorArray.js');
let LabelArray = require('./LabelArray.js');
let ModelCoefficientsArray = require('./ModelCoefficientsArray.js');
let Spectrum = require('./Spectrum.js');
let BoundingBoxMovement = require('./BoundingBoxMovement.js');
let Histogram = require('./Histogram.js');
let TorusArray = require('./TorusArray.js');
let HistogramWithRangeBin = require('./HistogramWithRangeBin.js');
let ObjectArray = require('./ObjectArray.js');
let ContactSensor = require('./ContactSensor.js');
let Line = require('./Line.js');
let HumanSkeleton = require('./HumanSkeleton.js');
let HistogramWithRange = require('./HistogramWithRange.js');
let Torus = require('./Torus.js');
let TrackingStatus = require('./TrackingStatus.js');
let ClusterPointIndices = require('./ClusterPointIndices.js');
let TrackerStatus = require('./TrackerStatus.js');
let Rect = require('./Rect.js');
let SparseOccupancyGridColumn = require('./SparseOccupancyGridColumn.js');
let PeoplePoseArray = require('./PeoplePoseArray.js');
let RotatedRectStamped = require('./RotatedRectStamped.js');
let PosedCameraInfo = require('./PosedCameraInfo.js');
let PlotData = require('./PlotData.js');
let BoundingBoxArray = require('./BoundingBoxArray.js');
let Circle2DArray = require('./Circle2DArray.js');
let ParallelEdge = require('./ParallelEdge.js');
let BoundingBox = require('./BoundingBox.js');
let SegmentStamped = require('./SegmentStamped.js');
let SparseImage = require('./SparseImage.js');
let Circle2D = require('./Circle2D.js');
let PointsArray = require('./PointsArray.js');
let TimeRange = require('./TimeRange.js');
let Accuracy = require('./Accuracy.js');
let SparseOccupancyGrid = require('./SparseOccupancyGrid.js');
let SimpleOccupancyGridArray = require('./SimpleOccupancyGridArray.js');
let PolygonArray = require('./PolygonArray.js');
let ColorHistogramArray = require('./ColorHistogramArray.js');
let BoolStamped = require('./BoolStamped.js');
let WeightedPoseArray = require('./WeightedPoseArray.js');
let PlotDataArray = require('./PlotDataArray.js');
let SimpleOccupancyGrid = require('./SimpleOccupancyGrid.js');
let ParallelEdgeArray = require('./ParallelEdgeArray.js');
let Segment = require('./Segment.js');
let SegmentArray = require('./SegmentArray.js');
let HistogramWithRangeArray = require('./HistogramWithRangeArray.js');
let Int32Stamped = require('./Int32Stamped.js');
let ColorHistogram = require('./ColorHistogram.js');
let ICPResult = require('./ICPResult.js');
let Label = require('./Label.js');
let LineArray = require('./LineArray.js');
let SimpleHandle = require('./SimpleHandle.js');
let DepthErrorResult = require('./DepthErrorResult.js');
let Object = require('./Object.js');
let RotatedRect = require('./RotatedRect.js');
let SparseOccupancyGridArray = require('./SparseOccupancyGridArray.js');
let VectorArray = require('./VectorArray.js');
let BoundingBoxArrayWithCameraInfo = require('./BoundingBoxArrayWithCameraInfo.js');
let SparseOccupancyGridCell = require('./SparseOccupancyGridCell.js');
let HeightmapConfig = require('./HeightmapConfig.js');

module.exports = {
  ImageDifferenceValue: ImageDifferenceValue,
  PeoplePose: PeoplePose,
  RectArray: RectArray,
  DepthCalibrationParameter: DepthCalibrationParameter,
  ClassificationResult: ClassificationResult,
  SnapItRequest: SnapItRequest,
  HumanSkeletonArray: HumanSkeletonArray,
  SlicedPointCloud: SlicedPointCloud,
  ContactSensorArray: ContactSensorArray,
  LabelArray: LabelArray,
  ModelCoefficientsArray: ModelCoefficientsArray,
  Spectrum: Spectrum,
  BoundingBoxMovement: BoundingBoxMovement,
  Histogram: Histogram,
  TorusArray: TorusArray,
  HistogramWithRangeBin: HistogramWithRangeBin,
  ObjectArray: ObjectArray,
  ContactSensor: ContactSensor,
  Line: Line,
  HumanSkeleton: HumanSkeleton,
  HistogramWithRange: HistogramWithRange,
  Torus: Torus,
  TrackingStatus: TrackingStatus,
  ClusterPointIndices: ClusterPointIndices,
  TrackerStatus: TrackerStatus,
  Rect: Rect,
  SparseOccupancyGridColumn: SparseOccupancyGridColumn,
  PeoplePoseArray: PeoplePoseArray,
  RotatedRectStamped: RotatedRectStamped,
  PosedCameraInfo: PosedCameraInfo,
  PlotData: PlotData,
  BoundingBoxArray: BoundingBoxArray,
  Circle2DArray: Circle2DArray,
  ParallelEdge: ParallelEdge,
  BoundingBox: BoundingBox,
  SegmentStamped: SegmentStamped,
  SparseImage: SparseImage,
  Circle2D: Circle2D,
  PointsArray: PointsArray,
  TimeRange: TimeRange,
  Accuracy: Accuracy,
  SparseOccupancyGrid: SparseOccupancyGrid,
  SimpleOccupancyGridArray: SimpleOccupancyGridArray,
  PolygonArray: PolygonArray,
  ColorHistogramArray: ColorHistogramArray,
  BoolStamped: BoolStamped,
  WeightedPoseArray: WeightedPoseArray,
  PlotDataArray: PlotDataArray,
  SimpleOccupancyGrid: SimpleOccupancyGrid,
  ParallelEdgeArray: ParallelEdgeArray,
  Segment: Segment,
  SegmentArray: SegmentArray,
  HistogramWithRangeArray: HistogramWithRangeArray,
  Int32Stamped: Int32Stamped,
  ColorHistogram: ColorHistogram,
  ICPResult: ICPResult,
  Label: Label,
  LineArray: LineArray,
  SimpleHandle: SimpleHandle,
  DepthErrorResult: DepthErrorResult,
  Object: Object,
  RotatedRect: RotatedRect,
  SparseOccupancyGridArray: SparseOccupancyGridArray,
  VectorArray: VectorArray,
  BoundingBoxArrayWithCameraInfo: BoundingBoxArrayWithCameraInfo,
  SparseOccupancyGridCell: SparseOccupancyGridCell,
  HeightmapConfig: HeightmapConfig,
};
