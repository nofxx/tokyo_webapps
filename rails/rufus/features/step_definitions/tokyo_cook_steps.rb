Given /^I have tokyo notes titled (.+)$/ do |titles|
  titles.split(', ').each do |title|
    TokyoNote.create(:title => title, :body => title)
  end
end

Then /^I have ([0-9]+) tokyo notes*$/ do |count|
  count.to_i.times { |x| TokyoNote.create(:title => "title#{x}", :body => "body#{x}")}
end

Given /^I have no tokyo notes$/ do
  TokyoNote.all.destroy
end

Then /^I should have ([0-9]+) tokyo notes*$/ do |count|
  TokyoNote.all.size.should == count.to_i
end
