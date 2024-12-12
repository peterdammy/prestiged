import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:prestige/views/widgets/colors.dart';
import 'package:prestige/views/widgets/text_theme.dart';

class CountryDropdown extends StatefulWidget {
  const CountryDropdown({super.key});

  @override
  State<CountryDropdown> createState() => _CountryDropdownState();
}

class _CountryDropdownState extends State<CountryDropdown> {
  Country country = CountryParser.parseCountryCode("NIG");

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      height: 56,
      width: 112,
      decoration: BoxDecoration(
        color: AppColor.cColor, // Background color for the container
        borderRadius: BorderRadius.circular(16),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: Text(
            "${country.flagEmoji}+ ${country.countryCode}",
            style: AppTextTheme.lightMode.bodySmall,
          ),
          filled: true,
          fillColor: AppColor.cColor,
          suffixIcon: const Icon(
            Icons.keyboard_arrow_down,
          ),
        ),
      ),
    );
  }
}
