INSERT INTO `ss_user` (`id`, `login_name`, `name`, `password`,`register_date`,`roles`,`salt`) VALUES
(1, 'admin', 'admin', '0b3037390abb46240ed42b673924c54d072c8826', parsedatetime('05-08-2014 17:06:16.79', 'dd-MM-yyyy hh:mm:ss.SS'), 'admin', '605b71a2bd750280'), 
(2, 'user', 'jimmy', 'd9ef7a07309af2c7246d89fa418432a6e2711886', parsedatetime('01-08-2014 17:06:16.79', 'dd-MM-yyyy hh:mm:ss.SS'), 'user', '675c29d5288d9efd');

INSERT INTO `ss_group` (`id`, `name`, `description`, `position`) VALUES
(1, 'CPU Performance', 'Describe the CPU''s performance under different workload.', 1),
(2, 'Memory Peroformance', 'Describe the Memeory''s performance under different workload.', 2),
(3, 'Display Performance', 'Describe the Monitor''s performance under different workload.', 3),
(4, 'Transaction Performance', 'Describe the Server''s tranaction processing capability.', 4),
(5, 'Purchase Performance', 'Describe the Users'' purchase processing capability', 5),
(6, 'Checkout Performance', 'Describe the Server''s capability for checkout processing.', 6);

INSERT INTO `ss_platform` (`id`, `name`,`status`) VALUES
(1, 'Linux', 'active'),
(2, 'Solaris', 'active'),
(3, 'Windows', 'inactive'),
(4, 'MacOs', 'inactive'),
(5, 'Android', 'pending'),
(6, 'Unix', 'obsolete');

INSERT INTO `ss_default_platform` (`id`, `platform_id`) VALUES
(1, 1);

INSERT INTO `ss_version` (`id`, `name`,`status`) VALUES
(1, 'Product 1.0', 'obsolete'),
(2, 'Product 2.0', 'active'),
(3, 'Product 3.0', 'active'),
(4, 'Product 4.0', 'active');

INSERT INTO `ss_default_version` (`id`, `version_id`) VALUES
(1, 2);

INSERT INTO `ss_default_theme` (`id`, `theme`) VALUES
(1, 'bar');

INSERT INTO `ss_scenario` (`id`, `name`, `description`, `group_id`) VALUES
(1, 'CPU Scenario 1', 'CPU Scenario 1', 1),
(2, 'CPU Scenario 2', 'CPU Scenario 2', 1),
(3, 'CPU Scenario 3', 'CPU Scenario 3', 1),
(4, 'CPU Scenario 4', 'CPU Scenario 4', 1),
(5, 'Memory Scenario1', 'Memory Scenario1', 2),
(6, 'Memory Scenario2', 'Memory Scenario2', 2),
(7, 'Memory Scenario3', 'Memory Scenario3', 2),
(8, 'Memory Scenario4', 'Memory Scenario4', 2),
( 9, 'Display Scenario1', 'Display Scenario1', 3),
(10, 'Display Scenario2', 'Display Scenario2', 3),
(11, 'Display Scenario3', 'Display Scenario3', 3),
(12, 'Display Scenario4', 'Display Scenario4', 3),
(13, 'Transaction Scenario1', 'Transaction Scenario1', 4),
(14, 'Transaction Scenario2', 'Transaction Scenario2', 4),
(15, 'Transaction Scenario3', 'Transaction Scenario3', 4),
(16, 'Transaction Scenario4', 'Transaction Scenario4', 4),
(17, 'Purchase Scenario1', 'Purchase Scenario1', 5),
(18, 'Purchase Scenario2', 'Purchase Scenario2', 5),
(19, 'Purchase Scenario3', 'Purchase Scenario3', 5),
(20, 'Purchase Scenario4', 'Purchase Scenario4', 5),
(21, 'Checkout Scenario1', 'Checkout Scenario1', 6),
(22, 'Checkout Scenario2', 'Checkout Scenario2', 6),
(23, 'Checkout Scenario3', 'Checkout Scenario3', 6),
(24, 'Checkout Scenario4', 'Checkout Scenario4', 6);

INSERT INTO `ss_benchmark` (`id`, `result`, `version_id`, `scenario_id`, `platform_id`) VALUES
(1,  403,  2, 1,  1),
(2,  430,  2, 2,  1),
(3,  216,  2, 3,  1),
(4,  1059, 2, 4,  1),
(5,  273,  2, 5,  1),
(6,  2241, 2, 6,  1),
(7,  8368, 2, 7,  1),
(8,  370,  2, 8,  1),
(9,  249,  2, 9,  1),
(10, 55,   2, 10, 1),
(11, 108,  2, 11, 1),
(12, 109,  2, 12, 1),
(13, 293,  2, 13, 1),
(14, 98,   2, 14, 1),
(15, 161,  2, 15, 1),
(16, 171,  2, 16, 1),
(17, 8115, 2, 17, 1),
(18, 2056, 2, 18, 1),
(19, 3632, 2, 19, 1),
(20, 8328, 2, 20, 1),
(21, 180,  2, 21, 1),
(22, 290,  2, 22, 1),
(23, 370,  2, 23, 1),
(24, 490,  2, 24, 1),

(25, 403,  2, 1,  2),
(26, 430,  2, 2,  2),
(27, 216,  2, 3,  2),
(28, 1059, 2, 4,  2),
(29, 273,  2, 5,  2),
(30, 2241, 2, 6,  2),
(31, 8368, 2, 7,  2),
(32, 370,  2, 8,  2),
(33, 249,  2, 9,  2),
(34, 55,   2, 10, 2),
(35, 108,  2, 11, 2),
(36, 109,  2, 12, 2),
(37, 293,  2, 13, 2),
(38, 98,   2, 14, 2),
(39, 161,  2, 15, 2),
(40, 171,  2, 16, 2),
(41, 8115, 2, 17, 2),
(42, 2056, 2, 18, 2),
(43, 3632, 2, 19, 2),
(44, 8328, 2, 20, 2),
(45, 180,  2, 21, 2),
(46, 290,  2, 22, 2),
(47, 370,  2, 23, 2),
(48, 490,  2, 24, 2);

INSERT INTO `ss_performance` (`id`, `result`, `version_id`, `scenario_id`, `platform_id`, `created`,`jenkins`) VALUES
(1001,  413,   2, 1,  1, parsedatetime('26-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio1'),
(1002,  423,   2, 1,  1, parsedatetime('27-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio1'),
(1003,  433,   2, 1,  1, parsedatetime('28-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio1'),
(1004,  423,   2, 1,  1, parsedatetime('29-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio1'),
(1005,  433,   2, 1,  1, parsedatetime('30-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio1'),
(1006,  423,   2, 1,  1, parsedatetime('31-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio1'),
(1007,  413,   2, 1,  1, parsedatetime('01-09-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio1'),
(1008,  408,   2, 1,  1, parsedatetime('02-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio1'),
(1009,  415,   2, 1,  1, parsedatetime('03-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio1'),
(1010,  423,   2, 1,  1, parsedatetime('04-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio1'),

(2001,  516,   2, 2,  1, parsedatetime('26-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio2'),
(2002,  521,   2, 2,  1, parsedatetime('27-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio2'),
(2003,  522,   2, 2,  1, parsedatetime('28-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio2'),
(2004,  532,   2, 2,  1, parsedatetime('29-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio2'),
(2005,  525,   2, 2,  1, parsedatetime('30-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio2'),
(2006,  538,   2, 2,  1, parsedatetime('31-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio2'),
(2007,  526,   2, 2,  1, parsedatetime('01-09-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio2'),
(2008,  520,   2, 2,  1, parsedatetime('02-09-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio2'),
(2009,  521,   2, 2,  1, parsedatetime('03-09-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio2'),
(2010,  519,   2, 2,  1, parsedatetime('04-09-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio2'),

(3001,  186,   2, 3,  1, parsedatetime('26-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio3'),
(3002,  196,   2, 3,  1, parsedatetime('27-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio3'),
(3003,  136,   2, 3,  1, parsedatetime('28-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio3'),
(3004,  146,   2, 3,  1, parsedatetime('29-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio3'),
(3005,  186,   2, 3,  1, parsedatetime('30-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio3'),
(3006,  176,   2, 3,  1, parsedatetime('31-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio3'),
(3007,  216,   2, 3,  1, parsedatetime('01-09-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio3'),
(3008,  316,   2, 3,  1, parsedatetime('02-09-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio3'),
(3009,  226,   2, 3,  1, parsedatetime('03-09-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio3'),
(3010,  216,   2, 3,  1, parsedatetime('04-09-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio3'),

(4001,  1159,  2, 4,  1, parsedatetime('26-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio4'),
(4002,  1290,  2, 4,  1, parsedatetime('27-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio4'),

(5001,  400,   2, 5,  1, parsedatetime('26-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio5'),
(5002,  500,   2, 5,  1, parsedatetime('27-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio5'),

(6001,  3241,  2, 6,  1, parsedatetime('26-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio6'),
(6002,  3341,  2, 6,  1, parsedatetime('27-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio6'),

(7001,  10368, 2, 7,  1, parsedatetime('26-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio7'),
(7002,  11368, 2, 7,  1, parsedatetime('27-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio7'),

(8001,  333,   2, 8,  1, parsedatetime('26-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio8'),
(8002,  233,   2, 8,  1, parsedatetime('27-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio8'),

(9001,  273,   2, 9,  1, parsedatetime('26-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio9'),
(9002,  283,   2, 9,  1, parsedatetime('27-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio9'),

(10001, 65,    2, 10, 1, parsedatetime('26-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio10'),
(11001, 98,    2, 11, 1, parsedatetime('26-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio11'),
(12001, 120,   2, 12, 1, parsedatetime('26-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio12'),
(13001, 322,   2, 13, 1, parsedatetime('26-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio13'),
(14001, 107,   2, 14, 1, parsedatetime('26-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio14'),
(15001, 193,   2, 15, 1, parsedatetime('26-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio15'),
(16001, 205,   2, 16, 1, parsedatetime('26-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio16'),
(17001, 8926,  2, 17, 1, parsedatetime('26-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio17'),
(18001, 2256,  2, 18, 1, parsedatetime('26-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio18'),
(19001, 3614,  2, 19, 1, parsedatetime('26-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio19'),
(20001, 8488,  2, 20, 1, parsedatetime('26-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio20'),
(21001, 216,   2, 21, 1, parsedatetime('26-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio21'),
(22001, 261,   2, 22, 1, parsedatetime('26-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio22'),
(23001, 333,   2, 23, 1, parsedatetime('26-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio23'),
(24001, 580,   2, 24, 1, parsedatetime('26-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio24'),
                     
(25001, 443,   2, 1,  2, parsedatetime('27-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio1'),
(26001, 470,   2, 2,  2, parsedatetime('27-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio2'),
(27001, 190,   2, 3,  2, parsedatetime('27-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio3'),
(28001, 1259,  2, 4,  2, parsedatetime('27-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio4'),
(29001, 300,   2, 5,  2, parsedatetime('27-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio5'),
(30001, 2285,  2, 6,  2, parsedatetime('27-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio6'),
(31001, 9168,  2, 7,  2, parsedatetime('27-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio7'),
(32001, 444,   2, 8,  2, parsedatetime('27-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio8'),
(33001, 280,   2, 9,  2, parsedatetime('27-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio9'),
(34001, 75,    2, 11, 2, parsedatetime('27-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio10'),
(35001, 128,   2, 12, 2, parsedatetime('27-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio11'),
(36001, 129,   2, 13, 2, parsedatetime('27-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio12'),
(37001, 343,   2, 14, 2, parsedatetime('27-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio13'),
(38001, 118,   2, 15, 2, parsedatetime('27-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio14'),
(39001, 190,   2, 16, 2, parsedatetime('27-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio15'),
(40001, 205,   2, 17, 2, parsedatetime('27-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio16'),
(41001, 8915,  2, 18, 2, parsedatetime('27-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio17'),
(42001, 2256,  2, 19, 2, parsedatetime('27-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio18'),
(43001, 3332,  2, 20, 2, parsedatetime('27-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio19'),
(44001, 8028,  2, 21, 2, parsedatetime('27-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio20'),
(45001, 198,   2, 19, 2, parsedatetime('27-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio21'),
(46001, 435,   2, 20, 2, parsedatetime('27-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio22'),
(47001, 545,   2, 21, 2, parsedatetime('27-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio23'),
(48001, 588,   2, 21, 2, parsedatetime('27-08-2014 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 'http://www.cibuild.com/product2/scenaio24');
