app = data_bag_item("apps", "zenphoto")

ruby_block "remove_zenphoto_dummy" do
  block do
    Chef::Log.info("This is a dummy to load the cookbook, removing it now from the node's run_list")
    node.run_list.remove("recipe[zenphoto::dummy]") if node.run_list.include?("recipe[zenphoto::dummy]")
  end
  action :nothing
end
