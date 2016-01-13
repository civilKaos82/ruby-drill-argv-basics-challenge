require_relative "../contact"

describe Contact do
  let(:contact) { Contact.new({ first_name: "Lucrece", last_name: "May", phone: "419-555-8916", email: "lecrece.may@mail.com" }) }

  it "has a first name" do
    expect(contact.first_name).to eq "Lucrece"
  end

  it "has a last name" do
    expect(contact.last_name).to eq "May"
  end

  it "has a phone number" do
    expect(contact.phone).to eq "419-555-8916"
  end

  it "has an e-mail address" do
    expect(contact.email).to eq "lecrece.may@mail.com"
  end

  describe "#to_s" do
    it "formats itself as a string" do
      expected_string = <<-CONTACT_AS_A_STRING.gsub(/^ */, '')
        #{contact.first_name} #{contact.last_name}
        - phone:  #{contact.phone}
        - e-mail: #{contact.email}
      CONTACT_AS_A_STRING

      expect(contact.to_s).to eq expected_string
    end
  end
end
