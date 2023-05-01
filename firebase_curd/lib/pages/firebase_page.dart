import 'package:flutter/material.dart';

class FirebasePage extends StatelessWidget {
  String? studentName, studentId, stProId;
  double? stdGpa;

  getStudentName(String name) {
    this.studentName = name;
  }

  getStudentId(String id) {
    this.studentId = id;
  }

  getStudentProId(String proId) {
    this.stProId = proId;
  }

  getStdGpa(String gpa) {
    this.stdGpa = double.parse(gpa);
  }

  createData() {
    print('Created ');
  }

  readData() {
    print('Read');
  }

  updateData() {
    print('updated');
  }

  deleteData() {
    print('deleted');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Collage student '),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            TextFormField(
              onChanged: (String name) {
                getStudentName(name);
              },
              decoration: const InputDecoration(
                label: Text('Name'),
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 2.0,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextFormField(
              onChanged: (String id) {
                getStudentId(id);
              },
              decoration: const InputDecoration(
                label: Text('Student Id'),
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 2.0,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextFormField(
              onChanged: (String proId) {
                getStudentProId(proId);
              },
              decoration: const InputDecoration(
                label: Text('Study Program'),
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 2.0,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            TextFormField(
              onChanged: (String gpa) {
                getStdGpa(gpa);
              },
              decoration: const InputDecoration(
                label: Text('GPA'),
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 2.0,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    fixedSize: const Size(100, 40),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    createData();
                  },
                  child: const Text('Create'),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    fixedSize: const Size(100, 40),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    readData();
                  },
                  child: const Text('Read'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    fixedSize: const Size(100, 40),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    updateData();
                  },
                  child: const Text('Update'),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    fixedSize: const Size(100, 40),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    deleteData();
                  },
                  child: const Text('Delete'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
