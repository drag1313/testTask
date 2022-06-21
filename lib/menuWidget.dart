import 'package:flutter/material.dart';

class MenuWidget extends StatefulWidget {
  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black,
        // width: 400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20, bottom: 20),
              child: Text(
                'Transaction History',
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            ),
            const Padding(
                padding: EdgeInsets.only(left: 15, right: 15, bottom: 15),
                child: CurrencyMenu()),
            Row(
              children: [
                const Padding(
                    padding: EdgeInsets.only(left: 15, right: 15, bottom: 15),
                    child: SizedBox(height: 60, width: 300, child: AllMenu())),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: SizedBox(
                    height: 55,
                    width: 55,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          side: MaterialStateProperty.all(
                            const BorderSide(
                              color: Colors.white,
                              width: 1,
                            ),
                          ),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black),
                        ),
                        onPressed: () {},
                        child: const Icon(Icons.calendar_today)),
                  ),
                )
              ],
            ),
          ],
        ));
  }
}

class CurrencyMenu extends StatefulWidget {
  const CurrencyMenu({Key? key}) : super(key: key);

  @override
  State<CurrencyMenu> createState() => _CurrencyMenuState();
}

class _CurrencyMenuState extends State<CurrencyMenu> {
  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(
          child: Text("USD Dollar",
              style: TextStyle(color: (Colors.white), fontSize: 20)),
          value: "USD Dollar"),
      const DropdownMenuItem(
          child: Text("Euro",
              style: TextStyle(color: (Colors.white), fontSize: 20)),
          value: "Euro"),
      const DropdownMenuItem(
          child: Text("RUB",
              style: TextStyle(color: (Colors.white), fontSize: 20)),
          value: "RUB"),
    ];
    return menuItems;
  }

  @override
  Widget build(BuildContext context) {
    String selectedValue = 'USD Dollar';
    return DropdownButtonFormField(
        icon: const Icon(
          Icons.keyboard_arrow_down_sharp,
          color: Colors.white,
        ),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white, width: 2),
            borderRadius: BorderRadius.circular(20),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white, width: 2),
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white, width: 2),
            borderRadius: BorderRadius.circular(20),
          ),
          filled: true,
          fillColor: Colors.black,
        ),
        dropdownColor: Colors.black,
        value: selectedValue,
        onChanged: (String? newValue) {
          setState(() {
            selectedValue = newValue!;
          });
        },
        items: dropdownItems);
  }
}

class AllMenu extends StatefulWidget {
  const AllMenu({Key? key}) : super(key: key);

  @override
  State<AllMenu> createState() => _AllMenuState();
}

class _AllMenuState extends State<AllMenu> {
  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(
          child: Text("All",
              style: TextStyle(color: (Colors.white), fontSize: 20)),
          value: "All"),
      const DropdownMenuItem(
          child: Text("Not All",
              style: TextStyle(color: (Colors.white), fontSize: 20)),
          value: "Not All")
    ];
    return menuItems;
  }

  @override
  Widget build(BuildContext context) {
    String selectedValue = "All";
    return DropdownButtonFormField(
        icon: const Icon(
          Icons.keyboard_arrow_down_sharp,
          color: Colors.white,
        ),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white, width: 2),
            borderRadius: BorderRadius.circular(20),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white, width: 2),
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white, width: 2),
            borderRadius: BorderRadius.circular(20),
          ),
          filled: true,
          fillColor: Colors.black,
        ),
        dropdownColor: Colors.black,
        value: selectedValue,
        onChanged: (String? newValue) {
          setState(() {
            selectedValue = newValue!;
          });
        },
        items: dropdownItems);
  }
}
