import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

class PageFaker extends StatelessWidget {
  var faker = new Faker();

  @override
  Widget build(BuildContext context) {
    print(faker.person.name());
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Packages Faker"),
        ),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey[600],
            backgroundImage: NetworkImage(
                "https://randomuser.me/api/portraits/men/${index + 85}.jpg"),
          ),
          title: Text("${faker.person.name()}"),
          subtitle: Text("${faker.internet.email()}"),
        ),
      ),
    );
  }
}
