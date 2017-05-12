ActiveAdmin.register Subentidad do
  permit_params :descripcion, :entidad_id
  breadcrumb do
    [
      link_to('admin', admin_root_path),
      link_to('entidades', admin_entidades_path),
    ]
  end
end
