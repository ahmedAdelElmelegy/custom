import 'package:universal_html/html.dart' as html;

// ✅ حفظ قيمة
void saveToken(String token) {
  html.window.localStorage['token'] = token;
  print('Token saved ✅');
}

// ✅ استرجاع القيمة
String? getToken() {
  final token = html.window.localStorage['token'];
  print('Loaded token: $token');
  return token;
}

// ✅ حذف القيمة
void removeToken() {
  html.window.localStorage.remove('token');
  print('Token removed ❌');
}
