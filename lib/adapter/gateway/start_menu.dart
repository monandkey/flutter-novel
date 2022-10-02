import 'package:novel/entities/start_menu.dart';
import 'package:novel/usecase/start_menu.dart';

class StartMenuGateway implements IStartMenuGateway {
  IStartMenuDatabase database;

  StartMenuGateway(
    this.database
  );

  @override
  StartMenu fetchStartMenu() {
    StartMenu startMenu = StartMenu(
      "",
      menuList
    );
    return startMenu;
  }
}

abstract class IStartMenuDatabase {
  dynamic read();
}
