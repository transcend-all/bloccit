def title_case(title)
  title.gsub(/Ms./, "Mr")
end

p title_case("
Ms. Mr. Ned Beatty
Ms. Diana Christensen
Ms. Mr. Max Schumacher
Ms. Mr. Robert Duvall
Ms. Mr. Frank Hackett
Ms. Beatrice Straight
Ms. Faye Dunaway
Ms. Mr. Howard Beale
Ms. Louise Schumacher
Ms. Mr. William Holden
Ms. Mr. Arthur Jensen
Ms. Carolyn Krigbaum
Ms. Cindy Grover
Ms. Mr. Peter Finch
")
