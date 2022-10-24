import 'package:flutter/material.dart';

import '../profile_screen.dart';

class FavoritesCategories extends StatefulWidget {
  const FavoritesCategories({Key? key}) : super(key: key);

  @override
  State<FavoritesCategories> createState() => _FavoritesCategoriesState();
}

class _FavoritesCategoriesState extends State<FavoritesCategories> {
  bool erased = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(
                      left: leftPadding, right: leftPadding, top: 10),
                  child:  Text(
                    'Best Channels',
                    style: TextStyle(
                      fontFamily: 'Amiri',
                      color: Colors.grey[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
              ],
            )
          ],
        ),
      ]),
    );
  }
}
