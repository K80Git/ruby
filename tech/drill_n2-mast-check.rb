
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
=begin 
問題
user_data = [
  {
    user: {
        profile: {
            name: 'George'
        }
    }
  },
  {
    user: {
        profile: {
          name: 'Alice'
        }
    }
  },
  {
    user: {
        profile: {
            name: 'Taro'
        }
    }
  }
]


=end
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------


user_data = [
  {
    user: {
        profile: {
            name: 'George'
        }
    }
  },
  {
    user: {
        profile: {
          name: 'Alice'
        }
    }
  },
  {
    user: {
        profile: {
            name: 'Taro'
        }
    }
  }
]

user_data.each do |user|
  puts user[:user][:profile][:name]
end



#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
=begin 
解説


=end
#----------------------------------------
puts "----------------------------------------"
#----------------------------------------
