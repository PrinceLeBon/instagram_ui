import 'package:flutter/material.dart';
import 'package:instagram_ui/utils/explore_grid.dart';
import 'package:instagram_ui/utils/showModalBottomChild.dart';
import 'package:instagram_ui/utils/stored_stories.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: const Text(
              'jeff houndjo',
              style: TextStyle(color: Colors.black),
            ),
            actions: [
              IconButton(
                  onPressed: () {
                    test(context);
                  },
                  splashColor: Colors.transparent,
                  icon: const Icon(
                    Icons.add_box_outlined,
                    color: Colors.black,
                  )),
              const SizedBox(
                width: 10,
              ),
              const Icon(
                Icons.menu,
                color: Colors.black,
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.red[400]),
                            child: Padding(
                              padding: const EdgeInsets.all(3),
                              child: Container(
                                width: 68,
                                height: 68,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey[400]),
                              ),
                            )),
                        const Text('Prince Le Bon')
                      ],
                    ),
                    const SizedBox(width: 10),
                    const Center(
                      child: Column(
                        children: [
                          Text(
                            '1',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('Publications')
                        ],
                      ),
                    ),
                    const SizedBox(width: 20),
                    const Center(
                      child: Column(
                        children: [
                          Text('1748',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('Followers')
                        ],
                      ),
                    ),
                    const SizedBox(width: 20),
                    const Center(
                      child: Column(
                        children: [
                          Text('843',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('Suivi(e)s')
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(7)),
                      child: const Center(
                          child: Padding(
                        padding: EdgeInsets.all(2),
                        child: Text('Modifier profil'),
                      )),
                    )),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(7)),
                        child: const Icon(Icons.person_add))
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Stories a la une',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const Text('Conservez vos stories préférées sur votre profil'),
                SizedBox(
                  height: 105,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return const StoredStories();
                      }),
                ),
                const SizedBox(
                  height: 10,
                ),
                const TabBar(indicatorColor: Colors.black, tabs: [
                  Tab(
                    icon: Icon(Icons.grid_on_rounded),
                  ),
                  Tab(
                    icon: Icon(Icons.person_pin_outlined),
                  ),
                ]),
                const Expanded(
                    child: TabBarView(children: [ExploreGrid(), ExploreGrid()]))
              ],
            ),
          ),
        ));
  }

  void test(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return SizedBox(
            height: MediaQuery.of(context).size.height / 2.3,
            child: Column(
              children: [
                _showModalBottomTitle('Créer'),
                const ShowModalBottomChild(
                    icon: Icons.emergency_recording_outlined,
                    icondescription: 'Reel'),
                const ShowModalBottomChild(
                    icon: Icons.grid_on_rounded,
                    icondescription: 'Publication'),
                const ShowModalBottomChild(
                    icon: Icons.add_circle_outline, icondescription: 'Story'),
                const ShowModalBottomChild(
                    icon: Icons.favorite_border,
                    icondescription: 'Story à la une'),
                const ShowModalBottomChild(
                    icon: Icons.radar_outlined, icondescription: 'En direct'),
                const ShowModalBottomChild(
                    icon: Icons.map_outlined, icondescription: 'Guide'),
              ],
            ),
          );
        });
  }

  Widget _showModalBottomTitle(String titre) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Center(
        child: Text(
          titre,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
