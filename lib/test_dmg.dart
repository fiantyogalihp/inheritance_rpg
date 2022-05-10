// int calculate() {
//   return 6 * 7;
// }
import 'dart:math';

import 'package:inheritance_rpg/hero.dart';
import 'package:inheritance_rpg/monster_type/kobold.dart';

Random _random = Random();
int _smallRandomDmg = _random.nextInt(max(1, 32));
int _smallSwordDmg = _random.nextInt(max(1, 40));
double _outputSkill;
int _eatHumanDmg = 9;
int _hBaseDmg = 5;
int _baseSwordDmg;

Hero h = Hero();

int get randomDmg => _smallRandomDmg;
set randomDmg(int value) {
  _smallRandomDmg = value;
}

int get randomSwordDmg => _smallSwordDmg;
set randomSwordDmg(int value) {
  _smallSwordDmg = value;
}

// ==========================================

//method dibuat private, agar method tidak sembarang digunakan dan ketika memanggil akan hanya melewati getter/setter
//dan ini juga membantu jika memanggil getter dapat menjalankan banyak method sekaligus (kurang pasti jadi tanyakan ke  mas koordinator [karena alasan gtw nemu sendiri])
double _countSwordDmg([double value]) {
  //optional method
  // print(_smallRandomDmg.toString());
  return _outputSkill = _smallSwordDmg + (_smallSwordDmg * 210 / 100);
}

// double get ouputSkill {
//   print(h.windSlash().toString());=
//   return _outputSkill = _smallSwordDmg + (_smallSwordDmg * 90 / 100);
// }

double get outputSkill => _countSwordDmg();
set outputSkill(double value) {
  _countSwordDmg(value);
}

int get baseSwordDmg => _baseSwordDmg;
set baseSwordDmg(int _baseSwordDmg) {
  _baseSwordDmg = 15;
}

int get eatBaseDmg => _eatHumanDmg;
int get hBaseDmg => _hBaseDmg;

void main(List<String> args) {
  Kobold mk = Kobold();

  mk.healthPoint = 90;
}
