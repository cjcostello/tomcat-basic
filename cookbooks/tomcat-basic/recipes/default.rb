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

execute 'echo "JRE_HOME=/usr/lib/jvm/default-java/jre" > /etc/environment'

execute 'echo JAVA_HOME=/usr/lib/jvm/default-java > /etc/environment'

execute 'source /etc/environment'

tomcat_service 'cj' do
  action :start
end
