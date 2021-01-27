#
# Cookbook:: tomcat
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.

include_recipe '2_Tomcat::jdk_install'

include_recipe '2_Tomcat::tomcat_setup'