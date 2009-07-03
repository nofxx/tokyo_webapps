Given /^I have ar notes titled (.+)$/ do |titles|
  titles.split(', ').each do |title|
    ArNote.create(:title => title, :body => title)
  end
end

Then /^I have ([0-9]+) ar notes*$/ do |count|
  count.to_i.times { |x| ArNote.create(:title => "title#{x}", :body => "body#{x}")}
end

Given /^I have no ar notes$/ do
  ArNote.delete_all
end

When /^I edit one ar note/ do
  visit "/notes/#{Note.first.id}/edit"
end


Then /^I should have ([0-9]+) ar notes*$/ do |count|
  ArNote.count.should == count.to_i
end
