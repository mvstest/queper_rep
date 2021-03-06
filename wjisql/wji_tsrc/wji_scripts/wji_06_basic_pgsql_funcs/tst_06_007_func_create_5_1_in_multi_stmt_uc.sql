/* 
     Copyright 2014 M. Vidyasagar

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


/* *************************************************** */

/* 
 * Test Stored Functions for PostgreSQL.
 *
 * Note that a CREATE PROCEDURE or FUNCTION command should not be in a batch of 
 * commands unless it is the last one in the batch to be executed in wjISQL.
 *
 */


/**
 * Procedure # 5-1: A procedure with multiple statements in its body.
 */

CREATE FUNCTION func_5_1_multi_stmt(
	in_int_arg IN INTEGER,
   	out_char_arg OUT CHAR(30), 
   	out_dec_arg OUT DECIMAL(10,2),
   	out_sint_arg OUT SMALLINT
) AS $$
BEGIN
    SELECT char_col, dec_col INTO out_char_arg, out_dec_arg 
         FROM t1_1_std_data_types_basic
         WHERE int_col=in_int_arg;   
    SELECT sint_col INTO out_sint_arg 
         FROM t1_1_std_data_types_basic
         WHERE int_col=in_int_arg;   
END;
$$ LANGUAGE plpgsql;

