import 'dart:collection';
import 'package:firebase_database/firebase_database.dart';

var refKisiler = FirebaseDatabase.instance.reference().child("kisiler_tablo"); //referans noktası belirleme

Future<void> kisiEkle() async{
  var bilgi = HashMap<String,dynamic>();
  bilgi["kisi_ad"] = "Hakkı";
  bilgi["kisi_yas"] = 25;
  refKisiler.push().set(bilgi);
}