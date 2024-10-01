
import 'package:meta/meta.dart';
import 'package:portfolio_v2/presentation/presentation.dart';

part 'services_event.dart';
part 'services_state.dart';

class ServicesBloc extends AbstractBloc<ServicesEvent, ServicesState> {
  ServicesBloc() : super(ServicesInitial()) {
    on<ServicesEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
