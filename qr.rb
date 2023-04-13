require "rqrcode"

# using RQRCode: :QRCode class to encode some text
qrcode = RQRCode::QRCode.new("https://camille-arce.github.io/")

# Using the .as_png method to create a 500px by 500px image
url_png = qrcode.as_png({ :size => 600, :color => "black", :fill => "tan" })

#writing the imade data to a file
IO.binwrite("url_qrcode.png", url_png.to_s)

# ------------------------------------------------------------------------------------------ #
# Wifi QR Code

# wifiqrcode = RQRCode::QRCode.new "WIFI:T:WPA;S:IllinoisNet;P: 
