# frozen_string_literal: true

require_relative '../../test_helper'

class TestFakerTvShowsFuturama < Test::Unit::TestCase
  def setup
    @tester = Faker::TvShows::Futurama
  end

  def test_characters
    deterministically_verify -> { @tester.character } do |character|
      assert_match(/\w+/, character)
    end
  end

  def test_locations
    deterministically_verify -> { @tester.location } do |location|
      assert_match(/\w+/, location)
    end
  end

  def test_quote
    deterministically_verify -> { @tester.quote } do |quote|
      assert_match(/\w+/, quote)
    end
  end

  def test_hermes_catchphrases
    deterministically_verify -> { @tester.hermes_catchphrase } do |hermes_catchphrase|
      assert_match(/\w+/, hermes_catchphrase)
    end
  end
end
