#
# Cookbook:: tomcat-basic
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

group 'jenkins'

user 'jenkins' do
  gid 'jenkins'
end

application 'jenkins' do
  path         '/usr/local/jenkins'
  owner        'jenkins'
  group        'jenkins'
  repository   'http://mirrors.jenkins-ci.org/war/latest/jenkins.war'
  revision     '6facd94e958ecf68ffd28be371b5efcb5584c885b5f32a906e477f5f62bdb518-1'
    scm_provider Chef::Provider::RemoteFile::Deploy

  tomcat
end

file '/tmp/cjtest' do
  content 'Hello World! CJ'
end
