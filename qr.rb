require "rqrcode"

# using RQRCode: :QRCode class to encode some text
qrcode = RQRCode::QRCode.new("https://camille-arce.github.io/")

# Using the .as_png method to create a 500px by 500px image
png = qrcode.as_png({ :size => 500})

#writing the imade data to a file
IO.binwrite("theqrcode.png", png.to_s)
