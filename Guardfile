# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard :minitest do
  watch(/_test\.rb/)
  watch(/stretch\/(\w+)\.rb/) { |match| "test/unit/#{match[1]}_test.rb" }
end
