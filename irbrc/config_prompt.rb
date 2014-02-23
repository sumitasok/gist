if ENV['RAILS_ENV']
  # Set up the prompt to be slightly more informative
  rails_env = ENV['RAILS_ENV'].downcase[0,3]
  current_app = Dir.pwd.split('/').last
  IRB.conf[:PROMPT].reverse_merge!(:RAILS_ENV => {:PROMPT_I=>"#{current_app} #{rails_env} >> ", :PROMPT_N=>"#{current_app} #{rails_env} >> ", :PROMPT_S=>nil, :PROMPT_C=>"?> ", :RETURN=>"=> %s\n"})
  IRB.conf[:PROMPT_MODE] = :RAILS_ENV
end

IRB.conf[:PROMPT].reverse_merge!(:SUMIT => {
                         :PROMPT_I => "#{IRB.conf[:PROMPT][:RVM][:PROMPT_I]} > \n",
                         :PROMPT_N => "#{IRB.conf[:PROMPT][:RVM][:PROMPT_N]} > \n",
                         :PROMPT_S => "#{IRB.conf[:PROMPT][:RVM][:PROMPT_S]} > \n",
                         :PROMPT_C => "#{IRB.conf[:PROMPT][:RVM][:PROMPT_C]} #({Time.now.to_i}) \n",
                         :RETURN   => "> => %s\n\n\n\n"
                 })
IRB.conf[:PROMPT_MODE] = :SUMIT
