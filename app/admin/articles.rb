ActiveAdmin.register Article do
  permit_params :title, :subtitle, :contents, :month_id

  index do
    selectable_column
    id_column
    column :title
    column :subtitle
    column :contents
    column :month
    column :created_at
    actions
  end

  #filter :email

  form do |f|
    f.inputs do
      f.input :title
      f.input :subtitle
      f.input :contents, :as => :ckeditor
      f.input :month
    end
    f.actions
  end

end
