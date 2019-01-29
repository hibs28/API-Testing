# PostcodeIO
### Description
This project is to understand how to test the file recieved by an API(Application Programming Interfaces) using http methods. This is based around the system object model (SOM).

### Languages used
* Ruby

### API
http://postcodes.io/

### Ruby gems used
* JSON
* HTTParty
* RSpec

### Challenges
1. How to create tests for multiple postcodes. This was a challenge as I had to go within the hash, then loop the array and again, go into the hash to match certain items. For example one of the tests I created was to check if the postcodes I entered matched to each query.
2. How each item is nested.

### Learning points
1. There are different types of loop methods in ruby for different classes where a hash can use `.each_key, .each_pair` and for arrays `.each_index`.
2. If the path is a **POST** method you use single quotes and not double.
3. What is SOM and how to set one up.