require 'rdoc/task'

namespace :doc do
  
  desc "Create Horo formatted documentation for the Tour Scheduler (use rake doc:retour to rebuild the documentation)"
  RDoc::Task.new(:tour) do |rdoc|
    rdoc.generator = 'horo'
    rdoc.title     = 'Tour Scheduler'
    rdoc.main      = 'README_FOR_APP.rdoc'
    rdoc.rdoc_dir  = 'doc'
    rdoc.options   << '--exclude=/.*sprockets.*/'
  end

end