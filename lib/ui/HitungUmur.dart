import 'package:flutter/material.dart';

class HitungUmur extends StatefulWidget {
  @override
  _HitungUmurState createState() => _HitungUmurState();
}

class _HitungUmurState extends State<HitungUmur> {
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  TextEditingController tahunController = TextEditingController();
  TextEditingController bulanController = TextEditingController();
  TextEditingController tanggalController = TextEditingController();

  TextEditingController tahunsekarangController = TextEditingController();
  TextEditingController bulansekarangController = TextEditingController();
  TextEditingController tanggalsekarangController = TextEditingController();
  String umur = " ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        title: Text('Hitung Umur'),
      ),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:<Widget> [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Column(
                  children: [
                   Container(
                     padding: EdgeInsets.only(right: 5,top: 10),
                     child: Text('Tahun lahir'),
                   ),
                    Container(
                      padding: EdgeInsets.only(right: 5),
                      height: 50,
                      width: 100,
                      child: TextField(
                        controller: tahunController,
                        decoration: InputDecoration(
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 5,top: 10),
                      child: Text('Bulan lahir'),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 5),
                      height: 50,
                      width: 100,
                      child: TextField(
                        controller: bulanController,
                        decoration: InputDecoration(
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 5,top: 10),
                      child: Text('Tanggal lahir'),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 5),
                      height: 50,
                      width: 100,
                      child: TextField(
                        controller: tanggalController,
                        decoration: InputDecoration(
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),

        Container(
          padding: EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 5,top: 10),
                      child: Text('Tahun sekarang'),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 5),
                      height: 50,
                      width: 100,
                      child: TextField(
                        controller: tahunsekarangController,
                        decoration: InputDecoration(
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 5,top: 10),
                      child: Text('Bulan sekarang'),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 5),
                      height: 50,
                      width: 100,
                      child: TextField(
                        controller: bulansekarangController,
                        decoration: InputDecoration(
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 5,top: 10),
                      child: Text('Tanggal sekarang'),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 5),
                      height: 50,
                      width: 100,
                      child: TextField(
                        controller: tanggalsekarangController,
                        decoration: InputDecoration(
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),


        Container(
          padding: EdgeInsets.all(10),

          child: RaisedButton(
            child: SizedBox(width: 130,
              child: Center(
                child: Text('Hitung Umur',style: TextStyle(color: Colors.white),),
              ),
            ),
            color: Colors.lightBlue,
            onPressed: () {
              setState(() {
                int tahun = int.parse(tahunController.text);
                int bulan = int.parse(bulanController.text);
                int tanggal = int.parse(tanggalController.text);

                int tahunsekarang = int.parse(tahunsekarangController.text);
                int bulansekarang = int.parse(bulansekarangController.text);
                int tanggalsekarang = int.parse(tanggalsekarangController.text);

                var hasiltahun = tahunsekarang - tahun;
                var hasilbulan = bulansekarang - bulan;
                var hasiltanggal = tanggalsekarang - tanggal;
                 umur = hasiltahun.toString() +" "+"Tahun" +" "+hasilbulan.toString()+" "+"bulan" +" "+hasiltanggal.toString()+" "+ "hari";
              });
            },

          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(umur,style: TextStyle(fontSize: 30),),
        )
      ],

    )

);
  }
}
