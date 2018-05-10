# Week 1 - OPTIONAL Man Pages Cheatsheet

# prints menu
# user can choose from command line options that print  those man pages
# allows user to search for a command for that specific man page


def print_menu
  puts "======================================================"    
  puts "CHEATSHEET"
  puts "1: Command Line"
  puts "2: Search"
  puts "3: Exit"
  puts "*****Make a Selection*****\n"
  puts "======================================================"    
  print ">>> "
end

def print_command_line_options
  puts "======================================================"  
  puts "COMMAND LINE"
  puts "1: cp"
  puts "2: mv"
  puts "3: cd"
  puts "4: mkdir"
  puts "5: ls"
  puts "6: rm"  
  puts "7: Main Menu"
  puts "*****Make a Selection*****\n"
  puts "======================================================"    
  print ">>> "  
end

def search_man_page(option)
  man_page = `man #{option}`
  puts "#{man_page}"
end

def print_man_page(num)
  case num
  when 1
    puts `man cp`
  when 2
    puts `man mv`
  when 3
    puts `man cd`
  when 4
    puts `man mkdir`
  when 5
    puts `man ls`
  when 6
    puts `man rm`
  when 7
    puts "\nBack to Main Menu"
  else
    puts "please select again "
  end
end

print_menu

while user_choice = gets.chomp.to_i
  case user_choice
  when 1
    puts "\nplease enter the option you want to see the man page of "
    print_command_line_options
    print_man_page(gets.chomp.to_i)
    print_menu
  when 2
    puts "\n please enter the command you want to search: "
    search_man_page(gets.chomp)
    print_menu
  when 3
    puts "\nGoodbye"
    break
  end
end
