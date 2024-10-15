import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return InfoView();
  }
}

class InfoView extends StatelessWidget {
  InfoView({super.key});

  List<Widget> buttonTitles = <Widget>[
    Row(children: [Icon(Icons.phone_android_rounded), SizedBox(width: 7,), Text('local Tflite')]),
    Row(children: [Icon(Icons.public), SizedBox(width: 7,), Text('Cloud API call')]),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(title: Text("Credits",),),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Container(
                width: MediaQuery.sizeOf(context).width * 0.9,
                child: Card(
                    color: Theme.of(context).colorScheme.secondary,
                    child: Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("App development: ", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10,),
Text("Hendrik Ständker"),                          ],
                        )

                    ))),
            Container(
                width: MediaQuery.sizeOf(context).width * 0.9,
                child: Card(
                    color: Theme.of(context).colorScheme.secondary,
                    child: Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Vector image:", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10,),
                            Text("Image by macrovector_official on Freepik: "),
                            Text("https://www.freepik.com/free-vector/medical-icons-set_4411531.htm#fromView=search&page=1&position=0&uuid=10469eb4-ed1f-4a6b-8773-8126139c8e6c")
                          ],
                        )

                    ))),
            Container(
                width: MediaQuery.sizeOf(context).width * 0.9,
                child: Card(
                    color: Theme.of(context).colorScheme.secondary,
                    child: Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("ABCDE Figure:", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                            SizedBox(height: 10,),
                            Text("Melanoma Management: From Epidemiology to Treatment and Latest Advances - Scientific Figure on ResearchGate. Available from: https://www.researchgate.net/figure/The-ABCDE-rule-for-melanoma-skin-cancer-diagnosis_fig4_363850284 [accessed 7 Aug 2024]"),
                          ],
                        )

                    ))),
          ],

        ),
      ),
    );
  }
}

