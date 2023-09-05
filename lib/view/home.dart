import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(itemBuilder: (ctx, index){
                return const Card();
              }),
            ),
            Text('Total amount: '),
            SizedBox(height: 100,)
          ],
        ),
      ),
    );
  }
}
