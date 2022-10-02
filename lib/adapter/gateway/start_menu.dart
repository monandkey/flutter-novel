import 'package:novel/entities/start_menu.dart';
import 'package:novel/usecase/start_menu.dart';

class StartMenuGateway implements IStartMenuGateway {
  IStartMenuDatabase database;

  StartMenuGateway(
    this.database
  );

  @override
  StartMenu fetchStartMenu() {
    final List<String> inputMenuList = menuList.where((element) => element != 'extra').toList();
    StartMenu startMenu = StartMenu(
      "",
      inputMenuList
    );
    return startMenu;
  }
}

abstract class IStartMenuDatabase {
  dynamic read();
}
