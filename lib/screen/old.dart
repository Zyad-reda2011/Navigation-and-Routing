// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class OldComponent extends StatelessWidget 
{
  const OldComponent({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return Container
    (
        width:double.infinity,
        child: Column
        (
          crossAxisAlignment:CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: 
          [
            Row
            (
              children: 
              [
                Text("muhammed"),
                Icon(Icons.favorite)
              ],
            ),
            Text("muhammed"),
            Text("muhammed"),
            Text("muhammed"),
            Text("muhammed"),
            Text("muhammed"),
            Text("muhammed"),
            Text("muhammed"),
            Text("muhammed"),
            Text("muhammed"),
            Text("muhammed"),
            Text("muhammed"),
            Text("muhammed"),
            Text("muhammed"),
            Text("muhammed"),
            Text("muhammed"),
            Text("muhammed"),
            Text("muhammed"),
            Text("muhammed"),
            Text("muhammed"),
            Text("muhammed"),
          ],
        ),
    );
  }
}