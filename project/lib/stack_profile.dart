import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 160, 206, 244),
        title: Row(
          children: [Image.asset('../assets/Vector.png'), Text('INNY')],
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios), // เลือก Icon ตามที่ต้องการ
          onPressed: () {
            // เพิ่มโค้ดที่ต้องการให้ทำงานเมื่อกด leading action นี้
          },
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings_outlined),
          )
        ],
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          // background image and bottom contents
          Column(
            children: [
              Container(
                height: 100.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.orange,
                child: Image.asset(
                  '../assets/profile.png',
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                height: 50,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.edit,
                      size: 15,
                      color: Color((0xFF02C275)),
                    ),
                    Text(
                      'แก้ไขโปรไฟล์        ',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF02C275),
                      ),
                    ),
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
                        Text(
                          'Binny Bun',
                          style: TextStyle(
                            fontSize: 32,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('@binny.bin '),
                            Icon(
                              Icons.copy_sharp,
                              size: 15,
                            )
                          ],
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color:
                                      Colors.black, // เปลี่ยนสีตามที่คุณต้องการ
                                  width: 1.0, // กำหนดความหนาของเส้น Border
                                ),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Text(
                                          '15',
                                          style: TextStyle(
                                            fontSize: 24,
                                          ),
                                        ),
                                        Text(
                                          'กำลังติดตาม',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Color(0xFF02C275)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Text(
                                          '4',
                                          style: TextStyle(
                                            fontSize: 24,
                                          ),
                                        ),
                                        Text(
                                          'ผู้ติดตาม',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Color(0xFF02C275)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black, // เปลี่ยนสีตามที่คุณต้องการ
                        width: 1.0, // กำหนดความหนาของเส้น Border
                      ),
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'สถิติการแยกขยะของฉัน',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  'เดือนมีนาคม',
                                  style: TextStyle(
                                    fontSize: 13,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                              flex: 3,
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Text(
                                          '365',
                                          style: TextStyle(
                                            fontSize: 48,
                                          ),
                                        ),
                                        Text(
                                          '+2.4%',
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                      flex: 1,
                                      child: Image.asset(
                                        '../assets/Stats.png',
                                        fit: BoxFit.fill,
                                      ))
                                ],
                              )),
                        ],
                      ),
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
                          flex: 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.circle,
                                          size: 12,
                                        ),
                                        Text('พลาสติกใส PET'),
                                      ],
                                    ),
                                    Text('68 kg'),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.circle,
                                          size: 12,
                                        ),
                                        Text('กระป๋องอะลูมิเนียม'),
                                      ],
                                    ),
                                    Text('120 kg'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.circle,
                                              size: 12,
                                            ),
                                            Text('กล่องเครื่องดื่ม UHT'),
                                          ],
                                        ),
                                        Text('48'),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: [
                                                                                Row(
                                          children: [
                                            Icon(
                                              Icons.circle,
                                              size: 12,
                                            ),
                                            Text('น้ำมันพืชใช้แล้ว'),
                                          ],
                                        ),
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
            top: -15,
            child: Container(
              height: 200.0,
              width: 200.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.transparent,
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
