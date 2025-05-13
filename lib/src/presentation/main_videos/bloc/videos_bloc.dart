import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:football_highlights/core/api/error/failure.dart';
import 'package:football_highlights/core/utils/status.dart';
import 'package:football_highlights/src/presentation/main_videos/data/model/video_model.dart';
import 'package:football_highlights/src/presentation/main_videos/domain/repository/videos_repository.dart';

part 'videos_event.dart';
part 'videos_state.dart';

class VideosBloc extends Bloc<VideosEvent, VideosState> {
  final VideoRepository _videosRepository;

  VideosBloc(this._videosRepository)
      : super(const VideosState(status: Status.loading)) {
    on<GetPage1Videos>(_getPage1Videos);
    on<GetPage2Videos>(_getPage2Videos);
    on<GetPage3Videos>(_getPage3Videos);
    on<GetPage4Videos>(_getPage4Videos);
    on<GetPage5Videos>(_getPage5Videos);
    on<GetPage6Videos>(_getPage6Videos);
    on<GetPage7Videos>(_getPage7Videos);
  }

  List<VideosModel> _filterDuplicates(List<VideosModel> newVideos,
      List<VideosModel>? existingVideos) {
    final existingIds = existingVideos?.map((videos) => videos.Title).toSet() ??
        {};
    return newVideos.where((videos) => !existingIds.contains(videos.Title))
        .toList();
  }

  _getPage1Videos(GetPage1Videos event, Emitter<VideosState> emit) async {
    emit(state.copyWith(status: Status.loading));
    final result = await _videosRepository.getVideo(link: event.link);
    result.fold((l) {
      emit(state.copyWith(status: Status.error, failure: l));
    }, (r) {
      final filteredPage1Videos = _filterDuplicates(r, state.page1Videos);
      emit(
        state.copyWith(
          status: Status.success,
          page1Videos: [...?state.page1Videos, ...filteredPage1Videos],

        ),
      );
    });
  }

  _getPage2Videos(GetPage2Videos event, Emitter<VideosState> emit) async {
    emit(state.copyWith(status: Status.loading));
    final result = await _videosRepository.getVideo(link: event.link);
    result.fold((l) {
      emit(state.copyWith(status: Status.error, failure: l));
    }, (r) {
      final filteredPage2Videos = _filterDuplicates(r, state.page2Videos);
      emit(
        state.copyWith(
          status: Status.success,
          page2Videos: [...?state.page2Videos, ...filteredPage2Videos],

        ),
      );
    });
  }

  _getPage3Videos(GetPage3Videos event, Emitter<VideosState> emit) async {
    emit(state.copyWith(status: Status.loading));
    final result = await _videosRepository.getVideo(link: event.link);
    result.fold((l) {
      emit(state.copyWith(status: Status.error, failure: l));
    }, (r) {
      final filteredPage3Videos = _filterDuplicates(r, state.page3Videos);
      emit(
        state.copyWith(
          status: Status.success,
          page3Videos: [...?state.page3Videos, ...filteredPage3Videos],

        ),
      );
    });
  }

  _getPage4Videos(GetPage4Videos event, Emitter<VideosState> emit) async {
    emit(state.copyWith(status: Status.loading));
    final result = await _videosRepository.getVideo(link: event.link);
    result.fold((l) {
      emit(state.copyWith(status: Status.error, failure: l));
    }, (r) {
      final filteredPage4Videos = _filterDuplicates(r, state.page4Videos);
      emit(
        state.copyWith(
          status: Status.success,
          page4Videos: [...?state.page4Videos, ...filteredPage4Videos],

        ),
      );
    });
  }

  _getPage5Videos(GetPage5Videos event, Emitter<VideosState> emit) async {
    emit(state.copyWith(status: Status.loading));
    final result = await _videosRepository.getVideo(link: event.link);
    result.fold((l) {
      emit(state.copyWith(status: Status.error, failure: l));
    }, (r) {
      final filteredPage5Videos = _filterDuplicates(r, state.page5Videos);
      emit(
        state.copyWith(
          status: Status.success,
          page5Videos: [...?state.page5Videos, ...filteredPage5Videos],

        ),
      );
    });
  }

  _getPage6Videos(GetPage6Videos event, Emitter<VideosState> emit) async {
    emit(state.copyWith(status: Status.loading));
    final result = await _videosRepository.getVideo(link: event.link);
    result.fold((l) {
      emit(state.copyWith(status: Status.error, failure: l));
    }, (r) {
      final filteredPage6Videos = _filterDuplicates(r, state.page6Videos);
      emit(
        state.copyWith(
          status: Status.success,
          page6Videos: [...?state.page6Videos, ...filteredPage6Videos],

        ),
      );
    });
  }

  _getPage7Videos(GetPage7Videos event, Emitter<VideosState> emit) async {
    emit(state.copyWith(status: Status.loading));
    final result = await _videosRepository.getVideo(link: event.link);
    result.fold((l) {
      emit(state.copyWith(status: Status.error, failure: l));
    }, (r) {
      final filteredPage7Videos = _filterDuplicates(r, state.page7Videos);
      emit(
        state.copyWith(
          status: Status.success,
          page7Videos: [...?state.page7Videos, ...filteredPage7Videos],

        ),
      );
    });
  }

}