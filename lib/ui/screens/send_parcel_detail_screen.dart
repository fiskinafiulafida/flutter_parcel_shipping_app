import 'package:flutter/material.dart';
import '../widgets/my_parcel_delivery_method.dart';
import '../widgets/my_parcel_size.dart';

class SendParcelDetailScreen extends StatefulWidget {
  const SendParcelDetailScreen({Key? key}) : super(key: key);

  @override
  State<SendParcelDetailScreen> createState() => _SendParcelDetailScreenState();
}

class _SendParcelDetailScreenState extends State<SendParcelDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: ListView(
          children: [
            Text(
              'Send Parcel',
              style: Theme.of(context).textTheme.headline1,
            ),
            SizedBox(
              height: 17,
            ),
            Text(
              'Send Size',
              style: Theme.of(context).textTheme.headline3,
            ),
            const SizedBox(
              height: 11,
            ),
            const MyParcelDeliveryMethod(
              parcelDeliveryMethod: 'From door to parcel center',
              parcelDeliveryDuration: '1 - 2 days',
              parcelDeliveryImage: 'assets/images/img_door_to_parcel.png',
            ),
            const MyParcelDeliveryMethod(
              parcelDeliveryMethod: 'From door to door',
              parcelDeliveryDuration: '2 - 3 days',
              parcelDeliveryImage: 'assets/images/img_door_to_door.png',
            ),
          ],
        ),
      ),
    );
  }
}
