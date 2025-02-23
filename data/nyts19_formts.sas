*Creating a SAS format file*;

libname in "C:\NYTS\2019";  *change path to your dataset library*;
libname library "C:\NYTS\2019";  *change path to your formats library*;

proc format library=library cntlout=library.formats;  /* for creating a SAS format file*/

value $Q1f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"01"="9 years old"
"02"="10 years old"
"03"="11 years old"
"04"="12 years old"
"05"="13 years old"
"06"="14 years old"
"07"="15 years old"
"08"="16 years old"
"09"="17 years old"
"10"="18 years old"
"11"="19 years old or older"
;
value $Q2f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"01"="Male"
"02"="Female"
;
value $Q3f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"01"="6th"
"02"="7th"
"03"="8th"
"04"="9th"
"05"="10th"
"06"="11th"
"07"="12th"
"08"="Ungraded or other grade"
;
value $Q4f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"01"="No, not of Hispanic, Latino, Latina, or Spanish origin"
"02"="Yes, Mexican, Mexican American, Chicano, or Chicana"
"03"="Yes, Puerto Rican"
"04"="Yes, Cuban"
"05"="Yes, Another Hispanic, Latino, Latina, or Spanish origin";
;
value $Q4Af
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="No, not of Hispanic, Latino, Latina, or Spanish origin";

value $Q4Bf
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="Yes, Mexican, Mexican American, Chicano, or Chicana";

value $Q4Cf
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="Yes, Puerto Rican";

value $Q4Df
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="Yes, Cuban";

value $Q4Ef
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="Yes, Another Hispanic, Latino, Latina, or Spanish origin"
;

value $Q5f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"01"="American Indian or Alaska Native"
"02"="Asian"
"03"="Black or African American"
"04"="Native Hawaiian or Other Pacific Islander"
"05"="White"
;

value $Q5Af
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="American Indian or Alaska Native";
value $Q5Bf
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="Asian";
value $Q5Cf
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="Black or African American";
value $Q5Df
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="Native Hawaiian or Other Pacific Islander";
value $Q5Ef
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="White";



value $Q6f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"01"="Yes"
"02"="No"
;
value $Q7f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"01"="8 years old or younger"
"02"="9  years old"
"03"="10 years old"
"04"="11 years old"
"05"="12 years old"
"06"="13 years old"
"07"="14 years old"
"08"="15 years old"
"09"="16 years old"
"10"="17 years old"
"11"="18 years old"
"12"="19 years old or older"
;
value $Q8f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"01"="1 or more puffs but never a whole cigarette"
"02"="1 cigarette"
"03"="2 to 5 cigarettes"
"04"="6 to 15 cigarettes (about 1/2 a pack total)"
"05"="16 to 25 cigarettes (about 1 pack total)"
"06"="26 to 99 cigarettes (more than 1 pack, but less than 5 packs)"
"07"="100 or more cigarettes (5 or more packs)"
;
value $Q9f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
;
value $Q10f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"01"="Earlier today"
"02"="Not today but sometime during the past 7 days"
"03"="Not during the past 7 days but sometime during the past 30 days"
"04"="Not during the past 30 days but sometime during the past 6 months"
"05"="Not during the past 6 months but sometime during the past year"
"06"="1 to 4 years ago"
"07"="5 or more years ago"
;
value $Q11f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"01"="Less than 1 cigarette per day"
"02"="1 cigarette per day"
"03"="2 to 5 cigarettes per day"
"04"="6 to 10 cigarettes per day"
"05"="11 to 20 cigarettes per day"
"06"="More than 20 cigarettes per day"
;
value $Q12f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"01"="I did not smoke a usual brand"
"02"="American Spirit"
"03"="Camel"
"04"="GPC, Basic, or Doral"
"05"="Kool"
"06"="Marlboro"
"07"="Newport"
"08"="L&M"
"09"="Pall Mall"
"10"="Winston"
"11"="Some other brand not listed here (Please specify)"
"12"="Not sure"
;
value $Q13f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"01"="Yes"
"02"="No"
"03"="Not sure"
;
value $Q14f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"01"="Definitely yes"
"02"="Probably yes"
"03"="Probably not"
"04"="Definitely not"
;
value $Q15f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"01"="Definitely yes"
"02"="Probably yes"
"03"="Probably not"
"04"="Definitely not"
;
value $Q16f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"01"="Definitely yes"
"02"="Probably yes"
"03"="Probably not"
"04"="Definitely not"
;
value $Q17f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"01"="Definitely yes"
"02"="Probably yes"
"03"="Probably not"
"04"="Definitely not"
;
value $Q18f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"01"="Yes"
"02"="No"
;
value $Q19f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"01"="8 years old or younger"
"02"="9  years old"
"03"="10 years old"
"04"="11 years old"
"05"="12 years old"
"06"="13 years old"
"07"="14 years old"
"08"="15 years old"
"09"="16 years old"
"10"="17 years old"
"11"="18 years old"
"12"="19 years old or older"
;
value $Q20f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
;
value $Q21f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"01"="Less than 1 cigar, cigarillo, or little cigar per day"
"02"="1 per day"
"03"="2 to 5 per day"
"04"="6 to 10 per day"
"05"="11 to 20 per day"
"06"="More than 20 per day"
;
value $Q22f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"01"="Regular, large cigars"
"02"="Cigarillos"
"03"="Little Cigars"
"04"="Don't Know"
;
value $Q22Af
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="Regular, large cigars";
value $Q22Bf
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="Cigarillos";
value $Q22Cf
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="Little Cigars";
value $Q22Df
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="Don't Know";

value $Q23f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"01"="Definitely yes"
"02"="Probably yes"
"03"="Probably not"
"04"="Definitely not"
;
value $Q24f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"01"="Definitely yes"
"02"="Probably yes"
"03"="Probably not"
"04"="Definitely not"
;
value $Q25f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"01"="Definitely yes"
"02"="Probably yes"
"03"="Probably not"
"04"="Definitely not"
;
value $Q26f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"01"="Definitely yes"
"02"="Probably yes"
"03"="Probably not"
"04"="Definitely not"
;
value $Q27f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"01"="Yes"
"02"="No"
;
value $Q28f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"01"="8 years old or younger"
"02"="9  years old"
"03"="10 years old"
"04"="11 years old"
"05"="12 years old"
"06"="13 years old"
"07"="14 years old"
"08"="15 years old"
"09"="16 years old"
"10"="17 years old"
"11"="18 years old"
"12"="19 years old or older"
;
value $Q29f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
;
value $Q30f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"01"="Definitely yes"
"02"="Probably yes"
"03"="Probably not"
"04"="Definitely not"
;
value $Q31f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"01"="Definitely yes"
"02"="Probably yes"
"03"="Probably not"
"04"="Definitely not"
;
value $Q32f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"01"="Definitely yes"
"02"="Probably yes"
"03"="Probably not"
"04"="Definitely not"
;
value $Q33f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"01"="Definitely yes"
"02"="Probably yes"
"03"="Probably not"
"04"="Definitely not"
;
value $Q34f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"01"="Yes"
"02"="No"
;
value $Q35f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"01"="8 years old or younger"
"02"="9  years old"
"03"="10 years old"
"04"="11 years old"
"05"="12 years old"
"06"="13 years old"
"07"="14 years old"
"08"="15 years old"
"09"="16 years old"
"10"="17 years old"
"11"="18 years old"
"12"="19 years old or older"
;
value $Q36f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"001"="1 day"
"002"="2 to 10 days"
"003"="11 to 20 days"
"004"="21 to 50 days"
"005"="51 to 100 days"
"006"="Over 100 days"
;
value $Q37f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
;
value $Q38f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"01"="Earlier today"
"02"="Not today but sometime during the past 7 days"
"03"="Not during the past 7 days but sometime during the past 30 days"
"04"="Not during the past 30 days but sometime during the past 6 months"
"05"="Not during the past 6 months but sometime during the past year"
"06"="1 to 4 years ago"
"07"="5 or more years ago"
;
value $Q39f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"001"="A disposable e-cigarette"
"002"="An e-cigarette that uses pre-filled pods or cartridges (e.g. JUUL)"
"003"="An e-cigarette with a tank that you refill with liquids"
"004"="A mod system (a mod system is customized by the user with their own combination of batteries, atomizers, etc.)"
"005"="I don�t know the type"
;
value $Q40f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"001"="I did not use a usual brand"
"002"="Blu"
"003"="JUUL"
"004"="Logic"
"005"="MarkTen"
"006"="NJOY"
"007"="Vuse"
"008"="Some other brand not listed here (specify):"
;
value $Q41f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"001"="A gas station or convenience store"
"002"="A grocery store"
"003"="A drugstore"
"004"="A mall or shopping center kiosk/stand"
"005"="On the Internet"
"006"="A vape shop or other store that only sells e-cigarettes"
"007"="Some other place not listed here"
"008"="From a family member"
"009"="From a friend"
"010"="From some other person that is not a family member or a friend"
;

value $Q41Af
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="A gas station or convenience store";
value $Q41Bf
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="A grocery store";
value $Q41Cf
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="A drugstore";
value $Q41Df
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="A mall or shopping center kiosk/stand";
value $Q41Ef
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="On the Internet";
value $Q41Ff
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="A vape shop or other store that only sells e-cigarettes";
value $Q41Gf
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="Some other place not listed here";
value $Q41Hf
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="From a family member";
value $Q41If
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="From a friend";
value $Q41Jf
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="From some other person that is not a family member or a friend";

value $Q42f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"001"="Friend or family member used them"
"002"="To try to quit using other tobacco products, such as cigarettes"
"003"="They cost less than other tobacco products, such as cigarettes"
"004"="They are easier to get than other tobacco products, such as cigarettes"
"005"="I�ve seen people on TV, online, or in movies use them"
"006"="They are less harmful than other forms of tobacco, such as cigarettes"
"007"="They are available in flavors, such as mint, candy, fruit, or chocolate"
"008"="I can use them unnoticed at home or at school"
"009"="I was peer pressured into using them"
"010"="I can use them to do tricks"
"011"="I was curious about them"
"012"="I used them for some other reason (specify):"
;

value $Q42Af
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="Friend or family member used them";
value $Q42Bf
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="To try to quit using other tobacco products, such as cigarettes";
value $Q42Cf
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="They cost less than other tobacco products, such as cigarettes";
value $Q42Df
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="They are easier to get than other tobacco products, such as cigarettes";
value $Q42Ef
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="I've seen people on TV, online, or in movies use them";
value $Q42Ff
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="They are less harmful than other forms of tobacco, such as cigarettes";
value $Q42Gf
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="They are available in flavors, such as mint, candy, fruit, or chocolate";
value $Q42Hf
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="I can use them unnoticed at home or at school";
value $Q42If
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="I was peer pressured into using them";
value $Q42Jf
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="I can use them to do tricks";
value $Q42Kf
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="I was curious about them";
value $Q42Lf
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="I used them for some other reason (specify):";

value $Q43f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"01"="Definitely yes"
"02"="Probably yes"
"03"="Probably not"
"04"="Definitely not"
;
value $Q44f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"01"="Definitely yes"
"02"="Probably yes"
"03"="Probably not"
"04"="Definitely not"
;
value $Q45f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"01"="Definitely yes"
"02"="Probably yes"
"03"="Probably not"
"04"="Definitely not"
;
value $Q46f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"01"="Definitely yes"
"02"="Probably yes"
"03"="Probably not"
"04"="Definitely not"
;
value $Q47f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"01"="Yes"
"02"="No"
;
value $Q48f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"01"="8 years old or younger"
"02"="9  years old"
"03"="10 years old"
"04"="11 years old"
"05"="12 years old"
"06"="13 years old"
"07"="14 years old"
"08"="15 years old"
"09"="16 years old"
"10"="17 years old"
"11"="18 years old"
"12"="19 years old or older"
;
value $Q49f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
;
value $Q50f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"001"="At my house"
"002"="At a friend�s house"
"003"="At a family member�s house, other than my house"
"004"="At a hookah bar"
"005"="At a caf� or restaurant"
"006"="Some other place not listed here"
;

value $Q50Af
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="At my house";
value $Q50Bf
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="At a friend's house";
value $Q50Cf
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="At a family member's house, other than my house";
value $Q50Df
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="At a hookah bar";
value $Q50Ef
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="At a cafe or restaurant";
value $Q50Ff
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="Some other place not listed here";

value $Q51f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"01"="Definitely yes"
"02"="Probably yes"
"03"="Probably not"
"04"="Definitely not"
;
value $Q52f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"01"="Definitely yes"
"02"="Probably yes"
"03"="Probably not"
"04"="Definitely not"
;
value $Q53f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"01"="Definitely yes"
"02"="Probably yes"
"03"="Probably not"
"04"="Definitely not"
;
value $Q54f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"01"="Definitely yes"
"02"="Probably yes"
"03"="Probably not"
"04"="Definitely not"
;

value $Q55f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"001"="Roll-your-own cigarettes"
"002"="Pipes filled with tobacco (not hookah or waterpipe)"
"003"="Snus, such as Camel, Marlboro, or General Snus"
"004"="Dissolvable tobacco products such as Ariva, Stonewall, Camel orbs, Camel sticks, Marlboro sticks, or Camel strips"
"005"="Bidis (small brown cigarettes wrapped in a leaf)"
"006"="I have never tried any of the products listed above"
;


value $Q55Af
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="Roll-your-own cigarettes";
value $Q55Bf
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="Pipes filled with tobacco (not hookah or waterpipe)";
value $Q55Cf
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="Snus, such as Camel, Marlboro, or General Snus";
value $Q55Df
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="Dissolvable tobacco products such as Ariva, Stonewall, Camel orbs, Camel sticks, Marlboro sticks, or Camel strips";
value $Q55Ef
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="Bidis (small brown cigarettes wrapped in a leaf)";
value $Q55Ff
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="I have never tried any of the products listed above";

value $Q56f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"001"="Roll-your-own cigarettes"
"002"="Pipes filled with tobacco (not hookah or waterpipe)"
"003"="Snus, such as Camel, Marlboro, or General Snus"
"004"="Dissolvable tobacco products such as Ariva, Stonewall, Camel orbs, Camel sticks, Marlboro sticks, or Camel strips"
"005"="Bidis (small brown cigarettes wrapped in a leaf)"
"006"="I have not used any of the products listed above in the past 30 days"
;


value $Q56Af
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="Roll-your-own cigarettes";
value $Q56Bf
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="Pipes filled with tobacco (not hookah or waterpipe)";
value $Q56Cf
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="Snus, such as Camel, Marlboro, or General Snus";
value $Q56Df
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="Dissolvable tobacco products such as Ariva, Stonewall, Camel orbs, Camel sticks, Marlboro sticks, or Camel strips";
value $Q56Ef
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="Bidis (small brown cigarettes wrapped in a leaf)";
value $Q56Ff
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="I have not used any of the products listed above in the past 30 days";

value $Q57f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"001"="Yes"
"002"="No"
"003"="Don�t know/Not Sure"
;
value $Q58f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"001"="Yes"
"002"="No"
"003"="Don�t know/Not Sure"
;
value $Q59f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
;
value $Q60f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
;
value $Q61f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"001"="Cigars, cigarillos, or little cigars"
"002"="Chewing tobacco, snuff, or dip"
"003"="E-cigarettes"
"004"="Tobacco in a hookah or waterpipe"
"005"="Pipe filled with tobacco (not waterpipe)"
"006"="Snus"
"007"="Dissolvable tobacco products"
"008"="Bidis"
"009"="Roll-your-own cigarettes"
"010"="Heated tobacco products"
"011"="I did not use any flavored tobacco products in the past 30 days"
;

value $Q61Af
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="Cigars, cigarillos, or little cigars";
value $Q61Bf
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="Chewing tobacco, snuff, or dip";
value $Q61Cf
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="E-cigarettes";
value $Q61Df
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="Tobacco in a hookah or waterpipe";
value $Q61Ef
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="Pipe filled with tobacco (not waterpipe)";
value $Q61Ff
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="Snus";
value $Q61Gf
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="Dissolvable tobacco products";
value $Q61Hf
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="Bidis";
value $Q61If
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="Roll-your-own cigarettes";
value $Q61Jf
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="Heated tobacco products";
value $Q61Kf
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="I did not use any flavored tobacco products in the past 30 days";

value $Q62f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"001"="Menthol or mint"
"002"="Clove or spice"
"003"="Fruit"
"004"="Chocolate"
"005"="Alcoholic drink (such as wine, cognac, margarita, or other cocktails)"
"006"="Candy, desserts or other sweets"
"007"="Some other flavor not listed here (specify):"
;


value $Q62Af
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="Menthol or mint";
value $Q62Bf
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="Clove or spice";
value $Q62Cf
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="Fruit";
value $Q62Df
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="Chocolate";
value $Q62Ef
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="Alcoholic drink (such as wine, cognac, margarita, or other cocktails)";
value $Q62Ff
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="Candy, desserts or other sweets";
value $Q62Gf
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="Some other flavor not listed here (specify):";

value $Q63f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"01"="Yes"
"02"="No"
;
value $Q64f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"001"="I do not want to use tobacco products"
"002"="Within 5 minutes"
"003"="From 6 to 30 minutes"
"004"="From more than 30 minutes to 1 hour"
"005"="After more than 1 hour but less than 24 hours"
"006"="I rarely want to use tobacco products"
;
value $Q65f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"001"="Yes, during the next 30 days"
"002"="Yes, during the next 6 months"
"003"="Yes, during the next 12 months"
"004"="Yes, but not during the next 12 months"
"005"="No, I am not thinking about quitting the use of all tobacco products"
;
value $Q66f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"001"="I did not try to quit all tobacco products during the past 12 months"
"002"="1 time"
"003"="2 times"
"004"="3 to 5 times"
"005"="6 to 9 times"
"006"="10 or more times"
;
value $Q67f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"001"="Yes, during the next 30 days"
"002"="Yes, during the next 6 months"
"003"="Yes, during the next 12 months"
"004"="Yes, but not during the next 12 months"
"005"="No, I am not thinking about quitting cigarettes"
;
value $Q68f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"001"="I did not try to quit during the past 12 months"
"002"="1 time"
"003"="2 times"
"004"="3 to 5 times"
"005"="6 to 9 times"
"006"="10 or more times"
;
value $Q69f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"001"="I bought them myself"
"002"="I had someone else buy them for me"
"003"="I asked someone to give me some"
"004"="Someone offered them to me"
"005"="I bought them from another person"
"006"="I took them from a store or another person"
"007"="I got them in some other way (specify):"
;

value $Q69Af
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="I bought them myself";
value $Q69Bf
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="I had someone else buy them for me";
value $Q69Cf
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="I asked someone to give me some";
value $Q69Df
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="Someone offered them to me";
value $Q69Ef
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="I bought them from another person";
value $Q69Ff
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="I took them from a store or another person";
value $Q69Gf
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="I got them in some other way (specify):";

value $Q70f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"001"="I did not buy tobacco products during the past 30 days"
"002"="A gas station or convenience store"
"003"="A grocery store"
"004"="A drugstore"
"005"="A vending machine"
"006"="On the Internet"
"007"="Through the mail"
"008"="A vape shop or tobacco shop"
"009"="Some other place not listed here (specify):"
;

value $Q70Af 
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="I did not buy tobacco products during the past 30 days"; 
value $Q70Bf 
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="A gas station or convenience store"; 
value $Q70Cf 
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="A grocery store"; 
value $Q70Df 
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="A drugstore"; 
value $Q70Ef 
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="A vending machine"; 
value $Q70Ff 
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="On the Internet"; 
value $Q70Gf 
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="Through the mail"; 
value $Q70Hf 
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="A vape shop or tobacco shop"; 
value $Q70If 
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="Some other place not listed here (specify):";

value $Q71f 
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"001"="I did not try to buy any tobacco products during the past 30 days" 
"002"="Yes" 
"003"="No" 
; 

value $Q72f 
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"001"="Easy" 
"002"="Somewhat easy" 
"003"="Not easy at all" 
; 
value $Q73f 
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"001"="Easy" 
"002"="Somewhat easy" 
"003"="Not easy at all" 
; 
value $Q74f 
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"001"="I did not see a cigar, cigarillo, or little cigar package during the past 30 days" 
"002"="Never" 
"003"="Rarely" 
"004"="Sometimes" 
"005"="Most of the time" 
"006"="Always" 
; 
value $Q75f 
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"001"="I did not see an e-cigarette package during the past 30 days" 
"002"="Never" 
"003"="Rarely" 
"004"="Sometimes" 
"005"="Most of the time" 
"006"="Always" 
; 
value $Q76f 
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"001"="I did not see a package of hookah tobacco during the past 30 days" 
"002"="Never" 
"003"="Rarely" 
"004"="Sometimes" 
"005"="Most of the time" 
"006"="Always" 
; 
value $Q77f 
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"01"="Yes" 
"02"="No" 
"03"="Not sure" 
; 
value $Q78f 
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"001"="No harm" 
"002"="Little harm" 
"003"="Some harm" 
"004"="A lot of harm" 
; 
value $Q79f 
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"001"="No harm" 
"002"="Little harm" 
"003"="Some harm" 
"004"="A lot of harm" 
; 
value $Q80f 
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"001"="Less addictive" 
"002"="Equally addictive" 
"003"="More addictive" 
"004"="I have never heard of chewing tobacco, snuff, dip, snus, or dissolvable tobacco products" 
"005"="I don't know enough about these products" 
; value 
$Q81f 
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"001"="No harm" 
"002"="Little harm" 
"003"="Some harm" 
"004"="A lot of harm" 
; 
value $Q82f 
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"001"="Less addictive" 
"002"="Equally addictive" 
"003"="More addictive" 
"004"="I have never heard of e-cigarettes" 
"005"="I don't know enough about these products" 
; 
value $Q83f 
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"001"="No harm" 
"002"="Little harm" 
"003"="Some harm" 
"004"="A lot of harm" 
; 
value $Q84f 
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"001"="Less addictive" 
"002"="Equally addictive" 
"003"="More addictive" 
"004"="I have never heard of smoking tobacco in a hookah or waterpipe" 
"005"="I don't know enough about these products" 
; 
value $Q85f 
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"001"="Much less harmful" 
"002"="Slightly less harmful" 
"003"="Equally harmful" 
"004"="Slightly more harmful" 
"005"="Much more harmful" 
; 
value 
$Q86f 
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"001"="Strongly agree" 
"002"="Agree" 
"003"="Disagree" 
"004"="Strongly disagree" 
; 
value $Q87f 
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"001"="No harm" 
"002"="Little harm" 
"003"="Some harm" 
"004"="A lot of harm" 
; 
value $Q88f 
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"001"="No harm" 
"002"="Little harm" 
"003"="Some harm" 
"004"="A lot of harm" 
; 
value $Q89f 
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"001"="I do not use the Internet" 
"002"="Never" 
"003"="Rarely" 
"004"="Sometimes" 
"005"="Most of the time" 
"006"="Always" 
; 
value $Q90f 
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"001"="I do not read newspapers or magazines" 
"002"="Never" 
"003"="Rarely" 
"004"="Sometimes" 
"005"="Most of the time" 
"006"="Always" 
; 
value $Q91f 
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"001"="I never go to a convenience store, supermarket, or gas station" 
"002"="Never" 
"003"="Rarely" 
"004"="Sometimes" 
"005"="Most of the time" 
"006"="Always" 
; 
value $Q92f 
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"001"="I do not watch TV or streaming services, or go to the movies" 
"002"="Never" 
"003"="Rarely" 
"004"="Sometimes" 
"005"="Most of the time" 
"006"="Always" 
; 
value $Q93f 
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"001"="I do not use the Internet" 
"002"="Never" 
"003"="Rarely" 
"004"="Sometimes" 
"005"="Most of the time" 
"006"="Always" 
; 
value $Q94f 
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"001"="I do not read newspapers or magazines" 
"002"="Never" 
"003"="Rarely" 
"004"="Sometimes" 
"005"="Most of the time" 
"006"="Always" 
; 
value $Q95f 
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"001"="I never go to a convenience store, supermarket,or gas station" 
"002"="Never" 
"003"="Rarely" 
"004"="Sometimes" 
"005"="Most of the time" 
"006"="Always" 
; 
value 
$Q96f 
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"001"="I do not watch TV or streaming services, or go to the movies" 
"002"="Never" 
"003"="Rarely" 
"004"="Sometimes" 
"005"="Most of the time" 
"006"="Always" 
; 
value $Q97f 
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"001"="0 days" 
"002"="1 day" 
"003"="2 days" 
"004"="3 days" 
"005"="4 days" 
"006"="5 days" 
"007"="6 days" 
"008"="7 days" ; 
value $Q98f 
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"001"="0 days" 
"002"="1 day" 
"003"="2 days" 
"004"="3 days" 
"005"="4 days" 
"006"="5 days" 
"007"="6 days" 
"008"="7 days" 
; 
value $Q99f 
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"001"="0 days" 
"002"="1 or 2 days" 
"003"="3 to 5 days" 
"004"="6 to 9 days" 
"005"="10 to 19 days" 
"006"="20 to 29 days" 
"007"="All 30 days" 
; 
value $Q100f 
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"001"="0 days" 
"002"="1 or 2 days" 
"003"="3 to 5 days" 
"004"="6 to 9 days" 
"005"="10 to 19 days" 
"006"="20 to 29 days" 
"007"="All 30 days" 
; 
value $Q101f 
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"001"="No" 
"002"="Yes, inside a school bathroom or locker room" 
"003"="Yes, inside a classroom" 
"004"="Yes, inside some other area of the school (hallway, cafeteria)" 
"005"="Yes, outside of the school, such as in the parking lot, sidewalk, or other school grounds"
"006"="Yes, somewhere else not listed here" ;

value $Q101Af
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="No";
value $Q101Bf
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="Yes, inside a school bathroom or locker room";
value $Q101Cf
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="Yes, inside a classroom";
value $Q101Df
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="Yes, inside some other area of the school (hallway, cafeteria)";
value $Q101Ef
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="Yes, outside of the school, such as in the parking lot, sidewalk, or other school grounds";
value $Q101Ff
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="Yes, somewhere else not listed here";

value $Q102f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"001"="Smoke cigarettes"
"002"="Smoke cigars, cigarillos, or little cigars"
"003"="Use chewing tobacco, snuff, or dip"
"004"="Use e-cigarettes"
"005"="Smoke tobacco in a hookah or waterpipe"
"006"="Smoke pipes filled with tobacco (not hookah or waterpipes)"
"007"="Use snus"
"008"="Use dissolvable tobacco products"
"009"="Smoke bidis (small brown cigarettes wrapped in a leaf)"
"010"="Use heated tobacco products"
"011"="No one who lives with me now uses any form of tobacco"
;



value $Q102Af
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="Smoke cigarettes";
value $Q102Bf
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="Smoke cigars, cigarillos, or little cigars";
value $Q102Cf
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="Use chewing tobacco, snuff, or dip";
value $Q102Df
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="Use e-cigarettes";
value $Q102Ef
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="Smoke tobacco in a hookah or waterpipe";
value $Q102Ff
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="Smoke pipes filled with tobacco (not hookah or waterpipes)";
value $Q102Gf
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="Use snus";
value $Q102Hf
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="Use dissolvable tobacco products";
value $Q102If
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="Smoke bidis (small brown cigarettes wrapped in a leaf)";
value $Q102Jf
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="Use heated tobacco products";
value $Q102Kf
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"1"="No one who lives with me now uses any form of tobacco";

value $Q103f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"01"="Yes"
"02"="No"
;
value $Q104f
' '='<Missing>'
".N"="Displayed, Not Answered"
".D"="Displayed, Not Answered"
".Z"="Not Displayed"
".S"="Legitimate Skip"
"01"="Yes"
"02"="No"
;

value $QENDf
' '='Missing'
".N"="Not Answered"
".S"="SKIPPED"
;


value QN1f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="9 years old"
2="10 years old"
3="11 years old"
4="12 years old"
5="13 years old"
6="14 years old"
7="15 years old"
8="16 years old"
9="17 years old"
10="18 years old"
11="19 years old or older"
;
value QN2f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
01="Male"
02="Female"
;
value QN3f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
01="6th"
02="7th"
03="8th"
04="9th"
05="10th"
06="11th"
07="12th"
08="Ungraded or other grade"
;
value QN4f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
01="No, not of Hispanic, Latino, Latina, or Spanish origin"
02="Yes, Mexican, Mexican American, Chicano, or Chicana"
03="Yes, Puerto Rican"
04="Yes, Cuban"
05="Yes, Another Hispanic, Latino, Latina, or Spanish origin"
;
value QN4Af
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="No, not of Hispanic, Latino, Latina, or Spanish origin";

value QN4Bf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="Yes, Mexican, Mexican American, Chicano, or Chicana";

value QN4Cf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="Yes, Puerto Rican";

value QN4Df
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="Yes, Cuban";

value QN4Ef
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="Yes, Another Hispanic, Latino, Latina, or Spanish origin"
;

value QN5f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
01="American Indian or Alaska Native"
02="Asian"
03="Black or African American"
04="Native Hawaiian or Other Pacific Islander"
05="White"
;

value QN5Af
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="American Indian or Alaska Native";
value QN5Bf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="Asian";
value QN5Cf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="Black or African American";
value QN5Df
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="Native Hawaiian or Other Pacific Islander";
value QN5Ef
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="White";



value QN6f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
01="Yes"
02="No"
;
value QN7f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
01="8 years old or younger"
02="9  years old"
03="10 years old"
04="11 years old"
05="12 years old"
06="13 years old"
07="14 years old"
08="15 years old"
09="16 years old"
10="17 years old"
11="18 years old"
12="19 years old or older"
;
value QN8f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
01="1 or more puffs but never a whole cigarette"
02="1 cigarette"
03="2 to 5 cigarettes"
04="6 to 15 cigarettes (about 1/2 a pack total)"
05="16 to 25 cigarettes (about 1 pack total)"
06="26 to 99 cigarettes (more than 1 pack, but less than 5 packs)"
07="100 or more cigarettes (5 or more packs)"
;
value QN9f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
;
value QN10f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
01="Earlier today"
02="Not today but sometime during the past 7 days"
03="Not during the past 7 days but sometime during the past 30 days"
04="Not during the past 30 days but sometime during the past 6 months"
05="Not during the past 6 months but sometime during the past year"
06="1 to 4 years ago"
07="5 or more years ago"
;
value QN11f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
01="Less than 1 cigarette per day"
02="1 cigarette per day"
03="2 to 5 cigarettes per day"
04="6 to 10 cigarettes per day"
05="11 to 20 cigarettes per day"
06="More than 20 cigarettes per day"
;
value QN12f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
01="I did not smoke a usual brand"
02="American Spirit"
03="Camel"
04="GPC, Basic, or Doral"
05="Kool"
06="Marlboro"
07="Newport"
08="L&M"
09="Pall Mall"
10="Winston"
11="Some other brand not listed here (Please specify)"
12="Not sure"
;
value QN13f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
01="Yes"
02="No"
03="Not sure"
;
value QN14f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
01="Definitely yes"
02="Probably yes"
03="Probably not"
04="Definitely not"
;
value QN15f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
01="Definitely yes"
02="Probably yes"
03="Probably not"
04="Definitely not"
;
value QN16f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
01="Definitely yes"
02="Probably yes"
03="Probably not"
04="Definitely not"
;
value QN17f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
01="Definitely yes"
02="Probably yes"
03="Probably not"
04="Definitely not"
;
value QN18f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
01="Yes"
02="No"
;
value QN19f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
01="8 years old or younger"
02="9  years old"
03="10 years old"
04="11 years old"
05="12 years old"
06="13 years old"
07="14 years old"
08="15 years old"
09="16 years old"
10="17 years old"
11="18 years old"
12="19 years old or older"
;
value QN20f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
;
value QN21f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
01="Less than 1 cigar, cigarillo, or little cigar per day"
02="1 per day"
03="2 to 5 per day"
04="6 to 10 per day"
05="11 to 20 per day"
06="More than 20 per day"
;
value QN22f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
01="Regular, large cigars"
02="Cigarillos"
03="Little Cigars"
04="Don't Know"
;
value QN22Af
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="Regular, large cigars";
value QN22Bf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="Cigarillos";
value QN22Cf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="Little Cigars";
value QN22Df
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="Don't Know";

value QN23f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
01="Definitely yes"
02="Probably yes"
03="Probably not"
04="Definitely not"
;
value QN24f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
01="Definitely yes"
02="Probably yes"
03="Probably not"
04="Definitely not"
;
value QN25f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
01="Definitely yes"
02="Probably yes"
03="Probably not"
04="Definitely not"
;
value QN26f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
01="Definitely yes"
02="Probably yes"
03="Probably not"
04="Definitely not"
;
value QN27f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
01="Yes"
02="No"
;
value QN28f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
01="8 years old or younger"
02="9  years old"
03="10 years old"
04="11 years old"
05="12 years old"
06="13 years old"
07="14 years old"
08="15 years old"
09="16 years old"
10="17 years old"
11="18 years old"
12="19 years old or older"
;
value QN29f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
;
value QN30f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
01="Definitely yes"
02="Probably yes"
03="Probably not"
04="Definitely not"
;
value QN31f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
01="Definitely yes"
02="Probably yes"
03="Probably not"
04="Definitely not"
;
value QN32f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
01="Definitely yes"
02="Probably yes"
03="Probably not"
04="Definitely not"
;
value QN33f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
01="Definitely yes"
02="Probably yes"
03="Probably not"
04="Definitely not"
;
value QN34f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
01="Yes"
02="No"
;
value QN35f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
01="8 years old or younger"
02="9  years old"
03="10 years old"
04="11 years old"
05="12 years old"
06="13 years old"
07="14 years old"
08="15 years old"
09="16 years old"
10="17 years old"
11="18 years old"
12="19 years old or older"
;
value QN36f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
001="1 day"
002="2 to 10 days"
003="11 to 20 days"
004="21 to 50 days"
005="51 to 100 days"
006="Over 100 days"
;
value QN37f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
;
value QN38f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
01="Earlier today"
02="Not today but sometime during the past 7 days"
03="Not during the past 7 days but sometime during the past 30 days"
04="Not during the past 30 days but sometime during the past 6 months"
05="Not during the past 6 months but sometime during the past year"
06="1 to 4 years ago"
07="5 or more years ago"
;
value QN39f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
001="A disposable e-cigarette"
002="An e-cigarette that uses pre-filled pods or cartridges (e.g. JUUL)"
003="An e-cigarette with a tank that you refill with liquids"
004="A mod system (a mod system is customized by the user with their own combination of batteries, atomizers, etc.)"
005="I don�t know the type"
;
value QN40f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
001="I did not use a usual brand"
002="Blu"
003="JUUL"
004="Logic"
005="MarkTen"
006="NJOY"
007="Vuse"
008="Some other brand not listed here (specify):"
;
value QN41f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
001="A gas station or convenience store"
002="A grocery store"
003="A drugstore"
004="A mall or shopping center kiosk/stand"
005="On the Internet"
006="A vape shop or other store that only sells e-cigarettes"
007="Some other place not listed here"
008="From a family member"
009="From a friend"
010="From some other person that is not a family member or a friend"
;

value QN41Af
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="A gas station or convenience store";
value QN41Bf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="A grocery store";
value QN41Cf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="A drugstore";
value QN41Df
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="A mall or shopping center kiosk/stand";
value QN41Ef
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="On the Internet";
value QN41Ff
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="A vape shop or other store that only sells e-cigarettes";
value QN41Gf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="Some other place not listed here";
value QN41Hf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="From a family member";
value QN41If
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="From a friend";
value QN41Jf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="From some other person that is not a family member or a friend";

value QN42f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
001="Friend or family member used them"
002="To try to quit using other tobacco products, such as cigarettes"
003="They cost less than other tobacco products, such as cigarettes"
004="They are easier to get than other tobacco products, such as cigarettes"
005="I�ve seen people on TV, online, or in movies use them"
006="They are less harmful than other forms of tobacco, such as cigarettes"
007="They are available in flavors, such as mint, candy, fruit, or chocolate"
008="I can use them unnoticed at home or at school"
009="I was peer pressured into using them"
010="I can use them to do tricks"
011="I was curious about them"
012="I used them for some other reason (specify):"
;

value QN42Af
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="Friend or family member used them";
value QN42Bf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="To try to quit using other tobacco products, such as cigarettes";
value QN42Cf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="They cost less than other tobacco products, such as cigarettes";
value QN42Df
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="They are easier to get than other tobacco products, such as cigarettes";
value QN42Ef
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="I've seen people on TV, online, or in movies use them";
value QN42Ff
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="They are less harmful than other forms of tobacco, such as cigarettes";
value QN42Gf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="They are available in flavors, such as mint, candy, fruit, or chocolate";
value QN42Hf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="I can use them unnoticed at home or at school";
value QN42If
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="I was peer pressured into using them";
value QN42Jf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="I can use them to do tricks";
value QN42Kf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="I was curious about them";
value QN42Lf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="I used them for some other reason (specify):";

value QN43f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
01="Definitely yes"
02="Probably yes"
03="Probably not"
04="Definitely not"
;
value QN44f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
01="Definitely yes"
02="Probably yes"
03="Probably not"
04="Definitely not"
;
value QN45f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
01="Definitely yes"
02="Probably yes"
03="Probably not"
04="Definitely not"
;
value QN46f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
01="Definitely yes"
02="Probably yes"
03="Probably not"
04="Definitely not"
;
value QN47f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
01="Yes"
02="No"
;
value QN48f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
01="8 years old or younger"
02="9  years old"
03="10 years old"
04="11 years old"
05="12 years old"
06="13 years old"
07="14 years old"
08="15 years old"
09="16 years old"
10="17 years old"
11="18 years old"
12="19 years old or older"
;
value QN49f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
;
value QN50f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
001="At my house"
002="At a friend�s house"
003="At a family member�s house, other than my house"
004="At a hookah bar"
005="At a caf� or restaurant"
006="Some other place not listed here"
;

value QN50Af
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="At my house";
value QN50Bf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="At a friend's house";
value QN50Cf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="At a family member's house, other than my house";
value QN50Df
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="At a hookah bar";
value QN50Ef
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="At a cafe or restaurant";
value QN50Ff
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="Some other place not listed here";

value QN51f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
01="Definitely yes"
02="Probably yes"
03="Probably not"
04="Definitely not"
;
value QN52f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
01="Definitely yes"
02="Probably yes"
03="Probably not"
04="Definitely not"
;
value QN53f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
01="Definitely yes"
02="Probably yes"
03="Probably not"
04="Definitely not"
;
value QN54f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
01="Definitely yes"
02="Probably yes"
03="Probably not"
04="Definitely not"
;

value QN55f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
001="Roll-your-own cigarettes"
002="Pipes filled with tobacco (not hookah or waterpipe)"
003="Snus, such as Camel, Marlboro, or General Snus"
004="Dissolvable tobacco products such as Ariva, Stonewall, Camel orbs, Camel sticks, Marlboro sticks, or Camel strips"
005="Bidis (small brown cigarettes wrapped in a leaf)"
006="I have never tried any of the products listed above"
;


value QN55Af
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="Roll-your-own cigarettes";

value QN55Bf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="Pipes filled with tobacco (not hookah or waterpipe)";
value QN55Cf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="Snus, such as Camel, Marlboro, or General Snus";
value QN55Df
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="Dissolvable tobacco products such as Ariva, Stonewall, Camel orbs, Camel sticks, Marlboro sticks, or Camel strips";
value QN55Ef
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="Bidis (small brown cigarettes wrapped in a leaf)";
value QN55Ff
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="I have never tried any of the products listed above";

value QN56f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
001="Roll-your-own cigarettes"
002="Pipes filled with tobacco (not hookah or waterpipe)"
003="Snus, such as Camel, Marlboro, or General Snus"
004="Dissolvable tobacco products such as Ariva, Stonewall, Camel orbs, Camel sticks, Marlboro sticks, or Camel strips"
005="Bidis (small brown cigarettes wrapped in a leaf)"
006="I have not used any of the products listed above in the past 30 days"
;


value QN56Af
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="Roll-your-own cigarettes";
value QN56Bf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="Pipes filled with tobacco (not hookah or waterpipe)";
value QN56Cf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="Snus, such as Camel, Marlboro, or General Snus";
value QN56Df
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="Dissolvable tobacco products such as Ariva, Stonewall, Camel orbs, Camel sticks, Marlboro sticks, or Camel strips";
value QN56Ef
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="Bidis (small brown cigarettes wrapped in a leaf)";
value QN56Ff
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="I have not used any of the products listed above in the past 30 days";

value QN57f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
001="Yes"
002="No"
003="Don�t know/Not Sure"
;
value QN58f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
001="Yes"
002="No"
003="Don�t know/Not Sure"
;
value QN59f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
;
value QN60f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
;
value QN61f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
001="Cigars, cigarillos, or little cigars"
002="Chewing tobacco, snuff, or dip"
003="E-cigarettes"
004="Tobacco in a hookah or waterpipe"
005="Pipe filled with tobacco (not waterpipe)"
006="Snus"
007="Dissolvable tobacco products"
008="Bidis"
009="Roll-your-own cigarettes"
010="Heated tobacco products"
011="I did not use any flavored tobacco products in the past 30 days"
;

value QN61Af
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="Cigars, cigarillos, or little cigars";
value QN61Bf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="Chewing tobacco, snuff, or dip";
value QN61Cf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="E-cigarettes";
value QN61Df
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="Tobacco in a hookah or waterpipe";
value QN61Ef
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="Pipe filled with tobacco (not waterpipe)";
value QN61Ff
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="Snus";
value QN61Gf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="Dissolvable tobacco products";
value QN61Hf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="Bidis";
value QN61If
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="Roll-your-own cigarettes";
value QN61Jf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="Heated tobacco products";
value QN61Kf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="I did not use any flavored tobacco products in the past 30 days";

value QN62f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
001="Menthol or mint"
002="Clove or spice"
003="Fruit"
004="Chocolate"
005="Alcoholic drink (such as wine, cognac, margarita, or other cocktails)"
006="Candy, desserts or other sweets"
007="Some other flavor not listed here (specify):"
;


value QN62Af
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="Menthol or mint";
value QN62Bf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="Clove or spice";
value QN62Cf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="Fruit";
value QN62Df
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="Chocolate";
value QN62Ef
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="Alcoholic drink (such as wine, cognac, margarita, or other cocktails)";
value QN62Ff
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="Candy, desserts or other sweets";
value QN62Gf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="Some other flavor not listed here (specify):";

value QN63f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
01="Yes"
02="No"
;
value QN64f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
001="I do not want to use tobacco products"
002="Within 5 minutes"
003="From 6 to 30 minutes"
004="From more than 30 minutes to 1 hour"
005="After more than 1 hour but less than 24 hours"
006="I rarely want to use tobacco products"
;
value QN65f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
001="Yes, during the next 30 days"
002="Yes, during the next 6 months"
003="Yes, during the next 12 months"
004="Yes, but not during the next 12 months"
005="No, I am not thinking about quitting the use of all tobacco products"
;
value QN66f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
001="I did not try to quit all tobacco products during the past 12 months"
002="1 time"
003="2 times"
004="3 to 5 times"
005="6 to 9 times"
006="10 or more times"
;
value QN67f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
001="Yes, during the next 30 days"
002="Yes, during the next 6 months"
003="Yes, during the next 12 months"
004="Yes, but not during the next 12 months"
005="No, I am not thinking about quitting cigarettes"
;
value QN68f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
001="I did not try to quit during the past 12 months"
002="1 time"
003="2 times"
004="3 to 5 times"
005="6 to 9 times"
006="10 or more times"
;
value QN69f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
001="I bought them myself"
002="I had someone else buy them for me"
003="I asked someone to give me some"
004="Someone offered them to me"
005="I bought them from another person"
006="I took them from a store or another person"
007="I got them in some other way (specify):"
;

value QN69Af
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="I bought them myself";
value QN69Bf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="I had someone else buy them for me";
value QN69Cf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="I asked someone to give me some";
value QN69Df
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="Someone offered them to me";
value QN69Ef
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="I bought them from another person";
value QN69Ff
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="I took them from a store or another person";
value QN69Gf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="I got them in some other way (specify):";

value QN70f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
001="I did not buy tobacco products during the past 30 days"
002="A gas station or convenience store"
003="A grocery store"
004="A drugstore"
005="A vending machine"
006="On the Internet"
007="Through the mail"
008="A vape shop or tobacco shop"
009="Some other place not listed here (specify):"
;

value QN70Af 
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="I did not buy tobacco products during the past 30 days"; 
value QN70Bf 
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="A gas station or convenience store"; 
value QN70Cf 
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="A grocery store"; 
value QN70Df 
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="A drugstore"; 
value QN70Ef 
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="A vending machine"; 
value QN70Ff 
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="On the Internet"; 
value QN70Gf 
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="Through the mail"; 
value QN70Hf 
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="A vape shop or tobacco shop"; 
value QN70If 
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="Some other place not listed here (specify):";

value QN71f 
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
001="I did not try to buy any tobacco products during the past 30 days" 
002="Yes" 
003="No" 
; 

value QN72f 
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
001="Easy" 
002="Somewhat easy" 
003="Not easy at all" 
; 
value QN73f 
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
001="Easy" 
002="Somewhat easy" 
003="Not easy at all" 
; 
value QN74f 
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
001="I did not see a cigar, cigarillo, or little cigar package during the past 30 days" 
002="Never" 
003="Rarely" 
004="Sometimes" 
005="Most of the time" 
006="Always" 
; 
value QN75f 
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
001="I did not see an e-cigarette package during the past 30 days" 
002="Never" 
003="Rarely" 
004="Sometimes" 
005="Most of the time" 
006="Always" 
; 
value QN76f 
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
001="I did not see a package of hookah tobacco during the past 30 days" 
002="Never" 
003="Rarely" 
004="Sometimes" 
005="Most of the time" 
006="Always" 
; 
value QN77f 
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
01="Yes" 
02="No" 
03="Not sure" 
; 
value QN78f 
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
001="No harm" 
002="Little harm" 
003="Some harm" 
004="A lot of harm" 
; 
value QN79f 
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
001="No harm" 
002="Little harm" 
003="Some harm" 
004="A lot of harm" 
; 
value QN80f 
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
001="Less addictive" 
002="Equally addictive" 
003="More addictive" 
004="I have never heard of chewing tobacco, snuff, dip, snus, or dissolvable tobacco products" 
005="I don't know enough about these products" 
; value 
QN81f 
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
001="No harm" 
002="Little harm" 
003="Some harm" 
004="A lot of harm" 
; 
value QN82f 
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
001="Less addictive" 
002="Equally addictive" 
003="More addictive" 
004="I have never heard of e-cigarettes" 
005="I don't know enough about these products" 
; 
value QN83f 
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
001="No harm" 
002="Little harm" 
003="Some harm" 
004="A lot of harm" 
; 
value QN84f 
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
001="Less addictive" 
002="Equally addictive" 
003="More addictive" 
004="I have never heard of smoking tobacco in a hookah or waterpipe" 
005="I don't know enough about these products" 
; 
value QN85f 
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
001="Much less harmful" 
002="Slightly less harmful" 
003="Equally harmful" 
004="Slightly more harmful" 
005="Much more harmful" 
; 
value 
QN86f  
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
001="Strongly agree" 
002="Agree" 
003="Disagree" 
004="Strongly disagree" 
; 
value QN87f 
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
001="No harm" 
002="Little harm" 
003="Some harm" 
004="A lot of harm" 
; 
value QN88f 
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
001="No harm" 
002="Little harm" 
003="Some harm" 
004="A lot of harm" 
; 
value QN89f 
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
001="I do not use the Internet" 
002="Never" 
003="Rarely" 
004="Sometimes" 
005="Most of the time" 
006="Always" 
; 
value QN90f 
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
001="I do not read newspapers or magazines" 
002="Never" 
003="Rarely" 
004="Sometimes" 
005="Most of the time" 
006="Always" 
; 
value QN91f 
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
001="I never go to a convenience store, supermarket, or gas station"
002="Never" 
003="Rarely" 
004="Sometimes" 
005="Most of the time" 
006="Always" 
; 
value QN92f 
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
001="I do not watch TV or streaming services, or go to the movies" 
002="Never" 
003="Rarely" 
004="Sometimes" 
005="Most of the time" 
006="Always" 
; 
value QN93f 
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
001="I do not use the Internet" 
002="Never" 
003="Rarely" 
004="Sometimes" 
005="Most of the time" 
006="Always" 
; 
value QN94f 
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
001="I do not read newspapers or magazines" 
002="Never" 
003="Rarely" 
004="Sometimes" 
005="Most of the time" 
006="Always" 
; 
value QN95f 
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
001="I never go to a convenience store, supermarket,or gas station" 
002="Never" 
003="Rarely" 
004="Sometimes" 
005="Most of the time" 
006="Always" 
; 
value QN96f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
001="I do not watch TV or streaming services, or go to the movies" 
002="Never" 
003="Rarely" 
004="Sometimes" 
005="Most of the time" 
006="Always" 
; 
value QN97f 
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
001="0 days" 
002="1 day" 
003="2 days" 
004="3 days" 
005="4 days" 
006="5 days" 
007="6 days" 
008="7 days" ; 
value QN98f 
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
001="0 days" 
002="1 day" 
003="2 days" 
004="3 days" 
005="4 days" 
006="5 days" 
007="6 days" 
008="7 days" 
; 
value QN99f 
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
001="0 days" 
002="1 or 2 days" 
003="3 to 5 days" 
004="6 to 9 days" 
005="10 to 19 days" 
006="20 to 29 days" 
007="All 30 days" 
; 
value QN100f 
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
001="0 days" 
002="1 or 2 days" 
003="3 to 5 days" 
004="6 to 9 days" 
005="10 to 19 days" 
006="20 to 29 days" 
007="All 30 days" 
; 
value QN101f 
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
001="No" 
002="Yes, inside a school bathroom or locker room" 
003="Yes, inside a classroom" 
004="Yes, inside some other area of the school (hallway, cafeteria)" 
005="Yes, outside of the school, such as in the parking lot, sidewalk, or other school grounds"
006="Yes, somewhere else not listed here" ;

value QN101Af
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="No";
value QN101Bf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="Yes, inside a school bathroom or locker room";
value QN101Cf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="Yes, inside a classroom";
value QN101Df
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="Yes, inside some other area of the school (hallway, cafeteria)";
value QN101Ef
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="Yes, outside of the school, such as in the parking lot, sidewalk, or other school grounds";
value QN101Ff
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="Yes, somewhere else not listed here";

value QN102f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
001="Smoke cigarettes"
002="Smoke cigars, cigarillos, or little cigars"
003="Use chewing tobacco, snuff, or dip"
004="Use e-cigarettes"
005="Smoke tobacco in a hookah or waterpipe"
006="Smoke pipes filled with tobacco (not hookah or waterpipes)"
007="Use snus"
008="Use dissolvable tobacco products"
009="Smoke bidis (small brown cigarettes wrapped in a leaf)"
010="Use heated tobacco products"
011="No one who lives with me now uses any form of tobacco"
;



value QN102Af
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="Smoke cigarettes";
value QN102Bf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="Smoke cigars, cigarillos, or little cigars";
value QN102Cf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="Use chewing tobacco, snuff, or dip";
value QN102Df
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="Use e-cigarettes";
value QN102Ef
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="Smoke tobacco in a hookah or waterpipe";
value QN102Ff
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="Smoke pipes filled with tobacco (not hookah or waterpipes)";
value QN102Gf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="Use snus";
value QN102Hf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="Use dissolvable tobacco products";
value QN102If
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="Smoke bidis (small brown cigarettes wrapped in a leaf)";
value QN102Jf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="Use heated tobacco products";
value QN102Kf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
1="No one who lives with me now uses any form of tobacco";

value QN103f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
01="Yes"
02="No"
;
value QN104f
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
01="Yes"
02="No"
;
value QNENDf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.E="Missing Due to Edit Checks"
;



value agegf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.M="Missing"
1="<18 years of age"
2=">=18 years of age"
;

value sexf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.M="Missing"
1="Female"
2="Male"
;

value schoolf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.M="Missing"
1="Middle School"
2="High School"
;

value mracef
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.M="Missing"
1="1"
2="2"
3="3"
4="4"
5="5";

value racemf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.M="Missing"
1="NH-White"
2="NH-Black"
3="Hispanic"
4="NH-Asian"
5="NH-AI/AN"
6="NH_NHOPI"
7="Multiple Races"
;


value racesf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.M="Missing"
1="NH-White"
2="NH-Black"
3="Hispanic"
4="NH-Asian"
5="NH-AI/AN"
6="NH_NHOPI"
;

value ecigtf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.M="Missing"
1="Yes"
2="No"
;


value ecigarf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.M="Missing"
1="Yes"
2="No"
;


value esltf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.M="Missing"
1="Yes"
2="No"
;


value eelcigtf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.M="Missing"
1="Yes"
2="No"
;


value ehookahf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.M="Missing"
1="Yes"
2="No"
;

value erollctf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.M="Missing"
1="Yes"
2="No"
;

value epipef
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.M="Missing"
1="Yes"
2="No"
;

value esnusf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.M="Missing"
1="Yes"
2="No"
;

value edissolf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.M="Missing"
1="Yes"
2="No"
;

value ehtpf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.M="Missing"
1="Yes"
2="No"
;


value ebidisf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.M="Missing"
1="Yes"
2="No"
;

value ccigtf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.M="Missing"
1="Yes"
2="No"
;

value ccigarf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.M="Missing"
1="Yes"
2="No"
;

value csltf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.M="Missing"
1="Yes"
2="No"
;

value celcigtf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.M="Missing"
1="Yes"
2="No"
;

value chookahf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.M="Missing"
1="Yes"
2="No"
;

value crollcf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.M="Missing"
1="Yes"
2="No"
;

value cpipef
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.M="Missing"
1="Yes"
2="No"
;

value csnusf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.M="Missing"
1="Yes"
2="No"
;

value cdissolf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.M="Missing"
1="Yes"
2="No"
;

value cbidisf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.M="Missing"
1="Yes"
2="No"
;

value chtpf
.='<Missing>'
.N="Displayed, Not Answered"
.Z="Not Displayed"
.S="Legitimate Skip"
.M="Missing"
1="Yes"
2="No"
;


run;

