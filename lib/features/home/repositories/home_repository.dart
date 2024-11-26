import 'package:dio/dio.dart';
import 'package:shop/common/resources/data_state.dart';
import 'package:shop/features/home/data/data_source/home_api_provider.dart';
import 'package:shop/features/home/data/models/home_model.dart';

class HomeRepository {
  HomeApiProvider apiProvider;
  HomeRepository(this.apiProvider);

  Future<DataState<HomeModel>> fetchHomeData() async {
    try {
      Response response = await apiProvider.callHomeData();
      if (response.statusCode == 200) {
        final HomeModel homeModel = HomeModel.fromJson(response.data);
        return DataSuccess(homeModel);
      } else {
        return const DataFailed("Failed");
      }
    } catch (e) {
      return const DataFailed("Server have problem");
    }
  }
}
