require "rails_helper"

describe Evernote::Importer do
  subject(:importer) { described_class.new }
  let(:fixture_path) { Rails.root.join("spec/fixtures/evernote/sample.enex") }

  describe "#import" do
    it "imports the file" do
      expect {
        importer.import(fixture_path)
      }.to change { Record.count }.by(1)

      record = Record.last
      expect(record).to have_attributes(
        title: "Sample Note",
        content: "This is a sample note",
        date: Time.parse("20181114T030114Z"),
        latitude: BigDecimal("30.4240767558"),
        longitude: BigDecimal("-97.7616655262"),
        author: "s.hanson5@gmail.com",
      )
    end
  end
end
