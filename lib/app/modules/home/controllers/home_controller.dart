import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeController extends GetxController {
  RxString data = "Tidak Ada Data".obs;

  void simpanData() async {
    print('SIMPAN DATA');
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('name', 'LABIL');
  }

  void lihatData() async {
    print('LIHAT DATA');
    final prefs = await SharedPreferences.getInstance();
    if (prefs.getString('name') != null) {
      data.value = prefs.getString('name')!;
    }
  }
}
