import 'package:mallchat/helper/http.dart';
import 'package:mallchat/models/user_cache_list_model.dart';
import 'package:mallchat/models/user_cache_model.dart';
import 'package:mallchat/models/user_model.dart';
import 'package:mallchat/services/api.dart';

class UserService {
  Future<UserModel> getUserDetail() async {
    final data = await HttpClient().get(Api.userDetail);
    final userInfo = UserModel.fromJson(data.data['data']);
    return userInfo;
  }

  Future<List<UserCacheModel>> getUserInfoBatch(List users) async {
    final data = await HttpClient()
        .post(Api.userInfoBatch, formData: {'reqList': users});
    final UserCacheListModel jsonData = UserCacheListModel.fromJson(data.data);

    return jsonData.data;
  }
}
