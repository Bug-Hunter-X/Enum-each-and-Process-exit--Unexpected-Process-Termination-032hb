# Elixir Enum.each and Process.exit Unexpected Behavior

This repository demonstrates a subtle issue in Elixir when combining `Enum.each` with `Process.exit`.  The `Process.exit` call within the `Enum.each` function can lead to the process terminating prematurely, before the entire list has been processed. This behavior might be unexpected, especially in more complex scenarios.

The `bug.exs` file showcases the problematic code. The `bugSolution.exs` file provides a corrected approach that avoids premature termination.

## How to Reproduce

1. Clone this repository.
2. Run `elixir bug.exs`.
3. Observe that the process exits before printing all numbers.
4. Run `elixir bugSolution.exs` to see the corrected behavior.

## Solution

The solution involves using a different approach, such as `Enum.map` or a loop, avoiding `Process.exit` within `Enum.each` for cleaner termination handling.