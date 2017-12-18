Given("abro la aplicación web") do
  visit '/'
end

Given("hago clic en {string}") do |string|
  click_link(string)
end

Then("debería ver {string}") do |string|
  last_response.body.should =~ /#{string}/m
end