ActiveAdmin.register Situacion do
  permit_params :descripcion, :estado_id, :tag_list

  preserve_default_filters!
  filter :tags, collection: proc { ActsAsTaggableOn::Tag.most_used.limited }
  filter :base_tags, collection: proc { ActsAsTaggableOn::Tag.most_used.limited }
  remove_filter :taggings
  remove_filter :tag_taggings

  breadcrumb do
    [
      link_to('admin', admin_root_path),
      link_to('entidades', admin_entidades_path),
      link_to('subentidades', admin_subentidades_path),
      link_to('estados', admin_estados_path),
    ]
  end

  form do |f|
    f.inputs do
      f.input :estado
      f.input :descripcion
      f.input :tag_list, input_html: {
        class: "tokenizer-input",
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
      row :estado
      row :tag_list
    end
    active_admin_comments
  end

  index do
    selectable_column
    column :id
    column :descripcion
    column :tag_list
    column :estado do |s|
      s.estado.descripcion
    end
    column :subentidad
    column :created_at
    actions
  end
end
