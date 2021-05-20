import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reci_pies/widgets/abstracts.dart';
import 'package:reci_pies/widgets/home_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      primary: false,
      physics: ClampingScrollPhysics(),
      children: [
        Gap().small,
        ListTile(
          title: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
            child: Text(
              "Hey Lisa",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
          ),
          isThreeLine: true,
          subtitle: Text(
            "Hope you're ready to cook",
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          trailing: Container(
            width: 48,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(8)),
          ),
        ),
        Gap().large,
        Divider(
          color: Colors.grey,
        ),
        //Below AppBar
        Gap().medium,
        ListTile(
          title: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
            child: Text(
              "New Recipes!",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
          ),
          trailing: FaIcon(
            FontAwesomeIcons.angleDoubleRight,
            color: Colors.yellow,
            size: 36,
          ),
        ),
        Gap().semiMedium,
        Container(
          height: 52,
          margin: EdgeInsets.fromLTRB(16, 0, 0, 0),
          child: ListView.separated(
            physics: ClampingScrollPhysics(),
            itemBuilder: (BuildContext context, int index) => FilterTab(index),
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            separatorBuilder: (BuildContext context, int index) => SizedBox(
              width: 12,
            ),
          ),
        ),
        Gap().semiMedium,
        RecipeCard(),
        RecipeCard(),
      ],
    );
  }
}
