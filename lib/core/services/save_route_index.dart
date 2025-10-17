import 'package:customs/core/utils/app_constants.dart';
import 'package:universal_html/html.dart' as html;

void saveRouteIndex(int index) {
  html.window.localStorage[AppConstants.routeIndexKey] = index.toString();
}

int? getRouteIndex() {
  final value = html.window.localStorage[AppConstants.routeIndexKey];
  return value != null ? int.tryParse(value) : null;
}
