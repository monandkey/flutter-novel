class Character {
  final String name;
  final List<CharacterPattern> characterPattern;
  final bool specialEncounter;

  Character(
    this.name,
    this.characterPattern,
    this.specialEncounter
  );
}

class CharacterPattern {
  final String alias;
  final String image;

  CharacterPattern(
    this.alias,
    this.image
  );
}

abstract class ICharacterUsecase {
  void searchCharacter(String name);
  Character getCharacter();
}
