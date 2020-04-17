/*
A KBase module: perl_job
*/

module perl_job {
    typedef structure {
        string report_name;
        string report_ref;
    } ReportResults;

    /*
        This example function accepts any number of parameters and returns results in a KBaseReport
    */
    funcdef run_perl_job(mapping<string,UnspecifiedObject> params) returns (ReportResults output) authentication required;

};
