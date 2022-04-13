// Package imports:
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

// Project imports:
import 'package:flutter_boilerplate_riverpod/data/models/todo/todo_model.dart';

part 'todo_api.g.dart';

@RestApi()
abstract class TodoApi {
  factory TodoApi(Dio dio) = _TodoApi;

  @GET('/todos')
  Future<HttpResponse<List<TodoModel>>> getTodos();
}
