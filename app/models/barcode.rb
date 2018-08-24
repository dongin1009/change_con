class Barcode < ApplicationRecordr
    require 'barby'
    require 'barby/vendor'
    require 'barby/version'
    require 'barby/barcode/code_39'
    require 'barby/outputter/ascii_outputter'
    barcode = Barby::Code39.new('I am losing sleep over their racket', true)
    File.open('code39.png', 'w'){|f|
     f.write barcode.to_png
}
 def home
    @barcode = Barby::EAN13.new('012345678912')
 end
end
