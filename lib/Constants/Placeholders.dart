import 'package:thunder_bird/Pages/Auth/SignUpFlow_Widgets.dart';

List choiceList = [
  {'box': emptybox, 'text': 'Renewable Energy Potential'},
  {'box': emptybox, 'text': 'Microgrid Sizing'},
  {'box': emptybox, 'text': 'Emissions Tracking'},
  {'box': emptybox, 'text': 'Renewable Energy Incentives'}
];

String firstName = '';

updateFirstName(value) {
  firstName = value;
}
