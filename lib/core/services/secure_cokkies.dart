import 'dart:convert';
import 'package:encrypt/encrypt.dart' as encrypt;
import 'package:archive/archive.dart';
import 'package:universal_html/html.dart' as html;
import 'package:flutter_dotenv/flutter_dotenv.dart';

class SecureCookie {
  static final _key = encrypt.Key.fromUtf8(dotenv.env['ENCRYPT_KEY']!);
  static final _iv = encrypt.IV.fromLength(16);

  static String _encrypt(String text) {
    final encrypter = encrypt.Encrypter(encrypt.AES(_key));
    return encrypter.encrypt(text, iv: _iv).base64;
  }
  // encrypt by base64

  static String _decrypt(String text) {
    final encrypter = encrypt.Encrypter(encrypt.AES(_key));
    return encrypter.decrypt64(text, iv: _iv);
  }

  static String _compress(String text) {
    final bytes = utf8.encode(text);
    final compressed = GZipEncoder().encode(bytes);
    return base64Encode(compressed);
  }

  static String _decompress(String text) {
    final bytes = base64Decode(text);
    final decompressed = GZipDecoder().decodeBytes(bytes);
    return utf8.decode(decompressed);
  }

  static void setSecureCookie(String name, Map<String, dynamic> data) {
    final jsonData = jsonEncode(data);
    final compressed = _compress(jsonData);
    final encrypted = _encrypt(compressed);
    html.document.cookie =
        '$name=$encrypted; path=/; max-age=${7 * 24 * 60 * 60}';
  }

  static Map<String, dynamic>? getSecureCookie(String name) {
    final cookies = html.document.cookie?.split('; ') ?? [];
    for (var cookie in cookies) {
      final parts = cookie.split('=');
      if (parts[0] == name) {
        final encrypted = parts.sublist(1).join('=');
        final decrypted = _decrypt(encrypted);
        final decompressed = _decompress(decrypted);
        return jsonDecode(decompressed);
      }
    }
    return null;
  }
}
