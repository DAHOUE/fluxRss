import 'package:flutter/material.dart';
import 'package:iso_news_flux_rss/widgets/textAvecStyle.dart';

class Chargement extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new TextAvecStyle('Chargement en cours ...',
                                fontSize: 30.0,
                                fontStyle: FontStyle.italic,),
    );
  }

}
