require 'pathname'

def recursive_xml_extension_to_txt base_dir
  xml_files = Dir[base_dir+'/**/*.xml']
 
  xml_files.each do |path|
    dirname = Pathname.new(path).dirname
    basename = Pathname.new(path).basename    
    new_path = path.gsub ".xml", ".txt"
    File.rename path, new_path
  end   
end
