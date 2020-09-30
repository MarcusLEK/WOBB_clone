import 'package:flutter/material.dart';

class JobCardScreen extends StatefulWidget {
  @override
  _JobCardScreenState createState() => _JobCardScreenState();
}

class _JobCardScreenState extends State<JobCardScreen> {
  String categoryTitle;

  Color star = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 650,
        width: double.infinity,
        padding: EdgeInsets.all(10),
        child: Expanded(
          child: Card(
            color: Colors.red[500],
            elevation: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                // Top Card
                Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.star,
                            color: star,
                          ),
                          onPressed: () {
                            setState(() {
                              if (star == Colors.grey) {
                                star = Colors.yellow;
                              } else {
                                star = Colors.grey;
                              }
                            });
                          },
                        ),
                      ],
                    ),
                    Text(
                      'Software Developer Intern',
                      style: TextStyle(fontSize: 25),
                    ),
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        'at WOBB Sdn. Bhd.',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.location_on,
                                size: 20,
                                color: Colors.black,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Malaysia',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.business_center,
                                size: 20,
                                color: Colors.black,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Tech',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.access_time,
                                size: 20,
                                color: Colors.black,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Full-time',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
