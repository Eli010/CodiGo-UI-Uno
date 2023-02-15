import 'package:codigo6_ui/pages/book_page.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: Color(0xff616A76),
          ),
        ),
        title: const Text(
          "Details",
          style:
              TextStyle(color: Color(0xff616A76), fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(16),
                ),
                height: MediaQuery.of(context).size.height * 0.35,
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    "https://images.pexels.com/photos/1438832/pexels-photo-1438832.jpeg?auto=compress&cs=tinysrgb&w=600",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Minimal House",
                    style: TextStyle(
                      color: Color(0xff616A76),
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  RichText(
                    text: const TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: '\$734',
                          style: TextStyle(
                            color: Color(0xff616A76),
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text: '/Month',
                          style: TextStyle(
                            color: Color(0xff616A76),
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  _rate(Colors.yellow),
                  _rate(Colors.yellow),
                  _rate(Colors.yellow),
                  _rate(Colors.yellow),
                  _rate(const Color(0xffC7C7C7)),
                  const Text(
                    " 4.5",
                    style: TextStyle(
                      color: Color(0xffC7C7C7),
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  _bedRooms(context, "5 Rooms", "Bedroom", Icons.bed),
                  _bedRooms(context, "3 Rooms", "Bedroom", Icons.liquor),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 15, bottom: 5),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Description",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff616A76),
                      fontSize: 17),
                ),
              ),
              RichText(
                maxLines: 2,
                // overflow: TextOverflow.ellipsis,
                text: const TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text:
                          "Lorem ipsum dolor sit amet,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
                      style: TextStyle(
                        overflow: TextOverflow.ellipsis,

                        color: Color(0xff616A76),
                        // fontSize: 20,
                        // fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextSpan(
                      text: " See More..",
                      style: TextStyle(
                        color: Colors.blue,
                        // fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 15, bottom: 10),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Galery",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff616A76),
                      fontSize: 17),
                ),
              ),
              const CardGallery(),
              Container(
                margin: const EdgeInsets.only(top: 30, bottom: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                  // color: Colors.red,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 13),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BookPage(),
                      ),
                    );
                  },
                  child: const Text(
                    "Book Now",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 17),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox _bedRooms(
      BuildContext context, String title, String subtitle, IconData icon) {
    return SizedBox(
      height: 65,
      width: MediaQuery.of(context).size.width * 0.46,
      child: ListTile(
        leading: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  blurRadius: 2,
                )
              ]),
          padding: const EdgeInsets.all(5),
          margin: const EdgeInsets.only(top: 5),
          child: Icon(
            icon,
            size: 30,
            color: Colors.blue,
          ),
        ),
        title: Text(
          subtitle,
          style: const TextStyle(
            color: Color(0xffC7C7C7),
            fontWeight: FontWeight.w300,
            fontSize: 14,
          ),
        ),
        subtitle: Text(
          title,
          style: const TextStyle(
            color: Color(0xff616A76),
            fontWeight: FontWeight.w700,
            fontSize: 16,
          ),
        ),
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

class CardGallery extends StatelessWidget {
  const CardGallery({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(left: 10),
            // color: Colors.red,
            width: 80,
            height: 80,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                "https://images.pexels.com/photos/2635038/pexels-photo-2635038.jpeg?auto=compress&cs=tinysrgb&w=600",
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
