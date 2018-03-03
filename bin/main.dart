import 'package:imports1/imports1.dart' as mycode;

import 'dart:convert';

main(List<String> arguments) {
  mycode.sayHello();

  String myvalue = 'Hello World';
  List ebytes = UTF8.encode(myvalue);
  String encoded = BASE64.encode(ebytes);

  print('Encoded: ${encoded}');

  List dbytes = BASE64.decode(encoded);
  String decoded = UTF8.decode(dbytes);
  print('Decoded: ${decoded}');
}
