import 'package:cse_organizers_app/services/date_time_service.dart';
import 'package:intl/intl.dart';

class Task {
  final String id, title, description, rawStartTime, rawEndTime;
  DateTime startTime = DateTime(0), endTime = DateTime(0);
  final bool checkIn;
  final List<String> organizers;
  final List<String>? checkedParticipants;

  Task({
    required this.id,
    required this.title,
    required this.description,
    required this.rawStartTime,
    required this.rawEndTime,
    required this.organizers,
    required this.checkIn,
    this.checkedParticipants,
  }) {
    startTime = DateTimeService.parseTime(rawStartTime);
    endTime = DateTimeService.parseTime(rawEndTime);
  }
}
