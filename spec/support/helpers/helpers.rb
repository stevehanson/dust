module Helpers
  def load_fixture(path)
    JSON.parse(load_raw_fixture(path))
  end

  def load_raw_fixture(path)
    unless path.include?(".")
      path = "#{path}.json"
    end

    File.read("spec/fixtures/#{path}")
  end

  def with_modified_env(options, &block)
    ClimateControl.modify(options, &block)
  end
end
