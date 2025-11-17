import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String title;
  final int price;
  final String description;
  final String image;

  DetailsPage({
    required this.title,
    required this.price,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("details")),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Card(color: Colors.white,
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 4,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(image, height: 150,width: double.infinity, fit: BoxFit.cover),
                ),
                SizedBox(height: 20),
                Text(title, style: TextStyle(fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Text(
                  description,
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
                SizedBox(height: 10),
                Text(
                  "\$${price}",
                  style: TextStyle(fontSize: 22, color: Colors.black),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("$title added to cart")),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      padding: EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text("Add to Cart", style: TextStyle(fontSize: 15)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
