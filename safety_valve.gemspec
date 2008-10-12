Gem::Specification.new do |s|
  s.name = %q{safety_valve}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Josh Nichols"]
  s.date = %q{2008-10-12}
  s.description = %q{Rails plugin to rescue common Rails exceptions, render an error with your look and feel, and return an appropriate HTTP status code}
  s.email = %q{josh@technicalpickles.com}
  s.homepage = %q{http://github.com/technicalpickles/safety_valve}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.2.0}
  s.summary = %q{Rails plugin to rescue common Rails exceptions, render an error with your look and feel, and return an appropriate HTTP status code}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if current_version >= 3 then
    else
    end
  else
  end
end
