import 'dart:nativewrappers/_internal/vm/lib/developer.dart';

import 'package:mongo_dart/mongo_dart.dart';
import 'package:product_app/constant.dart';

class MongoDatabase {
  static connect() async {
    var db = await Db.create(MONGO_URL);
    await db.open();
    inspect(db);
    var collection = db.collection(COLLECTION_NAME);
  }
}
