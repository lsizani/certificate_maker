class WelcomeController < ApplicationController
  def index
  
  end
  
  def certificate
    respond_to do |format|
      @name = 'Sister Noxolo Ngubo'
      format.pdf do
          render pdf: "certificate_#{@name}",
                 template: 'welcome/certificate.html.erb',
                 disposition: 'attachment',
                 show_as_html: false,
                 orientation: 'Landscape',
                 layout: 'pdf',
                 lowquality: true,
                 disable_javascript: false,
                 no_pdf_compression: false,
                 disable_smart_shrinking: false,
                 image_quality: 99,
                 page_size: 'A4',
                 enable_plugins: true,
                 margin: {
                   top: 15,
                   bottom: 15,
                   left: 10,
                   right: 10
                 }
        
      end
    end
  end
end