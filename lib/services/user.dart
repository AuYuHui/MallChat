import 'package:mallchat/helper/http.dart';
import 'package:mallchat/services/api.dart';

class UserService {
  Future getUserDetail() async {
    final data = await HttpClient().get(Api.userDetail);
    print("data,$data");
    return data;
  }
}
