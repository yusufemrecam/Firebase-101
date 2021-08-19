import 'package:firebase_database/firebase_database.dart';


var refKisiler = FirebaseDatabase.instance.reference().child("kisiler_tablo"); //referans noktası belirleme

Future<void> kisiSil() async{
  refKisiler.child("-MhT30ku8Z_WPGbxRz-T").remove();
}

