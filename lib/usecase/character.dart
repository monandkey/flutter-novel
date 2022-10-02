import 'package:novel/entities/character.dart';

class CharacterUsecase implements ICharacterUsecase {
  final ICharacterGateway gateway;
  late Character character;

  CharacterUsecase(
    this.gateway,
  );

  @override
  void searchCharacter(String name) {
    character = gateway.fetchCharacter(name);
  }

  @override
  Character getCharacter() {
    return character;
  }
}

abstract class ICharacterGateway {
  Character fetchCharacter(String name);
}

abstract class ICharacterPresenter {
  Character getCharacter(String name);
}
