import 'package:flutter/material.dart';

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate{
  final double minHeight = 80;
  final double maxHeight = 300;

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => maxHeight;

  @override 
  Widget build (BuildContext context, 
  double shrinkOffset, bool overlapsContent)
  {
    return ColoredBox(color: Colors.white, 
    child: Column(
      children: [
        const Expanded (
          child: SizedBox ()), 
          Text ("$shrinkOffset, $overlapsContent")],));
  }

  @override 
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate){
    return maxHeight != oldDelegate.maxHeight || minHeight != oldDelegate.minHeight;
  }
}

class scheduleWidget extends StatelessWidget {
  const scheduleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea( child: CustomScrollView(
      
      slivers: [ const _AppBarWidget(),
        SliverPersistentHeader( // поле для иконок горизонтальных категорий (будут видны даже при скроле вниз)
          pinned: true,
          delegate: _SliverAppBarDelegate()
        ),
        
            SliverList(delegate:
             SliverChildListDelegate([
               Container(color: Colors.lightBlue, height: 150.0),
               Container(color: Colors.grey, height: 150.0),
               Container(color: Colors.pink, height: 150.0),
               Container(color: Colors.yellowAccent, height: 150.0),
               Container(color: Colors.grey, height: 150.0),
               Container(color: Colors.pink, height: 150.0),
               Container(color: Colors.blue, height: 150.0),
               Container(color: Colors.lightGreen, height: 150.0),
               Container(color: Colors.pink, height: 150.0),
               Container(color: Colors.lime, height: 150.0),
               Container(color: Colors.grey, height: 150.0),
               Container(color: Colors.orange, height: 150.0),]),),
      ]
      )
      );
}
}

class _AppBarWidget extends StatelessWidget { // кастомный аппбар, который будет исчезать при скролинге и уступать место горизонтальным категориям
  const _AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(child: Container(height: 200, color: Colors.grey));
  }
}