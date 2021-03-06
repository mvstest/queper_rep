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


/* 
 * Test Stored Procedures and Functions for MySQL.
 *
 * Note that a CREATE PROCEDURE or FUNCTION command should not be in a batch of 
 * commands unless it is the last one in the batch to be executed in wjISQL.
 *
 */

/* Stored Procedures */

/**
 * Procedure # 5_1: A procedure with multiple statements in its body.
 */
CREATE PROCEDURE proc_5_1_multi_stmt(
	IN in_int_arg INTEGER,
   	OUT out_char_arg CHAR(50), 
   	OUT out_flt_arg CHAR(50),
   	OUT out_sint_arg CHAR(50)
) 
BEGIN
    SELECT char_col, flt_col INTO out_char_arg, out_flt_arg 
         FROM t1_1_std_data_types_basic
         WHERE int_col=in_int_arg;   
    SELECT sint_col INTO out_sint_arg 
         FROM t1_1_std_data_types_basic
         WHERE int_col=in_int_arg;   
    SELECT * FROM t1_1_std_data_types_basic;
END;

