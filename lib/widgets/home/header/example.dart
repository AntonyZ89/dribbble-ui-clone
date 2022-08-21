class ExampleClass {
  final String name;

  ExampleClass(this.name);
}

class Example2Class {
  final String name;

  Example2Class({
    required this.name,
  });
}

class Example3Class {
  final String name;

  Example3Class({
    this.name = 'Default Value',
  });

  void example({required int age, String? birthday, dynamic children}) {
    var teste;

    teste = 1;

    if (children is int) {
      // convert to bool
      children = children > 0;
    }

    print('age: $age, birthday: ${birthday ?? "invalid"}, children: $children');
  }
}
