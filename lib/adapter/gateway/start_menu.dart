import 'package:novel/entities/start_menu.dart';
import 'package:novel/usecase/start_menu.dart';

class StartMenuGateway implements IStartMenuGateway {
  IStartMenuDatabase database;

  StartMenuGateway(
    this.database
  );

  @override
  StartMenu fetchStartMenu() {
    dynamic data = database.read();
    StartMenu startMenu = StartMenu(
      "",
      data['start_menu'].map((data) => data['view_name']).toList()
    );
    return startMenu;
  }
}

abstract class IStartMenuDatabase {
  dynamic read();
}
