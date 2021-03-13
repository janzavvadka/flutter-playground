part of 'whether_bloc.dart';

@immutable
abstract class WhetherState {}

class WhetherInitial extends WhetherState {}

class WhetherLoading extends WhetherState {}

class WhetherFailure extends WhetherState {}

class WhetherSuccess extends WhetherState {}
