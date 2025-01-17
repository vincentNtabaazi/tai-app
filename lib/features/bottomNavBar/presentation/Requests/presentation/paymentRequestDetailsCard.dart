import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tai/commonWidgets/mainButton.dart';
import 'package:tai/features/bottomNavBar/presentation/Requests/presentation/chooseRequestPaymentMethod.dart';

class PaymentRequestedDetails extends StatefulWidget {
  const PaymentRequestedDetails({super.key});

  @override
  State<PaymentRequestedDetails> createState() => _PaymentRequestedDetailsState();
}

class _PaymentRequestedDetailsState extends State<PaymentRequestedDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Payment Request Details",
          style: TextStyle(fontSize: 20),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            color: Colors.black,
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: const Color.fromARGB(255, 240, 240, 240)),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/images/blueTick.svg"),
                      const SizedBox(
                        height: 30,
                      ),
                      const Center(
                          child: Text("Split payment requested",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold))),
                      const Center(
                          child: Text(
                              "Pay for drinks   15th June 2023    15:00pm",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.grey))),
                      const SizedBox(height: 40),
                      const Center(
                          child: Text("10,000 RWF",
                              style: TextStyle(
                                  fontSize: 35, fontWeight: FontWeight.bold))),
                      const Center(
                          child: Text("Divided among 4 people",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.grey))),
                      const SizedBox(height: 40),
                      MainButton(text: "PAY", onpressed: (){
                        Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ChooseRequestPaymentMethod()));
                      })
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
