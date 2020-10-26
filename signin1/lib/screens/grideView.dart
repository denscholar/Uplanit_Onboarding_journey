import 'package:flutter/material.dart';
import 'package:signin1/widget/SelectedDont.dart';

class ProductApp extends StatefulWidget {
  @override
  _ProductAppState createState() => _ProductAppState();
}

class _ProductAppState extends State<ProductApp> {
  List<Product> listItem = [
    Product(name: 'Hair & Beauty', image: 'assets/images/Rectangle15.png'),
    Product(name: 'Wedding planner', image: 'assets/images/Rectangle16.png'),
    Product(name: 'Bridal Attire', image: 'assets/images/Rectangle17.png'),
    Product(name: 'Catering', image: 'assets/images/Rectangle18.png'),
    Product(name: 'Dj', image: 'assets/images/Rectangle19.png'),
    Product(name: 'Florist', image: 'assets/images/Rectangle20.png'),
    Product(name: 'Jewelry', image: 'assets/images/Rectangle21.png'),
    Product(name: 'Props', image: 'assets/images/Rectangle22.png'),
    Product(name: 'Catering_2', image: 'assets/images/Rectangle22.png'),
    Product(name: 'Props2', image: 'assets/images/Rectangle22.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
          itemCount: listItem.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 7.0,
            crossAxisSpacing: 7.0,
          ),
          itemBuilder: (BuildContext context, int index) {
            return Container(
                padding: EdgeInsets.all(5.0),
                child: ProductView(
                  product: listItem[index],
                ));
          }),
    );
  }
}

class Product {
  String name;
  String image;
  bool isSelected = false;
  Color colors = Color(0XFF161F51); 

  Product({this.name, this.image});
}

class ProductView extends StatefulWidget {
  final Product product;

  ProductView({this.product});

  @override
  _ProductViewState createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  ColorFilter filterColor = ColorFilter.mode(Colors.grey, BlendMode.saturation);
  ColorFilter normalFilter;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: widget.product.name,
          child: Material(
            child: InkWell(
              onTap: () {
                setState(() {
                  
                    widget.product.isSelected =  !widget.product.isSelected;
                      
                });
              },
              child: GridTile(
                child: Container(
                    decoration: BoxDecoration(
                  image: DecorationImage(
                      image: ExactAssetImage(widget.product.image),
                      fit: BoxFit.fitWidth,
                      colorFilter: widget.product.isSelected
                          ? normalFilter
                          : filterColor),
                )),
                header: Container(
                  child: ListTile(
                    trailing: SelectedDot(
                        colors: widget.product.isSelected
                            ? Colors.pink
                            : Colors.black.withOpacity(0.0)),
                    title: Text(
                      widget.product.name,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 12.0),
                    ),
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
