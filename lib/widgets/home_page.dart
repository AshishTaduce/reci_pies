import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FilterTab extends StatelessWidget {
  FilterTab(int index);
  @override
  Widget build(BuildContext context) => Container(
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 16,
          ),
          margin: EdgeInsets.symmetric(horizontal: 2.0),
          decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,
            borderRadius: BorderRadius.circular(
              16,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Main Dish",
                style: TextStyle(fontSize: 18),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 0, 0, 0),
                child: GestureDetector(
                  child: FaIcon(
                    FontAwesomeIcons.times,
                    size: 18,
                    color: Colors.white,
                  ),
                  onTap: () => null,
                ),
              ),
            ],
          ),
        ),
      );
}

class RecipeCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.25,
        margin: EdgeInsets.all(8),
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
        decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          borderRadius: BorderRadius.circular(
            24,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              flex: 25,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 8,
                    ),
                    child: Text(
                      "Indian Tikka Masala",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 16),
                      children: [
                        TextSpan(
                          text: "🔥 ",
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                        TextSpan(
                          text: "4.62",
                          style: TextStyle(
                              fontSize: 18, color: Colors.yellow[600]),
                        ),
                        TextSpan(
                          text: "(545)",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Container(
                    padding: EdgeInsets.all(
                      8,
                    ),
                    width: 96,
                    decoration: BoxDecoration(
                      color: Colors.yellow[600],
                      borderRadius: BorderRadius.circular(
                        14,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "45 mins",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).scaffoldBackgroundColor),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(flex: 35, child: Placeholder()),
          ],
        ),
      );
}
