
import 'package:WOBB_clone/models/company.dart';
import 'package:flutter/material.dart';

// widgets
import '../widgets/company_card.dart';

class CompanyScreen extends StatefulWidget {
  final List<Company> availableComp;

  CompanyScreen(this.availableComp);

  @override
  _CompanyScreenState createState() => _CompanyScreenState(availableComp);
}

class _CompanyScreenState extends State<CompanyScreen> {
  List<Company> _displayCompany;

  _CompanyScreenState(this._displayCompany);

  Widget buildBar(BuildContext context) {
    return new AppBar(
      //centerTitle: true,
      title: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 2),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          'Search companies',
          style: TextStyle(color: Colors.grey, fontSize: 15),
          textAlign: TextAlign.left,
        ),
      ),
      backgroundColor: Colors.white,
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.search,
            color: Colors.grey,
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildBar(context),
      body: ListView.builder(
          itemCount: _displayCompany.length,
          itemBuilder: (ctx, index) {
            return CompanyCard(
              id: _displayCompany[index].id,
              title: _displayCompany[index].title,
              jobs: _displayCompany[index].jobs,
              type: _displayCompany[index].type,
              imageURL: _displayCompany[index].imageURL,
            );
          }),
    );
  }
}
