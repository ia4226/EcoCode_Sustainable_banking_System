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
              padding: const EdgeInsets.all(15.0),
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
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 16, left: 16, right: 16, bottom: 8),
              child: Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  'Enter Data: ',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0, right: 5, bottom: 16),
              child: Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                color: const Color.fromARGB(255, 243, 241, 241),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'eg: 123.456',
                      hintStyle: TextStyle(
                        color: Color.fromARGB(255, 99, 99, 99),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
