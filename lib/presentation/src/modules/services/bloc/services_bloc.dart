import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:meta/meta.dart';
import 'package:portfolio_v2/domain/src/base/usecase/usecase_result.dart';
import 'package:portfolio_v2/domain/src/service/find/find_all_service_usecase.dart';
import 'package:portfolio_v2/domain/src/service/service_entity.dart';
import 'package:portfolio_v2/presentation/presentation.dart';

part 'services_event.dart';

part 'services_state.dart';

class ServicesBloc extends AbstractBloc<ServicesEvent, ServicesState> {
  final FindAllServiceUsecase _findAllServiceUsecase;

  ServicesBloc({required FindAllServiceUsecase findAllServiceUsecase})
      : _findAllServiceUsecase = findAllServiceUsecase,
        super(ServicesInitial()) {
    on<ServicesEvent>((event, emit) {});
    on<FindAllServicesEvent>(
      (event, emit) async {
        emit(AllServicesLoadingState());
        final UsecaseResult<Iterable<ServiceEntity>> services = await perform(_findAllServiceUsecase);
        if (services.hasData) {
          emit(AllServicesDataState(services: services.data.toList()));
        }else {
          emit(AllServicesErrorState());
        }
      },
      transformer: droppable(),
    );
  }
}
