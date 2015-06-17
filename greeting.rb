def greeting
  greet = ARGV.shift
  ARGV.each {|name| p "#{greet} #{name}!"}
end

greeting