import 'package:codigo6_ui/pages/detail_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const HeaderDesign(),
              const SearchCustom(),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Category",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff616A76),
                      fontSize: 18),
                ),
              ),
              const CategoryCustom(),
              _title(),
              SizedBox(
                height: 257,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      width: 270,
                      child: const CardCustom(),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              _title(),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: ListView.builder(
                  physics: const ScrollPhysics(),
                  itemCount: 5,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                        margin: const EdgeInsets.only(top: 15),
                        // flex: 1,
                        height: 82,
                        width: double.infinity,
                        child: const CardVert());
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container _title() {
    return Container(
      margin: const EdgeInsets.only(left: 15),
      alignment: Alignment.centerLeft,
      child: const Text(
        "Recomendation",
        style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xff616A76),
            fontSize: 17),
      ),
    );
  }
}

class CardVert extends StatelessWidget {
  const CardVert({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade100,
              blurRadius: 0.2,
              offset: const Offset(1, 2))
        ],
        color: Colors.white,
      ),
      child: Row(
        children: [
          SizedBox(
            width: 70,
            height: 80,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                "https://images.pexels.com/photos/210617/pexels-photo-210617.jpeg?auto=compress&cs=tinysrgb&w=600",
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Panodaran House",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: Color(
                    0xff616A76,
                  ),
                ),
              ),
              Row(
                children: [
                  _rate(Colors.yellow),
                  _rate(Colors.yellow),
                  _rate(Colors.yellow),
                  _rate(Colors.yellow),
                  _rate(Colors.grey),
                  const Text(
                    " 4.5",
                    style: TextStyle(
                      color: Color(0xffC7C7C7),
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
              Row(
                children: const [
                  Icon(
                    Icons.location_on,
                    size: 15,
                    color: Color(0xffC7C7C7),
                  ),
                  Text(
                    " Jl. Kapten Purbalingga",
                    style: TextStyle(
                      color: Color(0xffC7C7C7),
                      // fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Icon _rate(Color color) {
    return Icon(
      Icons.star,
      size: 15,
      color: color,
    );
  }
}

class CardCustom extends StatelessWidget {
  const CardCustom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const DetailPage()),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        padding: const EdgeInsets.only(right: 7, left: 7, top: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
                color: Colors.black12, blurRadius: 5, offset: Offset(2, 5))
          ],
          color: Colors.white,
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                "https://images.pexels.com/photos/1438832/pexels-photo-1438832.jpeg?auto=compress&cs=tinysrgb&w=600",
                fit: BoxFit.contain,
                // height: 130,
              ),
            ),
            Stack(
              children: [
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                  title: const Text(
                    "MinimaList House",
                    style: TextStyle(
                        fontWeight: FontWeight.w800, color: Color(0xff616A76)),
                  ),
                  trailing: SizedBox(
                    // color: Colors.red,
                    width: 50,
                    child: Row(
                      children: const [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 20,
                        ),
                        Text(
                          " 4.5",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Color(0xff616A76)),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 25),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                    title: RichText(
                      text: const TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: '\$734',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff349DFD),
                            ),
                          ),
                          TextSpan(
                            text: '/Month',
                            style: TextStyle(
                              color: Color(0xffC7C7C7),
                            ),
                          ),
                        ],
                      ),
                    ),
                    subtitle: Container(
                      padding: const EdgeInsets.only(top: 5),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.location_on,
                            size: 15,
                            color: Color(0xffC7C7C7),
                          ),
                          Text(
                            // overflow: TextOverflow.clip,
                            "Purbolingga, Jawa Tengah",
                            style: TextStyle(
                                fontSize: 11, color: Color(0xffC7C7C7)),
                          ),
                        ],
                      ),
                    ),
                    trailing: const Icon(
                      Icons.bookmark,
                      color: Color(0xff616A76),
                    ),
                  ),
                ),
              ],
            ),
            // Row(
            //   children: [
            //     Text(
            //       "MinimaList House",
            //       style: TextStyle(fontWeight: FontWeight.w800),
            //     )
            //   ],
            // ),

            // const Text(
            //   "Minimalist House",
            //   style: TextStyle(
            //     fontSize: 17,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
            // RichText(
            //   text: const TextSpan(
            //     children: <TextSpan>[
            //       TextSpan(
            //         text: '\$734',
            //         style: TextStyle(
            //           fontWeight: FontWeight.bold,
            //           color: Color(0xff349DFD),
            //         ),
            //       ),
            //       TextSpan(
            //         text: ' world!',
            //         style: TextStyle(
            //           color: Colors.black,
            //         ),
            //       ),
            //     ],
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}

class CategoryCustom extends StatelessWidget {
  const CategoryCustom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      padding: const EdgeInsets.symmetric(vertical: 2),
      width: double.infinity,
      height: 58,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            // height: 20,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 5,
                    offset: Offset(2, 3),
                  )
                ]),
            margin: const EdgeInsets.only(left: 15, bottom: 5),
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
            // width: 200,
            // height: 50,
            child: Wrap(
              alignment: WrapAlignment.center,
              children: const [
                Icon(
                  Icons.house,
                  color: Colors.blue,
                ),
                Text(
                  " House",
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class HeaderDesign extends StatelessWidget {
  const HeaderDesign({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: const [
          Icon(
            Icons.location_on_outlined,
            size: 15,
            color: Color(0xff349DFD),
          ),
          Text(
            "Location",
            style: TextStyle(
              fontWeight: FontWeight.w100,
              fontSize: 15,
              color: Color(0xffC7C7C7),
            ),
          ),
        ],
      ),
      subtitle: const Text(
        "Purbolinggs, Jawa Tengah",
        style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xff616A76),
            fontSize: 16),
      ),
      trailing: Container(
        padding: const EdgeInsets.all(6),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(7)),
        ),
        child: Stack(
          alignment: Alignment.topRight,
          children: const [
            Icon(
              Icons.notifications,
              color: Color(0xffC7C7C7),
            ),
            CircleAvatar(
              radius: 5,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 4,
                backgroundColor: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchCustom extends StatelessWidget {
  const SearchCustom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black12.withOpacity(0.1),
            blurRadius: 2,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: TextField(
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14.0),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14.0),
            borderSide: BorderSide.none,
          ),
          fillColor: const Color(0xffFEFEFE),
          filled: true,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 14, horizontal: 10),
          hintText: " Search",
          hintStyle: const TextStyle(
            color: Color(0xffC7C7C7),
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),
          suffixIcon: const Icon(
            Icons.search,
            size: 30,
            color: Color(0xffC7C7C7),
          ),
        ),
      ),
    );
  }
}
