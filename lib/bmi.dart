import 'package:bmicalculator/result.dart';
import 'package:flutter/material.dart';

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({super.key});

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  bool male = true;
  int height = 100;
  int weight = 50;
  int Age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 12, 15, 37),
      appBar: AppBar(
        title: const Text('Bmi Calculator'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          Expanded(
              child: Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                Expanded(
                    child: InkWell(
                  onTap: () {
                    male = true;
                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: male ? Colors.blue : Colors.grey,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.male,
                            size: 100,
                            color: Colors.white,
                          ),
                          Text('Male',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 24))
                        ]),
                  ),
                )),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: InkWell(
                  onTap: () {
                    male = false;
                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: male ? Colors.grey : Colors.blue,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.female,
                            size: 100,
                            color: Colors.white,
                          ),
                          Text('Female',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25))
                        ]),
                  ),
                )),
              ],
            ),
          )),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(10)),
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('height',
                      style: TextStyle(color: Colors.white, fontSize: 24)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(height.toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold)),
                      Text(' cm',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          )),
                    ],
                  ),
                  Slider(
                      min: 0,
                      max: 200,
                      value: height.toDouble(),
                      onChanged: (value) {
                        setState(() {
                          height = value.round();
                        });
                      }),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('weight',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)),
                            Text(
                              weight.toString(),
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          weight--;
                                        });
                                      },
                                      icon: const Icon(Icons.remove)),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                CircleAvatar(
                                    child: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            weight++;
                                          });
                                        },
                                        icon: const Icon(Icons.add)))
                              ],
                            )
                          ]),
                    ),
                  )),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Age',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20)),
                            Text(Age.toString(),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          Age--;
                                        });
                                      },
                                      icon: const Icon(Icons.remove)),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                CircleAvatar(
                                    child: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            Age++;
                                          });
                                        },
                                        icon: const Icon(Icons.add)))
                              ],
                            )
                          ]),
                    ),
                  ))
                ],
              ),
            ),
          ),
          MaterialButton(
            height: 60,
            color: Colors.blue,
            minWidth: double.infinity,
            onPressed: () {
            },
            child: const Text('Calculate'),
          )
        ]),
      ),
    );
  }
}
