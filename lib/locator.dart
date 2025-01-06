import 'package:foodie/data/repository/repository.dart';
import 'package:foodie/domain/domain_controller.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setUp() {
  locator.registerSingleton<DomainController>(DomainController());
  locator.registerSingleton<Repository>(Repository());
}
