abstract class BaseNetworkServices {

  Future<dynamic> getApi (String url);
   Future<dynamic> postApi (dynamic data , String url);
  Future<dynamic> deleteApi (dynamic data , String url);

}