import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'package:intl/intl.dart';

class Date extends StatelessWidget {
  var faker = new Faker();

  @override
  Widget build(BuildContext context) {
    print(faker.person.name());
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Packages intl"),
        ),
      ),
      body: ListView.builder(
        itemCount: 12,
        itemBuilder: (context, index) => ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey[600],
            backgroundImage: NetworkImage(
                "https://randomuser.me/api/portraits/men/${index + 86}.jpg"),
          ),
          title: Text("${faker.person.name()}"),
          subtitle:
              Text("${DateFormat.yMMMMd().add_Hms().format(DateTime.now())}"),
        ),
      ),
    );
  }
}
