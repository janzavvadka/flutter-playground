import 'package:bloc/bloc.dart';
import 'package:flutter_bloc_counter/bloc/whether/whether_event.dart';
import 'package:meta/meta.dart';

part 'whether_state.dart';

class WhetherBloc extends Bloc<WhetherEvent, WhetherState> {
  WhetherBloc() : super(WhetherInitial());

  @override
  Stream<WhetherState> mapEventToState(event) {
    if (event is WhetherFetchEvent) {
      try {


      } catch (e) {

      }
    }
  }}
