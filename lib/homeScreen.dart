import 'package:class_ten/countryClass.dart';
import 'package:flutter/material.dart';

import 'detailScreen.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List countries = [];
    countries
        .add(Country(name: 'Bangladesh', continent: 'Asia', flag: 'assets/bd.png'));
    countries.add(
        Country(name: 'Turkey', continent: 'Middle East', flag: 'assets/turkey.png'));
    countries
        .add(Country(name: 'France', continent: 'Europe', flag: 'assets/france.png'));
    countries.add(
        Country(name: 'Germany', continent: 'Europe', flag: 'assets/germany.png'));
    countries
        .add(Country(name: 'Italy', continent: 'Europe', flag: 'assets/italy.png'));
    countries.add(Country(
        name: 'Mexico', continent: 'North America', flag: 'assets/mexico.png'));
    countries.add(Country(
        name: 'United States', continent: 'North America', flag: 'assets/us.png'));
    countries.add(
        Country(name: 'Thailand', continent: 'Asia', flag: 'assets/thailand.png'));
    countries
        .add(Country(name: 'Spain', continent: 'Europe', flag: 'assets/spain.png'));
    countries.add(
        Country(name: 'United Kingdom', continent: 'Europe', flag: 'assets/uk.png'));
    countries.add(Country(name: 'China', continent: 'Asia', flag: 'assets/china.png'));

    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.green,
        title: Text('Best Countries to Travel'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) => Card(
          child: ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => detailScreen(
                    name: countries[index].name,
                    continent: countries[index].continent,
                    flag: countries[index].flag,
                  ),
                ),
              );
            },
            leading: CircleAvatar(
              backgroundImage: AssetImage(countries[index].flag),
            ),
            title: Text(countries[index].name),
            subtitle: Text(countries[index].continent),
            trailing: Icon(
              Icons.arrow_right,
              color: Colors.green,
            ),
          ),
          elevation: 0,
        ),
        itemCount: countries.length,
      ),
    );
  }
}
