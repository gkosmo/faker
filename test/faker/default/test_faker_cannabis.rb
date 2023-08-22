# frozen_string_literal: true

require_relative '../../test_helper'

class TestFakerCannabis < Test::Unit::TestCase
  def setup
    Faker::Config.locale = nil
  end

  def test_strain
    deterministically_verify -> { Faker::Cannabis.strain } do |strain|
      assert_match(/\w+/, strain)
    end
  end

  def test_cannabinoid_abbreviation
    deterministically_verify -> { Faker::Cannabis.cannabinoid_abbreviation } do |cannabinoid_abbreviation|
      assert_match(/\w+/, cannabinoid_abbreviation)
    end
  end

  def test_cannabinoid
    deterministically_verify -> { Faker::Cannabis.cannabinoid } do |cannabinoid|
      assert_match(/\w+/, cannabinoid)
    end
  end

  def test_terpene
    deterministically_verify -> { Faker::Cannabis.terpene } do |terpene|
      assert_match(/\w+/, terpene)
    end
  end

  def test_medical_use
    deterministically_verify -> { Faker::Cannabis.medical_use } do |medical_use|
      assert_match(/\w+/, medical_use)
    end
  end

  def test_health_benefit
    deterministically_verify -> { Faker::Cannabis.health_benefit } do |health_benefit|
      assert_match(/\w+/, health_benefit)
    end
  end

  def test_category
    deterministically_verify -> { Faker::Cannabis.category } do |category|
      assert_match(/\w+/, category)
    end
  end

  def test_type
    deterministically_verify -> { Faker::Cannabis.type } do |type|
      assert_match(/\w+/, type)
    end
  end

  def test_buzzword
    deterministically_verify -> { Faker::Cannabis.buzzword } do |buzzword|
      assert_match(/\w+/, buzzword)
    end
  end

  def test_brand
    deterministically_verify -> { Faker::Cannabis.brand } do |brand|
      assert_match(/\w+/, brand)
    end
  end

  def test_locales
    [nil, 'en', 'de'].each do |_locale_name|
      Faker::Config.locale = 'de'

      assert Faker::Cannabis.strain.is_a? String
      assert Faker::Cannabis.cannabinoid_abbreviation.is_a? String
      assert Faker::Cannabis.cannabinoid.is_a? String
      assert Faker::Cannabis.terpene.is_a? String
      assert Faker::Cannabis.medical_use.is_a? String
      assert Faker::Cannabis.health_benefit.is_a? String
      assert Faker::Cannabis.category.is_a? String
      assert Faker::Cannabis.type.is_a? String
      assert Faker::Cannabis.buzzword.is_a? String
      assert Faker::Cannabis.brand.is_a? String
    end
  end
end
