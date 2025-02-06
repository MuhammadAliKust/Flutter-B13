import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Search",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back_ios_new,
          size: 18,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          children: [
            Image.asset(
              'assets/images/post.png',
              height: 200,
            ),
            SizedBox(
              height: 6,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  height: 36,
                  width: 36,
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "A protester carries the Confederate flag after breaching US Capitol security",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "5 hours ago    |     News18",
                        style: TextStyle(
                            fontSize: 9,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff464646)),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  'assets/images/like.png',
                  height: 24,
                  width: 24,
                ),
                Image.asset(
                  'assets/images/bookmark.png',
                  height: 24,
                  width: 24,
                ),
                Image.asset(
                  'assets/images/copy.png',
                  height: 24,
                  width: 24,
                ),
                Image.asset(
                  'assets/images/share.png',
                  height: 24,
                  width: 24,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
