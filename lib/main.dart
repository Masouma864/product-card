import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xFF4DB6AC),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.emoji_emotions_rounded, color: Colors.white),
              SizedBox(width: 8),
              Text(
                "I am smart",
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ],
          ),
        ),

        body: Center(
          child: Padding(
            padding: EdgeInsets.only(top: 100),

            child: Column(
              children: [
                Image.asset("images/smart_brain.png", width: 200, height: 200),
                SizedBox(height: 20),
                Text(
                  "Keep learning and growing every day!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 40),
                ElevatedButton.icon(
                  icon: Icon(Icons.flash_on, color: Colors.white),
                  label: Text(
                    "get started",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF4DB6AC),
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    elevation: 6,
                    shadowColor: Colors.black.withOpacity(0.3),
                  ),
                  onPressed: () {
                    print("button clicked");
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
