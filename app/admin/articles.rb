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

  form multipart: true do |f|
    f.inputs Article do
      f.input :title
      f.input :subtitle
      f.cktext_area :contents, :as => :ckeditor
      f.input :month
      f.actions
    end
  end

end
