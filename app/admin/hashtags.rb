ActiveAdmin.register ActsAsTaggableOn::Tag, as: 'Hashtags' do
  permit_params :name
end
