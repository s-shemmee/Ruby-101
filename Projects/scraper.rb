require 'mechanize'

agent = Mechanize.new
agent.user_agent_alias = 'Mac Safari'

page = agent.get('https://amazon.com')

search_form = page.form('site-search')

search_form['field-keywords'] = "horse head mask"

page = search_form.submit

items = page.css('.s-result-item')

items.each do |item|
	puts item.css('h2').text, item.css('.s-price').text
end