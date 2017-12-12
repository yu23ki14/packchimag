ActiveAdmin.register Month do
  permit_params :year, :month, :title, :subtitle, :summary

  index do
    selectable_column
    id_column
    column :year
    column :month
    column :title
    column :subtitle
    column :summary
    column :created_at
    actions
  end

  #filter :email

  form do |f|
    f.inputs do
      f.input :year
      f.input :month
      f.input :title
      f.input :subtitle
      f.input :summary
    end
    f.actions
  end

end