// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VideosModel _$VideosModelFromJson(Map<String, dynamic> json) {
  return _VideosModel.fromJson(json);
}

/// @nodoc
mixin _$VideosModel {
  String? get URL => throw _privateConstructorUsedError;
  dynamic get Order => throw _privateConstructorUsedError;
  String? get Title => throw _privateConstructorUsedError;
  String? get Video_id => throw _privateConstructorUsedError;
  String? get Thumbnail => throw _privateConstructorUsedError;
  String? get Channelname => throw _privateConstructorUsedError;
  DateTime? get Upload_date => throw _privateConstructorUsedError;

  /// Serializes this VideosModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VideosModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VideosModelCopyWith<VideosModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideosModelCopyWith<$Res> {
  factory $VideosModelCopyWith(
          VideosModel value, $Res Function(VideosModel) then) =
      _$VideosModelCopyWithImpl<$Res, VideosModel>;
  @useResult
  $Res call(
      {String? URL,
      dynamic Order,
      String? Title,
      String? Video_id,
      String? Thumbnail,
      String? Channelname,
      DateTime? Upload_date});
}

/// @nodoc
class _$VideosModelCopyWithImpl<$Res, $Val extends VideosModel>
    implements $VideosModelCopyWith<$Res> {
  _$VideosModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VideosModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? URL = freezed,
    Object? Order = freezed,
    Object? Title = freezed,
    Object? Video_id = freezed,
    Object? Thumbnail = freezed,
    Object? Channelname = freezed,
    Object? Upload_date = freezed,
  }) {
    return _then(_value.copyWith(
      URL: freezed == URL
          ? _value.URL
          : URL // ignore: cast_nullable_to_non_nullable
              as String?,
      Order: freezed == Order
          ? _value.Order
          : Order // ignore: cast_nullable_to_non_nullable
              as dynamic,
      Title: freezed == Title
          ? _value.Title
          : Title // ignore: cast_nullable_to_non_nullable
              as String?,
      Video_id: freezed == Video_id
          ? _value.Video_id
          : Video_id // ignore: cast_nullable_to_non_nullable
              as String?,
      Thumbnail: freezed == Thumbnail
          ? _value.Thumbnail
          : Thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      Channelname: freezed == Channelname
          ? _value.Channelname
          : Channelname // ignore: cast_nullable_to_non_nullable
              as String?,
      Upload_date: freezed == Upload_date
          ? _value.Upload_date
          : Upload_date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideosModelImplCopyWith<$Res>
    implements $VideosModelCopyWith<$Res> {
  factory _$$VideosModelImplCopyWith(
          _$VideosModelImpl value, $Res Function(_$VideosModelImpl) then) =
      __$$VideosModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? URL,
      dynamic Order,
      String? Title,
      String? Video_id,
      String? Thumbnail,
      String? Channelname,
      DateTime? Upload_date});
}

/// @nodoc
class __$$VideosModelImplCopyWithImpl<$Res>
    extends _$VideosModelCopyWithImpl<$Res, _$VideosModelImpl>
    implements _$$VideosModelImplCopyWith<$Res> {
  __$$VideosModelImplCopyWithImpl(
      _$VideosModelImpl _value, $Res Function(_$VideosModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideosModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? URL = freezed,
    Object? Order = freezed,
    Object? Title = freezed,
    Object? Video_id = freezed,
    Object? Thumbnail = freezed,
    Object? Channelname = freezed,
    Object? Upload_date = freezed,
  }) {
    return _then(_$VideosModelImpl(
      URL: freezed == URL
          ? _value.URL
          : URL // ignore: cast_nullable_to_non_nullable
              as String?,
      Order: freezed == Order
          ? _value.Order
          : Order // ignore: cast_nullable_to_non_nullable
              as dynamic,
      Title: freezed == Title
          ? _value.Title
          : Title // ignore: cast_nullable_to_non_nullable
              as String?,
      Video_id: freezed == Video_id
          ? _value.Video_id
          : Video_id // ignore: cast_nullable_to_non_nullable
              as String?,
      Thumbnail: freezed == Thumbnail
          ? _value.Thumbnail
          : Thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      Channelname: freezed == Channelname
          ? _value.Channelname
          : Channelname // ignore: cast_nullable_to_non_nullable
              as String?,
      Upload_date: freezed == Upload_date
          ? _value.Upload_date
          : Upload_date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideosModelImpl implements _VideosModel {
  const _$VideosModelImpl(
      {this.URL,
      this.Order,
      this.Title,
      this.Video_id,
      this.Thumbnail,
      this.Channelname,
      this.Upload_date});

  factory _$VideosModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideosModelImplFromJson(json);

  @override
  final String? URL;
  @override
  final dynamic Order;
  @override
  final String? Title;
  @override
  final String? Video_id;
  @override
  final String? Thumbnail;
  @override
  final String? Channelname;
  @override
  final DateTime? Upload_date;

  @override
  String toString() {
    return 'VideosModel(URL: $URL, Order: $Order, Title: $Title, Video_id: $Video_id, Thumbnail: $Thumbnail, Channelname: $Channelname, Upload_date: $Upload_date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideosModelImpl &&
            (identical(other.URL, URL) || other.URL == URL) &&
            const DeepCollectionEquality().equals(other.Order, Order) &&
            (identical(other.Title, Title) || other.Title == Title) &&
            (identical(other.Video_id, Video_id) ||
                other.Video_id == Video_id) &&
            (identical(other.Thumbnail, Thumbnail) ||
                other.Thumbnail == Thumbnail) &&
            (identical(other.Channelname, Channelname) ||
                other.Channelname == Channelname) &&
            (identical(other.Upload_date, Upload_date) ||
                other.Upload_date == Upload_date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      URL,
      const DeepCollectionEquality().hash(Order),
      Title,
      Video_id,
      Thumbnail,
      Channelname,
      Upload_date);

  /// Create a copy of VideosModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideosModelImplCopyWith<_$VideosModelImpl> get copyWith =>
      __$$VideosModelImplCopyWithImpl<_$VideosModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideosModelImplToJson(
      this,
    );
  }
}

abstract class _VideosModel implements VideosModel {
  const factory _VideosModel(
      {final String? URL,
      final dynamic Order,
      final String? Title,
      final String? Video_id,
      final String? Thumbnail,
      final String? Channelname,
      final DateTime? Upload_date}) = _$VideosModelImpl;

  factory _VideosModel.fromJson(Map<String, dynamic> json) =
      _$VideosModelImpl.fromJson;

  @override
  String? get URL;
  @override
  dynamic get Order;
  @override
  String? get Title;
  @override
  String? get Video_id;
  @override
  String? get Thumbnail;
  @override
  String? get Channelname;
  @override
  DateTime? get Upload_date;

  /// Create a copy of VideosModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideosModelImplCopyWith<_$VideosModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
