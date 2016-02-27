require 'rmagick'
require 'kmeans-clusterer'

class ColorPalett
  def self.from_image(image_url, number_of_colors = 3)
    image = Magick::ImageList.new(image_url).first
    histogram = image.color_histogram
    data = []
    histogram.map{|c| data << to_rgb(c.first) }

    kmeans = KMeansClusterer.run number_of_colors, data, runs: 5

    kmeans.clusters.map{|c| to_hex(c.centroid.to_a.map(&:round)) }
  end

  def self.to_rgb(pixel)
    [:red, :green, :blue].map{|c| pixel.send(c) & 255}
  end

  def self.to_hex(color_array)
    "#" + color_array.map{|c| (c & 255).to_s(16).rjust(2, '0')}.join
  end
end
