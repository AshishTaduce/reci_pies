import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage>
    with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    controller = TabController(
      length: 3,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Mexican potatoes",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 24,
              ),
            ),
          ],
        ),
        leading: IconButton(
          padding: EdgeInsets.only(
            left: 16,
          ),
          onPressed: () => null,
          icon: Icon(
            FontAwesomeIcons.chevronLeft,
            size: 24,
          ),
        ),
        actions: [
          IconButton(
            padding: EdgeInsets.only(
              right: 16,
            ),
            onPressed: () => null,
            icon: Icon(
              FontAwesomeIcons.bookmark,
            ),
          ),
        ],
      ),
      body: SizedBox(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Placeholder(), 
                ),
              ),
            ),
            DraggableScrollableSheet(
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return Container(
                  color: Theme.of(context).backgroundColor,
                  child: ListView(
                    controller: scrollController,
                    children: [
                      Center(
                        child: Padding(
                          padding: EdgeInsets.all(24),
                          child: Container(
                            height: 8,
                            width: 64,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(
                                16,
                              ),
                            ),
                          ),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          'Ingredients',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                        trailing: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.yellow[600],
                            borderRadius: BorderRadius.circular(
                              8,
                            ),
                          ),
                          child: Text(
                            '45 mins',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
