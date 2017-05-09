ActiveAdmin.register IntroMessage do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :content
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

  form do |f|
    f.inputs 'Details' do
      f.input :content
      render partial: 'content_preview', locals: { intro_message: resource }
      #f.input :published_at, label: 'Publish Post At'
    end
    #f.inputs 'Content', :body
    f.actions
  end

end
