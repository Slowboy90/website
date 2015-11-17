ActiveAdmin.register Project do
  index do
    column :title
    column :time
    column :minor
    column :work
    column :created_at
    column 'image' do |i|
      image_tag i.image.url(:smal_thumb).to_s
    end
    actions
  end
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end
end
