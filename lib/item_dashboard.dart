import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ItemDashboard extends StatelessWidget {

  final String title, value;
  const ItemDashboard({super.key, required this.title,required this.value});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Card(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Total $title'),
                Icon(
                  CupertinoIcons.info,color: Colors.grey,
                ),
              ],
            ),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                value,
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: size.width < 1100 ? 24 : 34,
                ),
              ),
              const SizedBox(width: 5,),
              Icon(
                CupertinoIcons.arrow_up_circle_fill,color: Colors.green,
                size: size.width < 1100 ? null: 32,
              ),
            ],
          ),
          const SizedBox(height: 5,),
          Text(title),
          Spacer(),
          const SizedBox(height: 30,),

        ],
      ),
    );
  }
}
