import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  Key key = new Key('as');
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    Color defaultColor = Color(0xFF272B4D);
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(color: defaultColor,),
                ),
                Expanded(
                  child: new ReusableCard(color: defaultColor),
                ),
              ],
            ),
          ),
          Expanded(child: new ReusableCard(color: defaultColor)),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: new ReusableCard(color: defaultColor),
                ),
                Expanded(
                  child: new ReusableCard(color: defaultColor),
                ),
              ],
            ),
          )

        ],
      ),
    );
  }

}
class ReusableCard extends StatelessWidget {

  late  final Color colour;

  ReusableCard({required Color color}){
    colour = color;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: colour,
      ),
      margin: EdgeInsets.all(15.0),
    );
  }
}
