# coding: utf-8
ActiveAdmin.register WorkItem do

  form do |f|
    f.inputs do
      f.input :work_type, collection: WORK_TYPES.map { |p| [p[1], p[0]] }
      f.input :name
    end

    f.has_many :photos do |ff|
      ff.input :title
      ff.input :image, as: :file, hint: ff.template.image_tag(ff.object.image.url(:thumb))
      ff.input :_destroy, as: :boolean, required: false, label: 'Удалить фотографию'
    end
    f.actions
  end

  show do |work_item|
    h3 work_item.name
    panel 'Фотографии' do
      ul do
        work_item.photos.each do |photo|
          li do
            image_tag photo.image.url(:thumb)
          end
        end

      end
    end
  end

end
