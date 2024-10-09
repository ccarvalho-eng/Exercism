const correct_answer = 42

const close_range = 1

pub fn reply(guess: Int) -> String {
  let lower_threshold = correct_answer - close_range
  let upper_threshold = correct_answer + close_range

  case guess {
    x if x == correct_answer -> "Correct"
    x if x >= lower_threshold && x <= upper_threshold -> "So close"
    x if x < lower_threshold -> "Too low"
    _ -> "Too high"
  }
}
