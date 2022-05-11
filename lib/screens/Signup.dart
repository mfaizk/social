import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup extends GetWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/signup.svg',
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.contain,
                alignment: Alignment.center,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.8,
                child: Container(
                  color: Theme.of(context).backgroundColor,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Sign up",
                      style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Container(
                    alignment: Alignment.center,
                    color: Theme.of(context).backgroundColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.10,
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: TextFormField(
                            decoration: const InputDecoration(
                              prefixIcon: Icon(
                                Icons.email,
                              ),
                              labelText: "Email",
                              floatingLabelBehavior: FloatingLabelBehavior.auto,
                              iconColor: Colors.grey,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.01,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.10,
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: TextFormField(
                            decoration: const InputDecoration(
                              prefixIcon: Icon(
                                Icons.lock,
                              ),
                              labelText: "Password",
                              floatingLabelBehavior: FloatingLabelBehavior.auto,
                              iconColor: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.8,
                child: Container(
                  color: Theme.of(context).backgroundColor,
                  alignment: Alignment.center,
                  child: const Text(
                    "By signing up you'r agree to our T&C and Privacy Policy",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width * 0.8,
                child: Container(
                    color: Theme.of(context).backgroundColor,
                    alignment: Alignment.center,
                    child: MaterialButton(
                      onPressed: () {
                        print("Sigunp");
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(
                            50.0,
                          ),
                        ),
                        child: Text(
                          "Signup",
                          style: Theme.of(context).textTheme.headline5,
                        ),
                      ),
                    )),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width * 0.8,
                child: Container(
                    color: Theme.of(context).backgroundColor,
                    alignment: Alignment.topCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "Joined us before? ",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const Text(
                            "Signin",
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
