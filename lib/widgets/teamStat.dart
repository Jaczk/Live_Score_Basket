import 'dart:ui';

import 'package:flutter/material.dart';

Widget TeamStats(String team, String logourl, String teamName) {
  return Expanded(
    child: Column(
      children: [
        Text(
          team,
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(
          child: Image.network(
            logourl,
            width: 55,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          teamName,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
        )
      ],
    ),
  );
}
