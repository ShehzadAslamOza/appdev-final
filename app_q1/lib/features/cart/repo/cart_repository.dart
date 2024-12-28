import 'package:app_q1/features/cart/model/product_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CartRepository {
  static FirebaseFirestore _firestore = FirebaseFirestore.instance;

  static Stream<List<ProductModel>> getTodos() {
    return _firestore.collection('item').snapshots().map((snapshot) =>
        snapshot.docs.map((doc) => ProductModel.fromJson(doc.data())).toList());
  }
}
