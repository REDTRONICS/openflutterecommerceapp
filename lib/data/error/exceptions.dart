import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

//Exception that is thrown when http request call response is not 200
class HttpRequestException implements Exception { }

//Exception that is thrown when value is not presented in Local Db
class LocalDbExceptionimplements implements Exception { }

//Exception that is thrown when Entity to Model conversion is performed
class EntityModelMapperException implements Exception { 
  final String message;

  EntityModelMapperException({@required this.message}); 
}

abstract class Failure extends Equatable {
  @override
  List<Object> get props => [];
}

class RemoteServerFailure extends Failure {}

class LocalDatabaseFailure extends Failure {}