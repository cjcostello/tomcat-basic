#
# Cookbook:: tomcat-basic
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'java'

tomcat_install 'tomcat' do
  version '8.0.36'
end

tomcat_service 'tomcat' do
  action :start
#  env_vars [{ 'JRE_HOME' => '/usr/lib/jvm/default-java' }]
end
