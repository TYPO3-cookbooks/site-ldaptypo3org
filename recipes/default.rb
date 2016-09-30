#
# Cookbook Name:: site-ldaptypo3org
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe "t3-base"

include_recipe "#{cookbook_name}::_ssl"
include_recipe "#{cookbook_name}::_schema"

############################
# Upstream Cookbook
############################

include_recipe "openldap::master"

# take the config template from this cookbook
resources("template[#{node['openldap']['dir']}/slapd.conf]").cookbook cookbook_name
resources(template: '/etc/default/slapd').cookbook cookbook_name