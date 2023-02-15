import 'dart:ui';

import 'package:flutter/material.dart';

class BookPage extends StatelessWidget {
  const BookPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  "https://images.pexels.com/photos/2121121/pexels-photo-2121121.jpeg?auto=compress&cs=tinysrgb&w=600",
                ),
              ),
            ),
          ),
          Container(
            color: Colors.black12,
            child: SafeArea(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          margin: const EdgeInsets.only(top: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: const Color(0xffECECEC).withOpacity(0.3),
                          ),
                          child: const Icon(
                            Icons.arrow_back_ios_new,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Stack(
                            children: [
                              Positioned(
                                top: 16,
                                left: 12,
                                child: Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Colors.white,
                                      gradient: const LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Colors.white,
                                          Colors.grey,
                                        ],
                                      )),
                                ),
                              ),
                              const Icon(
                                Icons.catching_pokemon_rounded,
                                size: 85,
                                color: Color(0xff939393),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(5),
                                margin: const EdgeInsets.only(top: 5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color:
                                      const Color(0xffECECEC).withOpacity(0.3),
                                ),
                                child: const Icon(
                                  Icons.bathtub_rounded,
                                  size: 30,
                                  color: Colors.blue,
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(5),
                                margin: const EdgeInsets.only(top: 5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color:
                                      const Color(0xffECECEC).withOpacity(0.5),
                                ),
                                child: const Icon(
                                  Icons.bed,
                                  size: 30,
                                  color: Colors.blue,
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(5),
                                margin: const EdgeInsets.only(top: 5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color:
                                      const Color(0xffECECEC).withOpacity(0.9),
                                ),
                                child: const Icon(
                                  Icons.chair,
                                  size: 30,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
