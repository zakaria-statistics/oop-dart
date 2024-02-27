void main() {
  try {
    for (var i = 0; i < 5; i++) {
      print('Iteration: $i');
      // Simulating a potential exception
      if (i == 3) {
        throw Exception('Exception occurred at iteration $i');
      }
    }
  } catch (e) {
    print('Caught an exception: $e');
  }

  print('Program continues after the loop.');
}
