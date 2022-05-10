import 'dart:core';
import 'dart:io';

import 'package:inheritance_rpg/hero.dart';
import 'package:inheritance_rpg/knight.dart';
import 'package:inheritance_rpg/skill/schyte.dart';
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
  Kobold mk = Kobold();
  Goblin g = Goblin();
  Knight k = Knight();

  List<Monsters> monsters = [];

  monsters.add(Kobold());
  monsters.add(Goblin());
  monsters.add(Minotaur());

  g.healthPoint = 70;
  h.healthPoint = 50;
  mk.healthPoint = 90;
  // mk.kLamBaseDmg;
  // m.eatHumanDmg;
  //jika valuenya null/ berdasarkan input, lgsg panggil saja propertynya

  /** 
    * * in = data yang ada dalam object yang dipanggil
    * * as = data tersebut dideklarasikan sebagai data yang sama dengan data yang dipanggil (berbeda) 
    * * is = data tersebut ditindih dan dideklarasikan datanya adalah data yang dipanggil
    **/

  if (choose == knight) {
    print('Monsters HP: ' + g.healthPoint.toString());
    print('Hero HP: ' + h.healthPoint.toString());
    print('Kobold HP: ' + mk.healthPoint.toString());
    print('Tiba tiba datang segerombolan monster dan memangsa human');
    for (Monsters m in monsters) {
      if (m is Schyte) {
        print((m).schyteSkill());

        print(k.slashSkill());
      }
      if (m is Goblin || m is Minotaur) {
        //jika m adalah(termasuk) goblin atau minotaur maka print.
        print(m.eatHuman());
      }
    }

    print('DMG gigitan: ' + g.eatHumanDmg().toString() + ' ' + g.eatHuman());

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
// 1. import library nya
// include <iostream>

// masukan perintah variable buat input
// int? inputBeratBadan;
// int? inputTinggiBadan;

  // print('Selamat datang di Program penghitung BMI <nama mu> <kelas> \n');

// command input di c++
  // print('masukkan berat bdan anda (kg) :');
  // double inputBeratBadan = double.tryParse(stdin.readLineSync(encoding: utf8));

  // print('masukkan tinggi badan anda (m) :');
  // double inputTinggiBadan = double.tryParse(stdin.readLineSync(encoding: utf8));

  // print('Berat anda : ' + inputBeratBadan.toStringAsFixed(2));
  // print('Tinggi anda : ' + inputTinggiBadan.toStringAsFixed(2));

  // double bmiTinggi = (inputTinggiBadan * inputTinggiBadan);

  // double bmi = inputBeratBadan / (bmiTinggi);

  // print('jadi bmi anda adalah : ' +
  //     bmi.toStringAsFixed(2) +
  //     ', dan sesuai BMI anda tergolong :');

  // if (bmi <= 18.5) {
  //   print('Berat badan anda kurang');
  // } else if (bmi >= 18.5) {
  //   print('berat badan anda normal');
  // } else if (bmi > 22.9) {
  //   print('Anda cenderung Obesitas');
  // } else if (bmi > 30) {
  //   print('Anda Obesitas');
  // } else if (bmi > 50) {
  //   print('TIDAK TERTOLONG !!');
  // }

  // print('apakah anda ingin menghitung BMI lainnya?  [y/n?]');
  // String answer = stdin.readLineSync();

  // if (answer == 'y') {
  //   var tryagain = true;
  //   while (tryagain) {}
  // }
  
  // print('terimakasih sudah menggunakan program ini');
