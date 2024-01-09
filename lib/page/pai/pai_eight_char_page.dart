import 'package:flutter/material.dart';

class EightCharPage extends StatefulWidget {

  @override
  _EightCharPageState createState() => _EightCharPageState();
}

class _EightCharPageState extends State<EightCharPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ListView.builder(itemBuilder: (build, index) {
      return Text("en --- $index");
    }));
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
