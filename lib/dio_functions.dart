import 'package:file_picker/file_picker.dart';

class DioFunctions{
  pickFile()async{
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result == null) return;

    final file = result.files.first;
    return file;
  }
}