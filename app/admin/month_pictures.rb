ActiveAdmin.register MonthPicture do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
  permit_params :id, :name, :photo, :month_id

  index do
    column "ID", :id
    column "name", :name
    column "thumb", :photo do |obj|
      image_tag(obj.photo.url(:thumb))
    end
    column "month", :month
    actions
  end

  form multipart: true do |f|
    f.inputs MonthPicture do
      f.input :name
      f.input :photo, as: :file, hint: image_tag(f.object.photo.url(:medium))
      f.input :month
      f.actions
    end
  end

  show do |b|
    attributes_table do
      row :name
      row :photo do
        image_tag(b.photo.url(:medium))
      end
      row :month
    end
    active_admin_comments
  end

end
