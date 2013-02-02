require 'cucumber/websteps'

Then /^the "([^"]*)" radio_button(?: within "([^"]*)")? should be checked$/ do |label, selector|
  with_scope(selector) do
    field_checked = find_field(label)['checked']
    if field_checked.respond_to? :should
      field_checked.should be_true
    else
      assert field_checked
    end
  end
end

Given /^pending step$/ do
  pending
end

Then /^I should have the following content:$/ do |fields|
  fields.rows_hash.each do |name, value|
    step %'I should see "#{name}"'
    step %'I should see "#{value}"'
  end
end
