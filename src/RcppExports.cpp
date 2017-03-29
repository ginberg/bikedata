// Generated by using Rcpp::compileAttributes() -> do not edit by hand
// Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#include <Rcpp.h>

using namespace Rcpp;

// rcpp_import_to_trip_table
int rcpp_import_to_trip_table(const char* bikedb, Rcpp::CharacterVector datafiles, std::string city, bool quiet);
RcppExport SEXP bikedata_rcpp_import_to_trip_table(SEXP bikedbSEXP, SEXP datafilesSEXP, SEXP citySEXP, SEXP quietSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< const char* >::type bikedb(bikedbSEXP);
    Rcpp::traits::input_parameter< Rcpp::CharacterVector >::type datafiles(datafilesSEXP);
    Rcpp::traits::input_parameter< std::string >::type city(citySEXP);
    Rcpp::traits::input_parameter< bool >::type quiet(quietSEXP);
    rcpp_result_gen = Rcpp::wrap(rcpp_import_to_trip_table(bikedb, datafiles, city, quiet));
    return rcpp_result_gen;
END_RCPP
}
// rcpp_import_to_datafile_table
int rcpp_import_to_datafile_table(const char * bikedb, Rcpp::CharacterVector datafiles, std::string city, int nfiles);
RcppExport SEXP bikedata_rcpp_import_to_datafile_table(SEXP bikedbSEXP, SEXP datafilesSEXP, SEXP citySEXP, SEXP nfilesSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< const char * >::type bikedb(bikedbSEXP);
    Rcpp::traits::input_parameter< Rcpp::CharacterVector >::type datafiles(datafilesSEXP);
    Rcpp::traits::input_parameter< std::string >::type city(citySEXP);
    Rcpp::traits::input_parameter< int >::type nfiles(nfilesSEXP);
    rcpp_result_gen = Rcpp::wrap(rcpp_import_to_datafile_table(bikedb, datafiles, city, nfiles));
    return rcpp_result_gen;
END_RCPP
}
// rcpp_create_sqlite3_db
int rcpp_create_sqlite3_db(const char * bikedb);
RcppExport SEXP bikedata_rcpp_create_sqlite3_db(SEXP bikedbSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< const char * >::type bikedb(bikedbSEXP);
    rcpp_result_gen = Rcpp::wrap(rcpp_create_sqlite3_db(bikedb));
    return rcpp_result_gen;
END_RCPP
}
// rcpp_create_db_indexes
int rcpp_create_db_indexes(const char* bikedb, Rcpp::CharacterVector tables, Rcpp::CharacterVector cols, bool reindex);
RcppExport SEXP bikedata_rcpp_create_db_indexes(SEXP bikedbSEXP, SEXP tablesSEXP, SEXP colsSEXP, SEXP reindexSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< const char* >::type bikedb(bikedbSEXP);
    Rcpp::traits::input_parameter< Rcpp::CharacterVector >::type tables(tablesSEXP);
    Rcpp::traits::input_parameter< Rcpp::CharacterVector >::type cols(colsSEXP);
    Rcpp::traits::input_parameter< bool >::type reindex(reindexSEXP);
    rcpp_result_gen = Rcpp::wrap(rcpp_create_db_indexes(bikedb, tables, cols, reindex));
    return rcpp_result_gen;
END_RCPP
}
// rcpp_create_city_index
int rcpp_create_city_index(const char* bikedb, bool reindex);
RcppExport SEXP bikedata_rcpp_create_city_index(SEXP bikedbSEXP, SEXP reindexSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< const char* >::type bikedb(bikedbSEXP);
    Rcpp::traits::input_parameter< bool >::type reindex(reindexSEXP);
    rcpp_result_gen = Rcpp::wrap(rcpp_create_city_index(bikedb, reindex));
    return rcpp_result_gen;
END_RCPP
}
