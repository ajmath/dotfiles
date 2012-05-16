require 'rake'
require 'erb'

desc "install the dot files into user's home directory"
task :install, [:targetdir, :copy] do |t, args|
  args.with_defaults(:targetdir => ENV['HOME'])
  args.with_defaults(:copy => false)
  replace_all = false
  Dir['*'].each do |file|
    next if %w[Rakefile README.rdoc LICENSE].include? file
    
    if File.exist?(File.join(args.targetdir, ".#{file.sub('.erb', '')}"))
      if File.identical? file, File.join(args.targetdir, ".#{file.sub('.erb', '')}")
        puts "identical #{args.targetdir}/.#{file.sub('.erb', '')}"
      elsif replace_all
        replace_file(file, args.targetdir, args.copy)
      else
        print "overwrite #{args.targetdir}/.#{file.sub('.erb', '')}? [ynaq] "
        case $stdin.gets.chomp
        when 'a'
          replace_all = true
          replace_file(file, args.targetdir, args.copy)
        when 'y'
          replace_file(file, args.targetdir, args.copy)
        when 'q'
          exit
        else
          puts "skipping #{args.targetdir}/.#{file.sub('.erb', '')}"
        end
      end
    else
      link_file(file,args.targetdir, args.copy)
    end
  end
end

def replace_file(file, targetdir, copy)
  system %Q{rm -rf "#{targetdir}/.#{file.sub('.erb', '')}"}
  link_file(file,targetdir,copy)
end

def link_file(file, targetdir, copy)
  if file =~ /.erb$/
    puts "generating #{targetdir}/.#{file.sub('.erb', '')}"
    File.open(File.join(targetdir, ".#{file.sub('.erb', '')}"), 'w') do |new_file|
      new_file.write ERB.new(File.read(file)).result(binding)
    end
  else
    if copy
      puts "copying #{targetdir}/.#{file}"
      system %Q{cp -R -f "$PWD/#{file}" "#{targetdir}/.#{file}"}
    else
      puts "linking #{targetdir}/.#{file}"
      system %Q{ln -s "$PWD/#{file}" "#{targetdir}/.#{file}"}
    end
  end
end
