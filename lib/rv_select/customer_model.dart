import 'package:flutter/material.dart';


@immutable
class CustomerModel {
  final String name;
  final String address;

  const CustomerModel({required this.name, required this.address});

  CustomerModel copyWith({
    String? name,
    String? address,}){

    return CustomerModel(
      name: name ?? this.name,
      address: address ?? this.address,
    );
  }

}