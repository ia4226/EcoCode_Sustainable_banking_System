import 'package:flutter/material.dart';

class EligibiltyPage extends StatelessWidget {
  const EligibiltyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Text(
            'Subsidization Details',
            style: TextStyle(fontSize: 28),
            textAlign: TextAlign.start,
          ),
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20, right: 20, top: 5.0, bottom: 5.0),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 180,
                          width: 180,
                          child: Card(
                            color: const Color.fromRGBO(254, 230, 78, 1),
                            elevation: 3,
                            child: SizedBox(
                              child: Container(
                                width: 100,
                                padding: const EdgeInsets.only(
                                    top: 8.0, bottom: 8.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15)),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 12.0),
                                      child: Icon(
                                        Icons.sunny,
                                        size: 35,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 5),
                                      child: Text(
                                        'Solar Usage',
                                        style: TextStyle(
                                            fontSize: 26,
                                            fontWeight: FontWeight.w700),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(3.0),
                                      child: Text(
                                        'Total',
                                        style: TextStyle(fontSize: 18),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 180,
                          width: 180,
                          child: Card(
                            color: const Color.fromARGB(255, 66, 227, 208),
                            elevation: 3,
                            child: SizedBox(
                              child: Container(
                                width: 100,
                                padding: const EdgeInsets.only(
                                    top: 8.0, bottom: 8.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15)),
                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 12.0),
                                      child: Icon(
                                        Icons.sunny,
                                        size: 35,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 5),
                                      child: Text(
                                        'Green Cover',
                                        style: TextStyle(
                                            fontSize: 26,
                                            fontWeight: FontWeight.w700),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(3.0),
                                      child: Text(
                                        'Total',
                                        style: TextStyle(fontSize: 18),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Row(
                    children: [
                      SizedBox(
                        height: 180,
                        width: 180,
                        child: Card(
                          color: const Color.fromARGB(255, 249, 160, 211),
                          elevation: 3,
                          child: SizedBox(
                            child: Container(
                              width: 100,
                              padding:
                                  const EdgeInsets.only(top: 8.0, bottom: 8.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 12.0),
                                    child: Icon(
                                      Icons.sunny,
                                      size: 35,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 5),
                                    child: Text(
                                      'Wet Waste',
                                      style: TextStyle(
                                          fontSize: 26,
                                          fontWeight: FontWeight.w700),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(3.0),
                                    child: Text(
                                      'Total',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 180,
                        width: 180,
                        child: Card(
                          color: const Color.fromARGB(156, 66, 145, 224),
                          elevation: 3,
                          child: SizedBox(
                            child: Container(
                              width: 100,
                              padding:
                                  const EdgeInsets.only(top: 8.0, bottom: 8.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 12.0),
                                    child: Icon(
                                      Icons.sunny,
                                      size: 35,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 5),
                                    child: Text(
                                      'Rainwater harvestation',
                                      maxLines: 2,
                                      style: TextStyle(
                                          fontSize: 26,
                                          fontWeight: FontWeight.w700),
                                      textAlign: TextAlign.center,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(0.0),
                                    child: Text(
                                      'Total',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
              const Text(
                'Your Subsidizations',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              )
            ],
          )
        ],
      ),
    );
  }
}
