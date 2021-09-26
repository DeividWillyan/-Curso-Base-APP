# Download dependencies 
flutter pub get 
# Run tests with User feedback (in case some test are failing)
flutter test
# Run tests without user feedback regeneration tests.output and coverage/lcov.info
flutter test --machine --coverage > tests.output 

# Run the analysis and publish to the SonarQube server
/Users/deivid/Development/docker-repositories/Sonar-Docker/sonar-scanner-4.6.2.2472-macosx/bin/sonar-scanner