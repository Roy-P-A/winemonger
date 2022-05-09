import 'package:get/get.dart';
import 'package:winemonger/features/customers/customers_screen.dart';

import 'package:winemonger/features/dashboard/dashboard.dart';
import 'package:winemonger/features/imports/import_screen.dart';

import 'package:winemonger/features/login/login.dart';
import 'package:winemonger/features/manufactures/manufacturers_screen.dart';
import 'package:winemonger/features/order/create_order/create_order_screen.dart';
import 'package:winemonger/features/order/order_detailscreen/order_detail_screen.dart';

import 'package:winemonger/features/order/order_screen.dart';
import 'package:winemonger/features/products/products_screen.dart';
import 'package:winemonger/features/reservations/reservation_screen.dart';
import 'package:winemonger/features/sales/sales_screen.dart';

import 'package:winemonger/features/splash/splash.dart';
import 'package:winemonger/features/tastings/tastings_screen.dart';

List<GetPage> routes() => [
      GetPage(name: "/", page: () => SplashScreen()),
      GetPage(name: "/dashboard", page: () => const Dashboard()),
      GetPage(name: "/login", page: () => const LogIn()),
      GetPage(name: "/orders", page: () => const OrdersScreen()),
      GetPage(
          name: "/orderdetailscreen", page: () => const OrderDetailScreen()),
      GetPage(name: "/tastings", page: () => const TastingsScreen()),
      GetPage(name: "/reservations", page: () => const ReservationScreen()),
      GetPage(name: "/manufacturers", page: () => const ManufacturersScreen()),
      GetPage(name: "/sales", page: () => const SalesScreen()),
      GetPage(name: "/products", page: () => const ProductsScreen()),
      GetPage(name: "/customers", page: () => const CustomerssScreen()),
      GetPage(name: "/imports", page: () => const ImportsScreen()),
      GetPage(name: "/createorders", page: () => const CreateOrderScreen()),
    ];
