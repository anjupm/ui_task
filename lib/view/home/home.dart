import 'package:flutter/material.dart';
import 'package:ui_task/common/widget/bookingFormTextFields.dart';
import 'package:ui_task/view/invoicePage/invoicePage.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

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
            child:  Icon(
              Icons.arrow_back_ios_new_sharp,
              color: Colors.grey.shade500,
              size: 20,
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 25),
            child: Text(
              "Enter the invoice number",
              style: TextStyle(color: Colors.blue.shade700, fontSize: 18),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: BookingFormTextFields(
              hint: "Invoice Number",
              maxLines: 1,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30.0),
            child: Center(
              child: SizedBox(
                height: 250,
                width: 250,
                child: Image(
                  image: AssetImage("assets/icons/uiTaskIcon.jpg"),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                    width: 150,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white, elevation: 3),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.arrow_back_ios_new_sharp,
                              color: Colors.blue,
                              size: 15,
                            ),

                            Text(
                              "Back",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ],
                        ))),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                    width: 150,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> InvoicePage()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text("Next"),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 15,
                            ),
                          ],
                        ))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
