import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Positioned(
        bottom: -45,
        child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width - 30,
          padding: const EdgeInsets.only(left: 10, right: 30),
          decoration: const BoxDecoration(
              color: Color(0xfff7f7f7),
              borderRadius: BorderRadius.all(Radius.circular(10)),
             ),
          child: TextFormField(
            decoration: const InputDecoration(
              // suffixIcon: Icon(
              //   Icons.list_alt_rounded,
              //   color: primaryColor,
              // ),
              // prefixIcon: Icon(
              //   Icons.search,
              //   size: 30,
              //   color: Color(0xFF9B9B9B),
              // ),
              contentPadding: EdgeInsets.only(top: 10.0),
              hintText: 'Search Doctor, hospitals',
              hintStyle: TextStyle(
                fontFamily: 'GT Waldheim Pro',
                color: Colors.black,
                fontSize: 14.0,
              ),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
