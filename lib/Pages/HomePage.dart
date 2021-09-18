import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_2/Provider/Counter.dart';
import 'package:provider_2/model/Articles.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Counters counters;
  @override
  void initState() {
    super.initState();
    ///lodeData();
  }

  @override
  Widget build(BuildContext context) {
  ///  List<Articles> listModel = Provider.of<Counters>(context,listen: true).listModel;
    counters = Provider.of<Counters>(context,listen: true);

    return Scaffold(
      body: counters.listModel != null
          ? ListView.builder(
              shrinkWrap: true,
              itemCount: counters.listModel.length,
              itemBuilder: (_, index) {
                Articles model = counters.listModel[index];
                return model != null ? Text(model.title) : null;
              },
            )
          : null,
    );
  }

  lodeData() async {
   /// await Provider.of<Counters>(context, listen: false).fetchData();
    setState(() {});
  }
}
