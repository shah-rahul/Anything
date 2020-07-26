import 'package:Anything/Model/Movie.dart';
import 'package:Anything/Screens/Movie_detail.dart';
import 'package:flutter/material.dart';

class MovieItem extends StatelessWidget {
  final String title;
  final String id;
  final String imageUrl;
  final int duration;
  final Reviews reviews;
  final double imdb;

  MovieItem({
    @required this.title,
    @required this.id,
    @required this.imageUrl,
    @required this.duration,
    @required this.reviews,
    @required this.imdb,
  });

  String get reviewsText {
    switch (reviews) {
      case Reviews.Excellent:
        return "Excellent";
        break;
      case Reviews.Okay:
        return "okay";
        break;
      case Reviews.Poor:
        return "poor";
      // break;

      default:
        "unknknown";
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {
        Navigator.of(context)
            .pushNamed(MovieDetailScreen.routeName, arguments: id)
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(
                    child: Text(
                      title,
                      overflow: TextOverflow.fade,
                      softWrap: true,
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                      ),
                    ),
                    width: 300,
                    color: Colors.black54,
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.schedule),
                      SizedBox(
                        width: 6,
                      ),
                      Text("$duration min")
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.work),
                      SizedBox(
                        width: 6,
                      ),
                      Text(reviewsText)
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.cake),
                      SizedBox(
                        width: 6,
                      ),
                      Text("$imdb")
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
