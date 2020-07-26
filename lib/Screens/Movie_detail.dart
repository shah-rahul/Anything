import 'package:Anything/dummy.dart';
import 'package:flutter/material.dart';

class MovieDetailScreen extends StatelessWidget {
  static const routeName = "/movie-detail";

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments as String;
    final selectedMovie =
        DUMMY_MOVIES.firstWhere((movies) => movies.id == routeArgs);
    return Scaffold(
      appBar: AppBar(
        title: Text("${selectedMovie.title}"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 15),
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  selectedMovie.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Text('CAST',
                  style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                color: Colors.white10,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListView.builder(
                itemCount: selectedMovie.cast.length,
                itemBuilder: (ctx, index) => Card(
                  color: Colors.white54,
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: Text(selectedMovie.cast[index]),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
