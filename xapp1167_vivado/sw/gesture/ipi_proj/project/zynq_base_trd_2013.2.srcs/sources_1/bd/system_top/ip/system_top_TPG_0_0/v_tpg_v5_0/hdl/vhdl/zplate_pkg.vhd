-- $Id: zplate_pkg.vhd,v 1.1 2011/01/12 10:39:05 Exp $
--
-- (c) Copyright 2011 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
--
--  All rights reserved.
---------------------------------------------------------------
-- This is the top-level core wrapper which selects
-- between AXI4-Lite, Constant, and GPP interfaces
--
-- For C_HAS_AXI4_LITE =0 AXI4 Memory Mapped (AXI4-Lite)
--                    interface signals are generated
-- For C_HAS_AXI4_LITE =1 All core control registers are made
--                    available as user pins on the core IO
-- For C_HAS_AXI4_LITE =2 Core controls registers are tied off
--                    to GUI default values
---------------------------------------------------------------

Library IEEE;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_signed.all;


package ZplateLib is

type SinTableType is array (0 to 2047) of integer;

constant SinTable :  SinTableType :=
(
0      ,
804    ,
1608   ,
2412   ,
3216   ,
4021   ,
4825   ,
5629   ,
6433   ,
7237   ,
8041   ,
8845   ,
9648   ,
10452  ,
11256  ,
12059  ,
12862  ,
13666  ,
14469  ,
15272  ,
16074  ,
16877  ,
17680  ,
18482  ,
19284  ,
20086  ,
20888  ,
21689  ,
22491  ,
23292  ,
24093  ,
24894  ,
25694  ,
26494  ,
27294  ,
28094  ,
28894  ,
29693  ,
30492  ,
31290  ,
32089  ,
32887  ,
33685  ,
34482  ,
35279  ,
36076  ,
36872  ,
37668  ,
38464  ,
39259  ,
40054  ,
40849  ,
41643  ,
42437  ,
43230  ,
44024  ,
44816  ,
45608  ,
46400  ,
47191  ,
47982  ,
48773  ,
49563  ,
50352  ,
51141  ,
51930  ,
52718  ,
53505  ,
54293  ,
55079  ,
55865  ,
56651  ,
57436  ,
58220  ,
59004  ,
59787  ,
60570  ,
61352  ,
62134  ,
62915  ,
63695  ,
64475  ,
65254  ,
66033  ,
66811  ,
67588  ,
68365  ,
69141  ,
69917  ,
70691  ,
71466  ,
72239  ,
73012  ,
73784  ,
74555  ,
75326  ,
76096  ,
76865  ,
77634  ,
78401  ,
79169  ,
79935  ,
80700  ,
81465  ,
82229  ,
82993  ,
83755  ,
84517  ,
85278  ,
86038  ,
86797  ,
87556  ,
88313  ,
89070  ,
89826  ,
90581  ,
91335  ,
92089  ,
92841  ,
93593  ,
94344  ,
95094  ,
95843  ,
96591  ,
97338  ,
98084  ,
98830  ,
99574  ,
100318 ,
101060 ,
101802 ,
102542 ,
103282 ,
104021 ,
104759 ,
105495 ,
106231 ,
106966 ,
107700 ,
108432 ,
109164 ,
109895 ,
110624 ,
111353 ,
112081 ,
112807 ,
113532 ,
114257 ,
114980 ,
115702 ,
116423 ,
117143 ,
117862 ,
118580 ,
119297 ,
120013 ,
120727 ,
121440 ,
122152 ,
122863 ,
123573 ,
124282 ,
124990 ,
125696 ,
126401 ,
127105 ,
127808 ,
128509 ,
129210 ,
129909 ,
130607 ,
131304 ,
131999 ,
132693 ,
133386 ,
134078 ,
134768 ,
135458 ,
136146 ,
136832 ,
137518 ,
138202 ,
138884 ,
139566 ,
140246 ,
140925 ,
141602 ,
142278 ,
142953 ,
143627 ,
144299 ,
144970 ,
145639 ,
146307 ,
146974 ,
147639 ,
148303 ,
148965 ,
149626 ,
150286 ,
150944 ,
151601 ,
152256 ,
152910 ,
153563 ,
154214 ,
154864 ,
155512 ,
156158 ,
156804 ,
157448 ,
158090 ,
158731 ,
159370 ,
160008 ,
160644 ,
161279 ,
161912 ,
162544 ,
163174 ,
163803 ,
164430 ,
165055 ,
165679 ,
166302 ,
166923 ,
167542 ,
168160 ,
168776 ,
169391 ,
170004 ,
170615 ,
171225 ,
171833 ,
172440 ,
173045 ,
173648 ,
174249 ,
174850 ,
175448 ,
176045 ,
176640 ,
177233 ,
177825 ,
178415 ,
179003 ,
179590 ,
180175 ,
180758 ,
181340 ,
181920 ,
182498 ,
183075 ,
183649 ,
184222 ,
184794 ,
185363 ,
185931 ,
186497 ,
187061 ,
187624 ,
188185 ,
188744 ,
189301 ,
189857 ,
190410 ,
190962 ,
191512 ,
192060 ,
192607 ,
193152 ,
193694 ,
194235 ,
194775 ,
195312 ,
195847 ,
196381 ,
196913 ,
197443 ,
197971 ,
198497 ,
199022 ,
199544 ,
200065 ,
200584 ,
201100 ,
201615 ,
202128 ,
202640 ,
203149 ,
203656 ,
204162 ,
204665 ,
205167 ,
205666 ,
206164 ,
206660 ,
207154 ,
207645 ,
208135 ,
208623 ,
209109 ,
209593 ,
210075 ,
210556 ,
211034 ,
211510 ,
211984 ,
212456 ,
212926 ,
213394 ,
213860 ,
214324 ,
214787 ,
215247 ,
215705 ,
216161 ,
216615 ,
217067 ,
217516 ,
217964 ,
218410 ,
218854 ,
219295 ,
219735 ,
220173 ,
220608 ,
221041 ,
221473 ,
221902 ,
222329 ,
222754 ,
223177 ,
223598 ,
224017 ,
224433 ,
224848 ,
225260 ,
225671 ,
226079 ,
226485 ,
226889 ,
227290 ,
227690 ,
228088 ,
228483 ,
228876 ,
229267 ,
229656 ,
230043 ,
230427 ,
230810 ,
231190 ,
231568 ,
231944 ,
232317 ,
232689 ,
233058 ,
233425 ,
233790 ,
234153 ,
234513 ,
234872 ,
235228 ,
235582 ,
235933 ,
236283 ,
236630 ,
236975 ,
237318 ,
237658 ,
237996 ,
238332 ,
238666 ,
238998 ,
239327 ,
239654 ,
239979 ,
240301 ,
240622 ,
240940 ,
241255 ,
241569 ,
241880 ,
242189 ,
242496 ,
242800 ,
243102 ,
243402 ,
243699 ,
243994 ,
244287 ,
244578 ,
244866 ,
245152 ,
245436 ,
245717 ,
245996 ,
246273 ,
246548 ,
246820 ,
247089 ,
247357 ,
247622 ,
247885 ,
248145 ,
248403 ,
248659 ,
248913 ,
249164 ,
249412 ,
249659 ,
249903 ,
250145 ,
250384 ,
250621 ,
250856 ,
251088 ,
251318 ,
251545 ,
251771 ,
251993 ,
252214 ,
252432 ,
252648 ,
252861 ,
253072 ,
253280 ,
253487 ,
253690 ,
253892 ,
254091 ,
254287 ,
254482 ,
254673 ,
254863 ,
255050 ,
255234 ,
255417 ,
255597 ,
255774 ,
255949 ,
256122 ,
256292 ,
256460 ,
256625 ,
256788 ,
256948 ,
257106 ,
257262 ,
257415 ,
257566 ,
257715 ,
257861 ,
258004 ,
258145 ,
258284 ,
258420 ,
258554 ,
258686 ,
258815 ,
258941 ,
259065 ,
259187 ,
259306 ,
259423 ,
259537 ,
259649 ,
259759 ,
259866 ,
259970 ,
260072 ,
260172 ,
260269 ,
260364 ,
260456 ,
260546 ,
260634 ,
260719 ,
260801 ,
260881 ,
260959 ,
261034 ,
261107 ,
261177 ,
261245 ,
261310 ,
261373 ,
261433 ,
261491 ,
261547 ,
261600 ,
261650 ,
261698 ,
261744 ,
261787 ,
261828 ,
261866 ,
261902 ,
261935 ,
261966 ,
261994 ,
262020 ,
262044 ,
262065 ,
262083 ,
262099 ,
262113 ,
262124 ,
262132 ,
262139 ,
262142 ,
262144 ,
262142 ,
262139 ,
262132 ,
262124 ,
262113 ,
262099 ,
262083 ,
262065 ,
262044 ,
262020 ,
261994 ,
261966 ,
261935 ,
261902 ,
261866 ,
261828 ,
261787 ,
261744 ,
261698 ,
261650 ,
261600 ,
261547 ,
261491 ,
261433 ,
261373 ,
261310 ,
261245 ,
261177 ,
261107 ,
261034 ,
260959 ,
260881 ,
260801 ,
260719 ,
260634 ,
260546 ,
260456 ,
260364 ,
260269 ,
260172 ,
260072 ,
259970 ,
259866 ,
259759 ,
259649 ,
259537 ,
259423 ,
259306 ,
259187 ,
259065 ,
258941 ,
258815 ,
258686 ,
258554 ,
258420 ,
258284 ,
258145 ,
258004 ,
257861 ,
257715 ,
257566 ,
257415 ,
257262 ,
257106 ,
256948 ,
256788 ,
256625 ,
256460 ,
256292 ,
256122 ,
255949 ,
255774 ,
255597 ,
255417 ,
255234 ,
255050 ,
254863 ,
254673 ,
254482 ,
254287 ,
254091 ,
253892 ,
253690 ,
253487 ,
253280 ,
253072 ,
252861 ,
252648 ,
252432 ,
252214 ,
251993 ,
251771 ,
251545 ,
251318 ,
251088 ,
250856 ,
250621 ,
250384 ,
250145 ,
249903 ,
249659 ,
249412 ,
249164 ,
248913 ,
248659 ,
248403 ,
248145 ,
247885 ,
247622 ,
247357 ,
247089 ,
246820 ,
246548 ,
246273 ,
245996 ,
245717 ,
245436 ,
245152 ,
244866 ,
244578 ,
244287 ,
243994 ,
243699 ,
243402 ,
243102 ,
242800 ,
242496 ,
242189 ,
241880 ,
241569 ,
241255 ,
240940 ,
240622 ,
240301 ,
239979 ,
239654 ,
239327 ,
238998 ,
238666 ,
238332 ,
237996 ,
237658 ,
237318 ,
236975 ,
236630 ,
236283 ,
235933 ,
235582 ,
235228 ,
234872 ,
234513 ,
234153 ,
233790 ,
233425 ,
233058 ,
232689 ,
232317 ,
231944 ,
231568 ,
231190 ,
230810 ,
230427 ,
230043 ,
229656 ,
229267 ,
228876 ,
228483 ,
228088 ,
227690 ,
227290 ,
226889 ,
226485 ,
226079 ,
225671 ,
225260 ,
224848 ,
224433 ,
224017 ,
223598 ,
223177 ,
222754 ,
222329 ,
221902 ,
221473 ,
221041 ,
220608 ,
220173 ,
219735 ,
219295 ,
218854 ,
218410 ,
217964 ,
217516 ,
217067 ,
216615 ,
216161 ,
215705 ,
215247 ,
214787 ,
214324 ,
213860 ,
213394 ,
212926 ,
212456 ,
211984 ,
211510 ,
211034 ,
210556 ,
210075 ,
209593 ,
209109 ,
208623 ,
208135 ,
207645 ,
207154 ,
206660 ,
206164 ,
205666 ,
205167 ,
204665 ,
204162 ,
203656 ,
203149 ,
202640 ,
202128 ,
201615 ,
201100 ,
200584 ,
200065 ,
199544 ,
199022 ,
198497 ,
197971 ,
197443 ,
196913 ,
196381 ,
195847 ,
195312 ,
194775 ,
194235 ,
193694 ,
193152 ,
192607 ,
192060 ,
191512 ,
190962 ,
190410 ,
189857 ,
189301 ,
188744 ,
188185 ,
187624 ,
187061 ,
186497 ,
185931 ,
185363 ,
184794 ,
184222 ,
183649 ,
183075 ,
182498 ,
181920 ,
181340 ,
180758 ,
180175 ,
179590 ,
179003 ,
178415 ,
177825 ,
177233 ,
176640 ,
176045 ,
175448 ,
174850 ,
174249 ,
173648 ,
173045 ,
172440 ,
171833 ,
171225 ,
170615 ,
170004 ,
169391 ,
168776 ,
168160 ,
167542 ,
166923 ,
166302 ,
165679 ,
165055 ,
164430 ,
163803 ,
163174 ,
162544 ,
161912 ,
161279 ,
160644 ,
160008 ,
159370 ,
158731 ,
158090 ,
157448 ,
156804 ,
156158 ,
155512 ,
154864 ,
154214 ,
153563 ,
152910 ,
152256 ,
151601 ,
150944 ,
150286 ,
149626 ,
148965 ,
148303 ,
147639 ,
146974 ,
146307 ,
145639 ,
144970 ,
144299 ,
143627 ,
142953 ,
142278 ,
141602 ,
140925 ,
140246 ,
139566 ,
138884 ,
138202 ,
137518 ,
136832 ,
136146 ,
135458 ,
134768 ,
134078 ,
133386 ,
132693 ,
131999 ,
131304 ,
130607 ,
129909 ,
129210 ,
128509 ,
127808 ,
127105 ,
126401 ,
125696 ,
124990 ,
124282 ,
123573 ,
122863 ,
122152 ,
121440 ,
120727 ,
120013 ,
119297 ,
118580 ,
117862 ,
117143 ,
116423 ,
115702 ,
114980 ,
114257 ,
113532 ,
112807 ,
112081 ,
111353 ,
110624 ,
109895 ,
109164 ,
108432 ,
107700 ,
106966 ,
106231 ,
105495 ,
104759 ,
104021 ,
103282 ,
102542 ,
101802 ,
101060 ,
100318 ,
99574  ,
98830  ,
98084  ,
97338  ,
96591  ,
95843  ,
95094  ,
94344  ,
93593  ,
92841  ,
92089  ,
91335  ,
90581  ,
89826  ,
89070  ,
88313  ,
87556  ,
86797  ,
86038  ,
85278  ,
84517  ,
83755  ,
82993  ,
82229  ,
81465  ,
80700  ,
79935  ,
79169  ,
78401  ,
77634  ,
76865  ,
76096  ,
75326  ,
74555  ,
73784  ,
73012  ,
72239  ,
71466  ,
70691  ,
69917  ,
69141  ,
68365  ,
67588  ,
66811  ,
66033  ,
65254  ,
64475  ,
63695  ,
62915  ,
62134  ,
61352  ,
60570  ,
59787  ,
59004  ,
58220  ,
57436  ,
56651  ,
55865  ,
55079  ,
54293  ,
53505  ,
52718  ,
51930  ,
51141  ,
50352  ,
49563  ,
48773  ,
47982  ,
47191  ,
46400  ,
45608  ,
44816  ,
44024  ,
43230  ,
42437  ,
41643  ,
40849  ,
40054  ,
39259  ,
38464  ,
37668  ,
36872  ,
36076  ,
35279  ,
34482  ,
33685  ,
32887  ,
32089  ,
31290  ,
30492  ,
29693  ,
28894  ,
28094  ,
27294  ,
26494  ,
25694  ,
24894  ,
24093  ,
23292  ,
22491  ,
21689  ,
20888  ,
20086  ,
19284  ,
18482  ,
17680  ,
16877  ,
16074  ,
15272  ,
14469  ,
13666  ,
12862  ,
12059  ,
11256  ,
10452  ,
9648   ,
8845   ,
8041   ,
7237   ,
6433   ,
5629   ,
4825   ,
4021   ,
3216   ,
2412   ,
1608   ,
804    ,
0      ,
-804   ,
-1608  ,
-2412  ,
-3216  ,
-4021  ,
-4825  ,
-5629  ,
-6433  ,
-7237  ,
-8041  ,
-8845  ,
-9648  ,
-10452 ,
-11256 ,
-12059 ,
-12862 ,
-13666 ,
-14469 ,
-15272 ,
-16074 ,
-16877 ,
-17680 ,
-18482 ,
-19284 ,
-20086 ,
-20888 ,
-21689 ,
-22491 ,
-23292 ,
-24093 ,
-24894 ,
-25694 ,
-26494 ,
-27294 ,
-28094 ,
-28894 ,
-29693 ,
-30492 ,
-31290 ,
-32089 ,
-32887 ,
-33685 ,
-34482 ,
-35279 ,
-36076 ,
-36872 ,
-37668 ,
-38464 ,
-39259 ,
-40054 ,
-40849 ,
-41643 ,
-42437 ,
-43230 ,
-44024 ,
-44816 ,
-45608 ,
-46400 ,
-47191 ,
-47982 ,
-48773 ,
-49563 ,
-50352 ,
-51141 ,
-51930 ,
-52718 ,
-53505 ,
-54293 ,
-55079 ,
-55865 ,
-56651 ,
-57436 ,
-58220 ,
-59004 ,
-59787 ,
-60570 ,
-61352 ,
-62134 ,
-62915 ,
-63695 ,
-64475 ,
-65254 ,
-66033 ,
-66811 ,
-67588 ,
-68365 ,
-69141 ,
-69917 ,
-70691 ,
-71466 ,
-72239 ,
-73012 ,
-73784 ,
-74555 ,
-75326 ,
-76096 ,
-76865 ,
-77634 ,
-78401 ,
-79169 ,
-79935 ,
-80700 ,
-81465 ,
-82229 ,
-82993 ,
-83755 ,
-84517 ,
-85278 ,
-86038 ,
-86797 ,
-87556 ,
-88313 ,
-89070 ,
-89826 ,
-90581 ,
-91335 ,
-92089 ,
-92841 ,
-93593 ,
-94344 ,
-95094 ,
-95843 ,
-96591 ,
-97338 ,
-98084 ,
-98830 ,
-99574 ,
-100318,
-101060,
-101802,
-102542,
-103282,
-104021,
-104759,
-105495,
-106231,
-106966,
-107700,
-108432,
-109164,
-109895,
-110624,
-111353,
-112081,
-112807,
-113532,
-114257,
-114980,
-115702,
-116423,
-117143,
-117862,
-118580,
-119297,
-120013,
-120727,
-121440,
-122152,
-122863,
-123573,
-124282,
-124990,
-125696,
-126401,
-127105,
-127808,
-128509,
-129210,
-129909,
-130607,
-131304,
-131999,
-132693,
-133386,
-134078,
-134768,
-135458,
-136146,
-136832,
-137518,
-138202,
-138884,
-139566,
-140246,
-140925,
-141602,
-142278,
-142953,
-143627,
-144299,
-144970,
-145639,
-146307,
-146974,
-147639,
-148303,
-148965,
-149626,
-150286,
-150944,
-151601,
-152256,
-152910,
-153563,
-154214,
-154864,
-155512,
-156158,
-156804,
-157448,
-158090,
-158731,
-159370,
-160008,
-160644,
-161279,
-161912,
-162544,
-163174,
-163803,
-164430,
-165055,
-165679,
-166302,
-166923,
-167542,
-168160,
-168776,
-169391,
-170004,
-170615,
-171225,
-171833,
-172440,
-173045,
-173648,
-174249,
-174850,
-175448,
-176045,
-176640,
-177233,
-177825,
-178415,
-179003,
-179590,
-180175,
-180758,
-181340,
-181920,
-182498,
-183075,
-183649,
-184222,
-184794,
-185363,
-185931,
-186497,
-187061,
-187624,
-188185,
-188744,
-189301,
-189857,
-190410,
-190962,
-191512,
-192060,
-192607,
-193152,
-193694,
-194235,
-194775,
-195312,
-195847,
-196381,
-196913,
-197443,
-197971,
-198497,
-199022,
-199544,
-200065,
-200584,
-201100,
-201615,
-202128,
-202640,
-203149,
-203656,
-204162,
-204665,
-205167,
-205666,
-206164,
-206660,
-207154,
-207645,
-208135,
-208623,
-209109,
-209593,
-210075,
-210556,
-211034,
-211510,
-211984,
-212456,
-212926,
-213394,
-213860,
-214324,
-214787,
-215247,
-215705,
-216161,
-216615,
-217067,
-217516,
-217964,
-218410,
-218854,
-219295,
-219735,
-220173,
-220608,
-221041,
-221473,
-221902,
-222329,
-222754,
-223177,
-223598,
-224017,
-224433,
-224848,
-225260,
-225671,
-226079,
-226485,
-226889,
-227290,
-227690,
-228088,
-228483,
-228876,
-229267,
-229656,
-230043,
-230427,
-230810,
-231190,
-231568,
-231944,
-232317,
-232689,
-233058,
-233425,
-233790,
-234153,
-234513,
-234872,
-235228,
-235582,
-235933,
-236283,
-236630,
-236975,
-237318,
-237658,
-237996,
-238332,
-238666,
-238998,
-239327,
-239654,
-239979,
-240301,
-240622,
-240940,
-241255,
-241569,
-241880,
-242189,
-242496,
-242800,
-243102,
-243402,
-243699,
-243994,
-244287,
-244578,
-244866,
-245152,
-245436,
-245717,
-245996,
-246273,
-246548,
-246820,
-247089,
-247357,
-247622,
-247885,
-248145,
-248403,
-248659,
-248913,
-249164,
-249412,
-249659,
-249903,
-250145,
-250384,
-250621,
-250856,
-251088,
-251318,
-251545,
-251771,
-251993,
-252214,
-252432,
-252648,
-252861,
-253072,
-253280,
-253487,
-253690,
-253892,
-254091,
-254287,
-254482,
-254673,
-254863,
-255050,
-255234,
-255417,
-255597,
-255774,
-255949,
-256122,
-256292,
-256460,
-256625,
-256788,
-256948,
-257106,
-257262,
-257415,
-257566,
-257715,
-257861,
-258004,
-258145,
-258284,
-258420,
-258554,
-258686,
-258815,
-258941,
-259065,
-259187,
-259306,
-259423,
-259537,
-259649,
-259759,
-259866,
-259970,
-260072,
-260172,
-260269,
-260364,
-260456,
-260546,
-260634,
-260719,
-260801,
-260881,
-260959,
-261034,
-261107,
-261177,
-261245,
-261310,
-261373,
-261433,
-261491,
-261547,
-261600,
-261650,
-261698,
-261744,
-261787,
-261828,
-261866,
-261902,
-261935,
-261966,
-261994,
-262020,
-262044,
-262065,
-262083,
-262099,
-262113,
-262124,
-262132,
-262139,
-262142,
-262144,
-262142,
-262139,
-262132,
-262124,
-262113,
-262099,
-262083,
-262065,
-262044,
-262020,
-261994,
-261966,
-261935,
-261902,
-261866,
-261828,
-261787,
-261744,
-261698,
-261650,
-261600,
-261547,
-261491,
-261433,
-261373,
-261310,
-261245,
-261177,
-261107,
-261034,
-260959,
-260881,
-260801,
-260719,
-260634,
-260546,
-260456,
-260364,
-260269,
-260172,
-260072,
-259970,
-259866,
-259759,
-259649,
-259537,
-259423,
-259306,
-259187,
-259065,
-258941,
-258815,
-258686,
-258554,
-258420,
-258284,
-258145,
-258004,
-257861,
-257715,
-257566,
-257415,
-257262,
-257106,
-256948,
-256788,
-256625,
-256460,
-256292,
-256122,
-255949,
-255774,
-255597,
-255417,
-255234,
-255050,
-254863,
-254673,
-254482,
-254287,
-254091,
-253892,
-253690,
-253487,
-253280,
-253072,
-252861,
-252648,
-252432,
-252214,
-251993,
-251771,
-251545,
-251318,
-251088,
-250856,
-250621,
-250384,
-250145,
-249903,
-249659,
-249412,
-249164,
-248913,
-248659,
-248403,
-248145,
-247885,
-247622,
-247357,
-247089,
-246820,
-246548,
-246273,
-245996,
-245717,
-245436,
-245152,
-244866,
-244578,
-244287,
-243994,
-243699,
-243402,
-243102,
-242800,
-242496,
-242189,
-241880,
-241569,
-241255,
-240940,
-240622,
-240301,
-239979,
-239654,
-239327,
-238998,
-238666,
-238332,
-237996,
-237658,
-237318,
-236975,
-236630,
-236283,
-235933,
-235582,
-235228,
-234872,
-234513,
-234153,
-233790,
-233425,
-233058,
-232689,
-232317,
-231944,
-231568,
-231190,
-230810,
-230427,
-230043,
-229656,
-229267,
-228876,
-228483,
-228088,
-227690,
-227290,
-226889,
-226485,
-226079,
-225671,
-225260,
-224848,
-224433,
-224017,
-223598,
-223177,
-222754,
-222329,
-221902,
-221473,
-221041,
-220608,
-220173,
-219735,
-219295,
-218854,
-218410,
-217964,
-217516,
-217067,
-216615,
-216161,
-215705,
-215247,
-214787,
-214324,
-213860,
-213394,
-212926,
-212456,
-211984,
-211510,
-211034,
-210556,
-210075,
-209593,
-209109,
-208623,
-208135,
-207645,
-207154,
-206660,
-206164,
-205666,
-205167,
-204665,
-204162,
-203656,
-203149,
-202640,
-202128,
-201615,
-201100,
-200584,
-200065,
-199544,
-199022,
-198497,
-197971,
-197443,
-196913,
-196381,
-195847,
-195312,
-194775,
-194235,
-193694,
-193152,
-192607,
-192060,
-191512,
-190962,
-190410,
-189857,
-189301,
-188744,
-188185,
-187624,
-187061,
-186497,
-185931,
-185363,
-184794,
-184222,
-183649,
-183075,
-182498,
-181920,
-181340,
-180758,
-180175,
-179590,
-179003,
-178415,
-177825,
-177233,
-176640,
-176045,
-175448,
-174850,
-174249,
-173648,
-173045,
-172440,
-171833,
-171225,
-170615,
-170004,
-169391,
-168776,
-168160,
-167542,
-166923,
-166302,
-165679,
-165055,
-164430,
-163803,
-163174,
-162544,
-161912,
-161279,
-160644,
-160008,
-159370,
-158731,
-158090,
-157448,
-156804,
-156158,
-155512,
-154864,
-154214,
-153563,
-152910,
-152256,
-151601,
-150944,
-150286,
-149626,
-148965,
-148303,
-147639,
-146974,
-146307,
-145639,
-144970,
-144299,
-143627,
-142953,
-142278,
-141602,
-140925,
-140246,
-139566,
-138884,
-138202,
-137518,
-136832,
-136146,
-135458,
-134768,
-134078,
-133386,
-132693,
-131999,
-131304,
-130607,
-129909,
-129210,
-128509,
-127808,
-127105,
-126401,
-125696,
-124990,
-124282,
-123573,
-122863,
-122152,
-121440,
-120727,
-120013,
-119297,
-118580,
-117862,
-117143,
-116423,
-115702,
-114980,
-114257,
-113532,
-112807,
-112081,
-111353,
-110624,
-109895,
-109164,
-108432,
-107700,
-106966,
-106231,
-105495,
-104759,
-104021,
-103282,
-102542,
-101802,
-101060,
-100318,
-99574 ,
-98830 ,
-98084 ,
-97338 ,
-96591 ,
-95843 ,
-95094 ,
-94344 ,
-93593 ,
-92841 ,
-92089 ,
-91335 ,
-90581 ,
-89826 ,
-89070 ,
-88313 ,
-87556 ,
-86797 ,
-86038 ,
-85278 ,
-84517 ,
-83755 ,
-82993 ,
-82229 ,
-81465 ,
-80700 ,
-79935 ,
-79169 ,
-78401 ,
-77634 ,
-76865 ,
-76096 ,
-75326 ,
-74555 ,
-73784 ,
-73012 ,
-72239 ,
-71466 ,
-70691 ,
-69917 ,
-69141 ,
-68365 ,
-67588 ,
-66811 ,
-66033 ,
-65254 ,
-64475 ,
-63695 ,
-62915 ,
-62134 ,
-61352 ,
-60570 ,
-59787 ,
-59004 ,
-58220 ,
-57436 ,
-56651 ,
-55865 ,
-55079 ,
-54293 ,
-53505 ,
-52718 ,
-51930 ,
-51141 ,
-50352 ,
-49563 ,
-48773 ,
-47982 ,
-47191 ,
-46400 ,
-45608 ,
-44816 ,
-44024 ,
-43230 ,
-42437 ,
-41643 ,
-40849 ,
-40054 ,
-39259 ,
-38464 ,
-37668 ,
-36872 ,
-36076 ,
-35279 ,
-34482 ,
-33685 ,
-32887 ,
-32089 ,
-31290 ,
-30492 ,
-29693 ,
-28894 ,
-28094 ,
-27294 ,
-26494 ,
-25694 ,
-24894 ,
-24093 ,
-23292 ,
-22491 ,
-21689 ,
-20888 ,
-20086 ,
-19284 ,
-18482 ,
-17680 ,
-16877 ,
-16074 ,
-15272 ,
-14469 ,
-13666 ,
-12862 ,
-12059 ,
-11256 ,
-10452 ,
-9648  ,
-8845  ,
-8041  ,
-7237  ,
-6433  ,
-5629  ,
-4825  ,
-4021  ,
-3216  ,
-2412  ,
-1608  ,
-804
);



end ZplateLib;

package body ZplateLib is
end ZplateLib;

