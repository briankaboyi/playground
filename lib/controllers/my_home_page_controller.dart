import 'package:localstorage/localstorage.dart';

class MyHomePageController{
  final LocalStorage storage = new LocalStorage('my_app');
    List<Map<String,dynamic>> items=[
      {
        'name': 'Smartphone',
        'brand': 'Samsung',
        'price': 799.99,
        'color': 'Black'
      },
      {
        'name': 'Laptop',
        'brand': 'Dell',
        'price': 1299.99,
        'color': 'Silver'
      },
      {
        'name': 'Headphones',
        'brand': 'Sony',
        'price': 149.99,
        'color': 'Black'
      },
      {
        'name': 'Tablet',
        'brand': 'Apple',
        'price': 599.99,
        'color': 'Space Gray'
      },
      {
        'name': 'Smartwatch',
        'brand': 'Fitbit',
        'price': 199.99,
        'color': 'Blue'
      },
      {
        'name': 'Camera',
        'brand': 'Canon',
        'price': 499.99,
        'color': 'Black'
      },
      {
        'name': 'Gaming Console',
        'brand': 'Microsoft',
        'price': 399.99,
        'color': 'White'
      },
      {
        'name': 'Wireless Speaker',
        'brand': 'Bose',
        'price': 299.99,
        'color': 'Silver'
      },
      {
        'name': 'Fitness Tracker',
        'brand': 'Garmin',
        'price': 149.99,
        'color': 'Black'
      },
      {
        'name': 'E-book Reader',
        'brand': 'Amazon',
        'price': 119.99,
        'color': 'White'
      },
      {
        'name': 'Drone',
        'brand': 'DJI',
        'price': 999.99,
        'color': 'Gray'
      },
      {
        'name': 'Smart Speaker',
        'brand': 'Google',
        'price': 149.99,
        'color': 'Charcoal'
      }
    ];

}