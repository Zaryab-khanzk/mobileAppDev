import 'dart:io';
import 'dart:math';

void main() {
  List<String> choices = ['rock', 'paper', 'scissors'];
  var random = Random();
  int userScore = 0;
  int computerScore = 0;

  print("Welcome to Rock Paper Scissors!");
  print("How many rounds do you want to play?");
  int rounds = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= rounds; i++) {
    print("\nRound $i");
    print("Enter your choice (rock, paper, scissors): ");
    String? userChoice = stdin.readLineSync()?.toLowerCase();

    if (userChoice == null || !choices.contains(userChoice)) {
      print("Invalid choice! Please choose rock, paper, or scissors.");
      continue;
    }

    String computerChoice = choices[random.nextInt(choices.length)];
    print("You chose: $userChoice");
    print("Computer chose: $computerChoice");

    if (userChoice == computerChoice) {
      print("It's a draw!");
    } else if (
        (userChoice == 'rock' && computerChoice == 'scissors') ||
        (userChoice == 'paper' && computerChoice == 'rock') ||
        (userChoice == 'scissors' && computerChoice == 'paper')) {
      print("You win this round!");
      userScore++;
    } else {
      print("Computer wins this round!");
      computerScore++;
    }
  }

  print("\nFinal Score -------------------");
  print("Your Score: $userScore");
  print("Computer Score: $computerScore");
  if (userScore > computerScore) {
    print("🎉 Congratulations, You are the Winner!");
  } else if (computerScore > userScore) {
    print("💻 Computer wins the game!");
  } else {
    print("🤝 It's a tie overall!");
  }
}