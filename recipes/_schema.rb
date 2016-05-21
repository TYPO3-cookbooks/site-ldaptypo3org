directory File.join(node['openldap']['dir'], 'schema') do
  owner node['openldap']['system_acct']
  group node['openldap']['system_group']
end

cookbook_file File.join(node['openldap']['dir'], 'schema', 'TYPO3.schema') do
  owner node['openldap']['system_acct']
  group node['openldap']['system_group']
end