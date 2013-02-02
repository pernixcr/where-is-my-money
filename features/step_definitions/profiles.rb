Then /^I should see the following:$/ do |table|
  table.rows_hash.each do |field, value|
    step %{I should see "#{field}"}
    step %{I should see "#{value}"}
  end
end
