void main() {
  List<String> subject = ['Mobileapp', 'Calculus', 'English'];
  print('Total Subject: ${subject.length}');
  print('First Subject: ${subject[0]}');
  print('Last Subject: ${subject[subject.length - 1]}');

  subject.add('Math');
  print('Update Subject: ${subject}');

  List<String> subjectsWithA = subject
      .where((s) => s.toLowerCase().contains('a'))
      .toList();

  Map<String, int> studentScores = {
    'Mobileapp': 60,
    'Calculus': 45,
    'English': 50,
  };
  print('English Score: ${studentScores['English']}');

  studentScores['Math'] = 42;
  print('Update Score ${studentScores}');

  var scoresAtLeast50 = Map.fromEntries(
    studentScores.entries.where((entry) => entry.value >= 50),
  );

  print('Subject stat with "A": ${subjectsWithA}');
  print('Score Subject > 50: ${scoresAtLeast50}');
}
