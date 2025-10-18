import 'package:customs/core/utils/app_constants.dart';
import 'package:universal_html/html.dart' as html;

void saveRouteIndex(int index) {
  html.window.sessionStorage[AppConstants.routeIndexKey] = index.toString();
}

int? getRouteIndex() {
  final value = html.window.sessionStorage[AppConstants.routeIndexKey];
  return value != null ? int.parse(value) : null;
}
