require "open3"

lessons = {
  "kata.rb" => "ruby kata.rb",
  "kata.js" => "node kata.js",
  "kata.go" => "go run kata.go",
  "kata.py" => "python kata.py",
  "kata.c" => "make kata && ./kata",
  "kata.java" => "javac Kata.java && java Kata",
  "kata.cr" => "crystal run kata.cr"
}

desc "Run all experiments"
task :all do
  lessons.each do |file, command|
    Open3.popen3(command) do |stdin, stdout, stderr, wait_thr|
      exit_status = wait_thr.value
      if exit_status.success?
        puts "Building #{file} ran successfully"
      else
        puts "Building #{file} failed with status #{exit_status}"
      end
    end
  end
end
