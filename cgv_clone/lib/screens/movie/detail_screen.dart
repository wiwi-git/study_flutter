import 'package:cgv_clone/database_service.dart';
import 'package:cgv_clone/models/movies.dart';
import 'package:cgv_clone/screens/movie/review_screen.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final Movie thisMovie;

  const DetailScreen({super.key, required this.thisMovie});

  @override
  Widget build(BuildContext context) {
    Size appSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          thisMovie.title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black87,
        ),
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Image.asset(
                thisMovie.imageUrl,
                width: appSize.width,
                height: 300,
                fit: BoxFit.cover,
              ),
              Container(
                height: 300,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.grey.withOpacity(0.4),
                      Colors.black,
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 10,
                bottom: 14,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset(
                      thisMovie.imageUrl,
                      width: appSize.width * 0.25,
                      fit: BoxFit.contain,
                    ),
                    Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            thisMovie.title,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            thisMovie.subTitle,
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            thisMovie.runTime,
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(4),
            child: OutlinedButton(
              child: Text(
                '실관람평 등록하기',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.black87),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ReviewScreen(item: thisMovie)),
                );
              },
            ),
          ),
          StreamBuilder(
            stream: getReviews(thisMovie.title),
            builder: (context, snapshot) {
              if (!snapshot.hasData) return const Text('Loading...');
              return Column(
                children: snapshot.data!.docs.map((e) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: Icon(
                        Icons.person,
                        color: Colors.black,
                      ),
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          e['evaluation'],
                          style: TextStyle(color: Colors.brown),
                        ),
                        Row(
                          children: [
                            Text(
                              e['name'],
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            Spacer(),
                            Text(
                              (e['registration_date']).toDate().toString(),
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        )
                      ],
                    ),
                    subtitle: Text(e['comment']),
                  );
                }).toList(),
              );
            },
          ),
        ],
      ),
    );
  }
}
