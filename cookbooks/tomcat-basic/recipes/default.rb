#
# Cookbook:: tomcat-basic
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'java'

tomcat_install 'cj' do
  version '8.0.36'
end

tomcat_service 'cj' do
  action :start
  env_vars [{ 'JAVA_HOME' => '/usr/lib/jvm/default-java' }]
end
