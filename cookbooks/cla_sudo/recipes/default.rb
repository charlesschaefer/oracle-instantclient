#
# Cookbook Name:: cla_sudo
# Recipe:: default
#
# Copyright 2011, Joshua Buysse, (C) Regents of the University of Minnesota
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# make sure this exists -- dont' know if sudoers will blow up if it's
# missing, but it will throw a wrench in other cookbooks using sudo

directory "/etc/sudoers.d" do 
  owner "root"
  group "root"
  mode "0755"
  action :create
end

cookbook_file "/etc/sudoers" do
  source "sudoers.default"
  owner "root"
  group "root"
  mode "440"
  action :create
end
