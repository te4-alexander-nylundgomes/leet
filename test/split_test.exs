defmodule SplitTest do
  use ExUnit.Case
  doctest Split

  test "splits the string with space delimitter" do
    assert Split.split("Hello World", " ") == ["Hello", "World"]
  end

  test "doesn't crash when no occurences of delimitter" do
    assert Split.split("ABC", "D") == ["ABC"]
  end

  test "splits string with multiple delimitters" do
    assert Split.split("I have many spaces", " ") == ["I", "have", "many", "spaces"]
  end

  test "splits string where first element is delimitter" do
    assert Split.split(" ", " ") == ["",""]
  end

  test "splits empty string" do
    assert Split.split("", " ") == [""]
  end

  test "splits string with utf8 characters" do
    assert Split.split("i löve sweden", "ö") == ["i l", "ve sweden"]
  end
end
