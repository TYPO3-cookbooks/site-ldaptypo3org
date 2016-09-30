# schema
default['openldap']['schemas'] = %w(core.schema cosine.schema inetorgperson.schema TYPO3.schema)
default['openldap']['basedn'] = 'o=typo3'

# SSL
default['site-ldaptypo3org']['ssl_certificate'] = 'wildcard.typo3.org'
default['openldap']['manage_ssl'] = false
default['openldap']['ssl_cert'] = File.join(node['ssl_certificates']['path'], node['site-ldaptypo3org']['ssl_certificate']) + ".crt"
default['openldap']['ssl_key']  = File.join(node['ssl_certificates']['path'], node['site-ldaptypo3org']['ssl_certificate']) + ".key"
default['openldap']['cafile']   = File.join(node['ssl_certificates']['path'], node['site-ldaptypo3org']['ssl_certificate']) + ".ca-bundle"
