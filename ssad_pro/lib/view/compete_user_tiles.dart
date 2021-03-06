/**
 * This class implements the layout of display
 * of students for the compete mode.
 *
 *
 */

import 'package:flutter/material.dart';
import 'package:ssadpro/model/student_user.dart';
import 'package:ssadpro/view/card.dart';
import 'package:ssadpro/view/compete_mcq.dart';
import 'package:ssadpro/services/mcq_generator.dart';

class CompeteUserTile extends StatelessWidget {
  final StudentUser user;
  final Color color;
  CompeteUserTile({this.user, this.color});
  @override
  Widget build(BuildContext context) {
    List<String> question = GenerateMCQ().question(99, 99, 0, 0);

    return Column(children: <Widget>[
      CardView.getCard(
          context,
          CompeteMCQPage(
              question[0],
              question[1],
              question[2],
              question[3],
              question[4],
              int.parse(question[5]),
              99,
              99,
              1,
              0,
              user.email,
              0,
              0),
          user.name,
          Icons.face,
          color),
      SizedBox(height: 20),
    ]);
  }
}
