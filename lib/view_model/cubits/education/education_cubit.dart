import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'education_state.dart';

class EducationCubit extends Cubit<EducationState> {
  EducationCubit() : super(EducationInitial());
}
