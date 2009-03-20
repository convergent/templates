# purge.rb

def delete_if_existent(file_name)
  run "\[ -e #{file_name} \] && rm #{file_name}"
end

# Delete unnecessary files

%w(README public/index.html public/favicon.ico public/robots.txt public/images/rails.png).each do |file_name|
  delete_if_existent(file_name)
end
