import 'dart:typed_data';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:universal_html/html.dart' as html;

class UploadFileScreen extends StatefulWidget {
  const UploadFileScreen({super.key});

  @override
  State<UploadFileScreen> createState() => _UploadFileScreenState();
}

class _UploadFileScreenState extends State<UploadFileScreen> {
  html.File? selectedFile;
  // selected file,
  UploadTask? uploadTask;
  // upload operation,
  bool isUploading = false;

  String? downloadUrl;
  // download url,

  void pickFile() {
    final uploadInput = html.FileUploadInputElement()..accept = '*/*';
    // accept mean all files,
    uploadInput.click();

    uploadInput.onChange.listen((event) {
      final file = uploadInput.files?.first;
      if (file != null) {
        setState(() => selectedFile = file);
        // take first file and put in selected file

        uploadFile(file);
        // listen to the upload file,
      }
    });
  }

  Future<void> uploadFile(html.File file) async {
    final reader = html.FileReader();
    reader.readAsArrayBuffer(file);

    reader.onLoadEnd.listen((event) async {
      final data = reader.result as List<int>;
      // read all data and get  list of int,
      final fileName = file.name;
      // get file name,

      setState(() => isUploading = true);
      final ref = FirebaseStorage.instance.ref().child('uploads/$fileName');
      try {
        // try to get metadata,
        await ref.getMetadata();

        // file already exists,
        if (!mounted) return;
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(const SnackBar(content: Text("⚠️ File already exists")));
      } on FirebaseException catch (e) {
        if (e.code == 'object-not-found') {
          // file not found, upload it now,
          final metadata = SettableMetadata(contentType: file.type);
          // set metadata,
          uploadTask = ref.putData(Uint8List.fromList(data), metadata);
          // upload file,

          final snapshot = await uploadTask!.whenComplete(() {});
          final fileNameOnly = snapshot.ref.name;

          await snapshot.ref.getDownloadURL();
          // i need to get url after upload is complete,
          if (!mounted) return;
          // get download url,

          setState(() {
            downloadUrl = fileNameOnly;
          });

          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("✅ File uploaded successfully")),
          );
        } else {
          // ⚠️ Any other error other than "object-not-found"
          if (!mounted) return;
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text("Error: ${e.message}")));
        }
      } finally {
        setState(() => isUploading = false);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (isUploading) const CircularProgressIndicator(),

          if (downloadUrl != null)
            Column(
              children: [
                const Text("✅ File Uploaded Successfully!"),
                const SizedBox(height: 20),
                SelectableText(downloadUrl!),
              ],
            ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: pickFile,
            child: const Text("Select & Upload File"),
          ),
        ],
      ),
    );
  }
}
