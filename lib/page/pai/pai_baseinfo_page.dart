import 'package:flutter/material.dart';

class BaseinfoPage extends StatefulWidget {
  List list;
  BaseinfoPage({
    required this.list
});
  @override
  _BaseinfoPageState createState() => _BaseinfoPageState();
}

class _BaseinfoPageState extends State<BaseinfoPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: widget.list.length,
            itemBuilder: (build, index) {
              return Container(
                  padding: EdgeInsets.only(top: 150),
                  child: Text("${widget.list[index]} ----- $index"));
            }));
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
