import 'package:flutter/material.dart';

class HistoryData {
  String icon;
  String nameOrg;
  String time;
  double money;
  HistoryData(this.icon, this.nameOrg, this.time, this.money);
}

class HistoryWidget extends StatefulWidget {
  final List<HistoryData> historyRow;

  const HistoryWidget({
    Key? key,
    required this.historyRow,
  }) : super(key: key);

  @override
  State<HistoryWidget> createState() => _HistoryWidgetState();
}

class _HistoryWidgetState extends State<HistoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children:
          widget.historyRow.map((data) => _HistoryRow(data: data)).toList(),
    );
  }
}

class _HistoryRow extends StatefulWidget {
  final HistoryData data;

  const _HistoryRow({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  State<_HistoryRow> createState() => _HistoryRowState();
}

class _HistoryRowState extends State<_HistoryRow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Padding(
        padding:
            const EdgeInsets.only(right: 20, left: 20, bottom: 25, top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(widget.data.icon),
                  //child: Image.network(widget.data.icon),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.data.nameOrg,
                        style: const TextStyle(fontSize: 20),
                      ),
                      Text(widget.data.time,
                          style: const TextStyle(fontSize: 15)),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Text(
                  '- ' + '\$ ' + widget.data.money.toString() + ' USD',
                  style: const TextStyle(fontSize: 20),
                )),
          ],
        ),
      ),
    );
    //  ]),
  }
}
