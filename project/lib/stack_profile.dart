import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [Image.asset('../assets/Vector.png'), Text('INNY')],
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back), // เลือก Icon ตามที่ต้องการ
          onPressed: () {
            // เพิ่มโค้ดที่ต้องการให้ทำงานเมื่อกด leading action นี้
          },
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
          )
        ],
      ),
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          // background image and bottom contents
          Column(
            children: <Widget>[
              Container(
                height: 150.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.orange,
                child: Image.asset(
                  '../assets/profile.png',
                  fit: BoxFit
                      .fill, // ใช้ BoxFit.cover เพื่อให้รูปภาพเต็มพื้นที่และไม่มีการตัดข้อมูล
                ),
              ),
              Container(
                height: 50,
                color: Color.fromARGB(255, 213, 225, 214),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.copy_sharp),
                    Text('แก้ไขโปรไฟล์'),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Binny Bun'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('@binny.bin'),
                            Icon(Icons.copy_sharp)
                          ],
                        ),
                        Container(
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Text('15'),
                                    Text('กำลังติดตาม'),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Text('4'),
                                    Text('ผู้ติดตาม'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: const Color.fromARGB(255, 217, 24, 24),
                  child: Center(
                    child: Column(
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('สถิติการแยกขยะของฉัน'),
                              Text('เดือนมีนาคม')
                            ],
                          ),
                        ),
                        Expanded(
                            child: Column(
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Text('365'),
                                  Text('+2.4%'),
                                ],
                              ),
                            ),
                            Expanded(child: Image.asset('../assets/Stats.png'))
                          ],
                        )),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Text('พลาสติกใส PET'),
                                    Text('68 kg'),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Text('กระป๋องอะลูมิเนียม'),
                                    Text('120 kg'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Text('กล่องเครื่องดื่ม UHT'),
                                        Text('48'),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Text('น้ำมันพืชใช้แล้ว'),
                                        Text('150 kg'),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    )),
              )
            ],
          ),
          // Profile image
          Positioned(
            top: 100.0,
            child: Container(
              height: 100.0,
              width: 100.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green,
              ),
              child: Center(
                child: Image.asset(
                  '../assets/Group.png', // เปลี่ยนเป็นตำแหน่งที่อยู่ของรูปภาพของคุณ
                  fit: BoxFit.cover, // หรือ fit ตามที่ต้องการ
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(40),
            topLeft: Radius.circular(40),
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40),
          ),
          child: BottomNavigationBar(
            currentIndex: 3,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.grey[200],
            selectedItemColor: Color.fromARGB(255, 26, 174, 105),
            unselectedItemColor: Colors.grey,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'หน้าแรก',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.qr_code),
                label: 'สแกนแยกขยะ',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.message),
                label: 'แต้มสะสม',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'โปรไฟล์',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
