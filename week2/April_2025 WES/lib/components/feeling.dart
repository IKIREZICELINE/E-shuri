import 'package:flutter/material.dart';

class Feeling extends StatelessWidget {
  final String feelingName;
  final String feelingEmoji;
  
  const Feeling({super.key,  required this.feelingName, required this.feelingEmoji});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.blue[400]),
            child: Center(
              child: Text(feelingEmoji),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            feelingName,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
