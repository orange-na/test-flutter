import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice/colors.dart';
import 'package:practice/my_page.dart';
import 'package:practice/sizes.dart';

final tabIndexProvider = StateProvider<int>((ref) {
  return 2;
});

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabIndex = ref.watch(tabIndexProvider);

    const Items = [
      BottomNavigationBarItem(icon: Icon(Icons.tv_outlined), label: 'TV'),
      BottomNavigationBarItem(
          icon: Icon(Icons.shopping_basket_outlined), label: 'Shop'),
      BottomNavigationBarItem(
          icon: Icon(Icons.person_outline_outlined), label: 'MyPage')
    ];

    final bar = BottomNavigationBar(
      items: Items,
      backgroundColor: MyColors.white,
      selectedItemColor: MyColors.red,
      unselectedItemColor: MyColors.darkGrey,
      currentIndex: tabIndex,
      onTap: (index) {
        ref.read(tabIndexProvider.notifier).state = index;
      },
      elevation: Sizes.zero,
    );

    const pages = [
      Scaffold(),
      Scaffold(),
      MyPage(),
    ];

    return ColoredBox(
      color: MyColors.white,
      child: SafeArea(
          child: Scaffold(
        backgroundColor: MyColors.lightGrey,
        body: pages[tabIndex],
        bottomNavigationBar: bar,
      )),
    );
  }
}
