def benchmark
  start_time = Time.now
  yield
  end_time = Time.now

  end_time - start_time  # last line in block will always be reutnred in ruby.
end



# Be careful, pasting this into IRB will take a long time to print.
# It's a loooong string. :)
long_string = "apple"*10000000

running_time = benchmark { long_string.reverse }

puts "string.reverse took #{running_time} seconds to run" # "#{}" is the block of code that is being caught by yield (line 15)