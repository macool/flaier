ActiveAdmin.register Resultado do
  permit_params :descripcion, :tag_list

  preserve_default_filters!
  filter :tags, collection: proc { ActsAsTaggableOn::Tag.most_used.limited }
  filter :base_tags, collection: proc { ActsAsTaggableOn::Tag.most_used.limited }
  remove_filter :taggings
  remove_filter :tag_taggings

  form do |f|
    f.inputs do
      f.input :descripcion
      f.input :tag_list, input_html: {
        value: f.object.tag_list.join(",")
      }
    end
    f.actions
  end

  show title: :descripcion do
    attributes_table do
      row :descripcion
      row :created_at
      row :updated_at
      row :tag_list
    end
    active_admin_comments
  end

  index do
    selectable_column
    column :id
    column :descripcion
    column :tag_list
    column :created_at
    column :updated_at
    actions
  end
end
