import 'dart:core';
import 'dart:io';

import 'package:inheritance_rpg/hero.dart';
import 'package:inheritance_rpg/test_dmg.dart';
import 'package:inheritance_rpg/monster_type/goblin.dart';
import 'package:inheritance_rpg/monster_type/kobold.dart';
import 'package:inheritance_rpg/monster_type/minotaur.dart';
import 'package:inheritance_rpg/monster_type/monsters.dart';

void main(List<String> arguments) async {
  int knight = 1, mage = 2;

  print('selamat datang di Game RPG!!');
  print('silahkan pilih character anda: \n1. knight \n2. mage');
  int choose = int.tryParse(stdin.readLineSync());

  Hero h = Hero();
  Monsters m = Monsters();
  Kobold mk = Kobold();
  Goblin g = Goblin();

  List<Monsters> monsters = [];

  monsters.add(Kobold());
  monsters.add(Goblin());
  monsters.add(Minotaur());

  m.healthPoint = 70;
  h.healthPoint = 50;
  mk.healthPoint = 90;
  // mk.kLamBaseDmg;
  // m.eatHumanDmg;
  //jika valuenya null/ berdasarkan input, lgsg panggil saja propertynya

  if (choose == knight) {
    print('Monsters HP: ' + m.healthPoint.toString());
    print('Hero HP: ' + h.healthPoint.toString());
    print('Kobold HP: ' + mk.healthPoint.toString());
    print('Tiba tiba datang segerombolan monster dan memangsa human');
    for (m in monsters) {
      if (m is Goblin || m is Minotaur) {
        //jika m adalah(termasuk) goblin atau minotaur maka print.
        print(m.eatHuman());
      }
    }

    print('DMG gigitan: ' + m.eatHumanDmg().toString() + ' ' + m.eatHuman());

    print('\ntidak lama kemudian kobold datang dan menghantam mereka');
    print('DMG hantaman: ' + mk.kLamBaseDmg.toString());

    if (mk.kLamBaseDmg > 13) {
      print(mk.hancur());
    } else if (mk.kLamBaseDmg <= 13) {
      print(mk.sekarat());
    } else if (mk.kLamBaseDmg < 0) {
      print(mk.miss());
    }

    double remainHpKo = (mk.healthPoint - outputSkill);

    print('datanglah Hero dan lgsg menyerang kobold !!\nDMG serangan: ' +
        randomSwordDmg.toString());
    if (randomSwordDmg > 15) {
      print('special skill !!! ' + h.windSlash());
      print('output DMG:' + outputSkill.toString());
      if (remainHpKo < 0) {
        print('\nDamage yang terlampaui: ' +
            (remainHpKo *= -1).toStringAsFixed(2));
        print('monster mati seketika');
        print('Damage anda terlalu kuat!');
      } else if (remainHpKo == 0) {
        print('monster telah mati!!');
      } else {
        print('SERANGAN KURANG KUAT !!!');
        print('Remain HP monster: ' + remainHpKo.toStringAsFixed(2));
      }
    } else if (randomSwordDmg == 0) {
      print('*miss');
    } else {
      print('SERANGAN KURANG KUAT !!!');
      print('Remain HP monster: ' + remainHpKo.toStringAsFixed(2));
    }
    //ini tidak masuk perbandingan
  } else if (choose == mage) {
    print('gtw gw blom buat');
  } else {
    print('ANDA MEMASUKAN INPUT YANG SALAH!!');
  }
}
