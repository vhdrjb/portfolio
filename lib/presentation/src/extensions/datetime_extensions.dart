import 'package:jiffy/jiffy.dart';

extension DatetimeExtensions on DateTime {
  String relativeDuration(DateTime toDatetime) {
    final Jiffy from = Jiffy.parseFromDateTime(this);
    final Jiffy to = Jiffy.parseFromDateTime(toDatetime);
    int year = to.diff(from,unit: Unit.year).toInt();
    int month =to.diff(from,unit: Unit.month).toInt() - (year *12);
    String yearValue ='';
    String monthValue = '';
    if (year > 1) {
      yearValue = '$year yrs';
    }else if (year == 1) {
      yearValue = '$year yr';
    }


    if (month > 1) {
      monthValue = '$month mos';
    }else if (month ==1) {
      monthValue ='$month mo';
    }

    return '$yearValue $monthValue'.trim();
  }

  String get display {
    final Jiffy date = Jiffy.parseFromDateTime(this);
    return date.yMMM;
  }

}