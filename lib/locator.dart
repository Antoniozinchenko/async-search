import 'package:get_it/get_it.dart';
import 'package:newsapp/core/api/spacenews_api.dart';

class ServiceLocator {
  static void registerSingletons() {
    GetIt.I.registerSingleton(SpaceNewsApi());
  }
}
