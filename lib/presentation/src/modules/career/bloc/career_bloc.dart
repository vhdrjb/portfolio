import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:meta/meta.dart';
import 'package:portfolio_v2/domain/domain.dart';
import 'package:portfolio_v2/domain/src/base/usecase/usecase_result.dart';
import 'package:portfolio_v2/presentation/presentation.dart';

part 'career_event.dart';

part 'career_state.dart';

class CareerBloc extends AbstractBloc<CareerEvent, CareerState> {
  final FindAllCareerUsecase _findAllCareerUsecase;

  CareerBloc({required FindAllCareerUsecase findAllCareerUsecase})
      : _findAllCareerUsecase = findAllCareerUsecase,
        super(CareerInitial()) {
    on<CareerEvent>((event, emit) {});
    on<FindAllCareerEvent>(
      (event, emit) async {
        final UsecaseResult<Iterable<CareerEntity>> careers =
            await perform(_findAllCareerUsecase);
        if (careers.hasData) {
          emit(AllCareerDataState(careers: careers.data.toList()));
        } else {
          emit(AllCareerErrorState());
        }
      },
      transformer: droppable(),
    );
  }
}
