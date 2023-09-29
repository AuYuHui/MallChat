import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(obfuscate: true, requireEnvFile: true, path: ".env")
abstract class Env {
  @EnviedField(varName: 'API_SERVER_URL')
  static final String apiServerURL = _Env.apiServerURL;

  @EnviedField(varName: 'WS_URL')
  static final String wsUrl = _Env.wsUrl;
}
