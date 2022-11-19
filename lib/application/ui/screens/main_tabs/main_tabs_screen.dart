import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'main_tabs_view_model.dart';
import 'package:e_commerce/application/ui/navigation/main_navigation.dart';

class MainTabsScreen extends StatelessWidget {
  const MainTabsScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
 
    return const Scaffold(
      body: _BodyWidget(),
      bottomNavigationBar: SizedBox(height: 72,  
          child:_NavBarWidget()
    ),);
  }
}

class _BodyWidget extends StatelessWidget {
  const _BodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     final currentIndex = context.select(
    (MainTabsViewModel vm) => vm.currentTabIndex
  );
  return IndexedStack(
        index: currentIndex,
        children: [
        Center(
          child: Text('1')),
          Center(
          child: Text('2')),
          Center(
          child: Text('3')),
          Center(
          child: Text('4')),
      ]);
  }
}
class _NavBarWidget extends StatelessWidget {
  const _NavBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
  final currentIndex = context.select(
    (MainTabsViewModel vm) => vm.currentTabIndex
  );

  final theme = Theme.of(context).bottomNavigationBarTheme;
  final buttons = [
    _BottomNavigationBarItemFactory('assets/icons/1/tabbar_explorer.png', 'Explorer'),
    _BottomNavigationBarItemFactory('assets/icons/1/tabbar_bag.png', 'Корзина'),
    _BottomNavigationBarItemFactory('assets/icons/1/tabbar_heart.png', 'Избранное'),
    _BottomNavigationBarItemFactory('assets/icons/1/tabbar_person.png', 'Личный кабинет')
  ].asMap().map((index, value) {
    return MapEntry(index, value.build(index, currentIndex, theme));
  }).values.toList();

  final model = context.read<MainTabsViewModel>();
    return BottomNavigationBar(
      showSelectedLabels: true,
      showUnselectedLabels: true,
      currentIndex: currentIndex,
      onTap: model.setCurrentTabIndex,
      type: BottomNavigationBarType.fixed,
      
      items: buttons);
  }
}
  
class _BottomNavigationBarItemFactory {
  final String iconName;
  final String tooltip;

  _BottomNavigationBarItemFactory (this.iconName, this.tooltip);

  BottomNavigationBarItem build(
    int index, int currentIndex, BottomNavigationBarThemeData theme){
     final color = index == currentIndex ? theme.selectedItemColor : theme.unselectedItemColor;
      return  BottomNavigationBarItem(
         label: '',     
         icon: Image.asset( iconName,
         color: color),
         tooltip: tooltip,
      );
}}