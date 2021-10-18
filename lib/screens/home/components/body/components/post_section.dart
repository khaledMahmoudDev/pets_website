
import 'package:flutter/material.dart';
import 'package:pets_website/constants/constants.dart';
import 'package:pets_website/model/model.dart';

class PostSection extends StatelessWidget {
  const PostSection({
    Key key,
    this.product,
  }) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                product.image,
                height: 270,
                width: 270,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: kDefaultPadding / 2,
            ),
            Wrap(
              children: [
                Icon(
                  Icons.star,
                  color: kButtonColor,
                ),
                Icon(
                  Icons.star,
                  color: kButtonColor,
                ),
                Icon(
                  Icons.star,
                  color: kButtonColor,
                ),
                Icon(
                  Icons.star,
                  color: kButtonColor,
                ),
                Icon(
                  Icons.star,
                  color: kButtonColor,
                ),
              ],
            ),
            SizedBox(
              height: kDefaultPadding / 2,
            ),
            Text(
              product.title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: kDefaultPadding / 2,
            ),
            Text(
              product.description,
              style: TextStyle(color: Colors.black54),
            )
          ],
        ),
      ),
    );
  }
}
