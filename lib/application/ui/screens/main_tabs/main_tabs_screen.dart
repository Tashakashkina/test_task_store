import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'main_tabs_view_model.dart';
import 'package:e_commerce/application/ui/navigation/main_navigation.dart';

class MainTabsScreen extends StatelessWidget {
  const MainTabsScreen ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      
       bottomNavigationBar: SizedBox(height: 72,  
          child:
        _NavBarWidget()
    ),);
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
  final model = context.read<MainTabsViewModel>();
    return BottomNavigationBar(
      showSelectedLabels: true,
      showUnselectedLabels: true,
      currentIndex: currentIndex,
      onTap: model.setCurrentTabIndex,
      type: BottomNavigationBarType.fixed,
      
      items: [
        
         BottomNavigationBarItem(icon: Image.asset('assets/icons/1/tabbar_explorer.png'),
         label: '',
         tooltip: 'Explorer'
      ),
        BottomNavigationBarItem(icon: Image.asset('assets/icons/1/tabbar_bag.png'),  
        label: '',
        tooltip: 'Корзина'),
        BottomNavigationBarItem(icon: Image.asset('assets/icons/1/tabbar_heart.png'), 
        label: '',
        tooltip: 'Избранное'),
        BottomNavigationBarItem(icon: Image.asset('assets/icons/1/tabbar_person.png'), 
        label: '',
        tooltip: 'Личный кабинет'),
      ], 
      
    );
  }
}