/* 
     Copyright  2006-17 QuePer

     Licensed under the Apache License, Version 2.0 (the "License");
     you may not use this file except in compliance with the License.
     You may obtain a copy of the License at

         http://www.apache.org/licenses/LICENSE-2.0

     Unless required by applicable law or agreed to in writing, software
     distributed under the License is distributed on an "AS IS" BASIS,
     WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
     See the License for the specific language governing permissions and
     limitations under the License.
*/

/***
 * Table #-01: Table with basic data types
 */

-- Mostly positive values
INSERT INTO t1_1_std_data_types_basic VALUES( 
	'Praveen', 'Kumar', 
	12345, 1, 12345.67, 12345.67,
	123456.78, 1234567890.12345, 1234567890.12345,
	TO_DATE('2014-03-07', 'YYYY-MM-DD'), 
	TO_TIMESTAMP('2014-03-07 15:01:30', 
		'YYYY-MM-DD HH24:MI:SS')
);

-- Mostly -ve values
INSERT INTO t1_1_std_data_types_basic VALUES( 
	'Shyam', 'Sunder', 
	-12345, 2, -12345.67, -12345.67,
	-123456.78, -1234567890.12345, -1234567890.12345,
	TO_DATE('2014-03-07', 'YYYY-MM-DD'),
	TO_TIMESTAMP('2014-03-07 15:01:30', 
		'YYYY-MM-DD HH24:MI:SS')
);

-- Data mostly with 0s and blanks
INSERT INTO t1_1_std_data_types_basic VALUES( 
	'', '', 
	0, 3,  0.0,
	0.0, 0.0, 0.0, 0.0,
	TO_DATE('2014-03-07', 'YYYY-MM-DD'), 
	TO_TIMESTAMP('2014-03-07 15:01:30', 
		'YYYY-MM-DD HH24:MI:SS'));

-- Null data
INSERT INTO t1_1_std_data_types_basic VALUES( 
	NULL, NULL, 
	NULL, 4, NULL, NULL,
	NULL, NULL, NULL,
	NULL, NULL
);



/***
 * TABLE# 02. Table with SQL standard data types  that are not
 * commonly used.
 */

INSERT INTO t1_2_std_data_types_adv VALUES (
	1,  
	INTERVAL '18' YEAR(2),
	INTERVAL '3 5:30' DAY TO MINUTE
);

INSERT INTO t1_2_std_data_types_adv VALUES (
	2,  
	INTERVAL '0' YEAR(2),
	INTERVAL '0' DAY
);

INSERT INTO t1_2_std_data_types_adv VALUES (
	3,  
	NULL,
	NULL
);


/***
 * TABLE# 03. Table with columns having character set to store 
 *    multi-lingual data.
 */


-- French language data.
INSERT INTO t2_1_multi_lingual_data_types VALUES (
	1,
	N'Paris s''ouvre à vos envies. Paris, l''une des plus belles villes au monde, séduit d''abord par son exceptionnel patrimoine architectural et culturel. Un patrimoine vivant, qui se modernise et s''enrichit sans cesse.',
	N'Paris s''ouvre à vos envies. Paris, l''une des plus belles villes au monde, séduit d''abord par son exceptionnel patrimoine architectural et culturel. Un patrimoine vivant, qui se modernise et s''enrichit sans cesse.'
);

-- Hindi 
INSERT INTO t2_1_multi_lingual_data_types VALUES (
	2,
	N'युवा पत्रकार उमेश चतुर्वेदी की यह पुस्तक मीडिया के बदलते स्वरूप पर जहां एक ओर चिंता जाहिर करती है, वहीं दूसरी ओर सकारात्मक बदलाव के प्रति उम्मीद भी जगाती है।',
	N'युवा पत्रकार उमेश चतुर्वेदी की यह पुस्तक मीडिया के बदलते स्वरूप पर जहां एक ओर चिंता जाहिर करती है, वहीं दूसरी ओर सकारात्मक बदलाव के प्रति उम्मीद भी जगाती है।'	
);

-- Telugu
INSERT INTO t2_1_multi_lingual_data_types VALUES (
	3,
	N'సాహితీ సమరాంగణ సార్వభౌముడిగా ప్రఖ్యాతి వహించిన విజయనగర చక్రవర్తి శ్రీ కృష్ణదేవరాయలు రచించిన తెలుగు ప్రబంధం ఈ "ఆముక్తమాల్యద" గ్రంథం. దీనికే "విష్ణుచిత్తీయం" అని మరోపేరు.',
	N'సాహితీ సమరాంగణ సార్వభౌముడిగా ప్రఖ్యాతి వహించిన విజయనగర చక్రవర్తి శ్రీ కృష్ణదేవరాయలు రచించిన తెలుగు ప్రబంధం ఈ "ఆముక్తమాల్యద" గ్రంథం. దీనికే "విష్ణుచిత్తీయం" అని మరోపేరు.'
);


-- Kannada
INSERT INTO t2_1_multi_lingual_data_types VALUES (
	4,
	N'ಕನ್ನಡ ಸಾಹಿತ್ಯ ಪರಂಪರೆಯಲ್ಲಿ ಸಣ್ಣ ಕತೆಗೊಂದು ಮಹತ್ವ ತಂದಕೊಟ್ಟವರಲ್ಲಿ ಆನಂದ ಕೂಡ ಒಬ್ಬರು. ೧೯೩೦ರ ಸಂದರ್ಭದಲ್ಲೇ ಕಥಾಲಹರಿ ಹರಿಸಿದ್ದ ಆನಂದರ ನಿಜ ಹೆಸರು ಅಜ್ಜಂಪುರದ ಸೀತಾರಾಮ. ''ನಾನು ಕೊಂದ ಹುಡುಗಿ'' ಅವರ ಜನಪ್ರಿಯತೆಗೆ ಸಾಕ್ಷಿಯಾದ ಕತೆ.',
	N'ಕನ್ನಡ ಸಾಹಿತ್ಯ ಪರಂಪರೆಯಲ್ಲಿ ಸಣ್ಣ ಕತೆಗೊಂದು ಮಹತ್ವ ತಂದಕೊಟ್ಟವರಲ್ಲಿ ಆನಂದ ಕೂಡ ಒಬ್ಬರು. ೧೯೩೦ರ ಸಂದರ್ಭದಲ್ಲೇ ಕಥಾಲಹರಿ ಹರಿಸಿದ್ದ ಆನಂದರ ನಿಜ ಹೆಸರು ಅಜ್ಜಂಪುರದ ಸೀತಾರಾಮ. ''ನಾನು ಕೊಂದ ಹುಡುಗಿ'' ಅವರ ಜನಪ್ರಿಯತೆಗೆ ಸಾಕ್ಷಿಯಾದ ಕತೆ.'
);

-- Blanks
INSERT INTO t2_1_multi_lingual_data_types VALUES (
	5,
	N'',
	N''
);

-- Nulls
INSERT INTO t2_1_multi_lingual_data_types VALUES (
	6,
	NULL,
	NULL
);


/***
 * TABLE# 04. Table with long data types.
 */

INSERT INTO t3_1_long_data_types VALUES(
	1,
	'wjISQL is an easy to use web based interactive SQL tool. ',
	N'Paris s''ouvre à vos envies. Paris, l''une des plus belles villes au monde, séduit d''abord par son exceptionnel patrimoine architectural et culturel. Un patrimoine vivant, qui se modernise et s''enrichit sans cesse.',
	hextoraw('0123456789abcdef')	
);
INSERT INTO t3_1_long_data_types VALUES(
	2,
	'This can be used with any database system that has a JDBC driver and can work with any WebServer that supports Java Server Page(JSP)s and any browser that supports JavaScript.',
	N'युवा पत्रकार उमेश चतुर्वेदी की यह पुस्तक मीडिया के बदलते स्वरूप पर जहां एक ओर चिंता जाहिर करती है, वहीं दूसरी ओर सकारात्मक बदलाव के प्रति उम्मीद भी जगाती है।',
	hextoraw('0123456789abcdef')	
);
INSERT INTO t3_1_long_data_types VALUES(
	3,
	'wjISQL is similar to mysql of MySQL, SQL*PLUS of Oracle and sqlcmd of Microsoft SQL Server but it is a webapp.',
	N'సాహితీ సమరాంగణ సార్వభౌముడిగా ప్రఖ్యాతి వహించిన విజయనగర చక్రవర్తి శ్రీ కృష్ణదేవరాయలు రచించిన తెలుగు ప్రబంధం ఈ "ఆముక్తమాల్యద" గ్రంథం. దీనికే "విష్ణుచిత్తీయం" అని మరోపేరు.',
	hextoraw('0123456789abcdef')	
);
INSERT INTO t3_1_long_data_types VALUES(
	4,
	'You can execute any SQL statements that your database server allows for the authorization scheme you use with the database server.',
	N'ಕನ್ನಡ ಸಾಹಿತ್ಯ ಪರಂಪರೆಯಲ್ಲಿ ಸಣ್ಣ ಕತೆಗೊಂದು ಮಹತ್ವ ತಂದಕೊಟ್ಟವರಲ್ಲಿ ಆನಂದ ಕೂಡ ಒಬ್ಬರು. ೧೯೩೦ರ ಸಂದರ್ಭದಲ್ಲೇ ಕಥಾಲಹರಿ ಹರಿಸಿದ್ದ ಆನಂದರ ನಿಜ ಹೆಸರು ಅಜ್ಜಂಪುರದ ಸೀತಾರಾಮ. ''ನಾನು ಕೊಂದ ಹುಡುಗಿ'' ಅವರ ಜನಪ್ರಿಯತೆಗೆ ಸಾಕ್ಷಿಯಾದ ಕತೆ.',
	hextoraw('0123456789abcdef')	
);
INSERT INTO t3_1_long_data_types VALUES(
	5, '', N'', hextoraw('')	
);
INSERT INTO t3_1_long_data_types VALUES(
	6, NULL, NULL, NULL
);



/***
 * TABLE# 05. Table with non-SQL standard data types-1.
 */


INSERT INTO t4_1_non_std_data_types_1 VALUES (
        1, 12, 1234567, 
	'Paris s''ouvre à vos envies. Paris, l''une des plus belles villes au monde, séduit d''abord par son exceptionnel patrimoine architectural et culturel. Un patrimoine vivant, qui se modernise et s''enrichit sans cesse.',
	N'Paris s''ouvre à vos envies. Paris, l''une des plus belles villes au monde, séduit d''abord par son exceptionnel patrimoine architectural et culturel. Un patrimoine vivant, qui se modernise et s''enrichit sans cesse.'
);
INSERT INTO t4_1_non_std_data_types_1 VALUES (
        2, -12, -1234567, 
	'युवा पत्रकार उमेश चतुर्वेदी की यह पुस्तक मीडिया के बदलते स्वरूप पर जहां एक ओर चिंता जाहिर करती है, वहीं दूसरी ओर सकारात्मक बदलाव के प्रति उम्मीद भी जगाती है।',
	N'युवा पत्रकार उमेश चतुर्वेदी की यह पुस्तक मीडिया के बदलते स्वरूप पर जहां एक ओर चिंता जाहिर करती है, वहीं दूसरी ओर सकारात्मक बदलाव के प्रति उम्मीद भी जगाती है।'
);
INSERT INTO t4_1_non_std_data_types_1 VALUES (
        3, 23, 1234567, 
	'సాహితీ సమరాంగణ సార్వభౌముడిగా ప్రఖ్యాతి వహించిన విజయనగర చక్రవర్తి శ్రీ కృష్ణదేవరాయలు రచించిన తెలుగు ప్రబంధం ఈ "ఆముక్తమాల్యద" గ్రంథం. దీనికే "విష్ణుచిత్తీయం" అని మరోపేరు.',
	N'సాహితీ సమరాంగణ సార్వభౌముడిగా ప్రఖ్యాతి వహించిన విజయనగర చక్రవర్తి శ్రీ కృష్ణదేవరాయలు రచించిన తెలుగు ప్రబంధం ఈ "ఆముక్తమాల్యద" గ్రంథం. దీనికే "విష్ణుచిత్తీయం" అని మరోపేరు.'
);
INSERT INTO t4_1_non_std_data_types_1 VALUES (
        4, 99, 1234567, 
	'ಕನ್ನಡ ಸಾಹಿತ್ಯ ಪರಂಪರೆಯಲ್ಲಿ ಸಣ್ಣ ಕತೆಗೊಂದು ಮಹತ್ವ ತಂದಕೊಟ್ಟವರಲ್ಲಿ ಆನಂದ ಕೂಡ ಒಬ್ಬರು. ೧೯೩೦ರ ಸಂದರ್ಭದಲ್ಲೇ ಕಥಾಲಹರಿ ಹರಿಸಿದ್ದ ಆನಂದರ ನಿಜ ಹೆಸರು ಅಜ್ಜಂಪುರದ ಸೀತಾರಾಮ. ''ನಾನು ಕೊಂದ ಹುಡುಗಿ'' ಅವರ ಜನಪ್ರಿಯತೆಗೆ ಸಾಕ್ಷಿಯಾದ ಕತೆ.',
	N'ಕನ್ನಡ ಸಾಹಿತ್ಯ ಪರಂಪರೆಯಲ್ಲಿ ಸಣ್ಣ ಕತೆಗೊಂದು ಮಹತ್ವ ತಂದಕೊಟ್ಟವರಲ್ಲಿ ಆನಂದ ಕೂಡ ಒಬ್ಬರು. ೧೯೩೦ರ ಸಂದರ್ಭದಲ್ಲೇ ಕಥಾಲಹರಿ ಹರಿಸಿದ್ದ ಆನಂದರ ನಿಜ ಹೆಸರು ಅಜ್ಜಂಪುರದ ಸೀತಾರಾಮ. ''ನಾನು ಕೊಂದ ಹುಡುಗಿ'' ಅವರ ಜನಪ್ರಿಯತೆಗೆ ಸಾಕ್ಷಿಯಾದ ಕತೆ.'
);
INSERT INTO t4_1_non_std_data_types_1 VALUES (
        5, NULL, NULL, 
	NULL, NULL	
);
