# Generated by using Rcpp::compileAttributes() -> do not edit by hand
# Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#' import_to_station_table
#'
#' Inserts data into the table of stations in the database. Applies to those
#' cities for which station data are included and read as part of the actual
#' raw trips data: ny, boston, la, philly.
#'
#' @param dbcon Active connection to sqlite3 database
#' @param stationqry Station query constructed during reading of data with
#'        rcpp_import_to_trip_table ()
#'
#' @return integer result code
#'
#' @noRd
NULL

#' get_dc_stn_table
#'
#' Because some data files for Washington DC contain only the names of stations
#' and not their ID numbers, a std::map is generated here mapping those names
#' onto IDs for easy insertion into the trips data table.
#'
#' @param dbcon Active connection to SQLite3 database
#'
#' @return std::map of <station name, station ID>
#'
#' @note The map is tiny, so it's okay to return values rather than refs
#'
#' @noRd
NULL

#' get_dc_stn_ids
#'
#' Returns vector of all station IDs in the official DC Govt file. Only
#' trips from and to stations with codes in this file are loaded into db.
#'
#' @param dbcon Active connection to SQLite3 database
#'
#' @return std::unordered_set of <std::string station ID>
#'
#' @note The map is tiny, so it's okay to return values rather than refs
#'
#' @noRd
NULL

#' rcpp_import_stn_df
#'
#' Import a data.frame of station (id, name, lon, lat) into the SQLite3
#' database. Used for London and Chicago, for both of which stations are loaded
#' within R and passed to this function.
#'
#' @param dbcon Active connection to sqlite3 database
#' @param stn_data An R DataFrame of (id, name, lon, lat) for all stations
#'
#' @return Number of stations to potentially be added to stations table (if not
#'         already there).
#'
#' @noRd
rcpp_import_stn_df <- function(bikedb, stn_data, city) {
    .Call(`_bikedata_rcpp_import_stn_df`, bikedb, stn_data, city)
}

#' rcpp_import_to_trip_table
#'
#' Extracts bike data for NYC citibike
#' 
#' @param bikedb A string containing the path to the Sqlite3 database to 
#'        use. It will be created automatically.
#' @param datafiles A character vector containin the paths to the citibike 
#'        .csv files to import.
#' @param city First two letters of city for which data are to be added (thus
#'        far, "ny", "bo", "ch", "dc", and "la")
#' @param quiet If FALSE, progress is displayed on screen
#'
#' @return integer result code
#'
#' @noRd
rcpp_import_to_trip_table <- function(bikedb, datafiles, city, quiet) {
    .Call(`_bikedata_rcpp_import_to_trip_table`, bikedb, datafiles, city, quiet)
}

#' rcpp_import_to_file_table
#'
#' Creates and/or updates the table of datafile names in the database
#' 
#' @param bikedb A string containing the path to the Sqlite3 database to 
#'        use. 
#' @param datafiles List of names of files to be added - must be names of
#'        compressed \code{.zip} archives, not expanded \code{.csv} files
#' @param city Name of city associated with datafile
#'
#' @return Number of datafile names added to database table
#'
#' @noRd
rcpp_import_to_file_table <- function(bikedb, datafiles, city, nfiles) {
    .Call(`_bikedata_rcpp_import_to_file_table`, bikedb, datafiles, city, nfiles)
}

#' rcpp_create_sqlite3_db
#'
#' Initial creation of SQLite3 database
#' 
#' @param bikedb A string containing the path to the Sqlite3 database to 
#'        be created.
#'
#' @return integer result code
#'
#' @noRd
rcpp_create_sqlite3_db <- function(bikedb) {
    .Call(`_bikedata_rcpp_create_sqlite3_db`, bikedb)
}

#' rcpp_create_db_indexes
#'
#' Creates the specified indexes in the database to speed up queries. Note
#' that for the full dataset this may take some time.
#' 
#' @param bikedb A string containing the path to the sqlite3 database to use.
#' @param tables A vector with the tables for which to create indexes. This
#'        vector should be the same length as the cols vector.
#' @param cols A vector with the fields for which to create indexes.
#' @param reindex If false, indexes are created, otherwise they are simply
#'        reindexed.
#'
#' @return integer result code
#'
#' @noRd
rcpp_create_db_indexes <- function(bikedb, tables, cols, reindex) {
    .Call(`_bikedata_rcpp_create_db_indexes`, bikedb, tables, cols, reindex)
}

#' rcpp_create_city_index
#'
#' Creates city index in the database. This function is *always* run, while the
#' 'create_db_indexes' function is optionally run.
#' 
#' @param bikedb A string containing the path to the sqlite3 database to use.
#' @param reindex If false, indexes are created, otherwise they are simply
#'        reindexed.
#'
#' @return integer result code
#'
#' @noRd
rcpp_create_city_index <- function(bikedb, reindex) {
    .Call(`_bikedata_rcpp_create_city_index`, bikedb, reindex)
}

#' strtokm
#'
#' A string delimiter function based on strtok
#' Accessed from StackOverflow (using M Oehm):
#' http://stackoverflow.com/questions/29847915/implementing-strtok-whose-delimiter-has-more-than-one-character
#'
#' @noRd
NULL

#' str_token
#'
#' A delimiter function for comma-separated std::string
#'
#' @param line The line of text to be tokenised
#' @param delim The desired delimiter
#'
#' @return Next token
#'
#' @noRd
NULL

#' rm_dos_end
#'
#' Remove dos line ending from a character string
#'
#' @noRd
NULL

#' line_has_quotes
#'
#' Determine whether or not fields within a line are separated by double quotes
#' and a comma, or just comma separated.
#'
#' @param line Character string with or without double-quote-comma separation
#'
#' @return true if line is delimited by double quotes and commas, false if
#' commas only.
#'
#' @noRd
NULL

#' convert_datetime_ny
#'
#' Datetime strings for NYC change between 08/2014 and 09/2014 from
#' yyyy-mm-dd HH:MM:SS to either m/d/yyyy HH:MM:SS or m/d/yyyy H:M
#'
#' @noRd
NULL

#' convert_datetime_ch
#'
#' Datetime strings for Chicago vary between the following formats:
#' YYYY-MM-DD hh:mm
#' M/D/YYYY hh:mm
#' M/D/YYYY hh:mm:ss
#'
#' @noRd
NULL

#' convert_datetime_nabsa
#'
#' North American Bike Share Association (LA and Philadelphia) have identical
#' formats, but they still change from M/D/YYYY H:MM to a more regular
#' YYYY-MM-DD HH:MM:SS.
#'
#' @noRd
NULL

#' convert_datetime_dc
#'
#' Datetime strings for DC are either M/D/YYYY h:mm, where "mm" is always
#' 0-padded, or YYYY-MM-DD hh:mm, where "hh" is always 0-padded
#'
#' @noRd
NULL

#' convert_datetime_lo
#'
#' Only issue with London is sometimes seconds are present; sometimes not
#'
#' @noRd
NULL

