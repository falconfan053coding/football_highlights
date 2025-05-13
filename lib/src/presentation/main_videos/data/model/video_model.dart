import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_model.freezed.dart';
part 'video_model.g.dart';

@freezed
class VideosModel with _$VideosModel {
  const factory VideosModel({
    String? URL,
    dynamic Order,
    String? Title,
    String? Video_id,
    String? Thumbnail,
    String? Channelname,
    DateTime? Upload_date,
  }) = _VideosModel;

  factory VideosModel.fromJson(Map<String, dynamic> json) => _$VideosModelFromJson(json);
}