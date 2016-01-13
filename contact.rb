class Contact
  attr_reader :first_name, :last_name, :phone, :email

  def initialize(args)
    @first_name = args.fetch(:first_name)
    @last_name = args.fetch(:last_name)
    @phone = args.fetch(:phone)
    @email = args.fetch(:email)
  end
end
