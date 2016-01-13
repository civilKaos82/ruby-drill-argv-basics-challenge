class Contact
  attr_reader :first_name, :last_name, :phone, :email

  def initialize(args)
    @first_name = args.fetch(:first_name)
    @last_name = args.fetch(:last_name)
    @phone = args.fetch(:phone)
    @email = args.fetch(:email)
  end

  def to_s
    <<-CONTACT_AS_A_STRING.gsub(/^ */, '')
      #{first_name} #{last_name}
      - phone:  #{phone}
      - e-mail: #{email}
    CONTACT_AS_A_STRING
  end
end
