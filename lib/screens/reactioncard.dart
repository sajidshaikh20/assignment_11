import 'package:assignment_11/screens/actionbutton.dart';
import 'package:assignment_11/screens/emogibutton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mycard extends StatefulWidget {
  const Mycard({Key? key}) : super(key: key);

  @override
  _MycardState createState() => _MycardState();
}

class _MycardState extends State<Mycard> {
  bool isVisible = false;
  String? emojiSelected;
  String? emojiTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Card(
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://img.freepik.com/free-photo/wide-angle-shot-single-tree-growing-clouded-sky-during-sunset-surrounded-by-grass_181624-22807.jpg?size=626&ext=jpg'))),
              ),
            ),
            Visibility(
              visible: isVisible,
              child: Card(
                  elevation: 2.0,
                  child: SizedBox(
                    height: 45.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      children: [
                        EmojiButton(
                            imagePath: 'blow_kiss.png',
                            onPressed: () {
                              setState(() {
                                emojiSelected = 'blow_kiss.png';
                                isVisible = !isVisible;
                                emojiTitle = 'In Love';
                              });
                            }),
                        EmojiButton(
                            imagePath: 'cool_emoji.png',
                            onPressed: () {
                              setState(() {
                                emojiSelected = 'cool_emoji.png';
                                isVisible = !isVisible;
                                emojiTitle = 'Cool';
                              });
                            }),
                        EmojiButton(
                            imagePath: 'happy.png',
                            onPressed: () {
                              setState(() {
                                emojiSelected = 'happy.png';
                                isVisible = !isVisible;
                                emojiTitle = 'Happy';
                              });
                            }),
                        EmojiButton(
                            imagePath: 'laugh.png',
                            onPressed: () {
                              setState(() {
                                emojiSelected = 'laugh.png';
                                isVisible = !isVisible;
                                emojiTitle = 'HaHa';
                              });
                            }),
                        EmojiButton(
                            imagePath: 'suspense.png',
                            onPressed: () {
                              setState(() {
                                emojiSelected = 'suspense.png';
                                isVisible = !isVisible;
                                emojiTitle = 'Shocked';
                              });
                            }),
                        EmojiButton(
                            imagePath: 'tired.png',
                            onPressed: () {
                              setState(() {
                                emojiSelected = 'tired.png';
                                isVisible = !isVisible;
                                emojiTitle = 'Tired';
                              });
                            }),
                      ],
                    ),
                  )),
            ),
            Divider(
              thickness: 1.5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Actionbutton(
                      // title: 'like',
                      // icon: Icons.thumb_up_alt_outlined,
                      onPressed: () {
                        setState(() {
                          isVisible = !isVisible;
                        });
                      },
                      imagePath: emojiSelected,
                      icon: Icons.thumb_up_alt_outlined,
                      title: emojiTitle ?? 'Like'),
                  Actionbutton(
                      title: 'Comments',
                      icon: Icons.comment_bank_outlined,
                      onPressed: () {}),
                  Actionbutton(
                      title: 'Share', icon: Icons.share, onPressed: () {})
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
