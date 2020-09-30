import 'dart:ui';
import 'package:flutter/material.dart';

class CompanyCard extends StatelessWidget {
  final String id;
  final String title;
  final String type;
  final String jobs;
  final String imageURL;

  CompanyCard({
    this.id,
    this.title,
    this.type,
    this.jobs,
    this.imageURL,
  });

  @override
  Widget build(BuildContext context) {
    double sizedHeight = 20;
    double borderRadius = 20;

    return InkWell(
      onTap: () => {},
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        elevation: 5,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          height: 250,
          child: Stack(
            children: <Widget>[
              Center(
                child: Container(
                  width: double.infinity,
                  height: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(borderRadius),
                    image: DecorationImage(
                      image: AssetImage('$imageURL'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.black45,
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: IconButton(
                            icon: Icon(
                              Icons.star,
                              color: Colors.grey,
                            ),
                            onPressed: () {},
                          ),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          title,
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: sizedHeight),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.local_offer, color: Colors.white),
                            SizedBox(width: 20),
                            Text(
                              type,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(height: sizedHeight),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.work, color: Colors.white),
                            SizedBox(width: 20),
                            Text(
                              '$jobs jobs',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
