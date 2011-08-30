     
def create_html_file path
  html = <<MARKUP
  <html>
    <body>

    </body>
  </html>
MARKUP

  create_file path, html
end



def create_lorem_ipsum_html_file path, no_of_paragraphs
    paragraphs = ""
    no_of_paragraphs.times do 
      paragraphs += "<p>Lorem ipsum dolor sit amet</p>\n"
    end
  
    html = <<MARKUP
    <html>
      <body>
        #{paragraphs}
      </body>
    </html>
MARKUP
  
    create_file path, html
end



def create_file path, body
  File.open(path, "w") do |file|
    file.write body
  end
end