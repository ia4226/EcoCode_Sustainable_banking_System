import 'package:flutter/material.dart';

class GreenCover extends StatefulWidget {
  const GreenCover({Key? key}) : super(key: key);

  @override
  State<GreenCover> createState() => _GreenCoverState();
}

class _GreenCoverState extends State<GreenCover> {
  bool _isExpandeIntro = false;
  bool _isExpandeDisc = false;
  final String introductionText = 'Introduction';
  final String introExpanded =
      'expanded information to be displayed when the panel is expanded.';
  final String disclaimerText = 'Disclaimer';
  final String discExpanded =
      'expanded information to be displayed when the panel is expanded.';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 66, 227, 208),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  'Green Cover',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Column(
              children: [
                Card(
                  elevation: 0.5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    title: Text(
                      introductionText,
                      style: const TextStyle(fontSize: 20),
                    ),
                    trailing: Icon(_isExpandeIntro
                        ? Icons.expand_less
                        : Icons.expand_more),
                    onTap: () {
                      setState(() {
                        _isExpandeIntro = !_isExpandeIntro;
                      });
                    },
                  ),
                ),
                if (_isExpandeIntro)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      introExpanded,
                      style: const TextStyle(fontSize: 18),
                    ),
                  ),
              ],
            ),
            Column(
              children: [
                Card(
                  elevation: 0.5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    title: Text(
                      disclaimerText,
                      style: const TextStyle(fontSize: 20),
                    ),
                    trailing: Icon(
                        _isExpandeDisc ? Icons.expand_less : Icons.expand_more),
                    onTap: () {
                      setState(() {
                        _isExpandeDisc = !_isExpandeDisc;
                      });
                    },
                  ),
                ),
                if (_isExpandeDisc)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      discExpanded,
                      style: const TextStyle(fontSize: 18),
                    ),
                  ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Text(
                    'Enter Data: ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Text(
                    'Values: ',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
