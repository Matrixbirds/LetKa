# Write your MySQL query statement below
select Person.FirstName as FirstName, Person.LastName as LastName, Address.City as City, Address.State as State
  from Person
  left join Address on Person.PersonId=Address.PersonId;
