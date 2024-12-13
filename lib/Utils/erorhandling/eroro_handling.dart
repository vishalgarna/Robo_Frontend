
import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import 'error_enums.dart';


// ya pe hum y baa rha hai ki ye errorstate ka part hai
part 'eroro_state.dart';

class ErrorHandler {

  static Future<Either<ErrorState , T >>callApi<T> (Future<Response> Function() api , T Function (dynamic) parse) async{

    try{
      final response =  await api();
      switch(response.statusCode){
        case 200:
          try {
            return right(parse(response.data));
          }catch(e){
            return left(DataParseError(Exception(e.toString())));
          }
        case 401 : {
          return left(DataHttpError(HttpException.unAuthorized));
        }

        case 500 : {
          return left(DataHttpError(HttpException.internalServerError));
        }

        default : {
          return left(DataHttpError(HttpException.unknown));
        }
      }

  } on DioException catch(e){

      return switch(e.type) {
        DioException.receiveTimeout => left(DataNetworkError(NetworkException.timeoutError)),
        DioException.connectionTimeout => left(DataNetworkError(NetworkException.timeoutError)),
        DioException.sendTimeout => left(DataNetworkError(NetworkException.timeoutError)),
        _ => left(DataNetworkError(NetworkException.timeoutError)),

      };

  }
  }
}