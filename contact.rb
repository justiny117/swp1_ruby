a = 0
student = Array.new(100) {Hash.new}

def view(numdata, namedata)  #전화번호부 출력
    b = 0        
    1.upto(numdata) do |index|
    puts("\n(#{index}). Name: #{namedata[b][:name]}, Phone number: #{namedata[b][:phoneNumber]}, Gender: #{namedata[b][:gender]}")
    b = b+1
    end
end


loop do                                                                 #1.
puts "\nWelcome to my contact list.\nPlease type '1' to VIEW, '2' to EDIT, '3' to EXIT contact list."
    input1 = gets.chomp                                                 
        if input1 == "1"                                                #1.1.
            view(a, student)
        elsif input1 == "2"                                             #1.2.
            puts "Please type '1' to ADD, '2' to DELETE contact list, '3' to RETURN.\n"
            loop do
                status = gets.chomp
                if status == "1"                                        #1.2.1.
                    puts "Name?"
                    student[a][:name] = gets.chomp
                    puts "Phone number?"
                    student[a][:phoneNumber] = gets.chomp
                    puts "Gender? (male/female)"
                    student[a][:gender] = gets.chomp
                        if student[a][:gender] == "female" 
                            student[a][:gender] = "female"
                        else 
                            student[a][:gender] = "male"
                        end
                    a = a+1
                    view(a, student)
                    break
                elsif status == "2"                                     #1.2.2.
                    puts "Please type the contact number of which you wish to delete."
                    loop do
                        deletion = gets.chomp.to_i  #숫자로 저장
                        loop do
                        puts "Is #{deletion} correct? (y/n)"
                            deletion2 = gets.chomp
                            if deletion2 == "y"                         #1.2.2.1.
                                student.delete_at(deletion-1)
                                a = a-1
                                view(a, student)
                                break
                            elsif deletion2 == "n"                      #1.2.2.2.
                                break
                            else                                        #1.2.2.3.
                                puts "Please type either 'y' or 'n'"    
                            end
                        end
                        break
                    end
                    break
                elsif status == '3'                                     #1.2.3.
                    break
                else                                                    #1.2.4.
                    puts "Please type '1', '2', or '3'\n"               
                end
            end
            puts ""
        elsif input1 == "3"                                             #1.3.
            puts "\nFarewell"
            break
        else                                                            #1.4.
            puts "Typo! Please start again\n"                           
        end
    
end

   