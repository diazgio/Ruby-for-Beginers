# Condicionales

# is_authenticated = true

# if is_authenticated
#     puts "Admins's Screen"
# else
#     puts "Pantalla de Login"
# end

role = :superadmin

if role == :admin
    puts "Admins's Screen"
elsif role == :superadmin
    puts "Superadmins's Screen"
else
    puts "Login's Screen"
end