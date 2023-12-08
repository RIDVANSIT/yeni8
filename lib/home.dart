import 'package:flutter/material.dart';
import 'package:yeni8/gen/assets.gen.dart';
import 'package:yeni8/models/user_model.dart';

class Homepage extends StatefulWidget {
  Homepage({super.key});
  List<UserModel> categories = [];
  void _getInitialInfo() {
    categories = UserModel.getCategories();
  }

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(indicatorSize: TabBarIndicatorSize.tab, tabs: [
            Tab(
              text: 'Subscribed of',
            ),
            Tab(
              text: 'Member of',
            )
          ]),
          title: const Text(
            'Lists',
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          leading: Assets.images.leftArrowIcon.image(scale: 2),
        ),
        body: const TabBarView(children: [homePage(), _userSection()]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(145)),
          backgroundColor: const Color(0xff4C9EEB),
          child: Assets.images.addMemberIcon.image(scale: 2),
        ),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(
              icon: Assets.images.homeSolidIcon.image(scale: 2), label: 'Home'),
          BottomNavigationBarItem(
              icon: Assets.images.searchStrokeIcon.image(scale: 2),
              label: 'Search'),
          BottomNavigationBarItem(
              icon: Assets.images.bellStrokeIcon.image(scale: 2),
              label: 'Bell'),
          BottomNavigationBarItem(
              icon: Assets.images.mailStrokeIcon.image(scale: 2),
              label: 'Mail'),
        ]),
      ),
    );
  }
}

class _userSection extends StatelessWidget {
  const _userSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [Text('erhffh'), Text('gfdsbgfhygf')],
    );
  }
}

class homePage extends StatelessWidget {
  const homePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffE7ECF0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              color: const Color(0xffE7ECF0),
              child: const Padding(
                padding: EdgeInsets.all(14.0),
                child: Text(
                  'You haven’t created or subscribed to any Lists',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
          ),
          const Text('When you do, it’ll show up here.'),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff4C9EEB)),
            child: const Text(
              'Create a List',
              style: TextStyle(color: Colors.white),
              selectionColor: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
