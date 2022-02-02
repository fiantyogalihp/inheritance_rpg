import 'package:inheritance_rpg/monster_type/monsters.dart';
import 'package:inheritance_rpg/test_dmg.dart';

class Kobold extends Monsters {
  int get kLamBaseDmg => randomDmg;
  set kLamBaseDmg(int value) {
    randomDmg = value;
    if (value < 5 || value < 0) {
      value = 5;
    }
  }

  String miss() => '\n*miss';
  String sekarat() => '\nmusuh sekarat';
  String hancur() => '\nmusuh mati seketika';
  String lambasting() => 'Duuuummm!!';
}
