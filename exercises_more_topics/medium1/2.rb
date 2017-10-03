class TextAnalyzer
  def process
    file = File.open("some_text.txt", 'r')
    yield(file.read)
    file.close
  end
end

analyze = TextAnalyzer.new

analyze.process { |text| puts "#{text.split("\n\n").count} paragraphs" }
analyze.process { |text| puts "#{text.split("\n").count} lines" }
analyze.process { |text| puts "#{text.split(" ").count} words" }