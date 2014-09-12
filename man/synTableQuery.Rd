\name{synTableQuery}
\alias{synTableQuery}
\docType{methods}
\title{
synTableQuery
}
\description{
Query a Synapse Table
}
\usage{synTableQuery(sqlString, loadResult=TRUE, verbose=TRUE)}
\arguments{
	\item{sqlString}{
	The query to execute.  For complete syntax description see:
	rest.synapse.org/POST/table/query/async/start.html.
	}
	\item{loadResult}{
	If true then return the query result, else return the path of a csv file containing the result.
	}
	\item{verbose}{
	If TRUE then print progress information while results are retrieved.
	}
	\item{filePath}{
	Location to which the csv file version of the query is stored.  If omitted the result will be written in the 
	default file cache location.
	}
}
\value{
If loadResult is TRUE and if the query is not an aggregation query, then the result is a Table object
with a 'values' slot holding the query results in a data frame.
If loadResult is TRUE and if the query is an aggregation query, then the result is a Table object
with a 'values' slot holding the numeric query result.
If loadResult is FALSE then the result is a Table object with a 'filePath' slot holding the path to
a csv-formatted file of results.
}
\seealso{
\code{\link{Table}}
}