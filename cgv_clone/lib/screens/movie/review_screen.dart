import 'package:cgv_clone/database_service.dart';
import 'package:cgv_clone/models/movies.dart';
import 'package:flutter/material.dart';

class ReviewScreen extends StatefulWidget {
  final Movie item;

  const ReviewScreen({super.key, required this.item});

  @override
  State<StatefulWidget> createState() => _ReviewScreen();
}

class _ReviewScreen extends State<ReviewScreen> {
  List<String> choices = ['GOOD!', 'BAD.'];
  int choice_index = 0;
  TextEditingController reviewIdController = new TextEditingController();
  TextEditingController reviewTextController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    Movie thisMovie = widget.item;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          '관람평 등록',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black87),
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.black12,
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    '이 영화 어땟나요?',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List<Widget>.generate(
                    choices.length,
                    (index) {
                      return ChoiceChip(
                        padding: const EdgeInsets.all(10),
                        label: Text(
                          choices[index],
                          style: TextStyle(
                              color: (choice_index == index)
                                  ? Colors.white
                                  : Colors.black,
                              fontSize: 20),
                        ),
                        labelPadding:
                            const EdgeInsets.symmetric(horizontal: 50),
                        selected: choice_index == index,
                        onSelected: (value) {
                          setState(() {
                            choice_index = index;
                          });
                        },
                        backgroundColor: Colors.white,
                        selectedColor: Colors.red,
                        shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      );
                    },
                  ).toList(),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '나의 감상평',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(height: 20),
                TextField(
                  controller: reviewIdController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '작성자',
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  minLines: 1,
                  maxLines: 5,
                  keyboardType: TextInputType.multiline,
                  controller: reviewTextController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '내용',
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.red),
                    onPressed: () {
                      if (reviewIdController.text.isEmpty ||
                          reviewTextController.text.isEmpty) {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                            content: Text('리뷰를 입력하세요.'),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context, 'OK'),
                                child: const Text('OK'),
                              ),
                            ],
                          ),
                        );
                      } else {
                        addReview(
                          thisMovie.title,
                          reviewIdController.text,
                          reviewTextController.text,
                          choices[choice_index],
                        );
                        Navigator.pop(context);
                      }
                    },
                    child: Text(
                      '제출',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
