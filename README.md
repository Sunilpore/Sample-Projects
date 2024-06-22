# ekart

E-Device Cart Sample Project

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.



Project Consist of
- Riverpod State Management

#[Types Of RiverPod Providers]
1. Provider
2. State Provider
3. State Notifier Provider
 - StateNotifierProvider is a provider that is used to listen to and expose a StateNotifier
 - StateNotifierProvider Along with StateNotifier is Riverpod's recommended solution for managing state which may change in reaction to a user interaction
 - Used for centralizing the Business logic in a single place, improving maintainability over time.


#[RiverPod Provider]
 It is an object that encapsulates a piece of state that allows listening to that state.
- Store some state which can be accessed from multiple location
- Cache state computation
- Reduce rebuilds of widgets
- Code is more testable