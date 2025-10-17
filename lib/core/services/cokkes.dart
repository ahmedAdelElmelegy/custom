// import 'package:universal_html/html.dart' as html;

// // ✅ حفظ Cookie
// void setCookie(String key, String value, {int days = 7}) {
//   final expires = DateTime.now().add(Duration(days: days));
//   html.document.cookie =
//       '$key=$value; expires=${expires.toUtc().toIso8601String()}; path=/';
//   de('Cookie saved ✅');
// }

// // ✅ قراءة Cookie
// String? getCookie(String key) {
//   final cookies = html.document.cookie?.split('; ') ?? [];
//   for (final cookie in cookies) {
//     final parts = cookie.split('=');
//     if (parts[0] == key) return parts[1];
//   }
//   return null;
// }

// // ✅ حذف Cookie
// void deleteCookie(String key) {
//   html.document.cookie =
//       '$key=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;';
//   print('Cookie removed ❌');
// }
