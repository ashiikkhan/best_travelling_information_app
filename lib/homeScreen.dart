import 'package:class_ten/countryClass.dart';
import 'package:flutter/material.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List countries = [];
    countries
        .add(Country(name: 'Bangladesh', continent: 'Asia', flag: 'bd.png'));
    countries.add(
        Country(name: 'Turkey', continent: 'Middle East', flag: 'turkey.png'));
    countries
        .add(Country(name: 'France', continent: 'Europe', flag: 'france.png'));
    countries.add(
        Country(name: 'Germany', continent: 'Europe', flag: 'germany.png'));
    countries
        .add(Country(name: 'Italy', continent: 'Europe', flag: 'italy.png'));
    countries.add(Country(
        name: 'Mexico', continent: 'North America', flag: 'mexico.png'));
    countries.add(Country(
        name: 'United States', continent: 'North America', flag: 'us.png'));
    countries.add(
        Country(name: 'Thailand', continent: 'Asia', flag: 'thailand.png'));
    countries
        .add(Country(name: 'Spain', continent: 'Europe', flag: 'spain.png'));
    countries.add(
        Country(name: 'United Kingdom', continent: 'Europe', flag: 'uk.png'));
    countries.add(Country(name: 'China', continent: 'Asia', flag: 'china.png'));

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
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/${countries[index].flag}'),
            ),
            title: Text(countries[index].name),
            subtitle: Text(countries[index].continent),
            trailing: Icon(Icons.arrow_right, color: Colors.green,),
          ),
          elevation: 0,
        ),
        itemCount: countries.length,
      ),
    );
  }
}
