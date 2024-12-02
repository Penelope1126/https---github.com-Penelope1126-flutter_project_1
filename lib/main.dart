import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Custom App',  // ชื่อของแอป
      theme: ThemeData(
        primarySwatch: Colors.blue,  // กำหนดธีมหลักของแอป
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,  // กำหนดสีพื้นหลังของหน้าจอ
      appBar: AppBar(
        title: const Text('My AppBar Title'),  // ข้อความใน AppBar
        backgroundColor: Colors.deepPurple,  // สีพื้นหลังของ AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),  // กำหนดช่องว่างรอบๆ
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,  // จัดตำแหน่งข้อความให้เริ่มต้นจากซ้าย
          children: <Widget>[
            // Container ที่มีภาพและคำอธิบาย
            Container(
              width: double.infinity,  // ให้กว้างเต็มหน้าจอ
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),  // กำหนดมุมโค้งให้กับ Container
                color: Colors.white,  // สีพื้นหลังของ Container
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),  // เงาของ Container
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),  // เงาจะไปในทิศทางไหน
                  ),
                ],
              ),
              child: Column(
                children: <Widget>[
                  // การแสดงภาพจาก URL
                  Image.network(
                    'https://www.google.com/url?sa=i&url=https%3A%2F%2Fgundam.fandom.com%2Fwiki%2FRX-104FF_Penelope&psig=AOvVaw0BpP1BuujPx9gu_MUyk45l&ust=1732587721202000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCNDk7MC29okDFQAAAAAdAAAAABAE',  // ลิงค์ของภาพแมว
                    width: 200,  // กำหนดความกว้างของภาพ
                    height: 200,  // กำหนดความสูงของภาพ
                    fit: BoxFit.cover,  // ให้ภาพพอดีกับพื้นที่
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'นี่คือภาพของแมวที่น่ารัก! ภาพนี้ดึงมาจากอินเทอร์เน็ต',
                      style: TextStyle(fontSize: 16),  // กำหนดขนาดของตัวอักษร
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),  // เพิ่มช่องว่างระหว่าง Container
            // ข้อความเพิ่มเติม
            const Text(
              'ข้อความนี้จะปรากฏใต้ Container',
              style: TextStyle(
                fontSize: 18,  // ขนาดของข้อความ
                fontWeight: FontWeight.bold,  // กำหนดให้ข้อความเป็นตัวหนา
              ),
            ),
          ],
        ),
      ),
    );
  }
}