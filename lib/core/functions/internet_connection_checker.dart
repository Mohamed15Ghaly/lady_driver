import 'package:connectivity_plus/connectivity_plus.dart';

Future<bool> internetConnectionChecker() async {
  var connectivityResult = await (Connectivity().checkConnectivity());
  return connectivityResult.contains(ConnectivityResult.wifi) ||
      connectivityResult.contains(ConnectivityResult.mobile) ||
      connectivityResult.contains(ConnectivityResult.ethernet);
}
