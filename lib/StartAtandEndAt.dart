import 'package:firebase_database/firebase_database.dart';
import 'package:firebasewithflutter/Kisiler.dart';

var refKisiler = FirebaseDatabase.instance.reference().child("kisiler_tablo");

Future<void> startAtandEndAt() async{

  var sorgu = refKisiler.orderByChild("kisi_yas").startAt(18).endAt(60);

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