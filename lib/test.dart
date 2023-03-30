import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:test/home.dart';
import 'dart:developer';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  final List<String> items = [
    'By Date',
    'By Paid Type',
    'By withDrawl Type',
    'By Type',
  ];
  String? selectedValue;
  Color? color;
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Account Overview"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
            child: const Icon(Icons.arrow_back_sharp)),
      ),
      // backgroundColor: const Color.fromARGB(255, 250, 219, 172),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color.fromARGB(255, 243, 191, 191)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8.0, left: 4, right: 4),
                                  child: MyContainor(
                                    commission: "8900 \$",
                                    width: 220,
                                    height: 210,
                                    shadow:
                                        const Color.fromARGB(255, 185, 84, 17),
                                    color1:
                                        Colors.deepOrange[200] ?? Colors.black,
                                    color2:
                                        Colors.deepOrange[300] ?? Colors.black,
                                    color3:
                                        Colors.deepOrange[500] ?? Colors.black,
                                    color4:
                                        Colors.deepOrange[500] ?? Colors.black,
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                      top: 15.0, left: 2, right: 2),
                                  child: MyContainor(
                                    commission: "500 \$",
                                    height: 160,
                                    width: 200,
                                    shadow: Color.fromARGB(255, 150, 236, 153),
                                    color1: Color.fromARGB(255, 202, 238, 224),
                                    color2: Color.fromARGB(255, 172, 240, 211),
                                    color3: Color.fromARGB(255, 111, 236, 188),
                                    color4: Color.fromARGB(255, 34, 255, 163),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: Column(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: 8.0, left: 3, right: 0),
                                  child: MyContainor(
                                    commission: "600 \$",
                                    height: 160,
                                    width: 200,
                                    shadow: Colors.purple,
                                    color1: Color.fromARGB(255, 243, 196, 245),
                                    color2: Color.fromARGB(255, 231, 142, 212),
                                    color3: Color.fromARGB(255, 235, 76, 235),
                                    color4: Color.fromARGB(255, 239, 24, 247),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: 15.0, left: 4, right: 0),
                                  child: MyContainor(
                                    commission: "500 \$",
                                    width: 200,
                                    height: 210,
                                    shadow: Color.fromARGB(255, 154, 201, 240),
                                    color1: Color.fromARGB(255, 220, 245, 248),
                                    color2: Color.fromARGB(255, 163, 237, 255),
                                    color3: Color.fromARGB(255, 114, 223, 250),
                                    color4: Color.fromARGB(255, 136, 189, 219),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          DropdownButtonHideUnderline(
                            child: DropdownButton2(
                              isExpanded: true,
                              hint: Row(
                                children: const [
                                  Icon(
                                    Icons.list,
                                    size: 16,
                                    color: Colors.yellow,
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Expanded(
                                    child: Text(
                                      'Filter',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.yellow,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                              items: items
                                  .map((item) => DropdownMenuItem<String>(
                                        value: item,
                                        child: Text(
                                          item,
                                          style: const TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ))
                                  .toList(),
                              value: selectedValue,
                              onChanged: (value) {
                                setState(() {
                                  selectedValue = value as String;
                                });
                              },
                              buttonStyleData: ButtonStyleData(
                                height: 40,
                                width: 160,
                                padding:
                                    const EdgeInsets.only(left: 14, right: 14),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  border: Border.all(
                                    color: Colors.black26,
                                  ),
                                  color:
                                      const Color.fromARGB(255, 255, 137, 82),
                                ),
                                elevation: 2,
                              ),
                              iconStyleData: const IconStyleData(
                                icon: Icon(
                                  Icons.arrow_forward_ios_outlined,
                                ),
                                iconSize: 14,
                                iconEnabledColor: Colors.yellow,
                                iconDisabledColor: Colors.grey,
                              ),
                              dropdownStyleData: DropdownStyleData(
                                  maxHeight: 200,
                                  width: 200,
                                  padding: null,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    color: Colors.redAccent,
                                  ),
                                  elevation: 8,
                                  offset: const Offset(-20, 0),
                                  scrollbarTheme: ScrollbarThemeData(
                                    radius: const Radius.circular(40),
                                    thickness: MaterialStateProperty.all(6),
                                    thumbVisibility:
                                        MaterialStateProperty.all(true),
                                  )),
                              menuItemStyleData: const MenuItemStyleData(
                                height: 40,
                                padding: EdgeInsets.only(left: 14, right: 14),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: Container(
                              height: 40,
                              width: 110,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color:
                                      const Color.fromARGB(255, 255, 137, 82)),
                              child: const Center(child: Text('Filter')),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                showDataAlert();
                              },
                              child: Container(
                                height: 40,
                                width: 110,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: const Color.fromARGB(
                                        255, 255, 137, 82)),
                                child: const Center(child: Text('Detail')),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: DataTable(
                        onSelectAll: (val) {
                          setState(() {
                            selectedIndex = -1;
                          });
                        },
                        columns: const [
                          DataColumn(label: Text('Date')),
                          DataColumn(label: Text('User')),
                          DataColumn(label: Text('Type')),
                          DataColumn(label: Text('Commission')),
                          DataColumn(label: Text('Id')),
                          DataColumn(label: Text('Payment')),
                          DataColumn(label: Text('Status')),
                        ],
                        rows: [
                          DataRow(
                              selected: 0 == selectedIndex,
                              onSelectChanged: (val) {
                                setState(() {
                                  selectedIndex = 0;
                                });
                              },
                              cells: [
                                DataCell(
                                  Text(
                                    DateTime.now().toString().substring(0, 9),
                                    textAlign: TextAlign.left,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  onTap: () {
                                    setState(() {
                                      color = Colors.lightBlueAccent;
                                    });
                                  },
                                ),
                                const DataCell(Text("Watson")),
                                const DataCell(Text("PayPal")),
                                const DataCell(Text("530\$")),
                                const DataCell(Text("56")),
                                const DataCell(Text("Payment")),
                                const DataCell(Text("Paid")),
                              ]),
                          DataRow(
                              selected: 1 == selectedIndex,
                              onSelectChanged: (val) {
                                setState(() {
                                  selectedIndex = 1;
                                });
                              },
                              cells: [
                                DataCell(
                                    Text(
                                      DateTime.now().toString().substring(0, 9),
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    onTap: () {}),
                                const DataCell(Text("Watson")),
                                const DataCell(Text("PayPal")),
                                const DataCell(Text("530\$")),
                                const DataCell(Text("56")),
                                const DataCell(Text("Payment")),
                                const DataCell(Text("Paid")),
                              ]),
                          DataRow(
                              selected: 2 == selectedIndex,
                              onSelectChanged: (val) {
                                setState(() {
                                  selectedIndex = 2;
                                });
                              },
                              cells: [
                                DataCell(
                                    Text(
                                      DateTime.now().toString().substring(0, 9),
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    onTap: () {}),
                                const DataCell(Text("Watson")),
                                const DataCell(Text("PayPal")),
                                const DataCell(Text("530\$")),
                                const DataCell(Text("56")),
                                const DataCell(Text("Payment")),
                                const DataCell(Text("Paid")),
                              ]),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  showDataAlert() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  20.0,
                ),
              ),
            ),
            contentPadding: const EdgeInsets.only(
              top: 10.0,
            ),
            title: const Text(
              "Bank Details",
              style: TextStyle(fontSize: 24.0),
            ),
            content: SizedBox(
              height: 400,
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Name              ",
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            ":    Watson",
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Date                 ",
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            ":    ${DateTime.now().toString().substring(0, 9)}",
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Id                      ",
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            ":    456783",
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Commission   ",
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            ":    807\$",
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Payment Type",
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            ":    Paypal",
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      height: 60,
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black,
                          // fixedSize: Size(250, 50),
                        ),
                        child: const Text(
                          "Send",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}

class MyContainor extends StatelessWidget {
  final String commission;
  final double height;
  final double width;
  final Color color1;
  final Color color2;
  final Color color3;
  final Color color4;
  final Color shadow;
  const MyContainor(
      {Key? key,
      required this.commission,
      required this.height,
      required this.color1,
      required this.color2,
      required this.shadow,
      required this.color3,
      required this.color4,
      required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(42)),
          boxShadow: [
            BoxShadow(
              color: shadow,
              offset: const Offset(0, 20),
              blurRadius: 30,
              spreadRadius: -5,
            ),
          ],
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomCenter,
              colors: [color1, color2, color3, color4],
              stops: const [0.1, 0.3, 0.9, 1.0])),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              commission,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
