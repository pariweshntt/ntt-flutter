import 'dart:async';
class CounterBloc {
  final counterController = StreamController();  // create a StreamController or
  Stream get getCount => counterController.stream; // create a getter for our Stream
  
  void updateCount(input) {
    //logic
    counterController.sink.add(input); // add whatever data we want into the Sink
  }
  
  void dispose() {
    counterController.close(); // close our StreamController to avoid memory leak
  }
}

final bloc = CounterBloc(); // create an instance of the counter bloc