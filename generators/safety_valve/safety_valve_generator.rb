class SafetyValveGenerator < Rails::Generator::Base
  
  def manifest
    record do |m|
      errors_template_dir = File.join("app", "views", "safety_valve")
      m.directory errors_template_dir
      
      [File.join(errors_template_dir, '404.html.erb')].each do |file|
        m.file file, file
      end
    end
  end
end