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

/* 
 * Test Stored Functions for Oracle Database.
 *
 * Note that a CREATE PROCEDURE or FUNCTION command should not be in a batch of 
 * commands unless it is the last one in the batch to be executed in wjISQL.
 *
 */

/* *************************************************** */

/* Stored Procedures */



/**
 * Procedure # 4-2: A procedure with input, output and input-output arguments.
 */

CREATE PROCEDURE proc_4_2_in_out_inout_args(
	in_arg IN INTEGER,
   	out_arg OUT SMALLINT,
        inout_arg IN OUT NUMBER) AS
BEGIN
    SELECT sint_col INTO out_arg 
         FROM t1_1_std_data_types_basic
         WHERE int_col=in_arg;   
    inout_arg := inout_arg * out_arg;
END;

