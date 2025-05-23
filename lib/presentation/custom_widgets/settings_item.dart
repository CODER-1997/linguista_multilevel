import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color ? iconColor;
  final Color ? titleColor;

  SettingsItem({required this.icon, required this.title, this.iconColor, this.titleColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: CupertinoColors.white,
          borderRadius: BorderRadius.circular(12)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon,color: iconColor,),
              SizedBox(
                width: 9,
              ),
              Text(title,style: TextStyle(
                color: titleColor,
                fontSize: 18
              ),)
            ],
          ),
          Icon(Icons.chevron_right)
        ],
      ),
    );
  }
}
