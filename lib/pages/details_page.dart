import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/details_page.dart';

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
      length: 2,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: SizedBox(
          width: 150,
          child: FloatingActionButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                16,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 16,
              ),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      FontAwesomeIcons.playCircle,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text("Play Video"),
                  ],
                ),
              ),
            ),
            onPressed: () => null,
          ),
        ),
        body: NestedScrollView(
          headerSliverBuilder: (
            BuildContext context,
            bool innerBoxIsScrollable,
          ) =>
              [
            SliverAppBar(
              expandedHeight: MediaQuery.of(context).size.height * 0.3,
              snap: true,
              floating: true,
              pinned: true,
              excludeHeaderSemantics: true,
              toolbarHeight: 48,
              centerTitle: true,
              leading: Container(
                margin: EdgeInsets.only(
                  left: 8,
                  top: 8,
                  bottom: 8,
                ),
                decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: IconButton(
                    splashRadius: 24.0,
                    onPressed: () => null,
                    icon: Icon(
                      FontAwesomeIcons.chevronLeft,
                      size: 18,
                    ),
                    color: Colors.white,
                  ),
                ),
              ),
              actions: [
                Container(
                  margin: EdgeInsets.only(
                    right: 8,
                    top: 8,
                    bottom: 8,
                  ),
                  decoration: BoxDecoration(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: IconButton(
                      splashRadius: 24.0,
                      onPressed: () => null,
                      icon: Icon(
                        FontAwesomeIcons.heart,
                        size: 18,
                      ),
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.parallax,
                titlePadding: EdgeInsets.only(top: 48),
                centerTitle: true,
                title: Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Card(
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        16,
                      ),
                    ),
                    color: Theme.of(context).scaffoldBackgroundColor,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 16,
                      ),
                      child: SingleChildScrollView(
                        physics: NeverScrollableScrollPhysics(),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Indian Tikka Masala",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Text(
                                "6 ingridients",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 16),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.6,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          FontAwesomeIcons.clock,
                                          color: Colors.white,
                                          size: 14,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8),
                                          child: Text(
                                            "30 min",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 10,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          FontAwesomeIcons.fire,
                                          color: Colors.white,
                                          size: 14,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8),
                                          child: Text(
                                            "234 kCal",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 10,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          FontAwesomeIcons.conciergeBell,
                                          color: Colors.white,
                                          size: 14,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8),
                                          child: Text(
                                            "3 serve",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 10,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                background: Padding(
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.width * 0.2,
                  ),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(
                          48,
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: Image.network(
                            "https://149433378.v2.pressablecdn.com/wp-content/uploads/2020/08/Chicken-Tikka-Masala-scaled.jpg",
                            fit: BoxFit.cover,
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            makeHeader("Ingredients"),
            SliverFixedExtentList(
              itemExtent: 120.0,
              delegate: SliverChildListDelegate(
                [
                  ListView(
                    scrollDirection: Axis.horizontal,
                    children: [1, 2, 3, 4, 5, 6]
                        .map(
                          (e) => IngredientsCard(),
                        )
                        .toList(),
                  ),
                ],
              ),
            ),
            makeHeader("Cooking Instructions"),
          ],
          body: ListView.builder(
            padding: EdgeInsets.all(0),
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) => Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: ListTile(
                title: Text("Step ${index + 1}"),
                subtitle: Text(
                  "Preheat oven 180°C. Place potatoes in a large saucepan. "
                  "Cover with cold water. "
                  "Bring to the boil over medium-high heat. "
                  "Reduce heat to medium and simmer, partially covered, "
                  "for 5 to 6 minutes or until just tender. Drain. ",
                ),
              ),
            ),
          ),
        ),
      );
}
