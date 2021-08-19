import 'dart:collection';

import 'package:firebase_database/firebase_database.dart';


var refKisiler = FirebaseDatabase.instance.reference().child("kisiler_tablo"); //referans noktası belirleme

Future<void> kisiGuncelle() async{
  var guncelBilgi = HashMap<String,dynamic>();
  guncelBilgi["kisi_ad"] = "Emine";
  guncelBilgi["kisi_yas"] = 61;
  refKisiler.child("-MhSnmlLe-z5uzpSVue2").update(guncelBilgi);
}