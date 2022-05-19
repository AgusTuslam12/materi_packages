import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:materi_packages/pages/home.dart';

class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Title of first page",
          body:
              "Here you can write the description of the page, to explain someting...",
          image: Center(
            child: Image.network(
                "https://ouch-cdn2.icons8.com/K97bPbcORR_yDY4t4gejp1pTSTBlH9epQvAofhhP1Zc/rs:fit:256:356/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvNTA4/LzQ4NmIzMWQ5LTdl/OWUtNGE5MS1iZjAy/LTU4MjkzNDY2ZjFh/Mi5wbmc.png",
                height: 220.0),
          ),
          decoration: PageDecoration(
            pageColor: Colors.grey[100],
          ),
        ),
        PageViewModel(
          title: "Title of first page",
          body:
              "Here you can write the description of the page, to explain someting...",
          image: Center(
            child: Image.network(
                "https://ouch-cdn2.icons8.com/PacupCheLt3TSRbLLTwTDRFuA3PZOXWFMC8xO0TGtxM/rs:fit:256:256/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvOTg1/LzAyZDAxOTYxLWY4/Y2ItNDhhMC04Zjg5/LWM4NTgxODgxOTg2/Ny5wbmc.png",
                height: 220.0),
          ),
          decoration: PageDecoration(
            pageColor: Colors.grey[100],
          ),
        ),
        PageViewModel(
          title: "Hallo Avatar",
          body:
              "Here you can write the description of the page, to explain someting...",
          image: Center(
            child: Image.network(
              "https://img.freepik.com/free-vector/mobile-login-concept-illustration_114360-83.jpg?size=338&ext=jpg",
              height: 220.0,
            ),
          ),
          decoration: PageDecoration(
            pageColor: Colors.grey[100],
          ),
          footer: ElevatedButton(
            onPressed: () {
              // Navigator.pushReplacement(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => Login(),
              //     ));
            },
            child: const Text("Log in"),
          ),
        ),
      ],
      showNextButton: true,
      showBackButton: false,
      showSkipButton: true,
      showDoneButton: false,
      skip: const Text("Skip"),
      next: const Icon(Icons.navigate_next),
      done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
      onDone: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomePages()));
      },
      baseBtnStyle: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(26.0),
        ),
      ),
      skipStyle: TextButton.styleFrom(primary: Colors.black),
      doneStyle: TextButton.styleFrom(primary: Colors.green),
      nextStyle: TextButton.styleFrom(primary: Colors.blue),
    );
  }
}
