ActiveAdmin.register Estado do
  permit_params :descripcion, :subentidad_id
  breadcrumb do
    [
      link_to('admin', admin_root_path),
      link_to('entidades', admin_entidades_path),
      link_to('subentidades', admin_subentidades_path),
    ]
  end
end
