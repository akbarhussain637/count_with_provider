import 'package:count_with_provider/provider/count_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CountExample extends StatefulWidget {
  const CountExample({super.key});
  
  @override
  State<CountExample> createState() => _CountExampleState();
}

class _CountExampleState extends State<CountExample> {

  @override
  Widget build(BuildContext context) {
    final countprovider = Provider.of<CountProvider>(context,listen: false);
      print('build');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent,
        title: const Text('provider'),
      ),
      body: Center(
        child:  Consumer<CountProvider>(
            builder: (context, value, child) => Text(
              value.count.toString(),
            ),
          ),
      ),
      floatingActionButton: FloatingActionButton(onPressed:(){
      countprovider.setCount();
      },
      child: const Icon(Icons.add,color: Colors.white,),
      ),
    );
  }
}