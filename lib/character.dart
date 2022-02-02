import 'package:inheritance_rpg/test_dmg.dart';

class Character {
  int _healthPoint, _mBaseDamage;

  int get healthPoint => _healthPoint;
  set healthPoint(int value) {
    if (value < 5) {
      value = 5;
    }
    _healthPoint = value;
  }

  int get mBaseDamage => _mBaseDamage;
  set mBaseDamage(int value) {
    if (value < 1) {
      value = 1;
    }

    _mBaseDamage = value;
  }

  int get hBaseDamage => hBaseDmg;
  set hBaseDamage(int value) {
    if (value < 5) {
      value = 5;
    }
    randomDmg = value;
  }

  // bool statusSkill() => _statusSkill = false;

  int get hSwordIronDmg => randomDmg;
  set hSwordIronDmg(int value) {
    randomDmg = value;
  }

  // double get outputSkill => _baseSkill;
  // set outputSkill(double value) {
  //   value = hSwordIronDmg + (baseSwordDmg * 60 / 100);
  //   _baseSkill = value;
  // }

  String windSlash() => 'WIND SLASH !!!';
}
