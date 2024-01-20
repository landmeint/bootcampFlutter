import 'titan.dart';
import 'human.dart';
import 'armor_titan.dart';
import 'attack_titan.dart';
import 'beast_titan.dart';

void main(){
    var penguasa = new Titan();
    var manusia = new Human();
    var dewaArmor = new Armor_Titan();
    var dewaPerang = new Attack_Titan();
    var dewaBurukRupa = new Beast_Titan();

    penguasa.setPowerPoint(50);
    manusia.setPowerPoint(3);
    dewaArmor.setPowerPoint(20);
    dewaPerang.setPowerPoint(35);
    dewaBurukRupa.setPowerPoint(15);

    print("Power Point Penguasa : ${cetakPowerPoint(penguasa.getPowerPoint())}");
    print("Power Point Manusia : ${cetakPowerPoint(manusia.getPowerPoint())}");
    print("Power Point Dewa Armor : ${cetakPowerPoint(dewaArmor.getPowerPoint())}");
    print("Power Point Dewa Perang : ${cetakPowerPoint(dewaPerang.getPowerPoint())}");
    print("Power Point Dewa Buruk Rupa : ${cetakPowerPoint(dewaBurukRupa.getPowerPoint())}");

}

cetakPowerPoint(num point) {
  if (point <= 5) {
    return 5;
  } else {
    return point;
  }
}