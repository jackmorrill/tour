module LayoutHelper

  def render_flash
    render :partial => 'layouts/flash', :locals => { :flash => flash } unless flash.blank?
  end
end