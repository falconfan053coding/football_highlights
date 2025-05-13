part of 'videos_bloc.dart';

class VideosState extends Equatable {
  final Status status;
  final List<VideosModel>? page1Videos;
  final List<VideosModel>? page2Videos;
  final List<VideosModel>? page3Videos;
  final List<VideosModel>? page4Videos;
  final List<VideosModel>? page5Videos;
  final List<VideosModel>? page6Videos;
  final List<VideosModel>? page7Videos;
  final Failure? failure;


  const VideosState({
    required this.status,
    this.page1Videos,
    this.page2Videos,
    this.page3Videos,
    this.page4Videos,
    this.page5Videos,
    this.page6Videos,
    this.page7Videos,
    this.failure,
  });

  VideosState copyWith({
    Status? status,
    List<VideosModel>? page1Videos,
    List<VideosModel>? page2Videos,
    List<VideosModel>? page3Videos,
    List<VideosModel>? page4Videos,
    List<VideosModel>? page5Videos,
    List<VideosModel>? page6Videos,
    List<VideosModel>? page7Videos,
    Failure? failure,
  }) {
    return VideosState(
      status: status ?? this.status,
      page1Videos: page1Videos ?? this.page1Videos,
      page2Videos: page2Videos ?? this.page2Videos,
      page3Videos: page3Videos ?? this.page3Videos,
      page4Videos: page4Videos ?? this.page4Videos,
      page5Videos: page5Videos ?? this.page5Videos,
      page6Videos: page6Videos ?? this.page6Videos,
      page7Videos: page7Videos ?? this.page7Videos,
      failure: failure ?? this.failure,
    );
  }

  @override
  List<Object?> get props => [
    status,
    page1Videos,
    page2Videos,
    page3Videos,
    page4Videos,
    page5Videos,
    page6Videos,
    page7Videos,
    failure,
  ];
}