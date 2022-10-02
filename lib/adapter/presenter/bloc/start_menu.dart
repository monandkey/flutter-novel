import 'package:novel/entities/start_menu.dart';
import 'package:novel/usecase/start_menu.dart';

class StartMenuPresenter implements IStartMenuPresenter {
  final IStartMenuGateway gateway;

  StartMenuPresenter(
    this.gateway
  );

  @override
  StartMenu getStartMenu() {
    final IStartMenuUsecase usecase = StartMenuUsecase(gateway);
    usecase.searchStartMenu();
    return usecase.getStartMenu();
  }
}
