import 'package:novel/entities/character.dart';
import 'package:novel/usecase/character.dart';

class CharacterPresenter implements ICharacterPresenter {
  final ICharacterGateway gateway;
  late Character character;

  CharacterPresenter(
    this.gateway
  );

  @override
  Character getCharacter(String name) {
    final ICharacterUsecase usecase = CharacterUsecase(gateway);
    usecase.searchCharacter(name);
    return usecase.getCharacter();
  }
}
