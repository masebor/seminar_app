import 'package:flutter/material.dart';
import 'package:seminar_app/utils/custom_card.dart';

class CustomAnimatedList extends StatefulWidget {
  final String title;
  final List<CustomCard> oldCustomCardList;
  final GlobalKey<AnimatedListState> animatedKey;
  const CustomAnimatedList({super.key, required this.oldCustomCardList, required this.animatedKey, required this.title});

  @override
  State<CustomAnimatedList> createState() => _CustomAnimatedListState();
}

class _CustomAnimatedListState extends State<CustomAnimatedList> {
  bool oldListLengthReached = false;
  List<CustomCard> newCustomAnimatedList = [];

  void addListItem() {
    final newIndex = newCustomAnimatedList.length;

    // next increment -> max is reached
    if (newIndex == widget.oldCustomCardList.length - 1) {
      oldListLengthReached = true;
    }
    setState(() {
      newCustomAnimatedList.add(widget.oldCustomCardList[newIndex]);
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
        centerTitle: true,
        title: Text(
          widget.title,
        ),
      ),
      body: AnimatedList(
        key: widget.animatedKey,
        itemBuilder: (context, index, animation) {
          return buildItem(newCustomAnimatedList[index], animation);
        },
      ),
      floatingActionButton: oldListLengthReached
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
