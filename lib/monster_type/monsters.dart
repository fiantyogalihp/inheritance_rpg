import 'package:inheritance_rpg/character.dart';
import 'package:inheritance_rpg/test_dmg.dart';

class Monsters extends Character {
  String eatHuman() => 'gyaahaha!!';
  int eatHumanDmg() => eatBaseDmg;
}
