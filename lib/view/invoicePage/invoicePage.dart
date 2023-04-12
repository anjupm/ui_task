import 'package:flutter/material.dart';
import 'package:ui_task/common/ui/Ui.dart';

class InvoicePage extends StatelessWidget {
  InvoicePage({Key? key}) : super(key: key);

  var name = [
    "MyG Kakkanad",
    "Allen Solly Idappally",
    "Nike Idappally",
    "Dessi Cuppa",
    "Zuddio Kakkanad",
    "Ayur Pharma Kochi",
    "Nike Idappally",
    "Nike Idappally",
    "Zuddio Kakkanad",
    "Ayur Pharma Kochi",
  ];
  var icons = [
    "assets/icons/myg.png",
    "assets/icons/allensolly.png",
    "assets/icons/nike.png",
    "assets/icons/desicuppa.jpg",
    "assets/icons/zudio.png",
    "assets/icons/ayurvedha.png",
    "assets/icons/nike.png",
    "assets/icons/myg.png",
    "assets/icons/myg.png",
    "assets/icons/myg.png",
  ];
  var invoice = [
    "122022",
    "222022",
    "262022",
    "122022",
    "122022",
    "122022",
    "122022",
    "122022",
    "122022",
    "122022",
  ];
  var num = [
    "1320",
    "780",
    "2300",
    "180",
    "690",
    "320",
    "2300",
    "690",
    "690",
    "690",
  ];

  var date = [
    "12 Dec 2022",
    "22 Sep 2022",
    "26 Nov 2022",
    "12 Oct 2022",
    "12 Dec 2022",
    "12 Dec 2022",
    "12 Dec 2022",
    "12 Dec 2022",
    "12 Dec 2022",
    "12 Dec 2022",
  ];
  var trailingIcons = [
    const Icon(Icons.access_time),
    const Icon(Icons.access_time_filled),
    const Icon(Icons.access_time_filled),
    const Icon(Icons.access_time_filled),
    const Icon(Icons.access_time_filled),
    const Icon(Icons.access_time_filled),
    const Icon(Icons.access_time_filled),
    const Icon(Icons.access_time_filled),
    const Icon(Icons.access_time_filled),
    const Icon(Icons.access_time_filled),
  ];
  var trailingText = [
    "Approved",
    "Approved",
    "Approved",
    "Pending",
    "Pending",
    "Pending",
    "Rejected",
    "Rejected",
    "Rejected",
    "Rejected",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Container(
            width: 5,
            height: 5,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(color: Colors.grey, blurRadius: 3)
                ]),
            child: Icon(
              Icons.arrow_back_ios_new_sharp,
              color: Colors.grey.shade500,
              size: 20,
            ),
          ),
        ),
        title: const Text(
          "Add New Invoice",
          style: TextStyle(color: Colors.blue),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: const EdgeInsets.all(50),
                  decoration: Ui.getBoxDecoration(),
                ),
                Container(
                  height: 55,
                  width: 2,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade400,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(50),
                  decoration: Ui.getBoxDecoration(),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 50,
              color: Colors.grey.shade200,
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Icon(
                      Icons.note_rounded,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "My Invoices",
                    style: TextStyle(fontSize: 15, color: Colors.blue),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                  itemCount: name.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      height: 75,
                      child: Card(
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        elevation: 3,
                        margin: const EdgeInsets.all(10),
                        child: ListTile(
                          leading: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius:  const BorderRadius.all(Radius.circular(30.0)),
                                  color: Colors.grey.shade100),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  icons[index],
                                  fit: BoxFit.cover,
                                ),
                              )),
                          title: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    name[index],
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  ),
                                  Text(
                                    num[index],
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17,
                                        color: Colors.blue),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Invoice No: ${invoice[index]}",
                                    style: const TextStyle(fontSize: 13),
                                  ),
                                  Text(
                                    date[index],
                                    style: const TextStyle(fontSize: 13),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          trailing: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              trailingIcons[index],

                              Text(
                                trailingText[index],
                                style: const TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
