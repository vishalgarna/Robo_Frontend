
 class ExceptionHandling implements Exception{

  final  _message;
  final  _prefix;

  ExceptionHandling([this._message , this._prefix]);

  String toString(){
    return '$_prefix $_message}';
  }

}

class InternetException extends ExceptionHandling {

  InternetException([String ? message]) : super(message , "No internet");
}
 class RequestTimeOut extends ExceptionHandling {

   RequestTimeOut([String ? message]) : super(message , "Request TIme Out");
 }

 class ServerError extends ExceptionHandling {

   ServerError([String ? message]) : super(message ?? "unkown error " , "ServerError");
 }

 class InvalidUrl extends ExceptionHandling {

   InvalidUrl([String ? message]) : super(message , "Invalid Url");
 }

 class UnknownError extends ExceptionHandling {

   UnknownError([dynamic  message]) : super(message ?? "Unknown" , "Unknown Error");
 }


 // define stage of any request
 enum Status {LAODING , COMPLETED , ERROR}

 class ApiResponse <T> {

   Status status;
   // generic type ka data
   T ? data;
   String ? message;

   ApiResponse(this.status, this.data, this.message);

   ApiResponse.loading(): status = Status.LAODING;
   ApiResponse.completed(this.data) : status = Status.COMPLETED;
   ApiResponse.error(this.message) : status = Status.ERROR;

   @override
   String toString(){
     return  "Status : $status \n Message : $message \n Data : $data";
   }
 }