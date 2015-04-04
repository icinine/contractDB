class ContractSearch 
  attr_reader :date_from, :date_to
  
  def initialize(params)
    params ||={}
    @date_from = parsed_date(params[:date_from], 7.days.ago.to_date.to_s) #showing the last 7 days worth of contracts
     @date_to = parsed_date(params[:date_to], Date.today.to_s)
   end
   
   def scope
     Contract.where('validTo BETWEEN ? AND ?', @date_from, @date_to) 
   end
   
   private
   
   def parsed_date(validTo_string, default)
     Date.parse(validTo_string)
      rescue ArgumentError, TypeError
      default
      end
end