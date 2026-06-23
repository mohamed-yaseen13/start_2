import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:start2/core/constants/app_images.dart';
import 'package:start2/core/helper_function/navigation.dart';
import 'package:start2/core/widgets/all_data_header_widget.dart';
import 'package:start2/features/cars/domain/entities/car_entity.dart';
import 'package:start2/features/cars/presentation/pages/all_cars_page.dart';
import 'package:start2/features/cars/presentation/pages/car_page.dart';
import 'package:start2/features/cars/presentation/providers/car_drop_down_mixin.dart';
import 'package:start2/features/cars/presentation/providers/car_filter_mixin.dart';

class CarProvider extends ChangeNotifier with CarFilterMixin, CarDropdownMixin {
  void goTo() {
    initFilter();
    initDropDown();
    navP(AllCarsPage());
  }

  // Cars on Home Page
  List<CarEntity> homeCars = [
    CarEntity(
      type: 'ايجار',
      images: [AppImages.car1, AppImages.car1, AppImages.carCar1],
      title: 'سيارة مرسيدس',
      address: 'جده - السعوديه',
      lastUpdate: "منذ 4 ايام",
      price: "400 ريال/ ساعه",
      viewCount: 333,
      isFavorited: false,
      description:
          'سيارة مرسيدس حالتها الفنية غير جيدة وتحتاج إلى صيانة شاملة. السيارة متوقفة عن العمل حاليًا، مع وجود أعطال في المحرك وأنظمة التشغيل. الهيكل الخارجي به خدوش وآثار استخدام واضحة، والصالون يحتاج إلى تنظيف وتجديد. السيارة مناسبة لمن لديه خبرة في التصليح أو لاستخدامها كقطع غيار. البيع بالحالة الراهنة دون أي التزام بالإصلاح.',
    ),
    CarEntity(
      type: 'ايجار',
      images: [AppImages.car2],
      title: 'سيارة مرسيدس',
      address: 'جده - السعوديه',
      lastUpdate: "منذ 4 ايام",
      price: "400 ريال/ ساعه",
      viewCount: 333,
      isFavorited: false,
      description:
          'سيارة مرسيدس حالتها الفنية غير جيدة وتحتاج إلى صيانة شاملة. السيارة متوقفة عن العمل حاليًا، مع وجود أعطال في المحرك وأنظمة التشغيل. الهيكل الخارجي به خدوش وآثار استخدام واضحة، والصالون يحتاج إلى تنظيف وتجديد. السيارة مناسبة لمن لديه خبرة في التصليح أو لاستخدامها كقطع غيار. البيع بالحالة الراهنة دون أي التزام بالإصلاح.',
    ),
  ];

  // Cars on All Cars Page
  List<CarEntity> carCars = [
    CarEntity(
      type: 'بيع',
      images: [AppImages.carCar1],
      title: 'سيارة مرسيدس',
      address: 'جده - السعوديه',
      lastUpdate: "منذ 4 ايام",
      price: "400 ريال",
      viewCount: 333,
      isFavorited: true,
      description:
          'سيارة مرسيدس حالتها الفنية غير جيدة وتحتاج إلى صيانة شاملة. السيارة متوقفة عن العمل حاليًا، مع وجود أعطال في المحرك وأنظمة التشغيل. الهيكل الخارجي به خدوش وآثار استخدام واضحة، والصالون يحتاج إلى تنظيف وتجديد. السيارة مناسبة لمن لديه خبرة في التصليح أو لاستخدامها كقطع غيار. البيع بالحالة الراهنة دون أي التزام بالإصلاح.',
    ),
    CarEntity(
      type: 'ايجار',
      images: [AppImages.carCar2],
      title: 'سيارة مرسيدس',
      address: 'جده - السعوديه',
      lastUpdate: "منذ 4 ايام",
      price: "400 ريال/ ساعه",
      viewCount: 333,
      isFavorited: false,
      description:
          'سيارة مرسيدس حالتها الفنية غير جيدة وتحتاج إلى صيانة شاملة. السيارة متوقفة عن العمل حاليًا، مع وجود أعطال في المحرك وأنظمة التشغيل. الهيكل الخارجي به خدوش وآثار استخدام واضحة، والصالون يحتاج إلى تنظيف وتجديد. السيارة مناسبة لمن لديه خبرة في التصليح أو لاستخدامها كقطع غيار. البيع بالحالة الراهنة دون أي التزام بالإصلاح.',
    ),
  ];

  // Header on All Cars Page
  List<AllDataHeaderContainerWidgetEntity> headerEntities = [
    AllDataHeaderContainerWidgetEntity(
      icon: AppImages.officeIcon,
      firstText: 'offices',
      secondText: 'the_cars',
      onTap: () {
        // go to car offices page
      },
    ),
    AllDataHeaderContainerWidgetEntity(
      icon: AppImages.serviceIcon,
      firstText: 'services',
      secondText: 'the_cars',
      onTap: () {
        // go to car services page
      },
    ),
  ];

  // On Home Page or All Cars Page
  void onCarTap(CarEntity car) {
    navP(CarPage(car: car));
  }

  //  on car page

  final CarouselSliderController carouselController =
      CarouselSliderController();

  void onImageTap() {
    // open the image
  }
  int currentImage = 0;
  void onImageChanged(int index) {
    currentImage = index;
    notifyListeners();
  }
}
