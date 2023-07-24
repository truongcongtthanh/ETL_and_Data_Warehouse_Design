from dataqualitychecks import check_for_nulls
from dataqualitychecks import check_for_min_max
from dataqualitychecks import check_for_valid_values
from dataqualitychecks import check_for_duplicates
from dataqualitychecks import check_records

test1={
	"testname":"Check for nulls",
	"test":check_for_nulls,
	"column": "arrdate",
	"table": "dim_time"
}


test2={
	"testname":"Check for min and max",
	"test":check_for_min_max,
	"column": "month",
	"table": "dim_time",
	"minimum":1,
	"maximum":12
}


test3={
	"testname":"Check for valid values",
	"test":check_for_valid_values,
	"column": "weekday",
	"table": "dim_time",
	"valid_values":{'0','1','2','3','4','5','6'}
}


test4={
	"testname":"Check for duplicates",
	"test":check_for_duplicates,
	"column": "arrdate",
	"table": "dim_time"
}

test5={
	"testname":"Check number of record",
	"test":check_records,
	"table": "dim_time"
}

test6={
	"testname":"Check number of record",
	"test":check_records,
	"table": "dim_airport"
}

test7={
	"testname":"Check number of record",
	"test":check_records,
	"table": "dim_state"
}

test8={
	"testname":"Check number of record",
	"test":check_records,
	"table": "dim_visa"
}

test9={
	"testname":"Check number of record",
	"test":check_records,
	"table": "fact_immigration"
}
