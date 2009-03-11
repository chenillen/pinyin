# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{pinyin}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Allen Chan"]
  s.date = %q{2009-03-11}
  s.description = %q{Convert Chinese Charaters to Pinyin letters.}
  s.email = %q{chenillen@gmail.com}
  s.extra_rdoc_files = ["lib/pinyin.rb", "README.rdoc"]
  s.files = ["dict/Mandarin.dat", "lib/pinyin.rb", "Manifest", "Rakefile", "README.rdoc", "pinyin.gemspec"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/chenillen/uniquify}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Pinyin", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{pinyin}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Convert Chinese Charaters to Pinyin letters.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
