import 'package:flutter/material.dart';
import 'package:jared/components/feeling.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[700],
        body: SafeArea(
            child: ListView(
          children: [
            Column(
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //hy jared
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi, Jared!",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0),
                          ),
                          Text(
                            "23rd Jan, 2021",
                            style: TextStyle(color: Colors.grey[400]),
                          )
                        ],
                      ),

                      //notification icon
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[400],
                            borderRadius: BorderRadius.circular(10.0)),
                        padding: EdgeInsets.all(10.0),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          color: Colors.blue[400],
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Row(
                        children: [
                          //search icon
                          Icon(
                            Icons.search,
                            color: Colors.white,
                          ),

                          //text
                          Text(
                            "Search...",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    )),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "How do you feel?",
                        style: TextStyle(color: Colors.white),
                      ),
                      Icon(Icons.more, color: Colors.white)
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 80.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(
                        width: 20.0,
                      ),
                      Feeling(
                        feelingName: "Badly",
                        feelingEmoji: "😒",
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Feeling(feelingName: "Well", feelingEmoji: "😅"),
                      SizedBox(
                        width: 20.0,
                      ),
                      Feeling(feelingName: "Happy", feelingEmoji: "😊"),
                      SizedBox(
                        width: 20.0,
                      ),
                      Feeling(feelingName: "Happy", feelingEmoji: "😊"),
                      SizedBox(
                        width: 20.0,
                      ),
                      Feeling(feelingName: "Happy", feelingEmoji: "😊"),
                      SizedBox(
                        width: 20.0,
                      ),
                      Feeling(feelingName: "Happy", feelingEmoji: "😊"),
                      SizedBox(
                        width: 20.0,
                      ),
                      Feeling(feelingName: "Happy", feelingEmoji: "😊"),
                      SizedBox(
                        width: 20.0,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 300.6,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0))),
                  child: Column(
                    children: [
                      //icon
                      Container(
                        height: 10.0,
                        child: Center(
                          child: Icon(
                            Icons.linear_scale_sharp,
                            color: Colors.grey[400],
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 20.0,
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Exercises",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  color: Colors.grey[700]),
                            ),
                            Icon(Icons.more, color: Colors.grey[700]),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),

                      Container(
                        height: 200,
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: ListView(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  border: Border.all(
                                      width: 0.5,
                                      color: const Color.fromARGB(
                                          255, 173, 173, 173))),
                              child: Row(
                                children: [
                                  //icon
                                  Container(
                                    height: 50.0,
                                    width: 50.0,
                                    decoration: BoxDecoration(
                                        color: Colors.orange,
                                        borderRadius:
                                            BorderRadius.circular(10.0)),
                                    child: Center(
                                      child: Icon(
                                        Icons.favorite,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  //2 texts
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      //text 1
                                      Text(
                                        "Speaking skills",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),

                                      //text 2
                                      Text("16 Exercises"),
                                    ],
                                  )

                                  //more
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        )));
  }
}
