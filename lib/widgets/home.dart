import 'package:flutter/material.dart';
import 'dart:async';
import 'package:iso_news_flux_rss/models/parser.dart';
import 'package:iso_news_flux_rss/widgets/chargement.dart';
import 'package:iso_news_flux_rss/widgets/liste.dart';
import 'package:webfeed/webfeed.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  RssFeed rssFeed;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    parser();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: choixDuBody(),
    );
  }

  Future<Null> parser() async{
    RssFeed recu = await Parser().main();
    if(recu != null){
      setState(() {
        rssFeed = recu;
        print(rssFeed.items.length);
        rssFeed.items.forEach((element) {
          RssItem rssItem = element;
        });
      });
    }
  }

  Widget choixDuBody(){
    if(rssFeed == null ){
      return new Chargement();
    } else{
      Orientation orientation = MediaQuery.of(context).orientation;
      if(orientation == Orientation.portrait){
       return new Liste(rssFeed);
      }else{
        //grille
      }
    }
  }
}