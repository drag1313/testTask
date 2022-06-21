import 'package:flutter/material.dart';
import 'package:testtask/historyOrders.dart';
import 'package:testtask/menuWidget.dart';
import 'package:testtask/userInfo.dart';

void main() {
  runApp(const MyApp());
}

List<HistoryData> historyInfo = [
  HistoryData(
      'https://www.cityharvest.org/wp-content/uploads/2019/05/PRET-logo-810.jpg',
      'Pret A Manger',
      '12:23',
      55.31),
  HistoryData(
      'https://flyclipart.com/thumb2/arrow-direction-to-the-left-inside-a-circle-outline-png-icon-633995.png',
      'Darren Hodgkin',
      '11:49',
      130.31),
  HistoryData(
      'https://yandex-images.clstorage.net/5HB6YR080/9afbd13E9X/slFNfbXsIJaKOzn768PlZPc_dmRX7bgVqEdFlREk4boG6Kbs6cl2a-UfHt77xMyZTSJEkVgfAuN9txCGB8FSDvEIADGu8m-cizs69uLY7GP8N3lsU_m_F_AQXpVLZLy-Sq-u6YWkBk-UeWe50LDgsgEgS8JZAhWoO4x_i2uhIn6VdHFdhdVJn6oHUerw_fZs9nB9a3WwtVKPZDycd3vKsFmI2buwiAx2jFdgvv6e_roBMXThXhx4qAabRMFhpA1vtmF3danYQpK3PVvu58D2acpiTkZau55eu3AtvEly5qJFkdWeqIgRfLF2aaDKre-XLSpq6EggTYw0gUzMRLs0boFCU0q3xmy5uBt02tzv6FTlQXJgd4SSZJVIM7dFYuSKapjiu5G_AXy8TX6c3qbKqTM5bON_NHO5J6BQ3HuAIV2RdnZRk_F7io0Secfsz8t76mF9ZkSmmk6sehqCc07ov1650YiqrgB7r2hkidKy778eGU_VRDFejgabVNhatSdOimR-TZDeQ6yUG2_a-8fPQ_p_fXN7jp9omEsgo3By0592ufuWkIsoQqVKZ4bNuuumFg9m_m4xaq02lWHkSrUUfKpUdFK-7VyBryRizOfs80nodE1rUq-ZW6d2G4ZSYuWef7vnm5eMNXqQdmu46r3AuDQXRMt0KUuSF6VO0lCYE3ugdX92ks1Yq6Q-csPywMhVwFhQdk-Fv0G0RTKeRUT9smGn9ai1jBNopV59g8CW74QfE0npcj1jjSKmSP1FtS18sWFMeKvbS5GKI3z62-PGcehaXmJ1g55Hp20bp19l0IhAnOmWkbIzSYVHZKDguOe_Kzhg0koUX5UHmGrNdIcXZoJRaVap2GuZlzhv2-Lr4mTtcll4crKlTohaKJ5lVs-QUa3qip2wL12Qdl-66Zb-lhI2aO1pP3C8KpZ43UGbNVmXQXZSj893koIrcs3d-8lI515Kak2kkE6McDy8TEQ',
      'McDonalds',
      '11:49',
      55.31),
  HistoryData(
      'https://avatars.mds.yandex.net/i?id=fce8027de5ac8ed0cf6cd7db8cbf73d1-4284974-images-thumbs&n=13&exp=1',
      'Starbucks',
      '11:49',
      55.31),
  HistoryData(
      'https://avatars.mds.yandex.net/i?id=9f3da1303158946b8fb592064829810f-6516498-images-thumbs&n=13&exp=1',
      'Dave Winklevoss',
      '11:49',
      300.31),
];

List<HistoryData> historyInfo_1 = [
  HistoryData(
      'https://3rysvi26wra334baxg4a3nv4-wpengine.netdna-ssl.com/wp-content/uploads/2021/07/virgin-logo.jpg',
      'Virgin Megastore',
      '12:23',
      500.31),
  HistoryData(
      'https://mir-s3-cdn-cf.behance.net/projects/max_808/2503c052819999.Y3JvcCwxMDgyLDg0NywwLDUzNw.jpg',
      'Nike',
      '11:49',
      500.31),
];

List<HistoryData> historyInfo_2 = [
  HistoryData(
      'https://avatars.mds.yandex.net/i?id=631bac23c80ce9725214727e27d015f1-5288127-images-thumbs&ref=rim&n=33&w=150&h=150',
      'Louis Vuitton',
      '12:23',
      500.31),
  HistoryData('https://www.stampaprint.net/es/img/cms/carrefour_stam.jpg',
      'Carrefour', '11:49', 500.31),
];

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
            icon: const Icon(Icons.keyboard_backspace), onPressed: () {}),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.open_in_new),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: ListView(children: [
          const UserInfo(),
          MenuWidget(),
          dataContainer('Yesterday'),
          HistoryWidget(historyRow: historyInfo),
          dataContainer('Sat,Dec 11'),
          HistoryWidget(historyRow: historyInfo_1),
          dataContainer('Thurs,Dec 9'),
          HistoryWidget(historyRow: historyInfo_2)
        ]),
      ),
    );
  }
}

class dataContainer extends StatelessWidget {
  late String dataText;
  dataContainer(this.dataText, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Colors.grey[350],
      child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 10),
          child: Text(
            dataText,
            style: const TextStyle(fontSize: 20),
          )),
    );
  }
}
