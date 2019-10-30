import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "UTS APP Flutter",
    debugShowCheckedModeBanner: false,
    home: _HomePage(),
  ));
}

class _HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<_HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UTS APP Flutter'),
      ),
      body: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.message)),
                Tab(icon: Icon(Icons.pages)),
                Tab(icon: Icon(Icons.account_circle)),
              ],
            ),
            title: Text('Tabs Menu'),
          ),
          body: TabBarView(
            children: [
              //Body Tabs Pertama
              SnackBarPage(),

              //Body Tabs kedua
              Center(
                child: RaisedButton(
                  child: Text('Buka Halaman Film One Piece'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondRoute()),
                    );
                  },
                ),
              ),

              //Body Tabs Ketiga
              Scaffold(
                body: ListView(
                  children: <Widget>[
                    Text(
                      'BIODATA SAYA',

                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontWeight: FontWeight.bold, height: 2, fontSize: 25),
                    ),
                    Divider(
                      height: 2.0,
                    ),
                    ListTile(
                      leading: Icon(Icons.account_box),
                      title: Text('Afendi Nahak'),
                    ),
                    ListTile(
                      leading: Icon(Icons.account_box),
                      title: Text('Programmer'),
                    ),
                    ListTile(
                      leading: Icon(Icons.email),
                      title: Text('afendin490@gmail.com'),
                    ),
                    ListTile(
                      leading: Icon(Icons.phone),
                      title: Text('082333999888'),
                    ),
                    ListTile(
                      leading: Icon(Icons.confirmation_number),
                      title: Text('21 Years Old'),
                    ),
                    ListTile(
                      leading: Icon(Icons.location_on),
                      title: Text('Bantul, Yogyakarta'),
                    ),
                    ListTile(
                      leading: Icon(Icons.photo_library),
                      title: Text('Photos'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: _buildDrawer(),
    );
  }

  Widget _buildDrawer() {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 1.2,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("AfendiN"),
              accountEmail: Text("afendin490@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://cdn.idntimes.com/content-images/avatar/afendi-nahak_200x200.JPG"
                        "?v=1507815e6e7f76bfd87c09a7c4b5faee"),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://i.imgur.com/9dW8Rmp.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            _buildListTile(Icons.apps, "Aplikasi", null),
            _buildListTile(Icons.notifications, "Notifikasi", null),
            _buildListTile(Icons.subscriptions, "Subscribe", null),
            _buildListTile(Icons.bookmark_border, "Wishlist", null),
            Divider(
              height: 2.0,
            ),
            _buildListTile(Icons.person, "Akun", null),
            _buildListTile(Icons.settings, "Pengaturan", null),
            Divider(
              height: 2.0,
            ),
            _buildListTile(null, "Keluar", Icons.input),
          ],
        ),
      ),
    );
  }

  Widget _buildListTile(IconData iconLeading, String title, IconData iconTrailing,) {
    return ListTile(
      leading: Icon(iconLeading),
      title: Text(title),
      trailing: Icon(iconTrailing),
      onTap: () {},
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    List<Choice> choices = const <Choice>[
      const Choice( title: 'One Piece: Stampede', date : '9 Agustus 2019',
          description: 'Stampede berlangsung selama Festival Bajak Laut, "dibuat oleh bajak laut, untuk bajak laut", '
              'di mana bajak laut di seluruh dunia, termasuk beberapa yang paling terkenal, '
              'bergabung dalam perburuan harta karun besar untuk menemukan harta yang hilang, '
              'kali ini harta itu tidak lain adalah milik Gold Roger!',
          imglink:'https://media.skyegrid.id/wp-content/uploads/2019/04/Stamped-1-1600x800.jpg'),
      const Choice(title: 'One Piece Film: Gold', date : '23 Juli 2016',
          description: 'Gold berlatar di Gran Tesoro, sebuah negeri mandiri yang diberi hak oleh Pemerintah Dunia, '
              'rumah bagi kota hiburan terbaik di dunia dimana bajak laut terkenal, Marinir, dan '
              'miliuner dari seluruh dunia berkumpul di "tempat perlindungan absolut" yang bahkan tidak bisa disentuh Pemerintah Dunia.',
          imglink:'https://vignette.wikia.nocookie.net/544327cc-8271-4beb-9bfd-930d5637ebba/scale-to-width-down/800'),
      const Choice(title: 'One Piece Film: Z', date : '15 Desember 2012',
          description: 'Dikatakan dapat dibandingkan dengan Senjata Kuno, kartu andalan Angkatan Laut yaitu "Batu Dyna" '
              'tiba-tiba dicuri dan pria dengan kekuatan menakutkan bertanggung jawab atas kejadian itu, '
              'mantan Laksamana Angkatan Laut "Z", berdiri di hadapan Bajak Laut Topi Jerami.',
          imglink:'https://i.ytimg.com/vi/S8SbCvYUYVs/maxresdefault.jpg'),
      const Choice(title: 'One Piece Film: Strong World', date : '12 Desember 2009',
          description: 'East Blue dalam krisis? Berita itu mengejutkan Bajak Laut Topi Jerami sepanjang perjalanan mereka. '
              'Dengan kampung halaman mereka menghadapi keadaan darurat, Luffy dan teman-temannya menempatkan petualangan mereka ditahan dan '
              'memutuskan untuk kembali ke East Blue, ketika tiba-tiba sebuah kapal bajak laut terbang misterius muncul dari langit.',
          imglink:'https://cdn.shopify.com/s/files/1/0747/3829/products/mL0659_1024x1024.jpg?v=1515076624'),
      const Choice(title: 'One Piece 3D: Straw Hat Chase', date : '19 Maret 2011',
          description: 'Seluruh kru Topi Jerami mulai mencari topi jerami Luffy yang penting setelah ia bangun dan menemukannya hilang. '
              'Sementara itu, Usopp dan Chopper, ketika menjelajahi sebuah kapal yang tampaknya kosong, '
              'kebetulan menemukan bajak laut yang sakit dan memutuskan untuk merawatnya kembali dengan Thousand Sunny.',
          imglink:'https://upload.wikimedia.org/wikipedia/it/7/77/One_Piece_3D_Mugiwara_Chase.png'),
    ];

    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Daftar Film One Piece"),
          ),
          body: new ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.all(20.0),
              children: List.generate(choices.length, (index) {
                return Center(
                  child: ChoiceCard(choice: choices[index], item: choices[index]),
                );
              }
              )
          ),
        )
    );
  }
}

class SnackBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () {
          final snackBar = SnackBar(
            content: Text('Afendi Nahak'),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
              },
            ),
          );
          Scaffold.of(context).showSnackBar(snackBar);
        },
        child: Text('Klik Untuk Lihat Nama'),
      ),
    );
  }
}

//Kumpulan Class untuk List Image
class Choice {
  final String title;
  final String date;
  final String description;
  final String imglink;

  const Choice({this.title, this.date, this.description, this.imglink});
}

class ChoiceCard extends StatelessWidget {
  const ChoiceCard(
      {Key key, this.choice, this.onTap, @required this.item, this.selected: false}
      ) : super(key: key);

  final Choice choice;
  final VoidCallback onTap;
  final Choice item;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.display1;
    if (selected)
      textStyle = textStyle.copyWith(color: Colors.lightGreenAccent[400]);
    return Card(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            new Container(
                padding: const EdgeInsets.all(8.0),
                child:
                Image.network(
                    choice.imglink
                )),
            new Container(
              padding: const EdgeInsets.all(10.0),
              child:
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(choice.title, style: Theme.of(context).textTheme.title),
                  Text(choice.date, style: TextStyle(color: Colors.black.withOpacity(0.5))),
                  Text(choice.description),
                ],
              ),

            )
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        )
    );
  }
}