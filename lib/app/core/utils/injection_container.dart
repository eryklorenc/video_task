import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:video_task/app/core/utils/injection_container.config.dart';

final getIt = GetIt.instance;
@InjectableInit()
void configureDependencies() => getIt.init();
