import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'sample_bloc.dart';

main() {
  // transformer will apply on same event , not different event
  blocTest(
    'two same event will be emitted on droppable on 3 event',
    build: () => SampleBloc(),
    wait: const Duration(seconds: 1),
    act: (bloc) => bloc
      ..add(ConcurrentEvent())
      ..add(ConcurrentEvent())
      ..add(SecondEvent())
    ,
    expect: () {
      return [
        FirstSampleState(message: 'message 1'),
        FirstSampleState(message: 'message 2'),
        // FirstSampleState(message: 'message 3')
      ];
    },
  );
}
