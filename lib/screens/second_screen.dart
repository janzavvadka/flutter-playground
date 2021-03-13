import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_counter/bloc/counter/counter_cubit.dart';

class SecondScreen extends StatefulWidget {
  final String title;

  SecondScreen({this.title});

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text(widget.title),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FloatingActionButton(
                heroTag: null,
                onPressed: () => BlocProvider.of<CounterCubit>(context).increment(),
                backgroundColor: Colors.greenAccent,
                tooltip: "increment",
                child: Icon(Icons.add)),
            BlocConsumer<CounterCubit, CounterState>(
              listener: (context, state) => {
                state.isIncrement
                    ? Scaffold.of(context).showSnackBar(SnackBar(
                        duration: Duration(milliseconds: 10),
                        content: Text("incremented"),
                      ))
                    : Scaffold.of(context).showSnackBar(SnackBar(
                        duration: Duration(milliseconds: 10),
                        content: Text("decremented"),
                      ))
              },
              builder: (context, state) => Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text(
                  state.counter.toString(),
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ),
            FloatingActionButton(
                heroTag: null,
                onPressed: () => BlocProvider.of<CounterCubit>(context).decrement(),
                tooltip: "decrement",
                backgroundColor: Colors.greenAccent,
                child: Icon(Icons.remove)),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FloatingActionButton(
              heroTag: null,
              backgroundColor: Colors.greenAccent,
              onPressed: () => Navigator.of(context).pushNamed("/"),
              child: Icon(Icons.keyboard_arrow_left_outlined),
            ),
            FloatingActionButton(
              heroTag: null,
              backgroundColor: Colors.greenAccent,
              onPressed: () => Navigator.of(context).pushNamed("/third"),
            ),
          ],
        ),
      ),
    );
  }
}
