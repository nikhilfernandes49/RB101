(1..10)
 .to_a
 .select {|x| x.even? }
 .map {|x| x*x }        .tap { |x| p x }