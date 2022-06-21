import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: const CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                      "https://yandex-images.clstorage.net/5HB6YR080/9afbd13E9X/slFNfbXsIJaKOzn768PlZPc_dmRX7bgVqEdFxB8k4-5Q7PG578NzOLRHHIqozpzMHCQXxV1MCOh55kKGBspQBv0FADGu8m-cizs69uLY7GP8N3lsU_m_F_AQXpVLZLy-Sq-u6YWkBk-UeWe50LDgsgEgS8JZAhWoO4x_i2uhIn6VdHFdhdVJn6oHUerw_fZs9nB9a3WwtVKPZDycd3vKsFmI2buwiAx2jFdgvv6e_roBMXThXhx4qAabRMFhpA1vtmF3danYQpK3PVvu58D2acpiTkZau55eu3AtvEly5qJFkdWeqIgRfLF2aaDKre-XLSpq6EggTYw0gUzMRLs0boFCU0q3xmy5uBt02tzv6FTlQXJgd4SSZJVIM7dFYuSKapjiu5G_AXy8TX6c3qbKqTM5bON_NHO5J6BQ3HuAIV2RdnZRk_F7io0Secfsz8t76mF9ZkSmmk6sehqCc07ov1650YiqrgB7r2hkidKy778eGU_VRDFejgabVNhatSdOimR-TZDeQ6yUG2_a-8fPQ_p_fXN7jp9omEsgo3By0592ufuWkIsoQqVKZ4bNuuumFg9m_m4xaq02lWHkSrUUfKpUdFK-7VyBryRizOfs80nodE1rUq-ZW6d2G4ZSYuWef7vnm5eMNXqQdmu46r3AuDQXRMt0KUuSF6VO0lCYE3ugdX92ks1Yq6Q-csPywMhVwFhQdk-Fv0G0RTKeRUT9smGn9ai1jBNopV59g8CW74QfE0npcj1jjSKmSP1FtS18sWFMeKvbS5GKI3z62-PGcehaXmJ1g55Hp20bp19l0IhAnOmWkbIzSYVHZKDguOe_Kzhg0koUX5UHmGrNdIcXZoJRaVap2GuZlzhv2-Lr4mTtcll4crKlTohaKJ5lVs-QUa3qip2wL12Qdl-66Zb-lhI2aO1pP3C8KpZ43UGbNVmXQXZSj893koIrcs3d-8lI515Kak2kkE6McDy8TEQ")),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 50, top: 10),
                  child: Text(
                    'USD Account',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15, top: 8),
                  child: ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        side: MaterialStateProperty.all(
                          const BorderSide(
                            color: Colors.white,
                            width: 1,
                          ),
                        ),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Hide',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      )),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 25, bottom: 120),
              child: Text(
                '\$  180,970.83',
                style: TextStyle(color: Colors.white, fontSize: 35),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
