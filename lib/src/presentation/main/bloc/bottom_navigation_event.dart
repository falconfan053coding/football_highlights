part of 'bottom_navigation_bloc.dart';

@immutable
sealed class BottomNavigationEvent {}



class SetBottomNavigationIndexEvent extends BottomNavigationEvent {
  final int index;

  SetBottomNavigationIndexEvent({required this.index});
}