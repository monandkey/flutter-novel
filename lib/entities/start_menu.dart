class StartMenu {
  final String title;
  final List<String> menuList;

  StartMenu(
    this.title,
    this.menuList
  );
}

const List<String> menuList = [
  "New Game",
  "Continue",
  "Flowchart",
  "Album",
  "Extra",
  "Exit"
];

const int newGameNum = 0;
const int continueNum = 1;
const int flowchartNum = 2;
const int albumNum = 3;
const int extraNum = 4;
const int exitNum = 5;

enum Action {
  initialGame,
  loadData,
  viweFlowchart,
  viewAlbum,
  extra,
  exit,
}

abstract class IStartMenuUsecase {
  void searchStartMenu();
  StartMenu getStartMenu();
}
