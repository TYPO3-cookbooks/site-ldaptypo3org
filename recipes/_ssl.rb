ssl_certificate node['site-ldaptypo3org']['ssl_certificate']

user node['openldap']['system_acct'] do
  system true
end

# add the openldap user to the ssl-cert group in order to allow to read the TLS cert/key
group "ssl-cert" do
  members node['openldap']['system_acct']
  append true
end