# Your team is asked to refactor some legacy code used by the marketing team. One of the requirements of the project is to change the implementation from using basic looping structures to using iterative methods instead.

# Sample data:

mailing_campaign_leads = [
  {name: 'Emma Lopez', email: 'emma.lopez@some_mail.com', days_since_login: 423, mailing_list: true},
  {name: 'mike richards', email: 'michael.richards@some_mail.com', days_since_login: 23, mailing_list: false},
  {name: 'JANE WILLIAMS', email: 'jane_w95@my_mail.com', days_since_login: 16, mailing_list: true},
  {name: 'Ash Patel', email: 'ash_patel@my_mail.com', days_since_login: 22, mailing_list: true}
]

# Legacy code:

counter = 0

loop do
  break if counter == mailing_campaign_leads.size
  full_name = mailing_campaign_leads[counter][:name]
  names = full_name.split

  names_counter = 0
  loop do
    break if names_counter == names.size
    name = names[names_counter]
    names[names_counter] = name.capitalize

    names_counter += 1
  end

  capitalized_full_name = names.join(' ')
  mailing_campaign_leads[counter][:name] = capitalized_full_name

  counter += 1
end

usable_leads = []
counter = 0

loop do
  break if counter == mailing_campaign_leads.size
  last_login = mailing_campaign_leads[counter][:days_since_login]
  subscribed_to_list = mailing_campaign_leads[counter][:mailing_list]

  if last_login < 60 && subscribed_to_list
    usable_leads << mailing_campaign_leads[counter]
  end

  counter += 1
end

p mailing_campaign_leads
puts "============================"
p usable_leads

puts '============================ LAST'
mailing_campaign_leads.each do |lead|
  # lead[:name] => "Emma Lopez"
  p names = lead[:name].split # => ["Emma", "Lopez"]
  p lead[:name] #= names.map { |name| name.capitalize }.join(' ')
end

# The team comes up with four options to replace the legacy code, which you then discuss during a code review. Select all the options which replicate the functionality of the legacy code.
