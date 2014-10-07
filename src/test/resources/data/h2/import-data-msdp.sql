INSERT INTO `ss_user` (`id`, `login_name`, `name`, `password`,`register_date`,`roles`,`salt`) VALUES
(1, 'admin', 'admin', '0b3037390abb46240ed42b673924c54d072c8826', parsedatetime('2014-08-05 17:06:16.79', 'dd-MM-yyyy hh:mm:ss.SS'), 'admin', '605b71a2bd750280'), 
(2, 'user', 'jimmy', '2488aa0c31c624687bd9928e0a5d29e7d1ed520b', parsedatetime('2014-08-01 17:06:16.79', 'dd-MM-yyyy hh:mm:ss.SS'), 'user', '6d65d24122c30500');

INSERT INTO `ss_group` (`id`, `name`, `description`, `position`) VALUES
(1, 'Media/StoreFront/HWA Performance', '', 1),
(2, 'MBC Performance', '', 2),
(3, 'REST MBC Performance', '', 3),
(4, 'Messaging Performance', '', 4),
(5, 'HPA Performance', '', 5),
(6, 'HPA Performance(Without Authentication)', '', 6);

INSERT INTO `ss_platform` (`id`, `name`,`status`) VALUES
(1, 'Linux', 'active'),
(2, 'Solaris', 'active'),
(3, 'Windows', 'inactive'),
(4, 'MacOs', 'inactive'),
(5, 'Android', 'pending'),
(6, 'Unix', 'obsolete');

INSERT INTO `ss_scenario` (`id`, `name`, `description`, `group_id`) VALUES
(1, 'Media Search API', '', 1),
(2, 'Media Spell Check', '', 1),
(3, 'StoreFront', '', 1),
(4, 'HWA E2E', '', 1),
(5, 'MBC Query GUI', '', 2),
(6, 'MBC Data Plan', '', 2),
(7, 'MBC Data Volume', '', 2),
(8, 'MBC Turbo Speed', '', 2),
(9, 'REST MBC Query GUI', '', 3),
(10, 'REST MBC Data Plan', '', 3),
(11, 'REST MBC Data Volume', '', 3),
(12, 'REST MBC Turbo Speed', '', 3),
(13, 'MO Weather', '', 4),
(14, 'MT WapPush', '', 4),
(15, 'MT SMS', '', 4),
(16, 'MCI', '', 4),
(17, 'HPA Consume Tickets', '', 5),
(18, 'HPA Reserve Commit', '', 5),
(19, 'HPA Reserve Release', '', 5),
(20, 'HPA Consume Tickets', '', 6),
(21, 'HPA Reserve Commit', '', 6),
(22, 'HPA Reserve Release', '', 6);


INSERT INTO `ss_benchmark` (`id`, `result`, `version`, `scenario_id`, `platform_id`) VALUES
(1, 403, '6.2', 3, 2),
(2, 430, '6.2', 4, 2),
(3, 216, '6.2', 1, 2),
(4, 1059, '6.2', 2, 2),
(5, 273, '6.2', 13, 2),
(6, 2241, '6.2', 14, 2),
(7, 8368, '6.2', 15, 2),
(8, 370, '6.2', 16, 2),
(9, 249, '6.2', 5, 2),
(10, 55, '6.2', 6, 2),
(11, 108, '6.2', 7, 2),
(12, 109, '6.2', 8, 2),
(13, 293, '6.2', 9, 2),
(14, 98, '6.2', 10, 2),
(15, 161, '6.2', 11, 2),
(16, 171, '6.2', 12, 2),
(17, 8115, '6.2', 17, 2),
(18, 2056, '6.2', 18, 2),
(19, 3632, '6.2', 19, 2),
(20, 8328, '6.2', 20, 2),
(21, 2118, '6.2', 21, 2),
(22, 3779, '6.2', 22, 2);


INSERT INTO `ss_performance` (`id`, `result`, `version`, `created`, `scenario_id`, `platform_id`) VALUES
(2, 403, '6.2', parsedatetime('17-09-2012 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 3, 2),
(3, 430, '6.2', parsedatetime('17-09-2012 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 4, 2),
(4, 216, '6.2', parsedatetime('17-09-2012 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 1, 2),
(5, 1059, '6.2', parsedatetime('17-09-2012 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 2, 2),
(6, 273, '6.2', parsedatetime('17-09-2012 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 13, 2),
(7, 2241, '6.2', parsedatetime('17-09-2012 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 14, 2),
(8, 8368, '6.2', parsedatetime('17-09-2012 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 15, 2),
(9, 370, '6.2', parsedatetime('17-09-2012 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 16, 2),
(10, 249, '6.2', parsedatetime('17-09-2012 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 5, 2),
(11, 55, '6.2', parsedatetime('17-09-2012 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 6, 2),
(12, 108, '6.2', parsedatetime('17-09-2012 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 7, 2),
(13, 109, '6.2', parsedatetime('17-09-2012 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 8, 2),
(14, 293, '6.2', parsedatetime('17-09-2012 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 9, 2),
(15, 98, '6.2', parsedatetime('17-09-2012 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 10, 2),
(16, 161, '6.2', parsedatetime('17-09-2012 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 11, 2),
(17, 171, '6.2', parsedatetime('17-09-2012 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 12, 2),
(18, 8115, '6.2', parsedatetime('17-09-2012 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 17, 2),
(19, 2056, '6.2', parsedatetime('17-09-2012 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 18, 2),
(20, 3632, '6.2', parsedatetime('17-09-2012 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 19, 2),
(21, 8328, '6.2', parsedatetime('17-09-2012 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 20, 2),
(22, 2118, '6.2', parsedatetime('17-09-2012 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 21, 2),
(23, 3779, '6.2', parsedatetime('17-09-2012 18:47:52.69', 'dd-MM-yyyy hh:mm:ss.SS'), 22, 2);
