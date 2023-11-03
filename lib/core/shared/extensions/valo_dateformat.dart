import 'package:intl/intl.dart';

extension ValoDateFormat on DateTime {
  String valoFormatDate() {
    return DateFormat('dd MMMM yyyy').format(this);
  }
}
