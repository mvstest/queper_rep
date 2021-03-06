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


/* Row with some data */
INSERT INTO t1_1_std_data_types_basic VALUES (
	'character column', 'varying character columns',
	
	12345, 1, 12345679012345, 12345678.75, 12345678.75, 

	1234567.1234567, 123456789012345.123456789012345, 
	123456789012345.123456789012345,

	'2014-03-10', '15:25:35', 

	0xA1B2, 0xABCDEF
);
/* Row with -ve values */
INSERT INTO t1_1_std_data_types_basic VALUES (
	'character column','varying character columns',
	
	-12345, 2,  -12345679012345, -12345678.75, -12345678.75, 
	-1234567.1234567, -123456789012345.123456789012345, 
	-123456789012345.123456789012345,

	'2014-03-10', '15:25:35', 

	0xA1B2, 0xABCDEF
);

/* Row with 1 character/byte values */
INSERT INTO t1_1_std_data_types_basic VALUES (
	'c', 'v',
	2, 3, 4, 5, 6, 
	1, 2, 3,

	'2014-03-10', '15:25:35', 
	0xA1, 0xB2
);

/* Row with empty strings. */
INSERT INTO t1_1_std_data_types_basic VALUES (
	'', '',
	-12345, 4, -12345679012345, -12345678.75, -12345678.75,
	-1234567.1234567, -123456789012345.123456789012345, 
	-123456789012345.123456789012345,
	'2014-03-10', '15:25:35', 
	0x, 0x
);

/* Row with NULLS. */
INSERT INTO t1_1_std_data_types_basic VALUES (
	NULL, NULL,
	NULL, 5, NULL, NULL, NULL, 
	NULL, NULL, NULL,
	NULL, NULL, 
	NULL, NULL
);


/***
 * TABLE #-02: Table with columns that can store
 *    multi-lingual data.
 */

-- French
INSERT INTO t2_1_multi_lingual_data_types VALUES (
 	1,
	N'nchar: Paris s''ouvre à vos envies. Paris, l''une des plus belles villes au monde, séduit d''abord par son exceptionnel patrimoine architectural et culturel. Un patrimoine vivant, qui se modernise et s''enrichit sans cesse.',
	N'nchar: Paris s''ouvre à vos envies. Paris, l''une des plus belles villes au monde, séduit d''abord par son exceptionnel patrimoine architectural et culturel. Un patrimoine vivant, qui se modernise et s''enrichit sans cesse.'
);

-- Hindi
INSERT INTO t2_1_multi_lingual_data_types VALUES (
 	2,
	N'nvarchar:युवा पत्रकार उमेश चतुर्वेदी की यह पुस्तक मीडिया के बदलते स्वरूप पर जहां एक ओर चिंता जाहिर करती है, वहीं दूसरी ओर सकारात्मक बदलाव के प्रति उम्मीद भी जगाती है। लेखक का मानना है कि उदारीकरण व नई आर्थिक नीतियों ने समाज व व्यवस्था को पूरी तरह बदल दिया है। मीडिया भी इस बदलाव से अछूता नहीं रहा है। प्रिंट हो चाहे इलेक्ट्रॉनिक मीडिया, उनके काम करने की शैली में आमूलचूल परिवर्तन आया है।',
	N'nvarchar:युवा पत्रकार उमेश चतुर्वेदी की यह पुस्तक मीडिया के बदलते स्वरूप पर जहां एक ओर चिंता जाहिर करती है, वहीं दूसरी ओर सकारात्मक बदलाव के प्रति उम्मीद भी जगाती है। लेखक का मानना है कि उदारीकरण व नई आर्थिक नीतियों ने समाज व व्यवस्था को पूरी तरह बदल दिया है। मीडिया भी इस बदलाव से अछूता नहीं रहा है। प्रिंट हो चाहे इलेक्ट्रॉनिक मीडिया, उनके काम करने की शैली में आमूलचूल परिवर्तन आया है।'
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

/* Row with 1 character/byte values */
INSERT INTO t2_1_multi_lingual_data_types VALUES (
        5, N'à',	N'उ'
);

/* Row with empty strings. */
INSERT INTO t2_1_multi_lingual_data_types VALUES (
        6, N'', N''
);

/* Row with NULLS. */
INSERT INTO t2_1_multi_lingual_data_types VALUES (
        7, NULL, NULL
);


/***
 * TABLE #-03. Table with long data types.
 *            
 */
INSERT INTO t3_1_long_data_types VALUES(
	1,
	'varchar max column',
	0x0123456789abcdef	
);
INSERT INTO t3_1_long_data_types VALUES(
	2, '', 0x01	
);
INSERT INTO t3_1_long_data_types VALUES(
	3, NULL, NULL
);
SELECT * FROM t3_1_long_data_types; 


/***
 * TABLE #-04. Table with some non-standard data types.
 */

INSERT INTO t4_1_non_std_data_types_1  VALUES (
	1, 123, 123456789.25, 12345.50, 1,

	'2014-03-10 15:25:35', '2014-03-10 15:25:35', 
	'2014-03-10 15:25:35', '2014-03-10 15:25:35', 

	'text: wjISQL is an easy to use web enabled interactive SQL tool. This can be used with any database system that has a JDBC driver and can work with any WebServer that supports Java Server Page(JSP)s and any browser that supports JavaScript.',
	0x0123456789ABCDEF,
	N'ntext: Paris s''ouvre à vos envies. Paris, l''une des plus belles villes au monde, séduit d''abord par son exceptionnel patrimoine architectural et culturel. Un patrimoine vivant, qui se modernise et s''enrichit sans cesse.'
);

INSERT INTO t4_1_non_std_data_types_1  VALUES (
	2, 123, -123456789.25, -12345.50, 0,

	'2014-03-10 15:25:35', '2014-03-10 15:25:35', 
	'2014-03-10 15:25:35', '2014-03-10 15:25:35', 

	'text: wjISQL is an easy to use web enabled interactive SQL tool. This can be used with any database system that has a JDBC driver and can work with any WebServer that supports Java Server Page(JSP)s and any browser that supports JavaScript.',
	0x0123456789ABCDEF,
	N'ntext:युवा पत्रकार उमेश चतुर्वेदी की यह पुस्तक मीडिया के बदलते स्वरूप पर जहां एक ओर चिंता जाहिर करती है, वहीं दूसरी ओर सकारात्मक बदलाव के प्रति उम्मीद भी जगाती है। लेखक का मानना है कि उदारीकरण व नई आर्थिक नीतियों ने समाज व व्यवस्था को पूरी तरह बदल दिया है। मीडिया भी इस बदलाव से अछूता नहीं रहा है। प्रिंट हो चाहे इलेक्ट्रॉनिक मीडिया, उनके काम करने की शैली में आमूलचूल परिवर्तन आया है।'
);

INSERT INTO t4_1_non_std_data_types_1  VALUES (
	3, 0, 0.0, 0.0, 0,

	'2014-03-10 15:25:35', '2014-03-10 15:25:35', 
	'2014-03-10 15:25:35', '2014-03-10 15:25:35', 

	'', 0x00, N''
);	

INSERT INTO t4_1_non_std_data_types_1  VALUES (
	4, NULL, NULL, NULL, NULL,

	NULL, NULL, 
	NULL, NULL, 

	NULL, NULL, NULL
);	
