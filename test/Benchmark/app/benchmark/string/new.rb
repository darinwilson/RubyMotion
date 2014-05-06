# -*- coding: utf-8 -*-
def string_new(x)
  ascii = "The quick brown fox jumps over the lazy dog."
  utf8  = "飛べねぇ豚はタダの豚だ...................."

  x.report "literal with ASCII" do
    1000000.times do
      "The quick brown fox jumps over the lazy dog."
    end
  end

  x.report "literal with UTF8" do
    1000000.times do
      "飛べねぇ豚はタダの豚だ...................."
    end
  end

  x.report "new with ASCII" do
    100000.times do
      String.new(ascii)
    end
  end

  x.report "new with UTF8" do
    100000.times do
      String.new(utf8)
    end
  end
end