class LoginDataModel {
  final int type;
  final Map data;

  LoginDataModel({required this.type, required this.data});

  factory LoginDataModel.fromJson(Map<String, dynamic> json) {
    return LoginDataModel(type: json['type'], data: json['data']);
  }
}
