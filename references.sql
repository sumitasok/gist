-- usage of references query.
CREATE TABLE hobby (
  id INT NOT NULL AUTO_INCREMENT,
  person_id INT NOT NULL,
  hobby_name VARCHAR(255),
  PRIMARY KEY(id),
  FOREIGN KEY(person_id) REFERENCES person(id));


