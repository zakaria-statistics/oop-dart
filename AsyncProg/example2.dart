import 'dart:async';

void main(List<String> args) async {
  try {
    print(
      await getFullName(
        firstName: 'John',
        lastName: 'Doe',
      ),
    );

    print(
      await getFullName(
        firstName: '',
        lastName: 'Doe',
      ),
    );
  } on FirstOrLastNameMissingException
  catch(e){
    print(e);
  }
}

Future<String> getFullName({
  required String firstName,
  required String lastName,
}) {
  if (firstName.isEmpty || lastName.isEmpty) {
    throw FirstOrLastNameMissingException('First name: $firstName, Last name: $lastName');
  } else {
    return Future.value('$firstName $lastName');
  }
}

class FirstOrLastNameMissingException implements Exception {
  final String message;

  const FirstOrLastNameMissingException(this.message);

  @override
  String toString() {
    return 'FirstOrLastNameMissingException: $message';
  }
}
