import 'package:equatable/equatable.dart';

class Person extends Equatable {
  final String name;
  final String address;

  Person({required this.name, required this.address});

  @override
  List<Object?> get props => [name, address];
}