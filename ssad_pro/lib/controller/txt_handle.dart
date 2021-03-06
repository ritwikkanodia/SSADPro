import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

void createRecord(String res, String inputFile) async {
  final Directory directory = await getApplicationDocumentsDirectory();
  final File file = File('${directory.path}/' + inputFile + '.txt');
  await file.writeAsString("Attempt " + res + "\n", mode: FileMode.append);
}

void deleteData(String deleteFile) async {
  final Directory directory = await getApplicationDocumentsDirectory();
  final File file = File('${directory.path}/' + deleteFile + '.txt');
  await file.writeAsString("");
}

Future<String> getData(String receiveFile) async {
  String text;
  try {
    final Directory directory = await getApplicationDocumentsDirectory();
    final File file = File('${directory.path}/' + receiveFile + '.txt');
    text = await file.readAsString();
  } catch (e) {
    print("Couldn't read file");
  }
  return text;
}
