import 'package:novel/entities/character.dart';

class CharacterUsecase implements ICharacterUsecase {
  String name;
  ICharacterGateway gateway;
  ICharacterPresenter presenter;

  CharacterUsecase(
    this.name,
    this.gateway,
    this.presenter
  );

  @override
  void searchCharacter() {
    Character character = gateway.fetchCharacter(name);
    presenter.viewCharacter(character);
  }
}

abstract class ICharacterController {
  Character getCharacter();
}

abstract class ICharacterGateway {
  Character fetchCharacter(String name);
}

abstract class ICharacterPresenter {
  void viewCharacter(Character character);
}
