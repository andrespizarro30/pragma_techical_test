import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:technicaltestpragma/widgets/image_error_handler.dart';
import 'package:technicaltestpragma/widgets/starts_widget.dart';

import '../../models/CatsBreedModel.dart';

import 'package:url_launcher/url_launcher.dart';

import '../../utils/app_colors.dart';

class CatsDetailScreen extends StatelessWidget {

  final CatBreedModel cat;

  CatsDetailScreen({required this.cat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cat.name!),
        backgroundColor: AppColors.iconColor1,
      ),
      body: Column(
        children: [
          ImageWithErrorHandler(imageUrl: 'https://cdn2.thecatapi.com/images/${cat.referenceImageId}.jpg'),
          SizedBox(height: 16.0),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cat.name!,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(cat.description!),
                  SizedBox(height: 16.0),
                  Text('Origin: ${cat.origin}'),
                  Text('Life Span: ${cat.lifeSpan} years'),
                  SizedBox(height: 16.0),
                  Text(
                    'Temperament:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(cat.temperament!),
                  SizedBox(height: 16.0),
                  Text(
                    'Characteristics:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  buildCharacteristicsTable(cat),
                  SizedBox(height: 16.0),
                  Text(
                    'More Information:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  buildLinks(cat),
                ],
              ),
            ),
          )
        ],
      ),
      backgroundColor: AppColors.iconColor1,
    );
  }

  Widget buildCharacteristicsTable(CatBreedModel cat) {
    return Table(
      columnWidths: {
        0: FixedColumnWidth(200.0),
        1: FlexColumnWidth(0.2),
        2: FlexColumnWidth(1)
      },
      children: [
        TableRow(children: [
          Text('Adaptability'),
          Text(cat.adaptability.toString()),
          StarsWidget(stars: cat.adaptability!,)
        ]),
        TableRow(children: [
          Text('Affection Level'),
          Text(cat.affectionLevel.toString()),
          StarsWidget(stars: cat.affectionLevel!,)
        ]),
        TableRow(children: [
          Text('Child Friendly'),
          Text(cat.childFriendly.toString()),
          StarsWidget(stars: cat.childFriendly!,)
        ]),
        TableRow(children: [
          Text('Dog Friendly'),
          Text(cat.dogFriendly.toString()),
          StarsWidget(stars: cat.dogFriendly!,)
        ]),
        TableRow(children: [
          Text('Energy Level'),
          Text(cat.energyLevel.toString()),
          StarsWidget(stars: cat.energyLevel!,)
        ]),
        TableRow(children: [
          Text('Grooming'),
          Text(cat.grooming.toString()),
          StarsWidget(stars: cat.grooming!,)
        ]),
        TableRow(children: [
          Text('Health Issues'),
          Text(cat.healthIssues.toString()),
          StarsWidget(stars: cat.healthIssues!,)
        ]),
        TableRow(children: [
          Text('Intelligence'),
          Text(cat.intelligence.toString()),
          StarsWidget(stars: cat.intelligence!,)
        ]),
        TableRow(children: [
          Text('Shedding Level'),
          Text(cat.sheddingLevel.toString()),
          StarsWidget(stars: cat.sheddingLevel!,)
        ]),
        TableRow(children: [
          Text('Social Needs'),
          Text(cat.socialNeeds.toString()),
          StarsWidget(stars: cat.socialNeeds!,)
        ]),
        TableRow(children: [
          Text('Stranger Friendly'),
          Text(cat.strangerFriendly.toString()),
          StarsWidget(stars: cat.strangerFriendly!,)
        ]),
        TableRow(children: [
          Text('Vocalisation'),
          Text(cat.vocalisation.toString()),
          StarsWidget(stars: cat.vocalisation!,)
        ]),
      ],
    );
  }

  Widget buildLinks(CatBreedModel cat) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () => launch(cat.cfaUrl!),
          child: Text(
            'CFA',
            style: TextStyle(color: Colors.blue),
          ),
        ),
        InkWell(
          onTap: () => launch(cat.vetstreetUrl!),
          child: Text(
            'Vetstreet',
            style: TextStyle(color: Colors.blue),
          ),
        ),
        InkWell(
          onTap: () => launch(cat.vcahospitalsUrl!),
          child: Text(
            'VCA Hospitals',
            style: TextStyle(color: Colors.blue),
          ),
        ),
        InkWell(
          onTap: () => launch(cat.wikipediaUrl!),
          child: Text(
            'Wikipedia',
            style: TextStyle(color: Colors.blue),
          ),
        ),
      ],
    );
  }
}
