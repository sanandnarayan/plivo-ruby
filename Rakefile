require 'rubygems'
require 'rubygems/package_task'

spec = Gem::Specification.new do |s|
  s.name = "plivocldhelper"
  s.version = "0.1"
  s.author = "Team Plivo"
  s.email = "hello@plivo.com"
  s.homepage = "http://www.plivo.com"
  s.description = "A Ruby gem for communicating with the Plivo API and generating XML"
  s.platform = Gem::Platform::RUBY
  s.summary = "A Ruby gem for communicating with the Plivo API and generating XML"
  s.files = FileList["{lib}/*"].to_a
  s.require_path = "lib"
  s.test_files = FileList["{test}/response_spec.rb"].to_a
  s.has_rdoc = true
  s.extra_rdoc_files = ["README.rst"]
  s.add_dependency("builder", ">= 2.1.2")
end

Gem::PackageTask.new(spec) do |pkg|
  pkg.need_tar = true
end

task :default => "pkg/#{spec.name}-#{spec.version}.gem" do
    puts "generated latest version"
end
