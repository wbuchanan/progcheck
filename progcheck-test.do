cscript "progcheck unit tests" adofile progcheck

rcof `"progcheck ivreg2, wh("ssc")"' == 0

rcof `"progcheck estout tuples ivreg2, wh("ssc")"' == 0

rcof `"progcheck estout tuples ivreg2, wh("ssc" "ssc" "ssc")"' == 0

rcof `"progcheck estout tuples ivreg2, wh("ssc" "ssc")"' == 198

rcof `"progcheck estout tuples ivreg2, wh("ssc" "ssc") p(1 1 1)"' == 0

rcof `"progcheck estout tuples ivreg2, wh("ssc" "ssc") p(1 2 1)"' == 0

rcof `"progcheck estout tuples ivreg2, wh("ssc" "ssc") p(1 2 2)"' == 0

rcof `"progcheck estout ivreg2 gllamm, wh("ssc" "http://www.gllamm.org") p(1 1 2)"' == 0

cap progcheck fakeprogramx, wh("http://www.paces-consulting.org/stata")
// Need to manually enter a value of n for the prompt
assert _rc == 601

rcof `"progcheck, wh("http://www.paces-consulting.org/stata")"' == 100
