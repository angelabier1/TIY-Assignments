class InvestmentClub
  attr_accessor :members, :location

  def initialize(applicants,location)
    @members = applicants.select{|applicant| applicant.is_a? (Mogul)}
    @location = location
  end

  def president
    @members.max_by {|member| member.net_worth}
  end
end