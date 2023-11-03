String valoGreeting() {
  final hour = DateTime.now().hour;
  if (hour < 11) {
    return 'Good Morning';
  } else if (hour < 15) {
    return 'Good Afternoon';
  } else if (hour < 18) {
    return 'Good Evening';
  } else if (hour < 24) {
    return 'Good Evening';
  }
  return 'Good Morning';
}
