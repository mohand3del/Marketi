import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marketi/features/auth/login/data/model/google_request_body.dart';
import 'package:marketi/features/auth/login/data/reposetory/google_repo.dart';

part 'google_state.dart';
part 'google_cubit.freezed.dart';

class GoogleCubit extends Cubit<GoogleState> {

  GoogleRepo googleRepo;
  GoogleCubit(this.googleRepo) : super(const GoogleState.initial());

  void emitLoginStatesGoogle(GoogleRequestBody googleRequestBody) async {
    emit(const GoogleState.loading());
    final response = await googleRepo.google(GoogleRequestBody());
    response.when(success: (googleResponse) {

      emit(GoogleState.success(googleResponse));
    }, failure: (error) {
      emit(GoogleState.error(error: error.apiErrorModel.message ?? ''));
    });
  }
}
