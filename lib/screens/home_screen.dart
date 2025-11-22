import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bookia')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/books_banner.jpg'),
            const SizedBox(height: 20),
            const Text(
              'Best Seller',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              children: [
                Card(
                  child: Column(
                    children: const [
                      Expanded(
                        child: Image(
                          image: AssetImage('assets/images/the_republic.jpg'),
                        ),
                      ),
                      Text('The Republic'),
                      Text('\$7.00'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
