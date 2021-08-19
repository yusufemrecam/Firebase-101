import 'package:firebase_database/firebase_database.dart';
import 'package:firebasewithflutter/Kisiler.dart';

var refKisiler = FirebaseDatabase.instance.reference().child("kisiler_tablo");

Future<void> limitToFirsandLimitToLast() async{

  //var sorgu = refKisiler.limitToFirst(2); //ilk 2 veri getirdi
  var sorgu = refKisiler.limitToLast(2);


  sorgu.onValue.listen((event) {
    var gelenBilgi = event.snapshot.value;

    if(gelenBilgi != null){
      gelenBilgi.forEach((key, nesne){

        var gelenKisi = Kisiler.fromJason(nesne);
        print("******************");
        print("Kişi Key: $key");
        print("Kisi Ad: ${gelenKisi.kisi_ad}");
        print("Kişi Yaş: ${gelenKisi.kisi_yas}");

      });
    }
  });
}