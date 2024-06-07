import 'package:flutter/material.dart';
import 'package:efhamnidz/core/app_export.dart';

// ignore: must_be_immutable
class CustomBottomAppBar extends StatelessWidget {
  CustomBottomAppBar({
    Key? key,
    this.onChanged,
  }) : super(
          key: key,
        );

  RxList<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
        icon: ImageConstant.imgMaterialSymbol,
        activeIcon: ImageConstant.imgMaterialSymbol,
        type: BottomBarEnum.Materialsymbol,
        isSelected: true),
    BottomMenuModel(
      icon: ImageConstant.imgSettings,
      activeIcon: ImageConstant.imgSettings,
      type: BottomBarEnum.Settings,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgMaterialSymbolGray40001,
      activeIcon: ImageConstant.imgMaterialSymbolGray40001,
      type: BottomBarEnum.Materialsymbolgray40001,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgIconamoonProfileFill,
      activeIcon: ImageConstant.imgIconamoonProfileFill,
      type: BottomBarEnum.Iconamoonprofilefill,
    )
  ].obs;

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: SizedBox(
          height: 88.v,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              bottomMenuList.length,
              (index) {
                return InkWell(
                  onTap: () {
                    for (var element in bottomMenuList) {
                      element.isSelected = false;
                    }
                    bottomMenuList[index].isSelected = true;
                    onChanged?.call(bottomMenuList[index].type);
                    bottomMenuList.refresh();
                  },
                  child: bottomMenuList[index].isSelected
                      ? CustomImageView(
                          imagePath: bottomMenuList[index].activeIcon,
                          height: 30.adaptSize,
                          width: 30.adaptSize,
                          color: appTheme.blue400,
                        )
                      : CustomImageView(
                          imagePath: bottomMenuList[index].icon,
                          height: 25.v,
                          width: 30.h,
                          color: appTheme.gray400,
                        ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Materialsymbol,
  Settings,
  Materialsymbolgray40001,
  Iconamoonprofilefill,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
    this.isSelected = false,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;

  bool isSelected;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffffffff),
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
