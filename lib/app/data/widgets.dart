import 'dart:convert';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'constants.dart';

class TaskStatus extends StatelessWidget {
  TaskStatus(
      {Key? key,
      required this.onPendingTap,
      required this.onCompletedTap,
      required this.onDeletedTap,
      required this.onPendingColor,
      required this.onCompletedColor,
      required this.onDeletedColor})
      : super(key: key);
  final Function() onPendingTap;
  final Function() onCompletedTap;
  final Function() onDeletedTap;
  final Color onPendingColor;
  final Color onCompletedColor;
  final Color onDeletedColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: onPendingTap,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              color: onPendingColor,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 25, right: 25, top: 8, bottom: 8),
                child: Text(
                  "Pending",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: onCompletedTap,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              color: onCompletedColor,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 25, right: 25, top: 8, bottom: 8),
                child: Text(
                  "Completed",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: onDeletedTap,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              color: onDeletedColor,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 25, right: 25, top: 8, bottom: 8),
                child: Text(
                  "Deleted",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RowTextWidget extends StatelessWidget {
  RowTextWidget({Key? key, required this.titleText, required this.subText})
      : super(key: key);
  final String titleText;
  final String subText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            "$titleText : ",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          Text(
            subText,
            style: TextStyle(fontSize: 16, color: Colors.grey),
          )
        ],
      ),
    );
  }
}

class ColTextWidget extends StatelessWidget {
  const ColTextWidget(
      {Key? key, required this.titleText, required this.subText})
      : super(key: key);
  final String titleText;
  final String subText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            titleText,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            subText,
            style: TextStyle(fontSize: 16, color: Colors.grey),
          )
        ],
      ),
    );
  }
}

class TextFormWidget extends StatelessWidget {
  const TextFormWidget(
      {Key? key,
      this.dropDownItems,
      this.dropDownOnChanged,
      required this.dropDown,
      required this.titleText,
      this.hintText,
      this.maxLines,
      this.textController,
      this.textBoxWidth,
      this.dropDownWidth,
      this.keyboardType,
      this.textBoxHeight,
      this.dropDownHeight,
      this.onTextChanged,
      this.readOnly,
      this.suffixIcon,
      this.onTapTextBox,
      this.borderSideTextBox,
      this.borderSideDropDown})
      : super(key: key);
  final List<DropdownMenuItem<Object>>? dropDownItems;
  final Function(Object?)? dropDownOnChanged;
  final bool dropDown;
  final String titleText;
  final String? hintText;
  final int? maxLines;
  final TextEditingController? textController;
  final double? textBoxWidth;
  final double? dropDownWidth;
  final double? textBoxHeight;
  final double? dropDownHeight;
  final TextInputType? keyboardType;
  final Function(String)? onTextChanged;
  final bool? readOnly;
  final Widget? suffixIcon;
  final Function()? onTapTextBox;
  final BorderSide? borderSideTextBox;
  final BorderSide? borderSideDropDown;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titleText,
          style: TextStyle(
              color: Colors.black87, fontSize: 16, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 10,
        ),
        (dropDown == true)
            ? Container(
                height: dropDownHeight,
                width: dropDownWidth,
                color: Colors.grey.shade100,
                child: DropdownButtonFormField(
                    icon: Icon(
                      Icons.arrow_drop_down_circle_outlined,
                      color: Constants.primaryColor,
                      size: 30,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 10, right: 10),
                      border: OutlineInputBorder(
                          borderSide: borderSideDropDown ?? BorderSide(),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    items: dropDownItems,
                    onChanged: dropDownOnChanged),
              )
            : Container(
                height: textBoxHeight,
                width: textBoxWidth,
                color: Colors.grey.shade100,
                child: TextFormField(
                  onChanged: onTextChanged,
                  controller: textController,
                  maxLines: maxLines,
                  minLines: 1,
                  readOnly: readOnly ?? false,
                  keyboardType: keyboardType ?? TextInputType.text,
                  onTap: onTapTextBox,
                  decoration: InputDecoration(
                    suffixIcon: suffixIcon,
                    contentPadding: EdgeInsets.all(10),
                    isDense: (maxLines != null) ? true : false,
                    hintText: hintText ?? "Enter $titleText",
                    border: OutlineInputBorder(
                      borderSide: borderSideTextBox ?? BorderSide(),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

class MyCheckBox extends StatelessWidget {
  MyCheckBox(
      {Key? key, this.value, this.onChanged, this.onTap, required this.title})
      : super(key: key);
  final RxBool? value;
  final Function(bool?)? onChanged;
  final Function()? onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Row(
        children: [
          Checkbox(
            value: value?.value,
            onChanged: onChanged,
          ),
          InkWell(
            onTap: onTap,
            child: Container(
              width: Constants.width / 3,
              child: Text(
                title,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyGrid extends StatelessWidget {
  MyGrid({Key? key, required this.title, this.icon, this.image, this.onTap})
      : super(key: key);

  final String title;
  final IconData? icon;
  final String? image;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            (image != null)
                ? Image.asset(
                    image!,
                    height: 100,
                  )
                : Icon(
                    icon,
                    size: 100,
                  ),
            SizedBox(
              height: 10,
            ),
            Text(
              title,
              style:
                  TextStyle(color: Colors.black87, fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class CustomSearchableDropDown extends StatefulWidget {
  List items = [];
  List? initialValue;
  double? searchBarHeight;
  Color? primaryColor;
  Color? backgroundColor;
  Color? dropdownBackgroundColor;
  EdgeInsetsGeometry? padding;
  EdgeInsetsGeometry? menuPadding;
  String? label;
  String? dropdownHintText;
  TextStyle? labelStyle;
  TextStyle? dropdownItemStyle;
  String? hint = '';
  String? multiSelectTag;
  int? initialIndex;
  Widget? prefixIcon;
  Widget? suffixIcon;
  bool? hideSearch;
  bool? enabled;
  bool? showClearButton;
  bool? menuMode;
  double? menuHeight;
  bool? multiSelect;
  bool? multiSelectValuesAsWidget;
  bool? showLabelInMenu;
  String? itemOnDialogueBox;
  Decoration? decoration;
  List dropDownMenuItems = [];
  final TextAlign? labelAlign;
  final ValueChanged onChanged;

  CustomSearchableDropDown({
    required this.items,
    required this.label,
    required this.onChanged,
    this.hint,
    this.initialValue,
    this.labelAlign,
    this.searchBarHeight,
    this.primaryColor,
    this.padding,
    this.menuPadding,
    this.labelStyle,
    this.enabled,
    this.showClearButton,
    this.itemOnDialogueBox,
    required this.dropDownMenuItems,
    this.prefixIcon,
    this.suffixIcon,
    this.menuMode,
    this.menuHeight,
    this.initialIndex,
    this.multiSelect,
    this.multiSelectTag,
    this.multiSelectValuesAsWidget,
    this.hideSearch,
    this.decoration,
    this.showLabelInMenu,
    this.dropdownItemStyle,
    this.backgroundColor,
    this.dropdownBackgroundColor,
    this.dropdownHintText,
  });

  @override
  State<CustomSearchableDropDown> createState() =>
      _CustomSearchableDropDownState();
}

class _CustomSearchableDropDownState extends State<CustomSearchableDropDown>
    with WidgetsBindingObserver, TickerProviderStateMixin {
  String onSelectLabel = '';
  final searchC = TextEditingController();
  List menuData = [];
  List mainDataListGroup = [];
  List newDataList = [];
  List selectedValues = [];
  late AnimationController _menuController;

  @override
  void initState() {
    super.initState();
    _menuController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    if (widget.initialIndex != null && widget.dropDownMenuItems.isNotEmpty) {
      onSelectLabel = widget.dropDownMenuItems[widget.initialIndex!].toString();
    }

    if (widget.multiSelect ?? false) {
      if (selectedValues.isEmpty) {
        if (widget.initialValue != null && widget.items.isNotEmpty) {
          if (widget.initialValue != null && widget.initialValue!.isNotEmpty) {
            selectedValues.clear();
          }

          for (int i = 0; i < widget.items.length; i++) {
            for (int j = 0; j < widget.initialValue!.length; j++) {
              if (widget.initialValue != null &&
                  widget.initialValue!.isNotEmpty) {
                if (widget.initialValue![j]['value'] ==
                    widget.items[i][widget.initialValue![j]['parameter']]) {
                  selectedValues.add('${widget.dropDownMenuItems[i]}-_-$i');
                  setState(() {});
                }
              }
            }
          }
        }
      }
    } else {
      if (onSelectLabel == '') {
        if (widget.initialValue != null && widget.items.isNotEmpty) {
          for (int i = 0; i < widget.items.length; i++) {
            if (widget.initialValue != null &&
                widget.initialValue!.isNotEmpty) {
              if (widget.initialValue![0]['value'] ==
                  widget.items[i][widget.initialValue![0]['parameter']]) {
                onSelectLabel = widget.dropDownMenuItems[i].toString();
                setState(() {});
              }
            }
          }
        }
      }
    }

    if (widget.items.isEmpty) {
      onSelectLabel = '';
      selectedValues.clear();
      widget.onChanged(null);
      setState(() {});
    }
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 50,
              decoration: widget.decoration,
              child: TextButton(
                style: TextButton.styleFrom(
                    foregroundColor: widget.primaryColor ?? Colors.black,
                    backgroundColor: widget.backgroundColor,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                child: Padding(
                  padding: widget.padding ?? EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      widget.prefixIcon ?? Container(),
                      SizedBox(
                        width: 10,
                      ),
                      ((widget.multiSelect == true &&
                                  widget.multiSelect != null) &&
                              selectedValues.isNotEmpty)
                          ? Expanded(
                              child: (widget.multiSelectValuesAsWidget ==
                                          true &&
                                      widget.multiSelectValuesAsWidget != null)
                                  ? Wrap(
                                      children: List.generate(
                                        selectedValues.length,
                                        (index) {
                                          return Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                5, 3, 5, 3),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: widget.primaryColor ??
                                                      Colors.green,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(5.0),
                                                  )),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        5, 2, 5, 2),
                                                child: Text(
                                                  selectedValues[index]
                                                      .split('-_-')[0]
                                                      .toString(),
                                                  style: widget.labelStyle ??
                                                      TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 12),
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    )
                                  : Text(
                                      selectedValues.length == 1
                                          ? widget.multiSelectTag == null
                                              ? '${selectedValues.length} values selected'
                                              : '${selectedValues.length} ${widget.multiSelectTag!} selected'
                                          : widget.multiSelectTag == null
                                              ? '${selectedValues.length} values selected'
                                              : '${selectedValues.length} ${widget.multiSelectTag!} selected',
                                      style: widget.labelStyle ??
                                          TextStyle(color: Colors.grey),
                                    ))
                          : Expanded(
                              child: Text(
                              onSelectLabel == ''
                                  ? widget.label == null
                                      ? 'Select Value'
                                      : widget.label!
                                  : onSelectLabel,
                              textAlign: widget.labelAlign ?? TextAlign.start,
                              style: widget.labelStyle != null
                                  ? widget.labelStyle!.copyWith(
                                      color: onSelectLabel == ''
                                          ? Colors.grey[600]
                                          : null,
                                    )
                                  : TextStyle(
                                      color: onSelectLabel == ''
                                          ? Colors.grey[600]
                                          : Colors.grey[800],
                                    ),
                            )),
                      Visibility(
                          visible: (widget.showClearButton != null &&
                              widget.showClearButton == true &&
                              onSelectLabel != ""),
                          child: TextButton(
                            style: TextButton.styleFrom(
                                foregroundColor:
                                    widget.primaryColor ?? Colors.black),
                            child: Icon(
                              Icons.clear,
                            ),
                            onPressed: () {
                              widget.onChanged(null);
                              onSelectLabel = '';
                              setState(() {});
                            },
                          )),
                      widget.suffixIcon ??
                          Icon(
                            Icons.arrow_drop_down,
                            color: widget.primaryColor ?? Colors.black,
                          )
                    ],
                  ),
                ),
                onPressed: () {
                  if (widget.enabled == null || widget.enabled == true) {
                    menuData.clear();
                    if (widget.items.isNotEmpty) {
                      for (int i = 0;
                          i < widget.dropDownMenuItems.length;
                          i++) {
                        menuData.add('${widget.dropDownMenuItems[i]}-_-$i');
                      }
                      mainDataListGroup = menuData;
                      newDataList = mainDataListGroup;
                      searchC.clear();
                      if (widget.menuMode != null && widget.menuMode == true) {
                        if (_menuController.value != 1) {
                          _menuController.forward();
                        } else {
                          _menuController.reverse();
                        }
                      } else {
                        showDialogueBox(context);
                      }
                    }
                  }
                  setState(() {});
                },
              ),
            ),
            SizeTransition(
              sizeFactor: _menuController,
              child: searchBox(setState),
            )
          ],
        ),
        Visibility(visible: (widget.menuMode ?? false), child: _shoeMenuMode()),
      ],
    );
  }

  Widget _shoeMenuMode() {
    return SizeTransition(
      sizeFactor: _menuController,
      child: mainScreen(setState),
    );
  }

  Future<void> showDialogueBox(context) async {
    await showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return Padding(
            padding: widget.menuPadding ?? EdgeInsets.all(15),
            child: StatefulBuilder(builder: (context, setState) {
              return Material(
                color: Colors.transparent,
                child: mainScreen(setState),
              );
            }),
          );
        }).then((valueFromDialog) {
      // use the value as you wish
      setState(() {});
    });
  }

  mainScreen(setState) {
    return Padding(
      padding: widget.menuPadding ?? EdgeInsets.all(0),
      child: Container(
        color: Colors.white,
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Visibility(
                visible:
                    ((widget.showLabelInMenu ?? false) && widget.label != null),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    widget.label.toString(),
                    style: widget.labelStyle != null
                        ? widget.labelStyle!.copyWith(
                            color: widget.primaryColor ?? Colors.blue,
                          )
                        : TextStyle(
                            color: widget.primaryColor ?? Colors.blue,
                          ),
                  ),
                )),
            Visibility(
                visible: widget.multiSelect ?? false,
                child: Row(
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                          foregroundColor: widget.primaryColor ?? Colors.black,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                      child: Text(
                        'Select All',
                        style: widget.labelStyle != null
                            ? widget.labelStyle!.copyWith(
                                color: widget.primaryColor ?? Colors.blue,
                              )
                            : TextStyle(
                                color: widget.primaryColor ?? Colors.blue,
                              ),
                      ),
                      onPressed: () {
                        selectedValues.clear();
                        for (int i = 0; i < newDataList.length; i++) {
                          selectedValues.add(newDataList[i]);
                        }
                        setState(() {});
                      },
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                          foregroundColor: widget.primaryColor ?? Colors.black,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                      child: Text(
                        'Clear All',
                        style: widget.labelStyle != null
                            ? widget.labelStyle!.copyWith(
                                color: widget.primaryColor ?? Colors.blue,
                              )
                            : TextStyle(
                                color: widget.primaryColor ?? Colors.blue,
                              ),
                      ),
                      onPressed: () {
                        setState(() {
                          selectedValues.clear();
                        });
                      },
                    ),
                  ],
                )),
            Visibility(
              visible: !(widget.menuMode ?? false),
              child: searchBox(setState),
            ),
            (widget.menuMode ?? false)
                ? SizedBox(
                    height: widget.menuHeight ?? 150,
                    child: mainList(setState),
                  )
                : Flexible(
                    child: mainList(setState),
                  ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Constants.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 1,
                    foregroundColor: Colors.white,
                  ),
                  child: Text(
                    'Close',
                  ),
                  onPressed: () {
                    if (widget.menuMode ?? false) {
                      _menuController.reverse();
                    } else {
                      Navigator.pop(context);
                    }
                    setState(() {});
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                Visibility(
                  visible: (widget.multiSelect ?? false),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Constants.primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        elevation: 1,
                        foregroundColor: Colors.white,
                        // tapTargetSize: MaterialTapTargetSize.shrinkWrap
                      ),
                      child: Text(
                        'Done',
                      ),
                      onPressed: () {
                        var sendList = [];
                        for (int i = 0; i < menuData.length; i++) {
                          if (selectedValues.contains(menuData[i])) {
                            sendList.add(widget.items[i]);
                          }
                        }
                        widget.onChanged(jsonEncode(sendList));
                        if (widget.menuMode ?? false) {
                          _menuController.reverse();
                        } else {
                          Navigator.pop(context);
                        }
                        setState(() {});
                      },
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  searchBox(setState) {
    return Visibility(
      visible: widget.hideSearch == null ? true : !widget.hideSearch!,
      child: SizedBox(
        height: widget.searchBarHeight,
        child: Padding(
          padding: EdgeInsets.all((widget.menuMode ?? false) ? 0.0 : 8.0),
          child: TextField(
            controller: searchC,
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                borderSide: BorderSide(
                    color: widget.primaryColor ?? Colors.grey, width: 2),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                borderSide: BorderSide(
                    color: widget.primaryColor ?? Colors.grey, width: 2),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                borderSide: BorderSide(
                    color: widget.primaryColor ?? Colors.grey, width: 2),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                borderSide: BorderSide(
                    color: widget.primaryColor ?? Colors.grey, width: 2),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                borderSide: BorderSide(
                    color: widget.primaryColor ?? Colors.grey, width: 2),
              ),
              suffixIcon: Icon(
                Icons.search,
                color: widget.primaryColor ?? Colors.black,
              ),
              contentPadding: EdgeInsets.all(8),
              hintText: widget.dropdownHintText ?? 'Search Here...',
              isDense: true,
            ),
            onChanged: (v) {
              onItemChanged(v);
              setState(() {});
            },
          ),
        ),
      ),
    );
  }

  mainList(setState) {
    return Scrollbar(
      child: Container(
        color: widget.dropdownBackgroundColor,
        child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: newDataList.length,
            itemBuilder: (BuildContext context, int index) {
              return TextButton(
                style: TextButton.styleFrom(
                    foregroundColor: widget.primaryColor ?? Colors.black,
                    padding: EdgeInsets.all(8),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                  child: Row(
                    children: [
                      Visibility(
                        visible: widget.multiSelect ?? false,
                        child: SizedBox(
                          width: 24,
                          height: 24,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(
                              0,
                              0,
                              8,
                              0,
                            ),
                            child: Checkbox(
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                value:
                                    selectedValues.contains(newDataList[index])
                                        ? true
                                        : false,
                                activeColor: Colors.green,
                                onChanged: (newValue) {
                                  if (selectedValues
                                      .contains(newDataList[index])) {
                                    setState(() {
                                      selectedValues.remove(newDataList[index]);
                                    });
                                  } else {
                                    setState(() {
                                      selectedValues.add(newDataList[index]);
                                    });
                                  }
                                }),
                          ),
                        ),
                      ),
                      Flexible(
                        child: Text(
                          newDataList[index].split('-_-')[0].toString(),
                          style: widget.dropdownItemStyle ??
                              TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                    ],
                  ),
                ),
                onPressed: () {
                  if (widget.multiSelect ?? false) {
                    if (selectedValues.contains(newDataList[index])) {
                      setState(() {
                        selectedValues.remove(newDataList[index]);
                      });
                    } else {
                      setState(() {
                        selectedValues.add(newDataList[index]);
                      });
                    }
                  } else {
                    for (int i = 0; i < menuData.length; i++) {
                      if (menuData[i] == newDataList[index]) {
                        onSelectLabel = menuData[i].split('-_-')[0].toString();
                        widget.onChanged(widget.items[i]);
                      }
                    }
                    if (widget.menuMode ?? false) {
                      _menuController.reverse();
                    } else {
                      Navigator.pop(context);
                    }
                  }
                  setState(() {});
                },
              );
            }),
      ),
    );
  }

  onItemChanged(String value) {
    setState(() {
      newDataList = mainDataListGroup
          .where((string) => string.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }
}

class DialogReadText extends StatelessWidget {
  final String title;
  final String boxText;
  final bool isBig;

  DialogReadText(
      {Key? key,
      required this.title,
      required this.boxText,
      this.isBig = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
        ),
        SizedBox(height: 5),
        Center(
          child: Container(
            // height: isBig ? 60 : 30,
            width: Constants.width,
            decoration: BoxDecoration(
                color: Colors.grey.shade100,
                // border: Border.all(color: Constants.primaryColor),
                borderRadius: BorderRadius.circular(12)),
            child: Row(
              children: [
                // SizedBox(width: 10),
                Container(
                  padding:
                      EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                  width: Constants.width / 1.6,
                  child: Text(
                    boxText,
                    style: TextStyle(color: Color(0XFF545454), fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}

class DialogShadeField extends StatelessWidget {
  DialogShadeField(
      {Key? key,
      required this.text,
      required this.controller,
      this.maxlines,
      this.textInputType = TextInputType.text,
      this.hint})
      : super(key: key);

  final String text;
  final int? maxlines;
  final TextInputType? textInputType;
  final TextEditingController controller;
  final String? hint;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        Container(
          color: Colors.grey.shade100,
          child: TextField(
            keyboardType: textInputType,
            minLines: 1,
            maxLines: 5,
            controller: controller,
            decoration: InputDecoration(
              // isDense: (maxlines == null) ? true : false,
              hintText: hint,
              contentPadding: EdgeInsets.only(left: 10, bottom: 8, top: 8),
              focusColor: Constants.primaryColor,
              border: InputBorder.none,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

class MyDateTimePicker extends StatelessWidget {
  const MyDateTimePicker(
      {Key? key,
      required this.title,
      this.onChanged,
      this.suffixIcon,
      this.initialDate,
      this.onSaved})
      : super(key: key);
  final String title;
  final Function(String)? onChanged;
  final Widget? suffixIcon;
  final String? initialDate;
  final Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
              color: Colors.black87, fontSize: 16, fontWeight: FontWeight.w600),
        ),
        SizedBox(
          height: 5,
        ),
        DateTimePicker(
          decoration: InputDecoration(
            suffixIcon: suffixIcon,
            contentPadding: EdgeInsets.all(10),
            border: OutlineInputBorder(
              borderSide: BorderSide(),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          type: DateTimePickerType.date,
          dateMask: 'dd-MM-yyyy',
          initialValue: initialDate,
          firstDate: DateTime(1900),
          lastDate: DateTime(2100),
          onChanged: onChanged,
          onSaved: onSaved,
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
