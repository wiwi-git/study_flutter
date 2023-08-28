import 'package:cloud_firestore/cloud_firestore.dart';

final FirebaseFirestore firestore = FirebaseFirestore.instance;

CollectionReference reviewsCollection = firestore.collection('review');

void addReview(
  String movieTitle,
  String name,
  String comment,
  String evaluation,
) async {
  DocumentReference<Object?> value = await reviewsCollection.add({
    'movie_title': movieTitle,
    'name': name,
    'comment': comment,
    'evaluation': evaluation,
    'registration_date': DateTime.now(),
  });
  print('review added? $value');
}

Stream<QuerySnapshot> getReviews(String movieTitle) {
  return reviewsCollection
      .where('movie_title', isEqualTo: movieTitle)
      .snapshots();
}
