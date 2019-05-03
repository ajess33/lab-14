-- 1
-- Query 1: CREATE TABLE BOOKSHELVES (id SERIAL PRIMARY KEY, name VARCHAR(255));
-- This first query was to create a bookshelves tables. It will have a primary key that SQL generates and a name
-- Timestamp: 1556896832856

-- 2
-- Query 2: INSERT INTO bookshelves(name) SELECT DISTINCT bookshelf FROM books;
-- This query will get all the unique values out of
-- Timestamp: 1556896861790

-- 3
-- Query 3: ALTER TABLE books ADD COLUMN bookshelf_id INT;
-- Now we are adding a column of each bookshelf id in order to connect each book to a certain bookshelf in the other table
-- Timestamp: 1556896996112

-- 4
-- Query 4: UPDATE books SET bookshelf_id=shelf.id FROM (SELECT * FROM bookshelves) AS shelf WHERE books.bookshelf = shelf.name;
-- This query finds a bookshelf row that has a matching name of the current book's bookshelf value. That bookshelf row ID is set and the value of the bookshelf_id property in the current book row
-- Timestamp: 1556899542276

-- 5
-- Query 5: ALTER TABLE books DROP COLUMN bookshelf;
-- Because the books table now has a bookshelf_id column as the foreign key, we now no longer need a string of each bookshelf. This query removes the column of bookshelf.
-- Timestamp: 1556899644920

-- 6
-- Query 6: ALTER TABLE books ADD CONSTRAINT fk_bookshelves FOREIGN KEY (bookshelf_id) REFERENCES bookshelves(id);
-- This query sets the bookshelf_id from the books table as a foreign key to reference the primary key in the bookshelves table. Now the books and bookshelves tables are connected
-- Timestamp: 1556899749667