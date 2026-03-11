import '../models/restaurant.dart';
import '../models/food_item.dart';

List<Restaurant> restaurants = [
  Restaurant(
    name: 'McDonalds',
    image: 'assets/images/mcdonalds.jpg',
    address: 'BIG fashion centar, Kragujevac',
    rating: 4.5,
    foods: [
      FoodItem(name: 'Big Mek',     price: 650,  isDrink: false, emoji: '🍔'),
      FoodItem(name: 'Čizburger',   price: 400,  isDrink: false, emoji: '🍔'),
      FoodItem(name: 'Mek Čiken',   price: 500,  isDrink: false, emoji: '🍗'),
      FoodItem(name: 'Pomfrit',     price: 250,  isDrink: false, emoji: '🍟'),
      FoodItem(name: 'Mek Nuggets', price: 450,  isDrink: false, emoji: '🍗'),
      FoodItem(name: 'Coca Cola',   price: 200,  isDrink: true,  emoji: '🥤'),
      FoodItem(name: 'Fanta',       price: 200,  isDrink: true,  emoji: '🥤'),
      FoodItem(name: 'Sprite',      price: 200,  isDrink: true,  emoji: '🥤'),
    ],
  ),

  Restaurant(
    name: 'KFC',
    image: 'assets/images/kfc.jpg',
    address: 'BIG fashion centar, Kragujevac',
    rating: 4.4,
    foods: [
      FoodItem(name: 'Tvister',       price: 550, isDrink: false, emoji: '🌯'),
      FoodItem(name: 'Pileći batak',  price: 450, isDrink: false, emoji: '🍗'),
      FoodItem(name: 'Hot Wings',     price: 600, isDrink: false, emoji: '🔥'),
      FoodItem(name: 'Pileći burger', price: 500, isDrink: false, emoji: '🍔'),
      FoodItem(name: 'Pomfrit',       price: 250, isDrink: false, emoji: '🍟'),
      FoodItem(name: 'Pepsi',         price: 200, isDrink: true,  emoji: '🥤'),
      FoodItem(name: 'Mirinda',       price: 200, isDrink: true,  emoji: '🥤'),
      FoodItem(name: '7Up',           price: 200, isDrink: true,  emoji: '🥤'),
    ],
  ),

  Restaurant(
    name: 'Pečenjara Baralić',
    image: 'assets/images/baralic.jpg',
    address: 'Mrcajevci, Čačak',
    rating: 4.8,
    foods: [
      FoodItem(name: 'Svinjsko pečenje', price: 1800, isDrink: false, emoji: '🥩'),
      FoodItem(name: 'Jagnjeće pečenje', price: 2200, isDrink: false, emoji: '🍖'),
      FoodItem(name: 'Praseća rebra',    price: 1500, isDrink: false, emoji: '🍖'),
      FoodItem(name: 'Kupus salata',     price: 250,  isDrink: false, emoji: '🥗'),
      FoodItem(name: 'Šopska salata',    price: 350,  isDrink: false, emoji: '🥗'),
      FoodItem(name: 'Jelen pivo',       price: 250,  isDrink: true,  emoji: '🍺'),
      FoodItem(name: 'Lav pivo',         price: 250,  isDrink: true,  emoji: '🍺'),
      FoodItem(name: 'Coca Cola',        price: 200,  isDrink: true,  emoji: '🥤'),
    ],
  ),

  Restaurant(
    name: 'Teletina kod Nemca',
    image: 'assets/images/nemac.jpg',
    address: 'Parmenac, Čačak',
    rating: 4.9,
    foods: [
      FoodItem(name: 'Teletina ispod sača', price: 2400, isDrink: false, emoji: '🥩'),
      FoodItem(name: 'Teleća čorba',        price: 450,  isDrink: false, emoji: '🍲'),
      FoodItem(name: 'Teleći medaljoni',    price: 1900, isDrink: false, emoji: '🥩'),
      FoodItem(name: 'Teleća rebra',        price: 2100, isDrink: false, emoji: '🍖'),
      FoodItem(name: 'Pečeni krompir',      price: 350,  isDrink: false, emoji: '🥔'),
      FoodItem(name: 'Rosa',                price: 180,  isDrink: true,  emoji: '💧'),
      FoodItem(name: 'Coca Cola',           price: 200,  isDrink: true,  emoji: '🥤'),
      FoodItem(name: 'Fanta',               price: 200,  isDrink: true,  emoji: '🥤'),
    ],
  ),

  Restaurant(
    name: 'Apetit 032',
    image: 'assets/images/apetit.jpg',
    address: 'Zanatski centar, Gornji Milanovac',
    rating: 4.6,
    foods: [
      FoodItem(name: 'Apetit Burger',   price: 750,  isDrink: false, emoji: '🍔'),
      FoodItem(name: 'Margarita',       price: 850,  isDrink: false, emoji: '🍕'),
      FoodItem(name: 'Apetit specijal', price: 1100, isDrink: false, emoji: '🍕'),
      FoodItem(name: 'Vegetarijana',    price: 950,  isDrink: false, emoji: '🥦'),
      FoodItem(name: 'Kaprićoza',       price: 900,  isDrink: false, emoji: '🍕'),
      FoodItem(name: 'Coca Cola',       price: 200,  isDrink: true,  emoji: '🥤'),
      FoodItem(name: 'Sprite',          price: 200,  isDrink: true,  emoji: '🥤'),
      FoodItem(name: 'Ledeni čaj',      price: 220,  isDrink: true,  emoji: '🧋'),
    ],
  ),

  Restaurant(
    name: 'Pečenjara Stari Milanovac',
    image: 'assets/images/starigm.jpg',
    address: 'kod plavog mosta, Gornji Milanovac',
    rating: 4.7,
    foods: [
      FoodItem(name: 'Jagnjeće pečenje', price: 2200, isDrink: false, emoji: '🍖'),
      FoodItem(name: 'Svinjsko pečenje', price: 1800, isDrink: false, emoji: '🥩'),
      FoodItem(name: 'Prasetina',        price: 1700, isDrink: false, emoji: '🥩'),
      FoodItem(name: 'Paradajz salata',  price: 250,  isDrink: false, emoji: '🥗'),
      FoodItem(name: 'Srpska salata',    price: 300,  isDrink: false, emoji: '🥗'),
      FoodItem(name: 'Nikšićko pivo',    price: 250,  isDrink: true,  emoji: '🍺'),
      FoodItem(name: 'Jelen pivo',       price: 250,  isDrink: true,  emoji: '🍺'),
      FoodItem(name: 'Pepsi',            price: 200,  isDrink: true,  emoji: '🥤'),
    ],
  ),
];