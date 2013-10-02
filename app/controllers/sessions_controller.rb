class SessionsController < Devise::SessionsController
  def new
    @businesses = Business.all
    @abusiness = []
    @businesses.each do |business|
      @abusiness[business.id] = Business.where(:id => business.id).order('created_at DESC')
    end
    super
  end
  
end 