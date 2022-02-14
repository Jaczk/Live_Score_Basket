import 'package:flutter/material.dart';
import 'package:live_score_bola/widgets/scoreStat.dart';
import 'package:live_score_bola/widgets/teamStat.dart';

import '../api_model/basket_model.dart';
import '../widgets/matchtiles.dart';

Widget pageBody(List<BasketMatch> allmatches) {
  return Column(
    children: [
      Expanded(
        flex: 5,
        child: Container(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 18, vertical: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    TeamStats("Home Team", allmatches[0].home.logo,
                        allmatches[0].home.name),
                    ScoreStats(
                        allmatches[0].status.timer,
                        allmatches[0].scoreshome.scoreHome.total,
                        allmatches[0].scoresaway.scoreAway.total),
                    TeamStats("Visitor Team", allmatches[0].away.logo,
                        allmatches[0].away.name)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      Expanded(
        flex: 2,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFF4373D9),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.0),
              topRight: Radius.circular(40.0),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "MATCHES",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: allmatches.length,
                    itemBuilder: (context, index) {
                      return matchTile(allmatches[index]);
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ],
  );
}
