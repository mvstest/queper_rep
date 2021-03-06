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


/**
 * Procedure #-02: A procedure without any arguments but with result set.
 */
/* Right now this does not work because Oracle
 * expects to use Oracle specific cursor types.
DROP PROCEDURE proc_2_1_no_args_with_results;

CREATE OR REPLACE PROCEDURE proc_2_1_no_args_with_results AS
BEGIN
SELECT * FROM t1_1_std_data_types_basic;
    
END;

CALL proc_2_1_no_args_with_results();
*/

