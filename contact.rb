a = 0
student = Array.new(100) {Hash.new}

loop do
    puts "Add contact? (y/n)"
    status = gets.chomp
    if status == "n"
#            student[a].each_with_index do |u, index|
 #               puts "#{index + 1}. Name: #{u[:name]}, Phone Number: #{u[:phoneNumber]}, Gender: #{u[:gender]}"
  #          end
    break
    elsif status == "y"
        puts "Name?"
        student[a][:name] = gets.chomp
        puts "Phone number?"
        student[a][:phoneNumber] = gets.chomp
        puts "Gender? (male/female)"
        student[a][:gender] = gets.chomp
            if student[a][:gender] == "male" 
                student[a][:gender] = "male"
            elsif student[a][:gender] == "female" 
                student[a][:gender] = "female"
            else 
                student[a][:gender] = "male"
            end
        a = a+1
        b = 0        
        1.upto(a) do
            print("Name: #{student[b][:name]}, Phone number: #{student[b][:phoneNumber]}, Gender: #{student[b][:gender]}\n")
            b = b+1
        end
    else
        puts "Please type either 'y' or 'n'"
    end
end

   