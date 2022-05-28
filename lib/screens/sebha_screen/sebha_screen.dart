import 'package:flutter/material.dart';

class SebhaScreen extends StatefulWidget {
  const SebhaScreen({Key? key}) : super(key: key);

  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
  int countr = 0;
  bool chekCount = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
      body: Center(
        child: Expanded(
          child: Column(
            children: [
              Image.asset('assets/images/head_sebha.png'),
              Image.asset('assets/images/sebha_headdr.png'),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'The number of tasbeeh',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 60,
              ),
              Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 183, 147, 95),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: Text(
                    '$countr',
                    style: const TextStyle(fontSize: 50, color: Colors.black),
                  ),
                ),
              ),
              FloatingActionButton(
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 40,
                ),
                backgroundColor: Theme.of(context).primaryColor,
                elevation: 0,
                onPressed: () {
                  countr++;
                  setState(() {});
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
