import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RecipeDesc extends StatefulWidget {
  const RecipeDesc({Key? key}) : super(key: key);

  @override
  _RecipeDescState createState() => _RecipeDescState();
}

class _RecipeDescState extends State<RecipeDesc> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)?.settings.arguments as Map;
    String label = data['recipe'].label;
    String imgUrl = data['recipe'].imageUrl;
    String desc = data['recipe'].description ?? 'No description available';
    String ingr = data['recipe'].ingredients ?? 'No ingredients available';
    String steps = data['recipe'].steps ?? 'No steps available';
    return Hero(
      tag: data['recipe'],
      child: Scaffold(
        appBar: AppBar(
            title: Text(
          label,
          textAlign: TextAlign.center,
        )),
        body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Image(image: AssetImage(imgUrl)),
          Container(
            decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Color(0xFF8A817C), width: 2))),
            padding:
                const EdgeInsets.only(left: 35, right: 50, top: 15, bottom: 5),
            margin: const EdgeInsets.only(left: 25, right: 25, bottom: 15),
            child: Row(
              children: const [
                Text('Number of portion',
                    style: TextStyle(fontSize: 18, color: Color(0xFF8A817C))),
                Spacer(),
                Icon(FontAwesomeIcons.plusCircle, color: Color(0xFF8A817C)),
                Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Text('1',
                      style: TextStyle(fontSize: 18, color: Color(0xFF8A817C))),
                ),
                Icon(FontAwesomeIcons.minusCircle, color: Color(0xFF8A817C)),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: const [
                StepsCard(),
                StepsCard(),
                StepsCard(),
                StepsCard(),
                StepsCard(),
                StepsCard(),
                StepsCard(),
              ],
            ),
          ),
          Container(
            width: 350,
            height: 180,
            margin: const EdgeInsets.all(8),
            child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                elevation: 5,
                color: Color(0xFFf4f3ee),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: const EdgeInsets.only(left: 15, right: 15),
                          padding: const EdgeInsets.only(bottom: 10, top: 10),
                          width: 300,
                          decoration: const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                            color: Color(0xFF8A817C),
                            width: 2,
                          ))),
                          child: const Text(
                            'Recipe: ',
                            style: TextStyle(fontSize: 18),
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 15),
                        child: Text(desc),
                      )
                    ])),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0, top: 15, right: 25),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: Text('Add to favourite',
                      style: TextStyle(fontSize: 18, color: Color(0xFF8A817C))),
                ),
                Icon(FontAwesomeIcons.heart, size: 32, color: Color(0xFF8A817C))
              ],
            ),
          )
          // RowText(text: 'Description: $desc'),
          // RowText(text: 'Ingredients: $ingr'),
          // RowText(text: 'List of steps: $steps'),
        ]),
      ),
    );
  }
}

class RowText extends StatelessWidget {
  final String text;

  const RowText({Key? key, required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Padding(
        padding: const EdgeInsets.only(left: 15.0, bottom: 15.0),
        child: Text(
          text,
          textAlign: TextAlign.left,
        ),
      ),
    ]);
  }
}

class StepsCard extends StatelessWidget {
  const StepsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 25, top: 10, bottom: 5),
          child: SizedBox(
            width: 280,
            height: 45,
            child: Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              color: const Color(0xFFf4f3ee),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 15, top: 10, bottom: 5),
          child: SizedBox(
            width: 50,
            height: 45,
            child: Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              color: const Color(0xFFf4f3ee),
            ),
          ),
        ),
      ],
    );
  }
}
