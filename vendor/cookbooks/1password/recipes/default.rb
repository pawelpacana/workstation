unless File.exists?("/Applications/1Password.app")
  remote_file "#{Chef::Config[:file_cache_path]}/1password.zip" do
    source "https://d13itkw33a7sus.cloudfront.net/dist/1P/mac/1Password-3.8.20.zip"
  end

  execute "unzip 1password" do
    command "unzip #{Chef::Config[:file_cache_path]}/1password.zip -d #{Chef::Config[:file_cache_path]}/"
  end

  execute "copy 1password to /Applications" do
    command "mv #{Chef::Config[:file_cache_path]}/1Password.app #{Regexp.escape("/Applications/1Password.app")}"
    group "admin"
  end

  ruby_block "test to see if 1Password.app was installed" do
    block do
      raise "1Password.app was not installed" unless File.exists?("/Applications/1Password.app")
    end
  end
end
