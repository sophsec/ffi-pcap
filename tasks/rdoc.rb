
require 'rake/rdoctask'  

Rake::RDocTask.new do |rdoc|  
  if File.exist?('VERSION')  
    version = "- #{File.read('VERSION')}"
  else  
    version = ""  
  end  
  
  rdoc.rdoc_dir = 'rdoc'  
  rdoc.title = "FFI PCap Documentation #{version}"  
  rdoc.rdoc_files.include('README*')  
  rdoc.rdoc_files.include('ChangeLog*')  
  rdoc.rdoc_files.include('lib/**/*.rb')  
end 

