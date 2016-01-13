require_relative 'contact'

# Create the contacts to search.
contact_data = [
  { first_name: "", last_name: "", phone: "", email: "" },
  { first_name: "", last_name: "", phone: "", email: "" },
  { first_name: "", last_name: "", phone: "", email: "" },
  { first_name: "", last_name: "", phone: "", email: "" },
  { first_name: "", last_name: "", phone: "", email: "" },
  { first_name: "", last_name: "", phone: "", email: "" },
  { first_name: "", last_name: "", phone: "", email: "" },
  { first_name: "", last_name: "", phone: "", email: "" },
  { first_name: "", last_name: "", phone: "", email: "" },
  { first_name: "", last_name: "", phone: "", email: "" }
]

contacts = contact_data.map { |data| Contact.new(data) }

