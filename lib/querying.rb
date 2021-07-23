def select_books_titles_and_years_in_first_series_order_by_year
  "Write your SQL query here"
  "SELECT books.title, books.year FROM books WHERE series_id = 1 ORDER BY year;"
end

def select_name_and_motto_of_char_with_longest_motto
  "Write your SQL query here"
  "SELECT characters.name, characters.motto FROM characters ORDER BY length(motto) DESC LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
  "Write your SQL query here"
  "SELECT characters.species, COUNT(characters.species) FROM characters GROUP BY characters.species ORDER BY species DESC LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "Write your SQL query here"
  "SELECT authors.name, subgenres.name FROM authors INNER JOIN series ON series.author_id = authors.id JOIN subgenres ON subgenres.id = series.subgenre_id;"
end

def select_series_title_with_most_human_characters
  "Write your SQL query here"
  "SELECT series.title 
  FROM series 
  INNER JOIN books 
  ON books.series_id = series.id 
  INNER JOIN character_books 
  ON character_books.book_id = books.id 
  INNER JOIN characters 
  ON character_books.character_id = characters.id 
  WHERE characters.species='human' 
  GROUP BY series.title 
  ORDER BY COUNT(*) DESC LIMIT 1;"
end

def select_character_names_and_number_of_books_they_are_in
  "Write your SQL query here"
  "SELECT characters.name, COUNT(*) as book_count 
  FROM character_books 
  JOIN characters 
  ON character_books.character_id = characters.id 
  GROUP BY characters.name 
  ORDER BY book_count DESC, characters.name;"
end
