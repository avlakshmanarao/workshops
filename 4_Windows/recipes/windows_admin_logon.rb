windows_user_privilege 'vagrant' do
  privilege %w(SeInteractiveLogonRight)
  action :add
end