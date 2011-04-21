require 'spec_helper'

describe ChunkyPNG::Palette do
  it "should preserve the palette correctly" do
    filename = resource_file('palette1.png')
    image    = ChunkyPNG::Image.from_file(filename)
    pal      = image.palette
    # The palette should not get reduced simply becayuse the colors are unused 
    # or duplicated.
    pal.size.should > 3
  end  
  
end