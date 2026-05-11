String formatDuration(Duration duration) {
  var hours = duration.inHours;
  var minutes = duration.inMinutes - duration.inHours * 60;
  var seconds = duration.inSeconds - duration.inMinutes * 60;
  
  if (hours > 0) {
    return '$hours:${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  } else {
    return '$minutes:${seconds.toString().padLeft(2, '0')}';
  }
}