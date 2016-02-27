class Juicer < ActiveRecord::Base

  serialize :colors, Hash

  before_save :build_colors


  def build_colors
    self.colors = define_colors
  end

  def define_colors
    image_path = url

    generated_colors = ColorPalett.from_image(image_path, 5) # Generate 3 colors
    colors_indexed = {}
    (1..5).map{|i| colors_indexed[i] = generated_colors[i-1] }
    colors_indexed
  end
end
