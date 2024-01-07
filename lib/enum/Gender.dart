enum Gender {
  man(text: '男', value: 1),
  women(text: '女', value: 2);

  const Gender({required this.text, required this.value});
  final String text;
  final int value;
}