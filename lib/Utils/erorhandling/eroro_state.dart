// sealed class means they cna sma page aur libray this class
// ya pe ye bta trhae hai ki error handler isi ka part hai
part of 'eroro_handling.dart';

sealed  class ErrorState<T>{
  // create instances of excetions
  final Exception ? clientError;
  final Exception ? parseError;
  final HttpException ? httpError;
  final NetworkException ? networkError;

  ErrorState({  this.clientError ,this.httpError , this.networkError , this.parseError });

}

class DataClientError<T> extends ErrorState<T> {

  DataClientError(Exception error) : super(clientError: error);
}


class DataNetworkError<T> extends ErrorState<T> {

  DataNetworkError(NetworkException error) : super(networkError: error);
}



class DataHttpError<T> extends ErrorState<T> {

  DataHttpError(HttpException error) : super(httpError: error);
}


class DataParseError<T> extends ErrorState<T> {

  DataParseError(Exception error) : super(parseError: error);
}