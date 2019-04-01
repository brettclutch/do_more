import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//TODO: add support for tabed navigation.

/// A custom app bar to match the DO> design rules.
///
/// This app bar is meant to be usen in screens that are not the home screen.
/// It will always contain a back button that pops the current screen.
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  /// The title for the app bar.
  final String title;

  CustomAppBar({this.title = ''});

  Widget build(BuildContext context) {
    return Material(
      elevation: 10.0,
      child: Container(
        color: Theme.of(context).canvasColor,
        child: SafeArea(
          child: Container(
            height: preferredSize.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    FontAwesomeIcons.arrowLeft,
                    color: Color.fromRGBO(112, 112, 112, 1),
                  ),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  final preferredSize = Size.fromHeight(140.0);
}