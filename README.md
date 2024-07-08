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

4. Future Provider
   - Retrieve data asynchronously using "http" package using FutureProvider
   
5. StreamProvider

6. AutoDispose Modifier
 - Auto dispose destroy the state of a provider when it is no-longer used.
 - There are multiple reasons for doing so, such as:
   1. When using Firebase, to close the connection and avoid unnecessary cost.
   2. To reset the state when the user leaves a screen and re-enters it.
 The keepAlive function is used to tell Riverpod that the state of the provider should be preserved even if no longer listened to.
 We can also implement timeout-based caching strategy to dispose the provider's state after a given duration

7. Theme Provider
 - ThemeProvider is a provider that is used to listen to and expose a ThemeMode

#[Modifier Types]
1. Family Modifier

#[RiverPod Provider]
 It is an object that encapsulates a piece of state that allows listening to that state.
- Store some state which can be accessed from multiple location
- Cache state computation
- Reduce rebuilds of widgets
- Code is more testable