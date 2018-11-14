module Evernote
  class Importer
    def import(path)
      doc = Nokogiri::XML(File.read(path))

      doc.css("note").each do |node|
        children = node.children

        Record.create!(
          title: children.css("title").inner_text,
          content: parse_content(children.css("content")),
          date: children.css("created").inner_text,
          latitude: children.css("latitude").inner_text,
          longitude: children.css("longitude").inner_text,
          author: children.css("author").inner_text
        )
      end
    end

    private

    def parse_content(node)
      Nokogiri::XML(node.inner_text).css('en-note').children.inner_text
    end
  end
end
