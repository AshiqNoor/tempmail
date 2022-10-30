part of register;

class Dropdown extends StatelessWidget {
  const Dropdown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // String ok = result.map((e) => e.domain).first;
    //List<String> countries = ["Nepal", "India", "USA"];
    //controller.getdomain(result.map((e) => e.domain).first);
    return GetBuilder<RegistrationController>(
      init: RegistrationController(),
      builder: (c) {
        return SizedBox(
          width: Get.width * .43,
          child: DropdownButton(
            underline: Container(),
            borderRadius: BorderRadius.circular(8),
            isExpanded: true,
            //value: controller.domainname.value,
            hint: Text("@${c.domainname}"),
            items: c.result.map((value) {
              return DropdownMenuItem(
                value: value.domain,
                child: Text(value.domain),
              );
            }).toList(),
            onChanged: (value) {
              c.setdomain(value!);
            },
          ),
        );
      },
    );
  }
}



// DropdownButton(
//             underline: Container(),
//             borderRadius: BorderRadius.circular(8),
//             isExpanded: true,
//             //value: controller.domainname.value,
//             hint: Text("@${controller.domainname.value}"),
//             items: countries.map((countryone) {
//               return DropdownMenuItem(
//                 value: countryone, //value of item
//                 child: Text(countryone), //label of item
//               );
//             }).toList(),
//             onChanged: (value) {
//               controller.setdomain(value.toString());
//             },
//           ),