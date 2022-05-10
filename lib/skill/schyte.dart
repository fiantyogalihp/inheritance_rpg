// ignore_for_file: unused_import

import 'package:inheritance_rpg/hero.dart';
import 'package:inheritance_rpg/knight.dart';

import '../monster_type/monsters.dart';

abstract class Schyte extends Monsters {
  // * abstract is like a template, u can use the method / behavior in other class
  // * in other class can implements many abstract class
  // * but the characteristics of the class is forcing (must be implemented)
  String schyteSkill();
}

mixin SlashSkill on Hero {
  // * mixin is like a template, u can use the method / behavior in other class (same with abstract class)
  // * in other class can implements many abstract class
  // * but the characteristics of the class is adding (can be implemented)
  String slashSkill() => 'Slash !!!';
}
