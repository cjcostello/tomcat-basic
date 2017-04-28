#
# Cookbook:: tomcat-basic
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.


package 'default-jre'
package 'default-jdk'

tomcat_install 'cj' do
  version '8.0.36'
end

#execute 'set jre home' do
#  command 'echo "JRE_HOME=/usr/lib/jvm/default-java/jre" > /etc/environment'
#end
#
#execute 'set java home' do 
#  'echo JAVA_HOME=/usr/lib/jvm/default-java > /etc/environment'
#end
#
#execute 'refresh environment' do
#  command 'source /etc/environment'
#end

ENV['JAVA_HOME'] = '/usr/lib/jvm/default-java'
ENV['JRE_HOME'] = '/usr/lib/jvm/default-java/jre'

tomcat_service 'cj' do
  action :enable, :start
end
