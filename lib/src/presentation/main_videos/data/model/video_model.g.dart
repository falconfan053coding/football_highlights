// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VideosModelImpl _$$VideosModelImplFromJson(Map<String, dynamic> json) =>
    _$VideosModelImpl(
      URL: json['URL'] as String?,
      Order: json['Order'],
      Title: json['Title'] as String?,
      Video_id: json['Video_id'] as String?,
      Thumbnail: json['Thumbnail'] as String?,
      Channelname: json['Channelname'] as String?,
      Upload_date: json['Upload_date'] == null
          ? null
          : DateTime.parse(json['Upload_date'] as String),
    );

Map<String, dynamic> _$$VideosModelImplToJson(_$VideosModelImpl instance) =>
    <String, dynamic>{
      'URL': instance.URL,
      'Order': instance.Order,
      'Title': instance.Title,
      'Video_id': instance.Video_id,
      'Thumbnail': instance.Thumbnail,
      'Channelname': instance.Channelname,
      'Upload_date': instance.Upload_date?.toIso8601String(),
    };
