import 'package:flutter/material.dart';

Widget ScoreStats(int elapsedTime, int homeTotal, int awayTotal) {
  var home = homeTotal;
  var away = awayTotal;
  var elapsed = elapsedTime;
  if (home == null) home = 0;
  if (away == null) away = 0;

  return Expanded(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "${elapsed}",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        Expanded(
          child: Center(
            child: Text(
              '${home} - ${away}',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 38),
            ),
          ),
        )
      ],
    ),
  );
}
