
#Phase 1 Assessment Reference:

#Blank Canvas for Classes

class Blank

  attr_reader :blank

  def initialize(args)
  	@blank = args[:blank]
  end

end


#sqlite3 instructions:

#zetcode: http://zetcode.com/db/sqlite/
#joins: http://zetcode.com/db/sqlite/joins/

#creating a db: 
sqlite3 dummy.db

#creating a table: 
CREATE TABLE users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name VARCHAR(64) NOT NULL,
  last_name  VARCHAR(64) NOT NULL,
  email VARCHAR(128) UNIQUE NOT NULL,
  created_at DATETIME NOT NULL,
  updated_at DATETIME NOT NULL
);

#inserting data into a table:
INSERT INTO users
(first_name, last_name, email, created_at, updated_at)
VALUES
 ('Lebron', 'James' 'lebronjames@nba.com', DATETIME('now'), DATETIME('now')),
  ('Kobe', 'Bryant', 'kobebryant@nba.com', DATETIME('now'), DATETIME('now')),
  ('Carmelo', 'Anthony', 'carmeloanthony@nba.com', DATETIME('now'), DATETIME('now')),
  ('Kevin', 'Love', 'kevinlove@nba.com', DATETIME('now'), DATETIME('now'));


#getting all data from the users table:
SELECT * FROM users;

#join statements for reference:
SELECT name, specialization FROM doctors
JOIN doctors_patients ON doctors.id = doctors_patients.doctor_id
WHERE patient_id = 1;

SELECT patient_id FROM doctors_patients
WHERE "primary_care?" = 0;

SELECT patients.name, COUNT(doctor_id) FROM doctors_patients
JOIN patients ON doctors_patients.patient_id = patients.id
GROUP BY patient_id;


#checking the schema:
.schema

#checking the info in your table:
.table




#binary_search link from Dylan: 
#http://rosettacode.org/wiki/Binary_search#Ruby

#BINARY SEARCH method:

#binary search
#[1,2,3,4,5]
#look for the index of the target, you can't destroy the array


#you need 4 arguments
#you can't do this with 2 arguments without destroying the array
#when you're looking for something in a binary search, you need these 4 arguments in order to look without destroying the array

#you need a min and max because you're changing the scope of where you're looking(placeholder variable that you'll be able to destroy while keeping the original array intact)
def binary_search(target, sorted_array, min=0, max=sorted_array.size)
  #base case - start with what you need to return if a condition does NOT pass
  #return -1 if that target does not exist AND if the length of the array is equal to 1
  return -1 if sorted_array[0] != target && sorted_array[min..max].size == 1
  middle = (min + max)/2 #look at the middle number(middle index of the middle number)
  return middle if sorted_array[middle] == target
  #will return the middle if it matches the target number we are looking for
  if sorted_array[middle] > target
     binary_search(target, sorted_array, min, middle)
  #if the middle number is greater than the target, then we know to look on the left hand side of that array
  else
    binary_search(target, sorted_array, middle, max)
  end
  end


array = [*3..10]
p binary_search(5, array)




LINKS:
#Intro to SQLite from Phase 0: https://github.com/mikeh0rn/phase-0-unit-3/tree/master/week-7/4-intro-to-SQLite
#Cookies and Ovens Solution with Tray Class: https://github.com/rock-doves-2014/cookies-and-ovens-challenge/blob/mikeh0rn-last_time_i_will_ever_do_this_challenge/source/cookies_and_ovens.rb








