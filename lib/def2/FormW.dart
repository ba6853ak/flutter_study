import 'package:flutter/material.dart';

class FormW extends StatefulWidget {
  const FormW({super.key});

  @override
  State<FormW> createState() => _FormWState();
}

class _FormWState extends State<FormW> {
  double _phoneNumber = 1000000000; // 초기값은 최소값으로 설정


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _FormArea(),
                _RadioArea(),
                _CheckBox(),
                _SliderArea(),
              ],
            )
          ],
        ),
      ),
    );
  }
}


/**
 *
 */

class _SliderArea extends StatefulWidget {
  const _SliderArea({super.key});

  @override
  State<_SliderArea> createState() => _SliderAreaState();
}

class _SliderAreaState extends State<_SliderArea> {

  double _phoneNumber = 1000000000.0;

  @override
  Widget build(BuildContext context) {
    return Slider(value: _phoneNumber, onChanged: (value) {
      setState(() {
        _phoneNumber = value;

      });
    },
      min: 1000000000,// 최소값
      max: 1099999999,// 최대값
      divisions: 99999999,
      label: _phoneNumber.toStringAsFixed(0),
    );
  }
}



/**
 *
 */

class _CheckBox extends StatefulWidget {
  const _CheckBox({super.key});

  @override
  State<_CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<_CheckBox> {

  List<String> _hobbies = ['코딩', '독서', '운동', '수영', '제작'];
  Map<String, bool> _selectedHobbies = {}; // Map 기본 표시

  @override
  void initState() {
    print('init');
    super.initState();

    for (var h in _hobbies) {
      _selectedHobbies[h] = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return                 // CheckBox
      Row(
        children: [
          ..._hobbies.map((hobby) {

            bool _isSelected = _selectedHobbies[hobby] ?? false;

            return Row(
              children: [

                Checkbox(value: _isSelected, onChanged: (value) {
                  setState(() {
                    _selectedHobbies[hobby] = value ?? false;
                  });

                }),
                Text(hobby,
                  style: TextStyle(

                  ),),
              ],
            );
          }).toList(),
        ],
      );
  }
}

/**
 *
 */

class _RadioArea extends StatefulWidget {
  const _RadioArea({super.key});

  @override
  State<_RadioArea> createState() => _RadioAreaState();
}

class _RadioAreaState extends State<_RadioArea> {
  List<String> cities = ['서울', '대전', '대구', '부산'];
  String? _citieValue = null;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...cities.map((city) {
          bool isSelectedCity = (city == _citieValue);

          return Row(
            children: [
              Radio<String>(
                value: city,
                groupValue: _citieValue,
                activeColor: Colors.greenAccent,
                onChanged: (value) {
                  setState(() {
                    _citieValue = value;
                    print(_citieValue);
                  });
                },
              ),
              Text(
                city,
                style: TextStyle(
                    fontSize: 20,
                    color: isSelectedCity ? Colors.red : Colors.black26,
                    fontWeight:
                        isSelectedCity ? FontWeight.bold : FontWeight.normal),
              )
            ],
          );
        })
      ],
    );
  }
}


/**
 *
 */

class _FormArea extends StatefulWidget {
  const _FormArea({super.key});

  @override
  State<_FormArea> createState() => _FormAreaState();
}

class _FormAreaState extends State<_FormArea> {
  String? _userName = null;
  String? _userPassword = null;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100,
          height: 50,
          child: TextFormField(
            decoration: InputDecoration(
              label: Text('이름 입력'),
            ),
            keyboardType: TextInputType.visiblePassword,
            onChanged: (value) {
              print('${value}');
              setState(() {
                _userName = value ?? '';
              });
            },
          ),
        ),
        Container(
          width: 100,
          height: 50,
          child: TextFormField(
            decoration: InputDecoration(
              label: Text('비밀번호 입력'),
            ),
            obscureText: true,
            keyboardType: TextInputType.visiblePassword,
            onChanged: (value) {
              print('${value}');
              setState(() {
                _userPassword = value ?? '';
              });
            },
          ),
        ),
        ElevatedButton(
          onPressed: () {
            print("_userName: ${_userName}");
            print("_userPassword: ${_userPassword}");
          },
          child: Text('전송'),
        ),
      ],
    );
  }
}
