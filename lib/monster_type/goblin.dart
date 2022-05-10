import 'package:inheritance_rpg/monster_type/monsters.dart';
import 'package:inheritance_rpg/skill/schyte.dart';

class Goblin extends Monsters implements Schyte {
  String goblinTrap() => '*Trapped';

  @override
  String schyteSkill() => 'Sssrrrraaaatttt !!!';
}
