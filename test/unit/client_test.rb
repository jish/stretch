require 'test_helper'
require 'stretch/client'

class Stretch::ClientTest < Minitest::Test

  def test_mini_test
    assert_equal(1, 1)
  end

  def test_a_computer_without_corestorage
    client = Stretch::Client.new
    output = read_file('no_corestorage.txt')
    assert !client.check_diskutil_for_filevault(output)
  end

  def test_a_computer_with_corestorage_and_encryption_on
    client = Stretch::Client.new
    output = read_file('corestorage_list.txt')
    assert client.check_diskutil_for_filevault(output)
  end

  def test_a_computer_with_corestorage_and_encryption_off
    client = Stretch::Client.new
    output = read_file('corestorage_list_off.txt')
    assert !client.check_diskutil_for_filevault(output)
  end

  protected

  def read_file(basename)
    file = File.expand_path("../../files/#{basename}", __FILE__)
    File.read(file)
  end

end
