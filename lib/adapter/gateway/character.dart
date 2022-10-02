import 'package:novel/entities/character.dart';
import 'package:novel/usecase/character.dart';

class CharacterGateway implements ICharacterGateway {
  ICharacterDatabase database;

  CharacterGateway(
    this.database
  );

  @override
  Character fetchCharacter(String name) {
    dynamic data = database.read(name);
    Character character = Character(
      data['name'],
      data['pattern'].map((data) => CharacterPattern(
        data['alias'],
        data['image']
      )).toList(),
      data['specialEncounter'],
    );
    return character;
  }
}

abstract class ICharacterDatabase {
  // void create();
  dynamic read(String name);
  // void update();
  // void delete();
}
