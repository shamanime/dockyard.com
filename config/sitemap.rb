Sitemap::Generator.instance.load :host => 'dockyard.com' do
  path :root, :priority => 1, :change_frequency => :weekly
  path :work, :priority => 1, :change_frequency => :weekly
  path :people, :priority => 1, :change_frequency => :weekly
  path :contact, :priory => 1, :change_frequency => :weekly
end
