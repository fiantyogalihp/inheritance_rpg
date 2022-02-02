import 'package:inheritance_rpg/monster_type/monsters.dart';
import 'package:inheritance_rpg/test_dmg.dart';

class Minotaur extends Monsters {
  int get minoLamDmg => randomDmg;
  set minoLamDmg(int value) {
    if (value == 0) {
      print('*miss');
    }
    randomDmg = value;
  }

  String minoLambasting() => 'Duaaarrrr!!';
}
