import 'package:ekart/rv_select/customer_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class CustomerNotifier extends StateNotifier<CustomerModel>{

  CustomerNotifier(super.state);

  void updateName(String newValue){
    state = state.copyWith(name: newValue);
  }

  void updateAddress(String newValue){
    state = state.copyWith(address: newValue);
  }

}