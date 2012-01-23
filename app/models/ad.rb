class Ad < ActiveRecord::Base
  before_save :create_file
  attr_writer :image_upload

  def create_file
    unless(self.imagem.class ==  String)
    path = File.join(Rails.root,"public/images",self.imagem.original_filename)
    # escreve o arquivo no local designado
    File.open(path, "wb") do |f|
      f.write(self.imagem.read)
    end
    self.imagem = self.imagem.original_filename
    end
  end

  def imagem_path
    "/images/#{self.imagem}"
  end
end
