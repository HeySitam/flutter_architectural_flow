import 'dart:async';

import 'package:flutter_architectural_flow/core/api_data_holder.dart';
import 'package:flutter_architectural_flow/model/remote_datasource/app_remote_datasource.dart';

class AppRepository {
  final AppRemoteDatasource _remoteDatasource = AppRemoteDatasource();

  final StreamController<ApiDataHolder> _appDataController = StreamController<ApiDataHolder>();
  Stream<ApiDataHolder> get appDataStream => _appDataController.stream;

  Future<void> getDogListData() async {
    final apiDataHolder = await _remoteDatasource.getDogListData();
    _appDataController.add(apiDataHolder);
  }

}