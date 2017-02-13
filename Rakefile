require "open3"

lessons = {
  "kata.rb" => "ruby kata.rb",
  "kata.js" => "node kata.js",
  "kata.go" => "go run kata.go",
  "kata.py" => "python kata.py",
  "kata.c" => "make kata && ./kata",
  "kata.java" => "javac Kata.java && java Kata",
  "kata.cr" => "crystal run kata.cr",
  "kata.el" => "emacs --script kata.el",
  "kata.rs" => "rustc kata.rs -o kata_rs && ./kata_rs"
}

desc "Run all experiments"
task :all do
  lessons.each do |file, command|
    started_at = Time.now
    Open3.popen3(command) do |stdin, stdout, stderr, wait_thr|
      exit_status = wait_thr.value
      elapsed_time = Time.now - started_at
      if exit_status.success?
        puts "Building #{file} ran successfully in #{elapsed_time} sec"
      else
        puts "Building #{file} failed with status #{exit_status}"
      end
    end
  end
end
