# frozen_string_literal: true

require_relative '../../test_helper'

class TestFakerTvShowsBreakingBad < Test::Unit::TestCase
  def setup
    @tester = Faker::TvShows::BreakingBad
  end

  def test_character
    deterministically_verify -> { @tester.character } do |character|
      assert_match(/\w+/, character)
    end
  end

  def test_episode
    deterministically_verify -> { @tester.episode } do |episode|
      assert_match(/\w+/, episode)
    end
  end
end
