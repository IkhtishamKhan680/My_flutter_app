import 'package:flutter/material.dart';

class ItemMenu extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool selected;

  const ItemMenu({super.key, required this.title,required this.icon, this.selected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      margin: EdgeInsets.symmetric(vertical: 8),
      color: selected ? Colors.blue:null,
      child: Row(
        children: [
          Icon(icon, color: Colors.white,),
          const SizedBox(width: 15,),
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
