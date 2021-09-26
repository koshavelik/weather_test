echo "Creating generated files.." &&
cd ../ &&
flutter pub get &&
flutter packages pub run build_runner watch