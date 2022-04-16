import 'package:flutter/material.dart';
import 'package:flutter_boilerplate_riverpod/domain/entities/destination.dart';

class BoxDestination extends StatelessWidget {
  final Destination destination;

  const BoxDestination({
    Key? key,
    required this.destination,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final codeParts = destination.code.split('-');
    final codeForm = codeParts[0].trim();
    final codeTo = codeParts[1].trim();

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24), // if you need this
        side: BorderSide(
          color: Colors.grey.withOpacity(0.2),
          width: 1,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      codeForm,
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo),
                    ),
                    const SizedBox(width: 16),
                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          color: Colors.indigo.shade50,
                          borderRadius: BorderRadius.circular(20)),
                      child: SizedBox(
                        height: 8,
                        width: 8,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                              color: Colors.indigo.shade400,
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                          children: <Widget>[
                            SizedBox(
                              height: 24,
                              child: LayoutBuilder(
                                builder: (context, constraints) {
                                  return Flex(
                                    children: List.generate(
                                        (constraints.constrainWidth() / 6)
                                            .floor(),
                                        (index) => SizedBox(
                                              height: 1,
                                              width: 3,
                                              child: DecoratedBox(
                                                decoration: BoxDecoration(
                                                    color:
                                                        Colors.grey.shade300),
                                              ),
                                            )),
                                    direction: Axis.horizontal,
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                  );
                                },
                              ),
                            ),
                            Center(
                              child: Icon(
                                Icons.bus_alert,
                                color: Colors.indigo.shade300,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                          color: Colors.pink.shade50,
                          borderRadius: BorderRadius.circular(20)),
                      child: SizedBox(
                        height: 8,
                        width: 8,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                              color: Colors.pink.shade400,
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Text(
                      codeTo,
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.pink),
                    )
                  ],
                ),
                const SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                        width: 100,
                        child: Text(
                          destination.from,
                          style:
                              const TextStyle(fontSize: 12, color: Colors.grey),
                        )),
                    Text(
                      '${destination.timeout}h',
                      style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(
                        width: 100,
                        child: Text(
                          destination.to,
                          textAlign: TextAlign.end,
                          style:
                              const TextStyle(fontSize: 12, color: Colors.grey),
                        )),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '${destination.dateTo}h',
                      style: const TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '${destination.dateForm}h',
                      style: const TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
