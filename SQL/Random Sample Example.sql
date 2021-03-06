Use AdventureWorks2016

select 
		randomID,count(*)total
from(
		SELECT [BusinessEntityID]
				,Concat([LastName],', ',[FirstName]) Name
				,convert(date,[ModifiedDate],120) as ModDate
				,ABS(Checksum(newID())) % 100 as RandomID
		FROM [AdventureWorks2016].[Person].[Person]
)x
group by randomID
order by randomID
 