# include_recipe 'atg::_decrypt_params'

directory "#{node[:atg][:tmp_dir]}/wlst" do
	owner 'root'
	group 'root'
	mode 00755
	recursive true
	action :create
end

directory "#{node[:atg][:log_dir]}/wlst" do
	owner 'root'
	group 'root'
	mode 00755
	recursive true
	action :create
end

["git", "ant"].each do |package|
	package "#{package}" do
		action :install
	end
end

