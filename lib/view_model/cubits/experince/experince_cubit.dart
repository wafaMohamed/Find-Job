import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'experince_state.dart';

class ExperinceCubit extends Cubit<ExperinceState> {
  ExperinceCubit() : super(ExperinceInitial());
}
