import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';



class Rating extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Rating> {
  double _rating = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rating Bar Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RatingBar.builder(
                initialRating: _rating,
                minRating: 1,
                maxRating: 5,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemBuilder: (context,_)=>Icon(Icons.star,color: Colors.red,),
                onRatingUpdate: (rating){
                  setState(() {
                    _rating = rating;
                  });
                }),
            SizedBox(height: 20),
            Text(
              'Rating: $_rating',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
