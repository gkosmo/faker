# frozen_string_literal: true

require_relative '../../test_helper'

class TestFakerTvShowsSimpsons < Test::Unit::TestCase
  def setup
    @tester = Faker::TvShows::Simpsons
    Faker::Config.locale = nil
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

  def test_episode_titles
    deterministically_verify -> { @tester.episode_title } do |episode_title|
      assert_match(/\w+/, episode_title)
    end
  end

  def test_locales
    [nil, 'en', 'de'].each do |_locale_name|
      Faker::Config.locale = 'de'

      assert @tester.character.is_a? String
      assert @tester.location.is_a? String
      assert @tester.quote.is_a? String
    end
  end
end
