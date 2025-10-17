import 'package:universal_html/html.dart' as html;

void saveIndex(int index, String key) {
  html.window.localStorage[key] = index.toString();
}

//  get
int? getIndex(String key) {
  final index = html.window.localStorage[key];
  return int.parse(index ?? '0');
}
