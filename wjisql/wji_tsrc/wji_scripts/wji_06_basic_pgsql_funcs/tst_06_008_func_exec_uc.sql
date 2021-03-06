/* 
     Copyright 2006-2017 QuePer

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
 * Tests for Stored Functions of PostgreSQL.
 */

/**
 * Function #-01: A function without any arguments and without any results;
 */
SELECT func_1_1_no_args();


/**
 * Function #-02: A function without any arguments but with result set.
 */
SELECT * FROM  func_2_1_no_args_with_results();


/**
 * Function #-03: A function with only input arguments.
 */
SELECT func_3_1_in_args(1, 'char argument');


/**
 * Function # 4-1: A function with input and output arguments.
 */
SELECT * FROM func_4_1_in_out_args(1);


/**
 * Function # 4-2: A function with input, output and input-output arguments.
 */
SELECT * FROM func_4_2_in_out_inout_args(1,5);



/**
 * Procedure # 5-1: A procedure with multiple statements in its body.
 */
SELECT * FROM func_5_1_multi_stmt(1);



