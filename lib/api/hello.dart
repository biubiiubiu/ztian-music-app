import 'package:http/http.dart' as http;

const String baseUrl =
    'https://ztian-music-1690062-1310031202.ap-shanghai.run.tcloudbase.com';

Future<String> sayHello() async {
  final response = await http.get(Uri.parse(baseUrl + '/hello'));
  if (response.statusCode == 200) {
    return response.body;
  } else {
    throw Exception('请求错误');
  }
}
