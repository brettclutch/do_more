import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NewItemDialogButton extends StatelessWidget {
  final VoidCallback onTap;
  final String label;

  NewItemDialogButton({
    this.onTap,
    this.label = '',
  });

  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 30,
        bottom: 30,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(8),
      ),
      height: 170,
      width: 120,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          FloatingActionButton(
            child: Icon(FontAwesomeIcons.plus),
            backgroundColor: Color(0xFF707070),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}