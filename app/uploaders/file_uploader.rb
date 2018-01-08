class FileUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  def public_id
    Cloudinary::PreloadedFile.split_format(original_filename).first + "_" + Cloudinary::Utils.random_public_id[0,6]
  end
end
