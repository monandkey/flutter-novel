import 'package:novel/entities/start_menu.dart';

class StartMenuUsecase implements IStartMenuUsecase {
  final IStartMenuGateway gateway;
  late StartMenu startMenu;

  StartMenuUsecase(
    this.gateway
  );

  @override
  void searchStartMenu() {
    startMenu = gateway.fetchStartMenu();
  }

  @override
  StartMenu getStartMenu() {
    return startMenu;
  }
}

abstract class IStartMenuGateway {
  StartMenu fetchStartMenu();
}

abstract class IStartMenuPresenter {
  StartMenu getStartMenu();
}
