enum Calendar {
  solar(text: '阳历', value: 1),
  lunar(text: '阴历', value: 2);

  const Calendar({required this.text, required this.value});
  final String text;
  final int value;
}