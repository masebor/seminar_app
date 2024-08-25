import 'package:flutter/material.dart';
import 'package:seminar_app/utils/custom_card.dart';

class CustomAnimatedList extends StatefulWidget {
  final String title;
  final List<CustomCard> sourceList;
  final GlobalKey<AnimatedListState> animatedKey;
  const CustomAnimatedList({super.key, required this.sourceList, required this.animatedKey, required this.title});

  @override
  State<CustomAnimatedList> createState() => _CustomAnimatedListState();
}

class _CustomAnimatedListState extends State<CustomAnimatedList> {
  bool sourceListLengthReached = false;
  List<CustomCard> newCustomAnimatedList = [];

  void addListItem() {
    final newIndex = newCustomAnimatedList.length;

    // next increment -> max is reached
    if (newIndex == widget.sourceList.length - 1) {
      sourceListLengthReached = true;
    }
    setState(() {
      newCustomAnimatedList.add(widget.sourceList[newIndex]);
    });
    widget.animatedKey.currentState?.insertItem(newIndex);
  }

  Widget buildItem(CustomCard customCard, Animation<double> animation) {
    return SizeTransition(
      sizeFactor: animation,
      child: customCard,
    );
  }

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Scaffold(
      appBar: AppBar(        
        title: Text(
          widget.title,
        ),
        centerTitle: true,
        backgroundColor: themeData.appBarTheme.backgroundColor,
        titleTextStyle: themeData.textTheme.displayLarge,
      ),
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: AnimatedList(
          key: widget.animatedKey,
          itemBuilder: (context, index, animation) {
            return buildItem(newCustomAnimatedList[index], animation);
          },
        ),
      ),
      floatingActionButton: sourceListLengthReached
          ? Container()
          : FloatingActionButton(
              foregroundColor: themeData.colorScheme.primary,
              backgroundColor: themeData.colorScheme.secondary,
              onPressed: addListItem,
              child: const Icon(Icons.add),
            ),
    );
  }
}
