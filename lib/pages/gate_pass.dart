import 'package:flutter/material.dart';
import 'package:flutter_app/pages/hostel_1.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class GatePass extends StatefulWidget {
  const GatePass({super.key});

  @override
  GatePassState createState() => GatePassState();
}

class GatePassState extends State<GatePass> {
  DateTime? _selectedFromDate;
  TimeOfDay? _selectedFromTime;
  DateTime? _selectedToDate;
  TimeOfDay? _selectedToTime;
  String? _selectedState;
  String? _selectedCity;
  bool _isAgreed = false; // Declare the variable to store the checkbox state

  /// States and city names
  final Map<String, List<String>> _statesCities = {
    'Andhra Pradesh': ['Visakhapatnam', 'Vijayawada', 'Tirupati'],
    'Arunachal Pradesh': ['Itanagar', 'Naharlagun', 'Tawang'],
    'Assam': ['Guwahati', 'Silchar', 'Jorhat'],
    'Bihar': ['Patna', 'Gaya', 'Bhagalpur'],
    'Chhattisgarh': ['Raipur', 'Bilaspur', 'Korba'],
    'Goa': ['Panaji', 'Margao', 'Vasco da Gama'],
    'Gujarat': ['Ahmedabad', 'Vadodara', 'Surat'],
    'Haryana': ['Chandigarh', 'Faridabad', 'Gurgaon'],
    'Himachal Pradesh': ['Shimla', 'Dharamshala', 'Kullu'],
    'Jharkhand': ['Ranchi', 'Jamshedpur', 'Dhanbad'],
    'Karnataka': ['Bangalore', 'Mysore', 'Hubli'],
    'Kerala': ['Thiruvananthapuram', 'Kochi', 'Kollam'],
    'Ladakh': ['Leh', 'Kargil'],
    'Lakshadweep': ['Kavaratti', 'Minicoy'],
    'Madhya Pradesh': ['Bhopal', 'Indore', 'Jabalpur'],
    'Maharashtra': ['Mumbai', 'Pune', 'Nagpur'],
    'Manipur': ['Imphal', 'Churachandpur', 'Senapati'],
    'Meghalaya': ['Shillong', 'Tura', 'Jowai'],
    'Mizoram': ['Aizawl', 'Lunglei', 'Champhai'],
    'Nagaland': ['Kohima', 'Dimapur', 'Mokokchung'],
    'Odisha': ['Bhubaneswar', 'Cuttack', 'Rourkela'],
    'Puducherry': ['Puducherry', 'Karaikal', 'Yanam'],
    'Punjab': ['Chandigarh', 'Amritsar', 'Ludhiana'],
    'Rajasthan': ['Jaipur', 'Udaipur', 'Jodhpur'],
    'Sikkim': ['Gangtok', 'Namchi', 'Pelling'],
    'Tamil Nadu': ['Chennai', 'Coimbatore', 'Madurai'],
    'Telangana': ['Hyderabad', 'Warangal', 'Karimnagar'],
    'Tripura': ['Agartala', 'Udaipur', 'Dharmanagar'],
    'Uttar Pradesh': ['Lucknow', 'Kanpur', 'Varanasi'],
    'Uttarakhand': ['Dehradun', 'Haridwar', 'Nainital'],
    'West Bengal': ['Kolkata', 'Siliguri', 'Asansol'],
    'Andaman and Nicobar Islands': ['Port Blair', 'Havelock', 'Neil Island'],
    'Delhi': ['New Delhi', 'North Delhi', 'South Delhi'],
  };

  @override
  Widget build(BuildContext context) {
    List<String> states = _statesCities.keys.toList();
    List<String>? cities = _selectedState != null ? _statesCities[_selectedState!] : [];

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(20, 69, 20, 0),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              /// Background image
              Positioned(
                left: -13,
                top: 261,
                child: Opacity(
                  opacity: 0.1,
                  child: ImageFiltered(
                    imageFilter: ImageFilter.blur(
                      sigmaX: 2,
                      sigmaY: 2,
                    ),
                    child: Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/back_ground_image.png',
                          ),
                        ),
                      ),
                      child: const SizedBox(
                        width: 431,
                        height: 228,
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _header(),
                  const SizedBox(height: 30),
                  _buildDateTimePicker('From Date', true),
                  const SizedBox(height: 20),
                  _buildDateTimePicker('To Date', false),
                  const SizedBox(height: 20),
                  _buildStateCityPicker(states, cities),
                  const SizedBox(height: 20),
                  _buildAgreementSection(),
                  const SizedBox(height: 30),
                  _buildSubmitButton(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Header
  Widget _header() {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const Hostel1()),
            );
          },
          child: Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/vectors/icon_22_x2.svg',
                  width: 24,
                  height: 24,
                ),
                const SizedBox(width: 10),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            'Gate Pass',
            style: GoogleFonts.getFont(
              'Roboto',
              fontWeight: FontWeight.w400,
              fontSize: 24,
              color: const Color(0xFF000000),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDateTimePicker(String label, bool isFromDate) {
    return Row(
      children: [
        Expanded(
          child: _buildDatePicker(label, isFromDate),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: _buildTimePicker(isFromDate),
        ),
      ],
    );
  }

  Widget _buildDatePicker(String label, bool isFromDate) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.getFont(
            'Inter',
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: const Color(0xFF000000),
          ),
        ),
        GestureDetector(
          onTap: () => _selectDate(context, isFromDate),
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xFFFAFAFA),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: const Color(0xFF000000), // Border color
                width: 1.0, // Border width
              ),
            ),
            height: 50,
            child: Center(
              child: Text(
                isFromDate
                    ? _selectedFromDate != null
                    ? "${_selectedFromDate!.day}-${_selectedFromDate!.month}-${_selectedFromDate!.year}"
                    : ''
                    : _selectedToDate != null
                    ? "${_selectedToDate!.day}-${_selectedToDate!.month}-${_selectedToDate!.year}"
                    : '',
                style: GoogleFonts.getFont(
                  'Inter',
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  color: const Color(0xFF000000),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTimePicker(bool isFromDate) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Time',
          style: GoogleFonts.getFont(
            'Inter',
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: const Color(0xFF000000),
          ),
        ),
        GestureDetector(
          onTap: () => _selectTime(context, isFromDate),
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xFFFAFAFA),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: const Color(0xFF000000), // Border color
                width: 1.0, // Border width
              ),
            ),
            height: 50,
            child: Center(
              child: Text(
                isFromDate
                    ? _selectedFromTime != null
                    ? "${_selectedFromTime!.hour}:${_selectedFromTime!.minute}"
                    : ''
                    : _selectedToTime != null
                    ? "${_selectedToTime!.hour}:${_selectedToTime!.minute}"
                    : '',
                style: GoogleFonts.getFont(
                  'Inter',
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  color: const Color(0xFF000000),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildStateCityPicker(List<String> states, List<String>? cities) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'State',
          style: GoogleFonts.getFont(
            'Inter',
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: const Color(0xFF000000),
          ),
        ),
        const SizedBox(height: 10),
        DropdownButtonFormField<String>(
          value: _selectedState,
          onChanged: (newValue) {
            setState(() {
              _selectedState = newValue;
              _selectedCity = null; // Reset city when state changes
            });
          },
          items: states.map((String state) {
            return DropdownMenuItem<String>(
              value: state,
              child: Text(state),
            );
          }).toList(),
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xFFFAFAFA),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Color(0xFF000000), // Border color
                width: 1.0, // Border width
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        Text(
          'City',
          style: GoogleFonts.getFont(
            'Inter',
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: const Color(0xFF000000),
          ),
        ),
        const SizedBox(height: 10),
        DropdownButtonFormField<String>(
          value: _selectedCity,
          onChanged: (newValue) {
            setState(() {
              _selectedCity = newValue;
            });
          },
          items: cities!.map((String city) {
            return DropdownMenuItem<String>(
              value: city,
              child: Text(city),
            );
          }).toList(),
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xFFFAFAFA),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Color(0xFF000000), // Border color
                width: 1.0, // Border width
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildAgreementSection() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start, // Align checkbox and text at the top
      children: [
        Checkbox(
          value: _isAgreed,
          onChanged: (bool? value) {
            setState(() {
              _isAgreed = value ?? false; // Update the checkbox value when clicked
            });
          },
        ),
        Expanded(
          child: Text(
            'I hereby agree to abide by all the rules and code of conduct contained therein. I am liable for disciplinary action in case of breach of any of the Parul University Hostel rules and regulations that may be in force from time to time.',
            style: GoogleFonts.getFont(
              'Inter',
              fontWeight: FontWeight.w400,
              fontSize: 16,
              color: const Color(0xFF000000),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSubmitButton() {
    return Align(
      alignment: Alignment.center,
      child: ElevatedButton(
        onPressed: _isFormValid() ? () {
          // Handle submission
        } : null, // Disable button if form is not valid
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
          backgroundColor: const Color(0xFF000000),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          'Submit',
          style: GoogleFonts.getFont(
            'Inter',
            fontWeight: FontWeight.w400,
            fontSize: 18,
            color: const Color(0xFFFFFFFF),
          ),
        ),
      ),
    );
  }

  bool _isFormValid() {
    return _selectedFromDate != null &&
        _selectedFromTime != null &&
        _selectedToDate != null &&
        _selectedToTime != null &&
        _selectedState != null &&
        _selectedCity != null &&
        _isAgreed;
  }

  Future<void> _selectDate(BuildContext context, bool isFromDate) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      setState(() {
        if (isFromDate) {
          _selectedFromDate = picked;
        } else {
          _selectedToDate = picked;
        }
      });
    }
  }

  Future<void> _selectTime(BuildContext context, bool isFromDate) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null) {
      setState(() {
        if (isFromDate) {
          _selectedFromTime = picked;
        } else {
          _selectedToTime = picked;
        }
      });
    }
  }
}