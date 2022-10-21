import 'package:flutter/material.dart';
import 'package:vmodel/data/data.dart';

class Reviews extends StatefulWidget {
  const Reviews({Key? key}) : super(key: key);

  @override
  State<Reviews> createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(15.0, 15.0, 0, 0),
            child: Text(
              "${Data.reviewsList.length} Reviews",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 84, 59, 58),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          ListView.builder(
              primary: false,
              shrinkWrap: true,
              itemCount: Data.reviewsList.length,
              itemBuilder: (context, index) => reviewsListWidget(
                    Data.reviewsList.elementAt(index).review,
                    Data.reviewsList.elementAt(index).name,
                    Data.reviewsList.elementAt(index).monthYear,
                    Data.reviewsList.elementAt(index).howLong,
                  )),
        ],
      ),
    );
  }

  Widget reviewsListWidget(
          String review, String name, String monthYear, String howLong) =>
      Container(
        margin: EdgeInsets.fromLTRB(15.0, 13.0, 15.0, 0),
        height: 200.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                    radius: 25.0,
                    backgroundImage: AssetImage("assets/images/model.jpg")),
                SizedBox(
                  width: 10.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(color: Color.fromARGB(255, 84, 59, 58)),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      children: [
                        Text(
                          monthYear,
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Color.fromARGB(255, 84, 59, 58),
                          ),
                        ),
                        Text(
                          "   " + howLong,
                          style: TextStyle(
                              fontSize: 12.0,
                              color: Color.fromARGB(255, 150, 144, 144)),
                        )
                      ],
                    ),
                  ],
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "4.5",
                        style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 84, 59, 58),
                        ),
                      ),
                      Icon(
                        Icons.star,
                        color: Color.fromARGB(255, 84, 59, 58),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 12.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          "5",
                          style: TextStyle(
                              color: Color.fromARGB(255, 84, 59, 58),
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.star,
                          size: 16.0,
                          color: Color.fromARGB(255, 84, 59, 58),
                        ),
                      ],
                    ),
                    SizedBox(height: 7.0),
                    Row(
                      children: [
                        Text(
                          "Location",
                          style: TextStyle(
                            color: Color.fromARGB(255, 84, 59, 58),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          "4.5",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 84, 59, 58),
                          ),
                        ),
                        Icon(
                          Icons.star,
                          size: 16.0,
                          color: Color.fromARGB(255, 84, 59, 58),
                        ),
                      ],
                    ),
                    SizedBox(height: 7.0),
                    Row(
                      children: [
                        Text(
                          "Job Quality",
                          style: TextStyle(
                            color: Color.fromARGB(255, 84, 59, 58),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          "5",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 84, 59, 58),
                          ),
                        ),
                        Icon(
                          Icons.star,
                          size: 16.0,
                          color: Color.fromARGB(255, 84, 59, 58),
                        ),
                      ],
                    ),
                    SizedBox(height: 7.0),
                    Row(
                      children: [
                        Text(
                          "Timing",
                          style: TextStyle(
                            color: Color.fromARGB(255, 84, 59, 58),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          "4.9",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 84, 59, 58),
                          ),
                        ),
                        Icon(
                          Icons.star,
                          size: 16.0,
                          color: Color.fromARGB(255, 84, 59, 58),
                        ),
                      ],
                    ),
                    SizedBox(height: 7.0),
                    Row(
                      children: [
                        Text(
                          "Work Energy",
                          style: TextStyle(
                            color: Color.fromARGB(255, 84, 59, 58),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 14.0),
            Expanded(
              child: Text(review),
            ),
            Divider(
              thickness: 1.0,
              color: Color.fromARGB(255, 222, 222, 222),
            ),
          ],
        ),
      );
}
