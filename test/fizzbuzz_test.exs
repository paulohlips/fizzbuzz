defmodule FizzbuzzTest do
  use ExUnit.Case

  describe "build/1" do
    test "Should return a converted list when a valid file is provided" do
      expected_response =
        {:ok, [1, 2, :fizz, 4, :buzz, :fizz, 7, 8, :fizz, :buzz, :fizz, :fizzbuzz, :buzz]}

      assert Fizzbuzz.build("numbers.txt") == expected_response
    end
  end

  test "Should return an error when invalid file is provided" do
    expected_response = {:error, "Error while readind file :: enoent"}
    assert Fizzbuzz.build("enoent_file.txt") == expected_response
  end
end
