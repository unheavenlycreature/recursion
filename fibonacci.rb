# frozen_string_literal: true

def fibs(n)
  fib_sequence = []
  n.times do |iter|
    fib_sequence << iter < 2 ? iter : fib_sequence[iter - 1] + fib_sequence[iter - 2]
  end
  fib_sequence
end

def fibs_rec(n)
  return [] if n < 1
  return [0] if n == 1
  return [0, 1] if n == 2

  prev_fibs = fibs_rec(n - 1)
  prev_fibs << prev_fibs[-1] + prev_fibs[-2]
end
