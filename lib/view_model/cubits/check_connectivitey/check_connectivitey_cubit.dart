import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'check_connectivitey_state.dart';

class CheckConnectiviteyCubit extends Cubit<CheckConnectiviteyState> {
  CheckConnectiviteyCubit() : super(CheckConnectiviteyInitial());
}
