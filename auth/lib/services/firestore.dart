import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  // Get reference to 'rents' collection
  final CollectionReference rents = FirebaseFirestore.instance.collection('rents');

  // Save rent to Firestore under subcollection of user's email
  Future<void> saveRentToDatabase(String receipt, String userEmail) async {
    // Reference to user's document based on email
    final userDoc = rents.doc(userEmail);

    // Save the receipt to a subcollection called 'receipts' under the user's document
    await userDoc.collection('receipts').add({
      'date': DateTime.now(),
      'rent': receipt,
      // Add more fields as necessary..
    });
  }
}
