Given /^I have notes titled (.+)$/ do |titles|
  titles.split(', ').each do |title|
    Note.create(:title => title, :body => title)
  end
end

Then /^I have ([0-9]+) notes*$/ do |count|
  count.to_i.times { |x| TokyoNote.create(:title => "title#{x}", :body => "body#{x}")}
end

Given /^I have no notes$/ do
  Note.all.destroy
end

Then /^I should have ([0-9]+) notes*$/ do |count|
  Note.all.size.should == count.to_i
end
