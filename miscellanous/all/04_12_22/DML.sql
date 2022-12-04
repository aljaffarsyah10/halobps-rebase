INSERT INTO glpi_dev.glpi_agenttypes (id,name) VALUES
	 (1,'Core');
INSERT INTO glpi_dev.glpi_apiclients (id,entities_id,is_recursive,name,date_mod,date_creation,is_active,ipv4_range_start,ipv4_range_end,ipv6,app_token,app_token_date,dolog_method,comment) VALUES
	 (1,0,1,'full access from localhost',NULL,NULL,1,2130706433,2130706433,'::1',NULL,NULL,0,NULL);
INSERT INTO glpi_dev.glpi_blacklists (id,`type`,name,value,comment,date_mod,date_creation) VALUES
	 (1,3,'invalid serial','N/A',NULL,NULL,NULL),
	 (2,3,'invalid serial','(null string)',NULL,NULL,NULL),
	 (3,3,'invalid serial','INVALID',NULL,NULL,NULL),
	 (4,3,'invalid serial','SYS-1234567890',NULL,NULL,NULL),
	 (5,3,'invalid serial','SYS-9876543210',NULL,NULL,NULL),
	 (6,3,'invalid serial','SN-12345',NULL,NULL,NULL),
	 (7,3,'invalid serial','SN-1234567890',NULL,NULL,NULL),
	 (8,3,'invalid serial','/^0+$/',NULL,NULL,NULL),
	 (9,3,'invalid serial','/^1+$/',NULL,NULL,NULL),
	 (10,3,'invalid serial','/\\d\\.\\d(\\.\\d)?/',NULL,NULL,NULL);
INSERT INTO glpi_dev.glpi_blacklists (id,`type`,name,value,comment,date_mod,date_creation) VALUES
	 (11,3,'invalid serial','/^(0|1)+$/',NULL,NULL,NULL),
	 (12,3,'invalid serial','0123456789',NULL,NULL,NULL),
	 (13,3,'invalid serial','12345',NULL,NULL,NULL),
	 (14,3,'invalid serial','123456',NULL,NULL,NULL),
	 (15,3,'invalid serial','1234567',NULL,NULL,NULL),
	 (16,3,'invalid serial','12345678',NULL,NULL,NULL),
	 (17,3,'invalid serial','123456789',NULL,NULL,NULL),
	 (18,3,'invalid serial','1234567890',NULL,NULL,NULL),
	 (19,3,'invalid serial','123456789000',NULL,NULL,NULL),
	 (20,3,'invalid serial','12345678901234567',NULL,NULL,NULL);
INSERT INTO glpi_dev.glpi_blacklists (id,`type`,name,value,comment,date_mod,date_creation) VALUES
	 (21,3,'invalid serial','NNNNNNN',NULL,NULL,NULL),
	 (22,3,'invalid serial','xxxxxxxxxxx',NULL,NULL,NULL),
	 (23,3,'invalid serial','EVAL',NULL,NULL,NULL),
	 (24,3,'invalid serial','IATPASS',NULL,NULL,NULL),
	 (25,3,'invalid serial','none',NULL,NULL,NULL),
	 (26,3,'invalid serial','To Be Filled By O.E.M.',NULL,NULL,NULL),
	 (27,3,'invalid serial','Tulip Computers',NULL,NULL,NULL),
	 (28,3,'invalid serial','Serial Number xxxxxx',NULL,NULL,NULL),
	 (29,3,'invalid serial','SN-123456fvgv3i0b8o5n6n7k',NULL,NULL,NULL),
	 (30,3,'invalid serial','Unknow',NULL,NULL,NULL);
INSERT INTO glpi_dev.glpi_blacklists (id,`type`,name,value,comment,date_mod,date_creation) VALUES
	 (31,3,'invalid serial','System Serial Number',NULL,NULL,NULL),
	 (32,3,'invalid serial','MB-1234567890',NULL,NULL,NULL),
	 (33,3,'invalid serial','empty',NULL,NULL,NULL),
	 (34,3,'invalid serial','Not Specified',NULL,NULL,NULL),
	 (35,3,'invalid serial','OEM_Serial',NULL,NULL,NULL),
	 (36,3,'invalid serial','SystemSerialNumb',NULL,NULL,NULL),
	 (37,4,'invalid UUID','FFFFFFFF-FFFF-FFFF-FFFF-FFFFFFFFFFFF',NULL,NULL,NULL),
	 (38,4,'invalid UUID','03000200-0400-0500-0006-000700080009',NULL,NULL,NULL),
	 (39,4,'invalid UUID','6AB5B300-538D-1014-9FB5-B0684D007B53',NULL,NULL,NULL),
	 (40,4,'invalid UUID','01010101-0101-0101-0101-010101010101',NULL,NULL,NULL);
INSERT INTO glpi_dev.glpi_blacklists (id,`type`,name,value,comment,date_mod,date_creation) VALUES
	 (41,4,'invalid UUID','2',NULL,NULL,NULL),
	 (42,2,'empty MAC','',NULL,NULL,NULL),
	 (43,2,'invalid MAC','20:41:53:59:4e:ff',NULL,NULL,NULL),
	 (44,2,'invalid MAC','02:00:4e:43:50:49',NULL,NULL,NULL),
	 (45,2,'invalid MAC','e2:e6:16:20:0a:35',NULL,NULL,NULL),
	 (46,2,'invalid MAC','d2:0a:2d:a0:04:be',NULL,NULL,NULL),
	 (47,2,'invalid MAC','00:a0:c6:00:00:00',NULL,NULL,NULL),
	 (48,2,'invalid MAC','d2:6b:25:2f:2c:e7',NULL,NULL,NULL),
	 (49,2,'invalid MAC','33:50:6f:45:30:30',NULL,NULL,NULL),
	 (50,2,'invalid MAC','0a:00:27:00:00:00',NULL,NULL,NULL);
INSERT INTO glpi_dev.glpi_blacklists (id,`type`,name,value,comment,date_mod,date_creation) VALUES
	 (51,2,'invalid MAC','00:50:56:C0:00:01',NULL,NULL,NULL),
	 (52,2,'invalid MAC','00:50:56:C0:00:08',NULL,NULL,NULL),
	 (53,2,'invalid MAC','02:80:37:EC:02:00',NULL,NULL,NULL),
	 (54,2,'invalid MAC','50:50:54:50:30:30',NULL,NULL,NULL),
	 (55,2,'invalid MAC','24:b6:20:52:41:53',NULL,NULL,NULL),
	 (56,2,'invalid MAC','00:50:56:C0:00:02',NULL,NULL,NULL),
	 (57,2,'invalid MAC','/00:50:56:C0:[0-9a-f]+:[0-9a-f]+/i',NULL,NULL,NULL),
	 (58,2,'invalid MAC','FE:FF:FF:FF:FF:FF',NULL,NULL,NULL),
	 (59,2,'invalid MAC','00:00:00:00:00:00',NULL,NULL,NULL),
	 (60,2,'invalid MAC','00:0b:ca:fe:00:00',NULL,NULL,NULL);
INSERT INTO glpi_dev.glpi_blacklists (id,`type`,name,value,comment,date_mod,date_creation) VALUES
	 (61,6,'Unknow','Unknow',NULL,NULL,NULL),
	 (62,6,'To Be Filled By O.E.M.','To Be Filled By O.E.M.',NULL,NULL,NULL),
	 (63,6,'*','*',NULL,NULL,NULL),
	 (64,6,'System Product Name','System Product Name',NULL,NULL,NULL),
	 (65,6,'Product Name','Product Name',NULL,NULL,NULL),
	 (66,6,'System Name','System Name',NULL,NULL,NULL),
	 (67,6,'All Series','All Series',NULL,NULL,NULL),
	 (68,8,'System manufacturer','System manufacturer',NULL,NULL,NULL),
	 (69,1,'empty IP','',NULL,NULL,NULL),
	 (70,1,'zero IP','0.0.0.0',NULL,NULL,NULL);
INSERT INTO glpi_dev.glpi_blacklists (id,`type`,name,value,comment,date_mod,date_creation) VALUES
	 (71,1,'localhost','127.0.0.1',NULL,NULL,NULL);
INSERT INTO glpi_dev.glpi_calendars (id,name,entities_id,is_recursive,comment,date_mod,cache_duration,date_creation) VALUES
	 (1,'Default',0,1,'Default calendar',NULL,'[0,43200,43200,43200,43200,43200,0]',NULL),
	 (2,'Hari Kerja',0,0,'','2022-11-10 03:40:34','[0,28800,28800,28800,28800,28800,0]','2022-11-10 03:34:04');
INSERT INTO glpi_dev.glpi_calendarsegments (id,calendars_id,entities_id,is_recursive,`day`,`begin`,`end`) VALUES
	 (1,1,0,0,1,'08:00:00','20:00:00'),
	 (2,1,0,0,2,'08:00:00','20:00:00'),
	 (3,1,0,0,3,'08:00:00','20:00:00'),
	 (4,1,0,0,4,'08:00:00','20:00:00'),
	 (5,1,0,0,5,'08:00:00','20:00:00'),
	 (6,2,0,0,1,'08:00:00','16:00:00'),
	 (9,2,0,0,2,'08:00:00','16:00:00'),
	 (10,2,0,0,3,'08:00:00','16:00:00'),
	 (11,2,0,0,4,'08:00:00','16:00:00'),
	 (12,2,0,0,5,'08:00:00','16:00:00');
INSERT INTO glpi_dev.glpi_changetemplatemandatoryfields (id,changetemplates_id,num) VALUES
	 (1,1,21);
INSERT INTO glpi_dev.glpi_changetemplates (id,name,entities_id,is_recursive,comment) VALUES
	 (1,'Default',0,1,NULL);
INSERT INTO glpi_dev.glpi_configs (id,context,name,value) VALUES
	 (1,'core','version','10.0.3'),
	 (2,'core','show_jobs_at_login','0'),
	 (3,'core','cut','250'),
	 (4,'core','list_limit','15'),
	 (5,'core','list_limit_max','50'),
	 (6,'core','url_maxlength','30'),
	 (7,'core','event_loglevel','5'),
	 (8,'core','notifications_mailing','0'),
	 (9,'core','admin_email','admsys@localhost'),
	 (10,'core','admin_email_name','');
INSERT INTO glpi_dev.glpi_configs (id,context,name,value) VALUES
	 (11,'core','from_email',NULL),
	 (12,'core','from_email_name',NULL),
	 (13,'core','noreply_email',''),
	 (14,'core','noreply_email_name',''),
	 (15,'core','replyto_email',''),
	 (16,'core','replyto_email_name',''),
	 (17,'core','mailing_signature','SIGNATURE'),
	 (18,'core','use_anonymous_helpdesk','0'),
	 (19,'core','use_anonymous_followups','0'),
	 (20,'core','language','en_US');
INSERT INTO glpi_dev.glpi_configs (id,context,name,value) VALUES
	 (21,'core','priority_1','#fff2f2'),
	 (22,'core','priority_2','#ffe0e0'),
	 (23,'core','priority_3','#ffcece'),
	 (24,'core','priority_4','#ffbfbf'),
	 (25,'core','priority_5','#ffadad'),
	 (26,'core','priority_6','#ff5555'),
	 (27,'core','date_tax','2005-12-31'),
	 (28,'core','cas_host',''),
	 (29,'core','cas_port','443'),
	 (30,'core','cas_uri','');
INSERT INTO glpi_dev.glpi_configs (id,context,name,value) VALUES
	 (31,'core','cas_logout',''),
	 (32,'core','existing_auth_server_field_clean_domain','0'),
	 (33,'core','planning_begin','08:00:00'),
	 (34,'core','planning_end','20:00:00'),
	 (35,'core','utf8_conv','1'),
	 (36,'core','use_public_faq','0'),
	 (37,'core','url_base','http://localhost/halobps'),
	 (38,'core','show_link_in_mail','0'),
	 (39,'core','text_login',''),
	 (40,'core','founded_new_version','');
INSERT INTO glpi_dev.glpi_configs (id,context,name,value) VALUES
	 (41,'core','dropdown_max','100'),
	 (42,'core','ajax_wildcard','*'),
	 (43,'core','ajax_limit_count','10'),
	 (44,'core','is_users_auto_add','1'),
	 (45,'core','date_format','0'),
	 (46,'core','number_format','0'),
	 (47,'core','csv_delimiter',';'),
	 (48,'core','is_ids_visible','0'),
	 (49,'core','smtp_mode','0'),
	 (50,'core','smtp_host','');
INSERT INTO glpi_dev.glpi_configs (id,context,name,value) VALUES
	 (51,'core','smtp_port','25'),
	 (52,'core','smtp_username',''),
	 (53,'core','proxy_name',''),
	 (54,'core','proxy_port','8080'),
	 (55,'core','proxy_user',''),
	 (56,'core','add_followup_on_update_ticket','1'),
	 (57,'core','keep_tickets_on_delete','0'),
	 (58,'core','time_step','5'),
	 (59,'core','decimal_number','2'),
	 (60,'core','helpdesk_doc_url','');
INSERT INTO glpi_dev.glpi_configs (id,context,name,value) VALUES
	 (61,'core','central_doc_url',''),
	 (62,'core','documentcategories_id_forticket','0'),
	 (63,'core','monitors_management_restrict','2'),
	 (64,'core','phones_management_restrict','2'),
	 (65,'core','peripherals_management_restrict','2'),
	 (66,'core','printers_management_restrict','2'),
	 (67,'core','use_log_in_files','1'),
	 (68,'core','time_offset','0'),
	 (69,'core','is_contact_autoupdate','1'),
	 (70,'core','is_user_autoupdate','1');
INSERT INTO glpi_dev.glpi_configs (id,context,name,value) VALUES
	 (71,'core','is_group_autoupdate','1'),
	 (72,'core','is_location_autoupdate','1'),
	 (73,'core','state_autoupdate_mode','0'),
	 (74,'core','is_contact_autoclean','0'),
	 (75,'core','is_user_autoclean','0'),
	 (76,'core','is_group_autoclean','0'),
	 (77,'core','is_location_autoclean','0'),
	 (78,'core','state_autoclean_mode','0'),
	 (79,'core','use_flat_dropdowntree','0'),
	 (80,'core','use_autoname_by_entity','1');
INSERT INTO glpi_dev.glpi_configs (id,context,name,value) VALUES
	 (81,'core','softwarecategories_id_ondelete','1'),
	 (82,'core','x509_email_field',''),
	 (83,'core','x509_cn_restrict',''),
	 (84,'core','x509_o_restrict',''),
	 (85,'core','x509_ou_restrict',''),
	 (86,'core','default_mailcollector_filesize_max','2097152'),
	 (87,'core','followup_private','0'),
	 (88,'core','task_private','0'),
	 (89,'core','default_software_helpdesk_visible','1'),
	 (90,'core','names_format','0');
INSERT INTO glpi_dev.glpi_configs (id,context,name,value) VALUES
	 (91,'core','default_requesttypes_id','1'),
	 (92,'core','use_noright_users_add','1'),
	 (93,'core','cron_limit','5'),
	 (94,'core','priority_matrix','{"1":{"1":"1","2":"1","3":"2","4":"2","5":"2"},"2":{"1":"1","2":"2","3":"2","4":"3","5":"3"},"3":{"1":"2","2":"2","3":"3","4":"4","5":"4"},"4":{"1":"2","2":"3","3":"4","4":"5","5":"5"},"5":{"1":"2","2":"3","3":"4","4":"5","5":"5"}}'),
	 (95,'core','urgency_mask','28'),
	 (96,'core','impact_mask','28'),
	 (97,'core','user_deleted_ldap','0'),
	 (98,'core','user_restored_ldap','0'),
	 (99,'core','auto_create_infocoms','0'),
	 (100,'core','use_slave_for_search','0');
INSERT INTO glpi_dev.glpi_configs (id,context,name,value) VALUES
	 (101,'core','proxy_passwd',''),
	 (102,'core','smtp_passwd',''),
	 (103,'core','show_count_on_tabs','1'),
	 (104,'core','refresh_views','0'),
	 (105,'core','set_default_tech','1'),
	 (106,'core','allow_search_view','2'),
	 (107,'core','allow_search_all','0'),
	 (108,'core','allow_search_global','1'),
	 (109,'core','display_count_on_home','5'),
	 (110,'core','use_password_security','0');
INSERT INTO glpi_dev.glpi_configs (id,context,name,value) VALUES
	 (111,'core','password_min_length','8'),
	 (112,'core','password_need_number','1'),
	 (113,'core','password_need_letter','1'),
	 (114,'core','password_need_caps','1'),
	 (115,'core','password_need_symbol','1'),
	 (116,'core','use_check_pref','0'),
	 (117,'core','notification_to_myself','1'),
	 (118,'core','duedateok_color','#06ff00'),
	 (119,'core','duedatewarning_color','#ffb800'),
	 (120,'core','duedatecritical_color','#ff0000');
INSERT INTO glpi_dev.glpi_configs (id,context,name,value) VALUES
	 (121,'core','duedatewarning_less','20'),
	 (122,'core','duedatecritical_less','5'),
	 (123,'core','duedatewarning_unit','%'),
	 (124,'core','duedatecritical_unit','%'),
	 (125,'core','realname_ssofield',''),
	 (126,'core','firstname_ssofield',''),
	 (127,'core','email1_ssofield',''),
	 (128,'core','email2_ssofield',''),
	 (129,'core','email3_ssofield',''),
	 (130,'core','email4_ssofield','');
INSERT INTO glpi_dev.glpi_configs (id,context,name,value) VALUES
	 (131,'core','phone_ssofield',''),
	 (132,'core','phone2_ssofield',''),
	 (133,'core','mobile_ssofield',''),
	 (134,'core','comment_ssofield',''),
	 (135,'core','title_ssofield',''),
	 (136,'core','category_ssofield',''),
	 (137,'core','language_ssofield',''),
	 (138,'core','entity_ssofield',''),
	 (139,'core','registration_number_ssofield',''),
	 (140,'core','ssovariables_id','0');
INSERT INTO glpi_dev.glpi_configs (id,context,name,value) VALUES
	 (141,'core','ssologout_url',''),
	 (142,'core','translate_kb','0'),
	 (143,'core','translate_dropdowns','0'),
	 (144,'core','translate_reminders','0'),
	 (145,'core','pdffont','helvetica'),
	 (146,'core','keep_devices_when_purging_item','0'),
	 (147,'core','maintenance_mode','0'),
	 (148,'core','maintenance_text',''),
	 (149,'core','attach_ticket_documents_to_mail','0'),
	 (150,'core','backcreated','0');
INSERT INTO glpi_dev.glpi_configs (id,context,name,value) VALUES
	 (151,'core','task_state','1'),
	 (152,'core','palette','auror'),
	 (153,'core','page_layout','vertical'),
	 (154,'core','fold_menu','0'),
	 (155,'core','fold_search','0'),
	 (156,'core','savedsearches_pinned','0'),
	 (157,'core','timeline_order','natural'),
	 (158,'core','itil_layout',''),
	 (159,'core','richtext_layout','inline'),
	 (160,'core','lock_use_lock_item','0');
INSERT INTO glpi_dev.glpi_configs (id,context,name,value) VALUES
	 (161,'core','lock_autolock_mode','1'),
	 (162,'core','lock_directunlock_notification','0'),
	 (163,'core','lock_item_list','[]'),
	 (164,'core','lock_lockprofile_id','8'),
	 (165,'core','set_default_requester','1'),
	 (166,'core','highcontrast_css','0'),
	 (167,'core','default_central_tab','0'),
	 (168,'core','smtp_check_certificate','1'),
	 (169,'core','enable_api','0'),
	 (170,'core','enable_api_login_credentials','0');
INSERT INTO glpi_dev.glpi_configs (id,context,name,value) VALUES
	 (171,'core','enable_api_login_external_token','1'),
	 (172,'core','url_base_api','http://localhost/halobps/apirest.php/'),
	 (173,'core','login_remember_time','604800'),
	 (174,'core','login_remember_default','1'),
	 (175,'core','use_notifications','0'),
	 (176,'core','notifications_ajax','0'),
	 (177,'core','notifications_ajax_check_interval','5'),
	 (178,'core','notifications_ajax_sound',NULL),
	 (179,'core','notifications_ajax_icon_url','/pics/glpi.png'),
	 (180,'core','dbversion','10.0.3@a130db99c7d9b131c2e2ea59fe0d6260fe93d831');
INSERT INTO glpi_dev.glpi_configs (id,context,name,value) VALUES
	 (181,'core','smtp_max_retries','5'),
	 (182,'core','smtp_sender',NULL),
	 (183,'core','instance_uuid',NULL),
	 (184,'core','registration_uuid','2b0vk4q3PKKFUUmHQgna8lllsKcNqwKNmeG00MxE'),
	 (185,'core','smtp_retry_time','5'),
	 (186,'core','purge_addrelation','0'),
	 (187,'core','purge_deleterelation','0'),
	 (188,'core','purge_createitem','0'),
	 (189,'core','purge_deleteitem','0'),
	 (190,'core','purge_restoreitem','0');
INSERT INTO glpi_dev.glpi_configs (id,context,name,value) VALUES
	 (191,'core','purge_updateitem','0'),
	 (192,'core','purge_item_software_install','0'),
	 (193,'core','purge_software_item_install','0'),
	 (194,'core','purge_software_version_install','0'),
	 (195,'core','purge_infocom_creation','0'),
	 (196,'core','purge_profile_user','0'),
	 (197,'core','purge_group_user','0'),
	 (198,'core','purge_adddevice','0'),
	 (199,'core','purge_updatedevice','0'),
	 (200,'core','purge_deletedevice','0');
INSERT INTO glpi_dev.glpi_configs (id,context,name,value) VALUES
	 (201,'core','purge_connectdevice','0'),
	 (202,'core','purge_disconnectdevice','0'),
	 (203,'core','purge_userdeletedfromldap','0'),
	 (204,'core','purge_comments','0'),
	 (205,'core','purge_datemod','0'),
	 (206,'core','purge_all','0'),
	 (207,'core','purge_user_auth_changes','0'),
	 (208,'core','purge_plugins','0'),
	 (209,'core','purge_refusedequipment','0'),
	 (210,'core','display_login_source','1');
INSERT INTO glpi_dev.glpi_configs (id,context,name,value) VALUES
	 (211,'core','devices_in_menu','["Item_DeviceSimcard"]'),
	 (212,'core','password_expiration_delay','-1'),
	 (213,'core','password_expiration_notice','-1'),
	 (214,'core','password_expiration_lock_delay','-1'),
	 (215,'core','default_dashboard_central','central'),
	 (216,'core','default_dashboard_assets','assets'),
	 (217,'core','default_dashboard_helpdesk','assistance'),
	 (218,'core','default_dashboard_mini_ticket','mini_tickets'),
	 (219,'core','impact_enabled_itemtypes','["Appliance","Cluster","Computer","Datacenter","DCRoom","Domain","Enclosure","Monitor","NetworkEquipment","PDU","Peripheral","Phone","Printer","Rack","Software","DatabaseInstance"]'),
	 (220,'core','document_max_size','40');
INSERT INTO glpi_dev.glpi_configs (id,context,name,value) VALUES
	 (221,'core','planning_work_days','[0,1,2,3,4,5,6]'),
	 (222,'core','system_user','6'),
	 (223,'core','support_legacy_data','0'),
	 (224,'inventory','import_software','1'),
	 (225,'inventory','import_volume','1'),
	 (226,'inventory','import_antivirus','1'),
	 (227,'inventory','import_registry','1'),
	 (228,'inventory','import_process','1'),
	 (229,'inventory','import_vm','1'),
	 (230,'inventory','import_monitor_on_partial_sn','0');
INSERT INTO glpi_dev.glpi_configs (id,context,name,value) VALUES
	 (231,'inventory','component_processor','1'),
	 (232,'inventory','component_memory','1'),
	 (233,'inventory','component_harddrive','1'),
	 (234,'inventory','component_networkcard','1'),
	 (235,'inventory','component_graphiccard','1'),
	 (236,'inventory','component_soundcard','1'),
	 (237,'inventory','component_drive','1'),
	 (238,'inventory','component_networkdrive','1'),
	 (239,'inventory','component_networkcardvirtual','1'),
	 (240,'inventory','component_control','1');
INSERT INTO glpi_dev.glpi_configs (id,context,name,value) VALUES
	 (241,'inventory','component_battery','1'),
	 (242,'inventory','component_simcard','1'),
	 (243,'inventory','states_id_default','0'),
	 (244,'inventory','location','0'),
	 (245,'inventory','group','0'),
	 (246,'inventory','vm_type','0'),
	 (247,'inventory','vm_components','0'),
	 (248,'inventory','vm_as_computer','0'),
	 (249,'inventory','component_removablemedia','1'),
	 (250,'inventory','component_powersupply','1');
INSERT INTO glpi_dev.glpi_configs (id,context,name,value) VALUES
	 (251,'inventory','inventory_frequency','24'),
	 (252,'inventory','import_monitor','1'),
	 (253,'inventory','import_printer','1'),
	 (254,'inventory','import_peripheral','1'),
	 (255,'inventory','stale_agents_delay','0'),
	 (256,'inventory','stale_agents_action','0'),
	 (257,'inventory','stale_agents_status','0'),
	 (258,'core','_matrix','1'),
	 (259,'core','_impact_5','0'),
	 (260,'core','_impact_4','1');
INSERT INTO glpi_dev.glpi_configs (id,context,name,value) VALUES
	 (261,'core','_impact_3','1'),
	 (262,'core','_impact_2','1'),
	 (263,'core','_impact_1','0'),
	 (264,'core','_urgency_5','0'),
	 (265,'core','_matrix_5_5','5'),
	 (266,'core','_matrix_5_4','5'),
	 (267,'core','_matrix_5_3','4'),
	 (268,'core','_matrix_5_2','3'),
	 (269,'core','_matrix_5_1','2'),
	 (270,'core','_urgency_4','1');
INSERT INTO glpi_dev.glpi_configs (id,context,name,value) VALUES
	 (271,'core','_matrix_4_5','5'),
	 (272,'core','_matrix_4_4','5'),
	 (273,'core','_matrix_4_3','4'),
	 (274,'core','_matrix_4_2','3'),
	 (275,'core','_matrix_4_1','2'),
	 (276,'core','_urgency_3','1'),
	 (277,'core','_matrix_3_5','4'),
	 (278,'core','_matrix_3_4','4'),
	 (279,'core','_matrix_3_3','3'),
	 (280,'core','_matrix_3_2','2');
INSERT INTO glpi_dev.glpi_configs (id,context,name,value) VALUES
	 (281,'core','_matrix_3_1','2'),
	 (282,'core','_urgency_2','1'),
	 (283,'core','_matrix_2_5','3'),
	 (284,'core','_matrix_2_4','3'),
	 (285,'core','_matrix_2_3','2'),
	 (286,'core','_matrix_2_2','2'),
	 (287,'core','_matrix_2_1','1'),
	 (288,'core','_urgency_1','0'),
	 (289,'core','_matrix_1_5','2'),
	 (290,'core','_matrix_1_4','2');
INSERT INTO glpi_dev.glpi_configs (id,context,name,value) VALUES
	 (291,'core','_matrix_1_3','2'),
	 (292,'core','_matrix_1_2','1'),
	 (293,'core','_matrix_1_1','1');
INSERT INTO glpi_dev.glpi_crontasklogs (id,crontasks_id,crontasklogs_id,`date`,state,elapsed,volume,content) VALUES
	 (1,5,0,'2022-10-31 05:21:03',0,0.0,0,'Run mode: GLPI'),
	 (2,5,1,'2022-10-31 05:21:03',2,0.0578241,0,'Action completed, no processing required'),
	 (3,6,0,'2022-10-31 05:37:53',0,0.0,0,'Run mode: GLPI'),
	 (4,6,3,'2022-10-31 05:37:53',2,0.030968,0,'Action completed, no processing required'),
	 (5,9,0,'2022-10-31 05:38:27',0,0.0,0,'Run mode: GLPI'),
	 (6,9,5,'2022-10-31 05:38:27',2,0.036351,0,'Action completed, no processing required'),
	 (7,12,0,'2022-10-31 05:40:19',0,0.0,0,'Run mode: GLPI'),
	 (8,12,7,'2022-10-31 05:40:19',2,0.0554249,0,'Action completed, no processing required'),
	 (9,13,0,'2022-11-06 07:23:58',0,0.0,0,'Run mode: GLPI'),
	 (10,13,9,'2022-11-06 07:23:58',2,0.082417,0,'Action completed, no processing required');
INSERT INTO glpi_dev.glpi_crontasklogs (id,crontasks_id,crontasklogs_id,`date`,state,elapsed,volume,content) VALUES
	 (11,14,0,'2022-11-06 07:48:49',0,0.0,0,'Run mode: GLPI'),
	 (12,14,11,'2022-11-06 07:48:49',2,0.0562029,0,'Action completed, no processing required'),
	 (13,15,0,'2022-11-06 07:58:01',0,0.0,0,'Run mode: GLPI'),
	 (14,15,13,'2022-11-06 07:58:01',2,0.052227,0,'Action completed, no processing required'),
	 (15,16,0,'2022-11-06 08:03:48',0,0.0,0,'Run mode: GLPI'),
	 (16,16,15,'2022-11-06 08:03:48',2,0.030767,0,'Action completed, no processing required'),
	 (17,17,0,'2022-11-06 08:12:53',0,0.0,0,'Run mode: GLPI'),
	 (18,17,17,'2022-11-06 08:12:53',2,0.045068,0,'Action completed, no processing required'),
	 (19,18,0,'2022-11-06 08:19:01',0,0.0,0,'Run mode: GLPI'),
	 (20,18,19,'2022-11-06 08:19:01',2,0.098702,0,'Action completed, no processing required');
INSERT INTO glpi_dev.glpi_crontasklogs (id,crontasks_id,crontasklogs_id,`date`,state,elapsed,volume,content) VALUES
	 (21,19,0,'2022-11-06 08:27:03',0,0.0,0,'Run mode: GLPI'),
	 (22,19,21,'2022-11-06 08:27:03',2,0.0513389,0,'Action completed, fully processed'),
	 (23,20,0,'2022-11-06 10:40:27',0,0.0,0,'Run mode: GLPI'),
	 (24,20,23,'2022-11-06 10:40:27',2,0.08252,0,'Action completed, no processing required'),
	 (25,21,0,'2022-11-07 05:38:48',0,0.0,0,'Run mode: GLPI'),
	 (26,21,25,'2022-11-07 05:38:48',2,0.0747092,0,'Action completed, no processing required'),
	 (27,22,0,'2022-11-07 05:46:12',0,0.0,0,'Run mode: GLPI'),
	 (28,22,27,'2022-11-07 05:46:12',2,0.063962,0,'Action completed, no processing required'),
	 (29,23,0,'2022-11-07 05:52:06',0,0.0,0,'Run mode: GLPI'),
	 (30,23,29,'2022-11-07 05:52:06',2,0.0493271,0,'Action completed, no processing required');
INSERT INTO glpi_dev.glpi_crontasklogs (id,crontasks_id,crontasklogs_id,`date`,state,elapsed,volume,content) VALUES
	 (31,24,0,'2022-11-07 06:04:33',0,0.0,0,'Run mode: GLPI'),
	 (32,24,31,'2022-11-07 06:04:33',2,0.267912,0,'Action completed, no processing required'),
	 (33,25,0,'2022-11-07 06:22:21',0,0.0,0,'Run mode: GLPI'),
	 (34,25,33,'2022-11-07 06:22:21',2,0.0382578,0,'Action completed, no processing required'),
	 (35,31,0,'2022-11-07 06:22:42',0,0.0,0,'Run mode: GLPI'),
	 (36,31,35,'2022-11-07 06:22:42',2,0.0358911,0,'Action completed, no processing required'),
	 (37,32,0,'2022-11-07 06:25:16',0,0.0,0,'Run mode: GLPI'),
	 (38,32,37,'2022-11-07 06:25:16',2,0.0668809,0,'Action completed, no processing required'),
	 (39,9,0,'2022-11-07 06:26:39',0,0.0,0,'Run mode: GLPI'),
	 (40,9,39,'2022-11-07 06:26:39',2,0.0618849,0,'Action completed, no processing required');
INSERT INTO glpi_dev.glpi_crontasklogs (id,crontasks_id,crontasklogs_id,`date`,state,elapsed,volume,content) VALUES
	 (41,5,0,'2022-11-08 14:13:58',0,0.0,0,'Run mode: GLPI'),
	 (42,5,41,'2022-11-08 14:13:58',2,0.089709,0,'Action completed, no processing required'),
	 (43,6,0,'2022-11-08 14:20:16',0,0.0,0,'Run mode: GLPI'),
	 (44,6,43,'2022-11-08 14:20:16',2,0.041724,0,'Action completed, no processing required'),
	 (45,12,0,'2022-11-23 02:17:22',0,0.0,0,'Run mode: GLPI'),
	 (46,12,45,'2022-11-23 02:17:22',1,0.450886,17,'Clean 17 session file created since more than 1440 seconds
'),
	 (47,12,45,'2022-11-23 02:17:22',2,0.477647,17,'Action completed, fully processed'),
	 (48,17,0,'2022-11-23 02:29:14',0,0.0,0,'Run mode: GLPI'),
	 (49,17,48,'2022-11-23 02:29:14',2,0.077539,0,'Action completed, no processing required'),
	 (50,13,0,'2022-11-23 02:29:50',0,0.0,0,'Run mode: GLPI');
INSERT INTO glpi_dev.glpi_crontasklogs (id,crontasks_id,crontasklogs_id,`date`,state,elapsed,volume,content) VALUES
	 (51,13,50,'2022-11-23 02:29:50',2,0.189779,0,'Action completed, no processing required'),
	 (52,14,0,'2022-11-23 03:38:37',0,0.0,0,'Run mode: GLPI'),
	 (53,14,52,'2022-11-23 03:38:37',2,0.159546,0,'Action completed, no processing required'),
	 (54,20,0,'2022-11-23 03:41:30',0,0.0,0,'Run mode: GLPI'),
	 (55,20,54,'2022-11-23 03:41:30',2,0.038799,0,'Action completed, no processing required'),
	 (56,15,0,'2022-11-23 03:42:49',0,0.0,0,'Run mode: GLPI'),
	 (57,15,56,'2022-11-23 03:42:49',2,0.0562019,0,'Action completed, no processing required'),
	 (58,16,0,'2022-11-23 03:45:49',0,0.0,0,'Run mode: GLPI'),
	 (59,16,58,'2022-11-23 03:45:49',2,0.031435,0,'Action completed, no processing required'),
	 (60,21,0,'2022-11-23 03:54:27',0,0.0,0,'Run mode: GLPI');
INSERT INTO glpi_dev.glpi_crontasklogs (id,crontasks_id,crontasklogs_id,`date`,state,elapsed,volume,content) VALUES
	 (61,21,60,'2022-11-23 03:54:27',2,0.036948,0,'Action completed, no processing required'),
	 (62,22,0,'2022-11-23 03:59:26',0,0.0,0,'Run mode: GLPI'),
	 (63,22,62,'2022-11-23 03:59:26',2,0.110903,0,'Action completed, no processing required'),
	 (64,32,0,'2022-11-23 03:59:58',0,0.0,0,'Run mode: GLPI'),
	 (65,32,64,'2022-11-23 03:59:58',2,0.0727401,0,'Action completed, no processing required'),
	 (66,9,0,'2022-11-23 04:01:09',0,0.0,0,'Run mode: GLPI'),
	 (67,9,66,'2022-11-23 04:01:09',2,0.081543,0,'Action completed, no processing required'),
	 (68,24,0,'2022-11-23 04:12:45',0,0.0,0,'Run mode: GLPI'),
	 (69,24,68,'2022-11-23 04:12:45',2,0.0375309,0,'Action completed, no processing required'),
	 (70,18,0,'2022-11-26 07:21:01',0,0.0,0,'Run mode: GLPI');
INSERT INTO glpi_dev.glpi_crontasklogs (id,crontasks_id,crontasklogs_id,`date`,state,elapsed,volume,content) VALUES
	 (71,18,70,'2022-11-26 07:21:01',2,0.248031,0,'Action completed, no processing required'),
	 (72,19,0,'2022-11-26 07:26:13',0,0.0,0,'Run mode: GLPI'),
	 (73,19,72,'2022-11-26 07:26:13',2,0.0316699,0,'Action completed, fully processed'),
	 (74,23,0,'2022-11-26 07:27:15',0,0.0,0,'Run mode: GLPI'),
	 (75,23,74,'2022-11-26 07:27:15',2,3.80884,0,'Action completed, no processing required'),
	 (76,25,0,'2022-11-26 07:32:41',0,0.0,0,'Run mode: GLPI'),
	 (77,25,76,'2022-11-26 07:32:41',2,0.036701,0,'Action completed, no processing required'),
	 (78,31,0,'2022-11-26 07:34:23',0,0.0,0,'Run mode: GLPI'),
	 (79,31,78,'2022-11-26 07:34:23',2,0.042171,0,'Action completed, no processing required'),
	 (80,5,0,'2022-11-26 07:34:49',0,0.0,0,'Run mode: GLPI');
INSERT INTO glpi_dev.glpi_crontasklogs (id,crontasks_id,crontasklogs_id,`date`,state,elapsed,volume,content) VALUES
	 (81,5,80,'2022-11-26 07:34:49',2,0.031445,0,'Action completed, no processing required'),
	 (82,6,0,'2022-11-26 07:36:16',0,0.0,0,'Run mode: GLPI'),
	 (83,6,82,'2022-11-26 07:36:16',2,0.173539,0,'Action completed, no processing required'),
	 (84,17,0,'2022-11-26 07:48:23',0,0.0,0,'Run mode: GLPI'),
	 (85,17,84,'2022-11-26 07:48:23',2,0.0516131,0,'Action completed, no processing required'),
	 (86,13,0,'2022-11-26 08:37:45',0,0.0,0,'Run mode: GLPI'),
	 (87,13,86,'2022-11-26 08:37:45',2,0.0345328,0,'Action completed, no processing required'),
	 (88,21,0,'2022-11-26 08:38:08',0,0.0,0,'Run mode: GLPI'),
	 (89,21,88,'2022-11-26 08:38:08',2,0.0326741,0,'Action completed, no processing required'),
	 (90,22,0,'2022-11-26 08:39:01',0,0.0,0,'Run mode: GLPI');
INSERT INTO glpi_dev.glpi_crontasklogs (id,crontasks_id,crontasklogs_id,`date`,state,elapsed,volume,content) VALUES
	 (91,22,90,'2022-11-26 08:39:01',2,0.0644569,0,'Action completed, no processing required'),
	 (92,32,0,'2022-11-26 08:39:43',0,0.0,0,'Run mode: GLPI'),
	 (93,32,92,'2022-11-26 08:39:43',2,0.843022,0,'Action completed, no processing required'),
	 (94,9,0,'2022-11-26 08:44:30',0,0.0,0,'Run mode: GLPI'),
	 (95,9,94,'2022-11-26 08:44:30',2,0.06181,0,'Action completed, no processing required'),
	 (96,14,0,'2022-11-26 08:50:56',0,0.0,0,'Run mode: GLPI'),
	 (97,14,96,'2022-11-26 08:50:56',2,0.0360942,0,'Action completed, no processing required'),
	 (98,20,0,'2022-11-26 08:58:35',0,0.0,0,'Run mode: GLPI'),
	 (99,20,98,'2022-11-26 08:58:35',2,0.038981,0,'Action completed, no processing required'),
	 (100,24,0,'2022-11-26 09:05:49',0,0.0,0,'Run mode: GLPI');
INSERT INTO glpi_dev.glpi_crontasklogs (id,crontasks_id,crontasklogs_id,`date`,state,elapsed,volume,content) VALUES
	 (101,24,100,'2022-11-26 09:05:49',2,0.0343471,0,'Action completed, no processing required'),
	 (102,15,0,'2022-11-26 09:12:40',0,0.0,0,'Run mode: GLPI'),
	 (103,15,102,'2022-11-26 09:12:40',2,0.044507,0,'Action completed, no processing required'),
	 (104,16,0,'2022-11-26 09:24:22',0,0.0,0,'Run mode: GLPI'),
	 (105,16,104,'2022-11-26 09:24:22',2,0.0436819,0,'Action completed, no processing required'),
	 (106,12,0,'2022-11-26 09:29:25',0,0.0,0,'Run mode: GLPI'),
	 (107,12,106,'2022-11-26 09:29:25',1,0.029506,5,'Clean 5 session files created since more than 1440 seconds
'),
	 (108,12,106,'2022-11-26 09:29:25',2,0.0537281,5,'Action completed, fully processed'),
	 (109,17,0,'2022-11-26 10:00:01',0,0.0,0,'Run mode: GLPI'),
	 (110,17,109,'2022-11-26 10:00:01',2,0.039161,0,'Action completed, no processing required');
INSERT INTO glpi_dev.glpi_crontasklogs (id,crontasks_id,crontasklogs_id,`date`,state,elapsed,volume,content) VALUES
	 (111,22,0,'2022-11-26 10:05:44',0,0.0,0,'Run mode: GLPI'),
	 (112,22,111,'2022-11-26 10:05:44',2,0.03741,0,'Action completed, no processing required'),
	 (113,21,0,'2022-11-26 10:18:47',0,0.0,0,'Run mode: GLPI'),
	 (114,21,113,'2022-11-26 10:18:47',2,0.03829,0,'Action completed, no processing required'),
	 (115,32,0,'2022-11-26 11:03:05',0,0.0,0,'Run mode: GLPI'),
	 (116,32,115,'2022-11-26 11:03:05',2,0.0694182,0,'Action completed, no processing required'),
	 (117,9,0,'2022-11-26 11:03:13',0,0.0,0,'Run mode: GLPI'),
	 (118,9,117,'2022-11-26 11:03:13',2,0.0611031,0,'Action completed, no processing required'),
	 (119,13,0,'2022-11-26 11:09:41',0,0.0,0,'Run mode: GLPI'),
	 (120,13,119,'2022-11-26 11:09:41',2,0.036442,0,'Action completed, no processing required');
INSERT INTO glpi_dev.glpi_crontasklogs (id,crontasks_id,crontasklogs_id,`date`,state,elapsed,volume,content) VALUES
	 (121,14,0,'2022-11-26 12:44:10',0,0.0,0,'Run mode: GLPI'),
	 (122,14,121,'2022-11-26 12:44:10',2,0.177188,0,'Action completed, no processing required'),
	 (123,20,0,'2022-11-26 12:49:18',0,0.0,0,'Run mode: GLPI'),
	 (124,20,123,'2022-11-26 12:49:18',2,0.041286,0,'Action completed, no processing required'),
	 (125,17,0,'2022-11-26 12:56:01',0,0.0,0,'Run mode: GLPI'),
	 (126,17,125,'2022-11-26 12:56:01',2,0.031105,0,'Action completed, no processing required'),
	 (127,24,0,'2022-11-26 13:02:50',0,0.0,0,'Run mode: GLPI'),
	 (128,24,127,'2022-11-26 13:02:50',2,0.0378881,0,'Action completed, no processing required'),
	 (129,22,0,'2022-11-26 13:08:09',0,0.0,0,'Run mode: GLPI'),
	 (130,22,129,'2022-11-26 13:08:09',2,0.0768812,0,'Action completed, no processing required');
INSERT INTO glpi_dev.glpi_crontasklogs (id,crontasks_id,crontasklogs_id,`date`,state,elapsed,volume,content) VALUES
	 (131,21,0,'2022-11-26 13:43:09',0,0.0,0,'Run mode: GLPI'),
	 (132,21,131,'2022-11-26 13:43:09',2,0.0376451,0,'Action completed, no processing required'),
	 (133,32,0,'2022-11-26 13:48:38',0,0.0,0,'Run mode: GLPI'),
	 (134,32,133,'2022-11-26 13:48:38',2,0.037055,0,'Action completed, no processing required'),
	 (135,9,0,'2022-11-26 13:54:15',0,0.0,0,'Run mode: GLPI'),
	 (136,9,135,'2022-11-26 13:54:15',2,0.0374601,0,'Action completed, no processing required'),
	 (137,13,0,'2022-11-26 13:59:23',0,0.0,0,'Run mode: GLPI'),
	 (138,13,137,'2022-11-26 13:59:23',2,0.0430429,0,'Action completed, no processing required'),
	 (139,17,0,'2022-11-26 14:20:12',0,0.0,0,'Run mode: GLPI'),
	 (140,17,139,'2022-11-26 14:20:12',2,0.129461,0,'Action completed, no processing required');
INSERT INTO glpi_dev.glpi_crontasklogs (id,crontasks_id,crontasklogs_id,`date`,state,elapsed,volume,content) VALUES
	 (141,22,0,'2022-11-26 14:30:11',0,0.0,0,'Run mode: GLPI'),
	 (142,22,141,'2022-11-26 14:30:11',2,0.181995,0,'Action completed, no processing required'),
	 (143,14,0,'2022-11-27 11:45:15',0,0.0,0,'Run mode: GLPI'),
	 (144,14,143,'2022-11-27 11:45:15',2,0.0669639,0,'Action completed, no processing required'),
	 (145,21,0,'2022-11-27 11:45:44',0,0.0,0,'Run mode: GLPI'),
	 (146,21,145,'2022-11-27 11:45:44',2,0.0679209,0,'Action completed, no processing required'),
	 (147,20,0,'2022-11-27 11:50:59',0,0.0,0,'Run mode: GLPI'),
	 (148,20,147,'2022-11-27 11:50:59',2,0.0440552,0,'Action completed, no processing required'),
	 (149,32,0,'2022-11-27 11:56:24',0,0.0,0,'Run mode: GLPI'),
	 (150,32,149,'2022-11-27 11:56:24',2,0.0339849,0,'Action completed, no processing required');
INSERT INTO glpi_dev.glpi_crontasklogs (id,crontasks_id,crontasklogs_id,`date`,state,elapsed,volume,content) VALUES
	 (151,24,0,'2022-11-27 12:02:25',0,0.0,0,'Run mode: GLPI'),
	 (152,24,151,'2022-11-27 12:02:25',2,0.0352058,0,'Action completed, no processing required'),
	 (153,9,0,'2022-11-27 12:02:58',0,0.0,0,'Run mode: GLPI'),
	 (154,9,153,'2022-11-27 12:02:58',2,0.0761471,0,'Action completed, no processing required'),
	 (155,17,0,'2022-11-27 12:08:50',0,0.0,0,'Run mode: GLPI'),
	 (156,17,155,'2022-11-27 12:08:50',2,0.0348029,0,'Action completed, no processing required'),
	 (157,22,0,'2022-11-27 16:14:09',0,0.0,0,'Run mode: GLPI'),
	 (158,22,157,'2022-11-27 16:14:09',2,0.28192,0,'Action completed, no processing required'),
	 (159,13,0,'2022-11-27 16:27:16',0,0.0,0,'Run mode: GLPI'),
	 (160,13,159,'2022-11-27 16:27:16',2,0.0414951,0,'Action completed, no processing required');
INSERT INTO glpi_dev.glpi_crontasklogs (id,crontasks_id,crontasklogs_id,`date`,state,elapsed,volume,content) VALUES
	 (161,15,0,'2022-11-28 04:31:15',0,0.0,0,'Run mode: GLPI'),
	 (162,15,161,'2022-11-28 04:31:15',2,0.08199,0,'Action completed, no processing required'),
	 (163,16,0,'2022-11-28 04:38:41',0,0.0,0,'Run mode: GLPI'),
	 (164,16,163,'2022-11-28 04:38:41',2,0.0318489,0,'Action completed, no processing required'),
	 (165,18,0,'2022-11-28 04:45:24',0,0.0,0,'Run mode: GLPI'),
	 (166,18,165,'2022-11-28 04:45:24',2,0.111914,0,'Action completed, no processing required'),
	 (167,19,0,'2022-11-28 04:57:11',0,0.0,0,'Run mode: GLPI'),
	 (168,19,167,'2022-11-28 04:57:11',2,0.10458,0,'Action completed, fully processed'),
	 (169,23,0,'2022-11-28 05:01:10',0,0.0,0,'Run mode: GLPI'),
	 (170,23,169,'2022-11-28 05:01:10',2,0.0375359,0,'Action completed, no processing required');
INSERT INTO glpi_dev.glpi_crontasklogs (id,crontasks_id,crontasklogs_id,`date`,state,elapsed,volume,content) VALUES
	 (171,25,0,'2022-11-28 05:02:09',0,0.0,0,'Run mode: GLPI'),
	 (172,25,171,'2022-11-28 05:02:09',2,0.0347152,0,'Action completed, no processing required'),
	 (173,5,0,'2022-11-28 05:03:05',0,0.0,0,'Run mode: GLPI'),
	 (174,5,173,'2022-11-28 05:03:05',2,0.03318,0,'Action completed, no processing required'),
	 (175,31,0,'2022-11-28 05:07:23',0,0.0,0,'Run mode: GLPI'),
	 (176,31,175,'2022-11-28 05:07:23',2,0.0341151,0,'Action completed, no processing required'),
	 (177,6,0,'2022-11-28 05:08:58',0,0.0,0,'Run mode: GLPI'),
	 (178,6,177,'2022-11-28 05:08:58',2,0.032444,0,'Action completed, no processing required'),
	 (179,12,0,'2022-11-28 05:10:30',0,0.0,0,'Run mode: GLPI'),
	 (180,12,179,'2022-11-28 05:10:30',1,0.0395429,10,'Clean 10 session file created since more than 1440 seconds
');
INSERT INTO glpi_dev.glpi_crontasklogs (id,crontasks_id,crontasklogs_id,`date`,state,elapsed,volume,content) VALUES
	 (181,12,179,'2022-11-28 05:10:30',2,0.051877,10,'Action completed, fully processed'),
	 (182,21,0,'2022-11-28 05:12:36',0,0.0,0,'Run mode: GLPI'),
	 (183,21,182,'2022-11-28 05:12:36',2,0.0410061,0,'Action completed, no processing required'),
	 (184,32,0,'2022-11-28 05:12:48',0,0.0,0,'Run mode: GLPI'),
	 (185,32,184,'2022-11-28 05:12:48',2,0.036993,0,'Action completed, no processing required'),
	 (186,9,0,'2022-11-28 05:18:10',0,0.0,0,'Run mode: GLPI'),
	 (187,9,186,'2022-11-28 05:18:10',2,0.056859,0,'Action completed, no processing required'),
	 (188,17,0,'2022-11-28 05:18:25',0,0.0,0,'Run mode: GLPI'),
	 (189,17,188,'2022-11-28 05:18:25',2,0.041029,0,'Action completed, no processing required'),
	 (190,14,0,'2022-11-28 05:45:51',0,0.0,0,'Run mode: GLPI');
INSERT INTO glpi_dev.glpi_crontasklogs (id,crontasks_id,crontasklogs_id,`date`,state,elapsed,volume,content) VALUES
	 (191,14,190,'2022-11-28 05:45:51',2,0.040261,0,'Action completed, no processing required'),
	 (192,20,0,'2022-11-30 11:41:38',0,0.0,0,'Run mode: GLPI'),
	 (193,20,192,'2022-11-30 11:41:38',2,0.125259,0,'Action completed, no processing required'),
	 (194,24,0,'2022-11-30 11:49:15',0,0.0,0,'Run mode: GLPI'),
	 (195,24,194,'2022-11-30 11:49:15',2,0.035368,0,'Action completed, no processing required'),
	 (196,22,0,'2022-11-30 11:52:38',0,0.0,0,'Run mode: GLPI'),
	 (197,22,196,'2022-11-30 11:52:38',2,0.11882,0,'Action completed, no processing required'),
	 (198,13,0,'2022-11-30 11:54:41',0,0.0,0,'Run mode: GLPI'),
	 (199,13,198,'2022-11-30 11:54:41',2,0.0355198,0,'Action completed, no processing required'),
	 (200,21,0,'2022-11-30 11:55:07',0,0.0,0,'Run mode: GLPI');
INSERT INTO glpi_dev.glpi_crontasklogs (id,crontasks_id,crontasklogs_id,`date`,state,elapsed,volume,content) VALUES
	 (201,21,200,'2022-11-30 11:55:07',2,0.0396059,0,'Action completed, no processing required'),
	 (202,32,0,'2022-11-30 11:55:21',0,0.0,0,'Run mode: GLPI'),
	 (203,32,202,'2022-11-30 11:55:21',2,0.0682631,0,'Action completed, no processing required'),
	 (204,17,0,'2022-11-30 12:00:34',0,0.0,0,'Run mode: GLPI'),
	 (205,17,204,'2022-11-30 12:00:34',2,0.152037,0,'Action completed, no processing required'),
	 (206,9,0,'2022-11-30 12:03:14',0,0.0,0,'Run mode: GLPI'),
	 (207,9,206,'2022-11-30 12:03:14',2,0.076561,0,'Action completed, no processing required'),
	 (208,14,0,'2022-11-30 12:03:24',0,0.0,0,'Run mode: GLPI'),
	 (209,14,208,'2022-11-30 12:03:24',2,0.068578,0,'Action completed, no processing required'),
	 (210,15,0,'2022-11-30 12:04:53',0,0.0,0,'Run mode: GLPI');
INSERT INTO glpi_dev.glpi_crontasklogs (id,crontasks_id,crontasklogs_id,`date`,state,elapsed,volume,content) VALUES
	 (211,15,210,'2022-11-30 12:04:53',2,0.0419569,0,'Action completed, no processing required'),
	 (212,16,0,'2022-11-30 19:38:25',0,0.0,0,'Run mode: GLPI'),
	 (213,16,212,'2022-11-30 19:38:25',2,0.229428,0,'Action completed, no processing required'),
	 (214,18,0,'2022-11-30 19:39:48',0,0.0,0,'Run mode: GLPI'),
	 (215,18,214,'2022-11-30 19:39:48',2,0.0942881,0,'Action completed, no processing required'),
	 (216,19,0,'2022-11-30 19:40:26',0,0.0,0,'Run mode: GLPI'),
	 (217,19,216,'2022-11-30 19:40:26',2,0.0366449,0,'Action completed, fully processed'),
	 (218,23,0,'2022-11-30 19:42:01',0,0.0,0,'Run mode: GLPI'),
	 (219,23,218,'2022-11-30 19:42:01',2,0.056567,0,'Action completed, no processing required'),
	 (220,25,0,'2022-11-30 19:42:07',0,0.0,0,'Run mode: GLPI');
INSERT INTO glpi_dev.glpi_crontasklogs (id,crontasks_id,crontasklogs_id,`date`,state,elapsed,volume,content) VALUES
	 (221,25,220,'2022-11-30 19:42:07',2,0.0356841,0,'Action completed, no processing required'),
	 (222,5,0,'2022-11-30 19:42:19',0,0.0,0,'Run mode: GLPI'),
	 (223,5,222,'2022-11-30 19:42:19',2,0.0359769,0,'Action completed, no processing required'),
	 (224,31,0,'2022-11-30 19:42:40',0,0.0,0,'Run mode: GLPI'),
	 (225,31,224,'2022-11-30 19:42:40',2,0.0363159,0,'Action completed, no processing required'),
	 (226,6,0,'2022-11-30 19:47:22',0,0.0,0,'Run mode: GLPI'),
	 (227,6,226,'2022-11-30 19:47:22',2,0.031662,0,'Action completed, no processing required'),
	 (228,12,0,'2022-11-30 19:48:45',0,0.0,0,'Run mode: GLPI'),
	 (229,12,228,'2022-11-30 19:48:45',1,0.045022,8,'Clean 8 session file created since more than 1440 seconds
'),
	 (230,12,228,'2022-11-30 19:48:45',2,0.0590889,8,'Action completed, fully processed');
INSERT INTO glpi_dev.glpi_crontasklogs (id,crontasks_id,crontasklogs_id,`date`,state,elapsed,volume,content) VALUES
	 (231,22,0,'2022-11-30 19:49:12',0,0.0,0,'Run mode: GLPI'),
	 (232,22,231,'2022-11-30 19:49:12',2,0.063895,0,'Action completed, no processing required'),
	 (233,21,0,'2022-11-30 19:49:27',0,0.0,0,'Run mode: GLPI'),
	 (234,21,233,'2022-11-30 19:49:27',2,0.0393271,0,'Action completed, no processing required'),
	 (235,32,0,'2022-11-30 19:50:29',0,0.0,0,'Run mode: GLPI'),
	 (236,32,235,'2022-11-30 19:50:29',2,0.0912931,0,'Action completed, no processing required'),
	 (237,17,0,'2022-11-30 19:50:40',0,0.0,0,'Run mode: GLPI'),
	 (238,17,237,'2022-11-30 19:50:40',2,0.072407,0,'Action completed, no processing required'),
	 (239,9,0,'2022-11-30 19:51:14',0,0.0,0,'Run mode: GLPI'),
	 (240,9,239,'2022-11-30 19:51:14',2,0.0545752,0,'Action completed, no processing required');
INSERT INTO glpi_dev.glpi_crontasklogs (id,crontasks_id,crontasklogs_id,`date`,state,elapsed,volume,content) VALUES
	 (241,20,0,'2022-11-30 19:53:06',0,0.0,0,'Run mode: GLPI'),
	 (242,20,241,'2022-11-30 19:53:06',2,0.044486,0,'Action completed, no processing required'),
	 (243,24,0,'2022-11-30 19:53:12',0,0.0,0,'Run mode: GLPI'),
	 (244,24,243,'2022-11-30 19:53:12',2,0.0349908,0,'Action completed, no processing required'),
	 (245,13,0,'2022-11-30 19:53:24',0,0.0,0,'Run mode: GLPI'),
	 (246,13,245,'2022-11-30 19:53:24',2,0.035778,0,'Action completed, no processing required'),
	 (247,14,0,'2022-11-30 19:55:09',0,0.0,0,'Run mode: GLPI'),
	 (248,14,247,'2022-11-30 19:55:09',2,0.0371342,0,'Action completed, no processing required'),
	 (249,22,0,'2022-11-30 19:56:18',0,0.0,0,'Run mode: GLPI'),
	 (250,22,249,'2022-11-30 19:56:18',2,0.0402739,0,'Action completed, no processing required');
INSERT INTO glpi_dev.glpi_crontasklogs (id,crontasks_id,crontasklogs_id,`date`,state,elapsed,volume,content) VALUES
	 (251,21,0,'2022-11-30 20:01:32',0,0.0,0,'Run mode: GLPI'),
	 (252,21,251,'2022-11-30 20:01:32',2,0.215704,0,'Action completed, no processing required'),
	 (253,17,0,'2022-11-30 20:02:20',0,0.0,0,'Run mode: GLPI'),
	 (254,17,253,'2022-11-30 20:02:20',2,0.0357289,0,'Action completed, no processing required'),
	 (255,32,0,'2022-11-30 20:05:18',0,0.0,0,'Run mode: GLPI'),
	 (256,32,255,'2022-11-30 20:05:18',2,0.0394831,0,'Action completed, no processing required'),
	 (257,22,0,'2022-11-30 20:08:35',0,0.0,0,'Run mode: GLPI'),
	 (258,22,257,'2022-11-30 20:08:35',2,0.0415959,0,'Action completed, no processing required'),
	 (259,9,0,'2022-11-30 20:09:52',0,0.0,0,'Run mode: GLPI'),
	 (260,9,259,'2022-11-30 20:09:52',2,0.039201,0,'Action completed, no processing required');
INSERT INTO glpi_dev.glpi_crontasklogs (id,crontasks_id,crontasklogs_id,`date`,state,elapsed,volume,content) VALUES
	 (261,21,0,'2022-11-30 20:11:14',0,0.0,0,'Run mode: GLPI'),
	 (262,21,261,'2022-11-30 20:11:14',2,0.0344908,0,'Action completed, no processing required'),
	 (263,17,0,'2022-11-30 20:12:39',0,0.0,0,'Run mode: GLPI'),
	 (264,17,263,'2022-11-30 20:12:39',2,0.035037,0,'Action completed, no processing required'),
	 (265,22,0,'2022-11-30 20:14:28',0,0.0,0,'Run mode: GLPI'),
	 (266,22,265,'2022-11-30 20:14:28',2,0.0570509,0,'Action completed, no processing required'),
	 (267,32,0,'2022-11-30 20:15:26',0,0.0,0,'Run mode: GLPI'),
	 (268,32,267,'2022-11-30 20:15:26',2,0.037251,0,'Action completed, no processing required'),
	 (269,22,0,'2022-11-30 20:15:51',0,0.0,0,'Run mode: GLPI'),
	 (270,22,269,'2022-11-30 20:15:51',2,0.038233,0,'Action completed, no processing required');
INSERT INTO glpi_dev.glpi_crontasklogs (id,crontasks_id,crontasklogs_id,`date`,state,elapsed,volume,content) VALUES
	 (271,21,0,'2022-11-30 20:16:24',0,0.0,0,'Run mode: GLPI'),
	 (272,21,271,'2022-11-30 20:16:24',2,0.0304101,0,'Action completed, no processing required'),
	 (273,22,0,'2022-11-30 20:16:32',0,0.0,0,'Run mode: GLPI'),
	 (274,22,273,'2022-11-30 20:16:32',2,0.043021,0,'Action completed, no processing required'),
	 (275,17,0,'2022-11-30 20:18:02',0,0.0,0,'Run mode: GLPI'),
	 (276,17,275,'2022-11-30 20:18:02',2,0.0368011,0,'Action completed, no processing required'),
	 (277,22,0,'2022-11-30 20:18:25',0,0.0,0,'Run mode: GLPI'),
	 (278,22,277,'2022-11-30 20:18:25',2,0.04006,0,'Action completed, no processing required'),
	 (279,9,0,'2022-11-30 20:20:28',0,0.0,0,'Run mode: GLPI'),
	 (280,9,279,'2022-11-30 20:20:28',2,0.0417709,0,'Action completed, no processing required');
INSERT INTO glpi_dev.glpi_crontasklogs (id,crontasks_id,crontasklogs_id,`date`,state,elapsed,volume,content) VALUES
	 (281,22,0,'2022-11-30 20:20:38',0,0.0,0,'Run mode: GLPI'),
	 (282,22,281,'2022-11-30 20:20:38',2,0.094928,0,'Action completed, no processing required'),
	 (283,32,0,'2022-11-30 20:24:37',0,0.0,0,'Run mode: GLPI'),
	 (284,32,283,'2022-11-30 20:24:37',2,0.0415649,0,'Action completed, no processing required'),
	 (285,21,0,'2022-11-30 20:29:18',0,0.0,0,'Run mode: GLPI'),
	 (286,21,285,'2022-11-30 20:29:18',2,0.033155,0,'Action completed, no processing required'),
	 (287,22,0,'2022-11-30 20:33:28',0,0.0,0,'Run mode: GLPI'),
	 (288,22,287,'2022-11-30 20:33:28',2,0.039335,0,'Action completed, no processing required'),
	 (289,17,0,'2022-11-30 20:33:58',0,0.0,0,'Run mode: GLPI'),
	 (290,17,289,'2022-11-30 20:33:58',2,0.032223,0,'Action completed, no processing required');
INSERT INTO glpi_dev.glpi_crontasklogs (id,crontasks_id,crontasklogs_id,`date`,state,elapsed,volume,content) VALUES
	 (291,32,0,'2022-11-30 20:35:25',0,0.0,0,'Run mode: GLPI'),
	 (292,32,291,'2022-11-30 20:35:25',2,0.0377309,0,'Action completed, no processing required'),
	 (293,9,0,'2022-11-30 20:36:07',0,0.0,0,'Run mode: GLPI'),
	 (294,9,293,'2022-11-30 20:36:07',2,0.037482,0,'Action completed, no processing required'),
	 (295,21,0,'2022-11-30 20:36:49',0,0.0,0,'Run mode: GLPI'),
	 (296,21,295,'2022-11-30 20:36:49',2,0.324878,0,'Action completed, no processing required'),
	 (297,22,0,'2022-11-30 20:37:57',0,0.0,0,'Run mode: GLPI'),
	 (298,22,297,'2022-11-30 20:37:57',2,0.041075,0,'Action completed, no processing required'),
	 (299,17,0,'2022-11-30 20:40:42',0,0.0,0,'Run mode: GLPI'),
	 (300,17,299,'2022-11-30 20:40:42',2,0.035876,0,'Action completed, no processing required');
INSERT INTO glpi_dev.glpi_crontasklogs (id,crontasks_id,crontasklogs_id,`date`,state,elapsed,volume,content) VALUES
	 (301,22,0,'2022-11-30 20:41:46',0,0.0,0,'Run mode: GLPI'),
	 (302,22,301,'2022-11-30 20:41:46',2,0.0455818,0,'Action completed, no processing required'),
	 (303,32,0,'2022-11-30 20:42:00',0,0.0,0,'Run mode: GLPI'),
	 (304,32,303,'2022-11-30 20:42:00',2,0.0413449,0,'Action completed, no processing required'),
	 (305,21,0,'2022-11-30 20:42:20',0,0.0,0,'Run mode: GLPI'),
	 (306,21,305,'2022-11-30 20:42:20',2,0.0504639,0,'Action completed, no processing required'),
	 (307,22,0,'2022-11-30 20:42:34',0,0.0,0,'Run mode: GLPI'),
	 (308,22,307,'2022-11-30 20:42:34',2,0.0403881,0,'Action completed, no processing required'),
	 (309,22,0,'2022-11-30 20:44:03',0,0.0,0,'Run mode: GLPI'),
	 (310,22,309,'2022-11-30 20:44:03',2,0.0423009,0,'Action completed, no processing required');
INSERT INTO glpi_dev.glpi_crontasklogs (id,crontasks_id,crontasklogs_id,`date`,state,elapsed,volume,content) VALUES
	 (311,17,0,'2022-11-30 20:45:03',0,0.0,0,'Run mode: GLPI'),
	 (312,17,311,'2022-11-30 20:45:03',2,0.0358462,0,'Action completed, no processing required'),
	 (313,22,0,'2022-11-30 20:45:24',0,0.0,0,'Run mode: GLPI'),
	 (314,22,313,'2022-11-30 20:45:24',2,0.0406921,0,'Action completed, no processing required'),
	 (315,9,0,'2022-11-30 20:46:54',0,0.0,0,'Run mode: GLPI'),
	 (316,9,315,'2022-11-30 20:46:54',2,0.0403311,0,'Action completed, no processing required'),
	 (317,22,0,'2022-11-30 20:48:10',0,0.0,0,'Run mode: GLPI'),
	 (318,22,317,'2022-11-30 20:48:10',2,0.042027,0,'Action completed, no processing required'),
	 (319,21,0,'2022-11-30 20:49:16',0,0.0,0,'Run mode: GLPI'),
	 (320,21,319,'2022-11-30 20:49:16',2,0.0384998,0,'Action completed, no processing required');
INSERT INTO glpi_dev.glpi_crontasklogs (id,crontasks_id,crontasklogs_id,`date`,state,elapsed,volume,content) VALUES
	 (321,32,0,'2022-11-30 21:02:04',0,0.0,0,'Run mode: GLPI'),
	 (322,32,321,'2022-11-30 21:02:04',2,0.0361571,0,'Action completed, no processing required'),
	 (323,22,0,'2022-12-01 02:28:58',0,0.0,0,'Run mode: GLPI'),
	 (324,22,323,'2022-12-01 02:28:58',2,0.046608,0,'Action completed, no processing required'),
	 (325,17,0,'2022-12-01 02:42:06',0,0.0,0,'Run mode: GLPI'),
	 (326,17,325,'2022-12-01 02:42:06',2,0.048538,0,'Action completed, no processing required'),
	 (327,13,0,'2022-12-01 02:43:19',0,0.0,0,'Run mode: GLPI'),
	 (328,13,327,'2022-12-01 02:43:19',2,0.034503,0,'Action completed, no processing required'),
	 (329,20,0,'2022-12-01 02:44:04',0,0.0,0,'Run mode: GLPI'),
	 (330,20,329,'2022-12-01 02:44:04',2,0.047662,0,'Action completed, no processing required');
INSERT INTO glpi_dev.glpi_crontasklogs (id,crontasks_id,crontasklogs_id,`date`,state,elapsed,volume,content) VALUES
	 (331,24,0,'2022-12-01 02:44:29',0,0.0,0,'Run mode: GLPI'),
	 (332,24,331,'2022-12-01 02:44:29',2,0.0507219,0,'Action completed, no processing required'),
	 (333,21,0,'2022-12-01 02:45:03',0,0.0,0,'Run mode: GLPI'),
	 (334,21,333,'2022-12-01 02:45:03',2,0.0350242,0,'Action completed, no processing required'),
	 (335,14,0,'2022-12-01 02:46:53',0,0.0,0,'Run mode: GLPI'),
	 (336,14,335,'2022-12-01 02:46:53',2,0.0367742,0,'Action completed, no processing required'),
	 (337,9,0,'2022-12-01 02:48:31',0,0.0,0,'Run mode: GLPI'),
	 (338,9,337,'2022-12-01 02:48:31',2,0.0417891,0,'Action completed, no processing required'),
	 (339,32,0,'2022-12-01 02:48:52',0,0.0,0,'Run mode: GLPI'),
	 (340,32,339,'2022-12-01 02:48:52',2,0.14327,0,'Action completed, no processing required');
INSERT INTO glpi_dev.glpi_crontasklogs (id,crontasks_id,crontasklogs_id,`date`,state,elapsed,volume,content) VALUES
	 (341,15,0,'2022-12-01 02:49:47',0,0.0,0,'Run mode: GLPI'),
	 (342,15,341,'2022-12-01 02:49:47',2,0.0412898,0,'Action completed, no processing required'),
	 (343,22,0,'2022-12-01 02:51:53',0,0.0,0,'Run mode: GLPI'),
	 (344,22,343,'2022-12-01 02:51:53',2,0.038733,0,'Action completed, no processing required'),
	 (345,17,0,'2022-12-01 02:53:20',0,0.0,0,'Run mode: GLPI'),
	 (346,17,345,'2022-12-01 02:53:20',2,0.0389791,0,'Action completed, no processing required'),
	 (347,21,0,'2022-12-01 02:54:22',0,0.0,0,'Run mode: GLPI'),
	 (348,21,347,'2022-12-01 02:54:22',2,0.0351999,0,'Action completed, no processing required'),
	 (349,22,0,'2022-12-01 02:55:11',0,0.0,0,'Run mode: GLPI'),
	 (350,22,349,'2022-12-01 02:55:11',2,0.045573,0,'Action completed, no processing required');
INSERT INTO glpi_dev.glpi_crontasklogs (id,crontasks_id,crontasklogs_id,`date`,state,elapsed,volume,content) VALUES
	 (351,32,0,'2022-12-01 02:55:27',0,0.0,0,'Run mode: GLPI'),
	 (352,32,351,'2022-12-01 02:55:27',2,0.0360899,0,'Action completed, no processing required'),
	 (353,22,0,'2022-12-01 02:56:04',0,0.0,0,'Run mode: GLPI'),
	 (354,22,353,'2022-12-01 02:56:04',2,0.0543761,0,'Action completed, no processing required'),
	 (355,22,0,'2022-12-01 03:00:27',0,0.0,0,'Run mode: GLPI'),
	 (356,22,355,'2022-12-01 03:00:27',2,0.042192,0,'Action completed, no processing required'),
	 (357,9,0,'2022-12-01 07:14:22',0,0.0,0,'Run mode: GLPI'),
	 (358,9,357,'2022-12-01 07:14:22',2,0.0402858,0,'Action completed, no processing required'),
	 (359,17,0,'2022-12-01 07:15:50',0,0.0,0,'Run mode: GLPI'),
	 (360,17,359,'2022-12-01 07:15:50',2,0.0380049,0,'Action completed, no processing required');
INSERT INTO glpi_dev.glpi_crontasklogs (id,crontasks_id,crontasklogs_id,`date`,state,elapsed,volume,content) VALUES
	 (361,21,0,'2022-12-01 07:17:15',0,0.0,0,'Run mode: GLPI'),
	 (362,21,361,'2022-12-01 07:17:15',2,0.038203,0,'Action completed, no processing required'),
	 (363,32,0,'2022-12-01 07:17:24',0,0.0,0,'Run mode: GLPI'),
	 (364,32,363,'2022-12-01 07:17:24',2,0.0347619,0,'Action completed, no processing required'),
	 (365,22,0,'2022-12-01 07:18:53',0,0.0,0,'Run mode: GLPI'),
	 (366,22,365,'2022-12-01 07:18:53',2,0.037467,0,'Action completed, no processing required'),
	 (367,13,0,'2022-12-01 07:20:20',0,0.0,0,'Run mode: GLPI'),
	 (368,13,367,'2022-12-01 07:20:20',2,0.037039,0,'Action completed, no processing required'),
	 (369,20,0,'2022-12-01 07:23:09',0,0.0,0,'Run mode: GLPI'),
	 (370,20,369,'2022-12-01 07:23:09',2,0.109001,0,'Action completed, no processing required');
INSERT INTO glpi_dev.glpi_crontasklogs (id,crontasks_id,crontasklogs_id,`date`,state,elapsed,volume,content) VALUES
	 (371,24,0,'2022-12-01 07:24:50',0,0.0,0,'Run mode: GLPI'),
	 (372,24,371,'2022-12-01 07:24:50',2,0.0354409,0,'Action completed, no processing required'),
	 (373,14,0,'2022-12-01 07:25:36',0,0.0,0,'Run mode: GLPI'),
	 (374,14,373,'2022-12-01 07:25:36',2,0.035027,0,'Action completed, no processing required'),
	 (375,22,0,'2022-12-01 07:26:16',0,0.0,0,'Run mode: GLPI'),
	 (376,22,375,'2022-12-01 07:26:16',2,0.152582,0,'Action completed, no processing required'),
	 (377,17,0,'2022-12-01 07:26:22',0,0.0,0,'Run mode: GLPI'),
	 (378,17,377,'2022-12-01 07:26:22',2,0.0844159,0,'Action completed, no processing required'),
	 (379,21,0,'2022-12-01 07:26:47',0,0.0,0,'Run mode: GLPI'),
	 (380,21,379,'2022-12-01 07:26:47',2,0.038058,0,'Action completed, no processing required');
INSERT INTO glpi_dev.glpi_crontasklogs (id,crontasks_id,crontasklogs_id,`date`,state,elapsed,volume,content) VALUES
	 (381,32,0,'2022-12-01 07:27:33',0,0.0,0,'Run mode: GLPI'),
	 (382,32,381,'2022-12-01 07:27:33',2,0.0368559,0,'Action completed, no processing required'),
	 (383,9,0,'2022-12-01 07:27:47',0,0.0,0,'Run mode: GLPI'),
	 (384,9,383,'2022-12-01 07:27:47',2,0.036695,0,'Action completed, no processing required'),
	 (385,22,0,'2022-12-01 07:30:39',0,0.0,0,'Run mode: GLPI'),
	 (386,22,385,'2022-12-01 07:30:39',2,0.0458381,0,'Action completed, no processing required'),
	 (387,17,0,'2022-12-01 07:31:05',0,0.0,0,'Run mode: GLPI'),
	 (388,17,387,'2022-12-01 07:31:05',2,0.0332172,0,'Action completed, no processing required'),
	 (389,21,0,'2022-12-01 07:31:39',0,0.0,0,'Run mode: GLPI'),
	 (390,21,389,'2022-12-01 07:31:39',2,0.037375,0,'Action completed, no processing required');
INSERT INTO glpi_dev.glpi_crontasklogs (id,crontasks_id,crontasklogs_id,`date`,state,elapsed,volume,content) VALUES
	 (391,22,0,'2022-12-01 07:32:29',0,0.0,0,'Run mode: GLPI'),
	 (392,22,391,'2022-12-01 07:32:29',2,0.045099,0,'Action completed, no processing required'),
	 (393,32,0,'2022-12-01 07:37:35',0,0.0,0,'Run mode: GLPI'),
	 (394,32,393,'2022-12-01 07:37:35',2,0.041153,0,'Action completed, no processing required'),
	 (395,22,0,'2022-12-01 07:38:13',0,0.0,0,'Run mode: GLPI'),
	 (396,22,395,'2022-12-01 07:38:13',2,0.0347879,0,'Action completed, no processing required'),
	 (397,17,0,'2022-12-01 07:39:56',0,0.0,0,'Run mode: GLPI'),
	 (398,17,397,'2022-12-01 07:39:56',2,0.0350568,0,'Action completed, no processing required'),
	 (399,21,0,'2022-12-01 07:44:35',0,0.0,0,'Run mode: GLPI'),
	 (400,21,399,'2022-12-01 07:44:35',2,0.0393679,0,'Action completed, no processing required');
INSERT INTO glpi_dev.glpi_crontasklogs (id,crontasks_id,crontasklogs_id,`date`,state,elapsed,volume,content) VALUES
	 (401,9,0,'2022-12-01 07:46:24',0,0.0,0,'Run mode: GLPI'),
	 (402,9,401,'2022-12-01 07:46:24',2,0.048609,0,'Action completed, no processing required'),
	 (403,16,0,'2022-12-01 07:46:56',0,0.0,0,'Run mode: GLPI'),
	 (404,16,403,'2022-12-01 07:46:56',2,0.0326159,0,'Action completed, no processing required'),
	 (405,22,0,'2022-12-01 07:48:54',0,0.0,0,'Run mode: GLPI'),
	 (406,22,405,'2022-12-01 07:48:54',2,0.0365479,0,'Action completed, no processing required'),
	 (407,32,0,'2022-12-01 07:53:53',0,0.0,0,'Run mode: GLPI'),
	 (408,32,407,'2022-12-01 07:53:53',2,0.0387011,0,'Action completed, no processing required'),
	 (409,17,0,'2022-12-01 08:17:06',0,0.0,0,'Run mode: GLPI'),
	 (410,17,409,'2022-12-01 08:17:06',2,0.040735,0,'Action completed, no processing required');
INSERT INTO glpi_dev.glpi_crontasklogs (id,crontasks_id,crontasklogs_id,`date`,state,elapsed,volume,content) VALUES
	 (411,21,0,'2022-12-01 08:18:15',0,0.0,0,'Run mode: GLPI'),
	 (412,21,411,'2022-12-01 08:18:15',2,0.0344861,0,'Action completed, no processing required'),
	 (413,22,0,'2022-12-01 08:19:18',0,0.0,0,'Run mode: GLPI'),
	 (414,22,413,'2022-12-01 08:19:18',2,0.0422902,0,'Action completed, no processing required'),
	 (415,9,0,'2022-12-01 08:20:31',0,0.0,0,'Run mode: GLPI'),
	 (416,9,415,'2022-12-01 08:20:31',2,0.0732391,0,'Action completed, no processing required'),
	 (417,32,0,'2022-12-01 08:21:28',0,0.0,0,'Run mode: GLPI'),
	 (418,32,417,'2022-12-01 08:21:28',2,0.03738,0,'Action completed, no processing required'),
	 (419,13,0,'2022-12-01 08:22:35',0,0.0,0,'Run mode: GLPI'),
	 (420,13,419,'2022-12-01 08:22:35',2,0.043225,0,'Action completed, no processing required');
INSERT INTO glpi_dev.glpi_crontasklogs (id,crontasks_id,crontasklogs_id,`date`,state,elapsed,volume,content) VALUES
	 (421,22,0,'2022-12-01 08:24:15',0,0.0,0,'Run mode: GLPI'),
	 (422,22,421,'2022-12-01 08:24:15',2,0.0417979,0,'Action completed, no processing required'),
	 (423,17,0,'2022-12-01 08:43:31',0,0.0,0,'Run mode: GLPI'),
	 (424,17,423,'2022-12-01 08:43:31',2,0.0341411,0,'Action completed, no processing required'),
	 (425,20,0,'2022-12-01 08:44:19',0,0.0,0,'Run mode: GLPI'),
	 (426,20,425,'2022-12-01 08:44:19',2,0.0429361,0,'Action completed, no processing required'),
	 (427,21,0,'2022-12-01 08:59:29',0,0.0,0,'Run mode: GLPI'),
	 (428,21,427,'2022-12-01 08:59:29',2,0.0364158,0,'Action completed, no processing required'),
	 (429,24,0,'2022-12-01 09:07:38',0,0.0,0,'Run mode: GLPI'),
	 (430,24,429,'2022-12-01 09:07:38',2,0.037148,0,'Action completed, no processing required');
INSERT INTO glpi_dev.glpi_crontasklogs (id,crontasks_id,crontasklogs_id,`date`,state,elapsed,volume,content) VALUES
	 (431,14,0,'2022-12-01 09:16:42',0,0.0,0,'Run mode: GLPI'),
	 (432,14,431,'2022-12-01 09:16:42',2,1.15134,0,'Action completed, no processing required'),
	 (433,22,0,'2022-12-04 20:58:03',0,0.0,0,'Run mode: GLPI'),
	 (434,22,433,'2022-12-04 20:58:03',2,0.0331101,0,'Action completed, no processing required'),
	 (435,32,0,'2022-12-04 13:58:57',0,0.0,0,'Run mode: GLPI'),
	 (436,32,435,'2022-12-04 13:58:57',2,0.19802,0,'Action completed, no processing required');
INSERT INTO glpi_dev.glpi_crontasks (id,itemtype,name,frequency,param,state,mode,allowmode,hourmin,hourmax,logs_lifetime,lastrun,lastcode,comment,date_mod,date_creation) VALUES
	 (2,'CartridgeItem','cartridge',86400,10,0,1,3,0,24,30,NULL,NULL,NULL,NULL,NULL),
	 (3,'ConsumableItem','consumable',86400,10,0,1,3,0,24,30,NULL,NULL,NULL,NULL,NULL),
	 (4,'SoftwareLicense','software',86400,NULL,0,1,3,0,24,30,NULL,NULL,NULL,NULL,NULL),
	 (5,'Contract','contract',86400,NULL,1,1,3,0,24,30,'2022-12-01 01:42:00',NULL,NULL,NULL,NULL),
	 (6,'Infocom','infocom',86400,NULL,1,1,3,0,24,30,'2022-12-01 01:47:00',NULL,NULL,NULL,NULL),
	 (7,'CronTask','logs',86400,30,0,1,3,0,24,30,NULL,NULL,NULL,NULL,NULL),
	 (9,'MailCollector','mailgate',600,10,1,1,3,0,24,30,'2022-12-01 14:20:00',NULL,NULL,NULL,NULL),
	 (10,'DBconnection','checkdbreplicate',300,NULL,0,1,3,0,24,30,NULL,NULL,NULL,NULL,NULL),
	 (11,'CronTask','checkupdate',604800,NULL,0,1,3,0,24,30,NULL,NULL,NULL,NULL,NULL),
	 (12,'CronTask','session',86400,NULL,1,1,3,0,24,30,'2022-12-01 01:48:00',NULL,NULL,NULL,NULL);
INSERT INTO glpi_dev.glpi_crontasks (id,itemtype,name,frequency,param,state,mode,allowmode,hourmin,hourmax,logs_lifetime,lastrun,lastcode,comment,date_mod,date_creation) VALUES
	 (13,'CronTask','graph',3600,NULL,1,1,3,0,24,30,'2022-12-01 14:22:00',NULL,NULL,NULL,NULL),
	 (14,'ReservationItem','reservation',3600,NULL,1,1,3,0,24,30,'2022-12-01 15:16:00',NULL,NULL,NULL,NULL),
	 (15,'Ticket','closeticket',43200,NULL,1,1,3,0,24,30,'2022-12-01 08:49:00',NULL,NULL,NULL,NULL),
	 (16,'Ticket','alertnotclosed',43200,NULL,1,1,3,0,24,30,'2022-12-01 13:46:00',NULL,NULL,NULL,NULL),
	 (17,'SlaLevel_Ticket','slaticket',300,NULL,1,1,3,0,24,30,'2022-12-01 14:43:00',NULL,NULL,NULL,NULL),
	 (18,'Ticket','createinquest',86400,NULL,1,1,3,0,24,30,'2022-12-01 01:39:00',NULL,NULL,NULL,NULL),
	 (19,'CronTask','watcher',86400,NULL,1,1,3,0,24,30,'2022-12-01 01:40:00',NULL,NULL,NULL,NULL),
	 (20,'CommonITILRecurrentCron','RecurrentItems',3600,NULL,1,1,3,0,24,30,'2022-12-01 14:44:00',NULL,NULL,NULL,NULL),
	 (21,'PlanningRecall','planningrecall',300,NULL,1,1,3,0,24,30,'2022-12-01 14:59:00',NULL,NULL,NULL,NULL),
	 (22,'QueuedNotification','queuednotification',60,50,1,1,3,0,24,30,'2022-12-04 20:58:00',NULL,NULL,NULL,NULL);
INSERT INTO glpi_dev.glpi_crontasks (id,itemtype,name,frequency,param,state,mode,allowmode,hourmin,hourmax,logs_lifetime,lastrun,lastcode,comment,date_mod,date_creation) VALUES
	 (23,'QueuedNotification','queuednotificationclean',86400,30,1,1,3,0,24,30,'2022-12-01 01:42:00',NULL,NULL,NULL,NULL),
	 (24,'CronTask','temp',3600,NULL,1,1,3,0,24,30,'2022-12-01 15:07:00',NULL,NULL,NULL,NULL),
	 (25,'MailCollector','mailgateerror',86400,NULL,1,1,3,0,24,30,'2022-12-01 01:42:00',NULL,NULL,NULL,NULL),
	 (26,'CronTask','circularlogs',86400,4,0,1,3,0,24,30,NULL,NULL,NULL,NULL,NULL),
	 (27,'ObjectLock','unlockobject',86400,4,0,1,3,0,24,30,NULL,NULL,NULL,NULL,NULL),
	 (28,'SavedSearch','countAll',604800,NULL,0,1,3,0,24,30,NULL,NULL,NULL,NULL,NULL),
	 (29,'SavedSearch_Alert','savedsearchesalerts',86400,NULL,0,1,3,0,24,30,NULL,NULL,NULL,NULL,NULL),
	 (30,'Telemetry','telemetry',2592000,NULL,0,1,3,0,24,30,NULL,NULL,NULL,NULL,NULL),
	 (31,'Certificate','certificate',86400,NULL,1,1,3,0,24,30,'2022-12-01 01:42:00',NULL,NULL,NULL,NULL),
	 (32,'OlaLevel_Ticket','olaticket',300,NULL,1,1,3,0,24,30,'2022-12-04 20:58:00',NULL,NULL,NULL,NULL);
INSERT INTO glpi_dev.glpi_crontasks (id,itemtype,name,frequency,param,state,mode,allowmode,hourmin,hourmax,logs_lifetime,lastrun,lastcode,comment,date_mod,date_creation) VALUES
	 (33,'PurgeLogs','PurgeLogs',604800,24,1,2,3,0,24,30,NULL,NULL,NULL,NULL,NULL),
	 (34,'Ticket','purgeticket',604800,NULL,0,2,3,0,24,30,NULL,NULL,NULL,NULL,NULL),
	 (35,'Document','cleanorphans',604800,NULL,0,2,3,0,24,30,NULL,NULL,NULL,NULL,NULL),
	 (36,'User','passwordexpiration',86400,100,0,2,3,0,24,30,NULL,NULL,NULL,NULL,NULL),
	 (37,'Glpi\\Marketplace\\Controller','checkAllUpdates',86400,NULL,1,2,3,0,24,30,NULL,NULL,NULL,NULL,NULL),
	 (38,'CleanSoftwareCron','cleansoftware',2592000,1000,0,2,3,0,24,300,NULL,NULL,NULL,NULL,NULL),
	 (39,'Domain','DomainsAlert',86400,NULL,1,2,3,0,24,30,NULL,NULL,NULL,NULL,NULL),
	 (40,'Glpi\\Inventory\\Inventory','cleantemp',86400,NULL,0,2,3,0,24,30,NULL,NULL,NULL,NULL,NULL),
	 (41,'Glpi\\Inventory\\Inventory','cleanorphans',604800,NULL,1,2,3,0,24,30,NULL,NULL,NULL,NULL,NULL),
	 (42,'PendingReasonCron','pendingreason_autobump_autosolve',1800,NULL,1,2,3,0,24,60,NULL,NULL,NULL,NULL,NULL);
INSERT INTO glpi_dev.glpi_crontasks (id,itemtype,name,frequency,param,state,mode,allowmode,hourmin,hourmax,logs_lifetime,lastrun,lastcode,comment,date_mod,date_creation) VALUES
	 (43,'Agent','Cleanoldagents',86400,NULL,1,2,3,0,24,30,NULL,NULL,NULL,NULL,NULL);
INSERT INTO glpi_dev.glpi_dashboards_dashboards (id,`key`,name,context,users_id) VALUES
	 (1,'central','Central','core',0),
	 (2,'assets','Assets','core',0),
	 (3,'assistance','Assistance','core',0),
	 (4,'mini_tickets','Mini ticket Dashboard','mini_core',0);
INSERT INTO glpi_dev.glpi_dashboards_items (id,dashboards_dashboards_id,gridstack_id,card_id,x,y,width,height,card_options) VALUES
	 (1,1,'bn_count_Computer_4a315743-151c-40cb-a20b-762250668dac','bn_count_Computer',3,0,3,2,'{"color":"#e69393","widgettype":"bigNumber","use_gradient":"0","limit":"7"}'),
	 (2,1,'bn_count_Software_0690f524-e826-47a9-b50a-906451196b83','bn_count_Software',0,0,3,2,'{"color":"#aaddac","widgettype":"bigNumber","use_gradient":"0","limit":"7"}'),
	 (3,1,'bn_count_Rack_c6502e0a-5991-46b4-a771-7f355137306b','bn_count_Rack',6,2,3,2,'{"color":"#0e87a0","widgettype":"bigNumber","use_gradient":"0","limit":"7"}'),
	 (4,1,'bn_count_SoftwareLicense_e755fd06-283e-4479-ba35-2d548f8f8a90','bn_count_SoftwareLicense',0,2,3,2,'{"color":"#27ab3c","widgettype":"bigNumber","use_gradient":"0","limit":"7"}'),
	 (5,1,'bn_count_Monitor_7059b94c-583c-4ba7-b100-d40461165318','bn_count_Monitor',3,2,3,2,'{"color":"#b52d30","widgettype":"bigNumber","use_gradient":"0","limit":"7"}'),
	 (6,1,'bn_count_Ticket_a74c0903-3387-4a07-9111-b0938af8f1e7','bn_count_Ticket',14,7,3,2,'{"color":"#ffdc64","widgettype":"bigNumber","use_gradient":"0","limit":"7"}'),
	 (7,1,'bn_count_Problem_c1cf5cfb-f626-472e-82a1-49c3e200e746','bn_count_Problem',20,7,3,2,'{"color":"#f08d7b","widgettype":"bigNumber","use_gradient":"0","limit":"7"}'),
	 (8,1,'count_Computer_Manufacturer_6129c451-42b5-489d-b693-c362adf32d49','count_Computer_Manufacturer',0,4,5,4,'{"color":"#f8faf9","widgettype":"donut","use_gradient":"1","limit":"5"}'),
	 (9,1,'top_ticket_user_requester_c74f52a8-046a-4077-b1a6-c9f840d34b82','top_ticket_user_requester',14,9,6,5,'{"color":"#f9fafb","widgettype":"hbar","use_gradient":"1","limit":"5"}'),
	 (10,1,'bn_count_tickets_late_04c47208-d7e5-4aca-9566-d46e68c45c67','bn_count_tickets_late',17,7,3,2,'{"color":"#f8911f","widgettype":"bigNumber","use_gradient":"0","limit":"7"}');
INSERT INTO glpi_dev.glpi_dashboards_items (id,dashboards_dashboards_id,gridstack_id,card_id,x,y,width,height,card_options) VALUES
	 (11,1,'ticket_status_2e4e968b-d4e6-4e33-9ce9-a1aaff53dfde','ticket_status',14,0,12,7,'{"color":"#fafafa","widgettype":"stackedbars","use_gradient":"0","limit":"12"}'),
	 (12,1,'top_ticket_ITILCategory_37736ba9-d429-4cb3-9058-ef4d111d9269','top_ticket_ITILCategory',20,9,6,5,'{"color":"#fbf9f9","widgettype":"hbar","use_gradient":"1","limit":"5"}'),
	 (13,1,'bn_count_Printer_517684b0-b064-49dd-943e-fcb6f915e453','bn_count_Printer',9,2,3,2,'{"color":"#365a8f","widgettype":"bigNumber","use_gradient":"0","limit":"7"}'),
	 (14,1,'bn_count_Phone_f70c489f-02c1-46e5-978b-94a95b5038ee','bn_count_Phone',9,0,3,2,'{"color":"#d5e1ec","widgettype":"bigNumber","use_gradient":"0","limit":"7"}'),
	 (15,1,'bn_count_Change_ab950dbd-cd25-466d-8dff-7dcaca386564','bn_count_Change',23,7,3,2,'{"color":"#cae3c4","widgettype":"bigNumber","use_gradient":"0","limit":"7"}'),
	 (16,1,'bn_count_Group_b84a93f2-a26c-49d7-82a4-5446697cc5b0','bn_count_Group',4,8,4,2,'{"color":"#e0e0e0","widgettype":"bigNumber","use_gradient":"0","limit":"7"}'),
	 (17,1,'bn_count_Profile_770b35e8-68e9-4b4f-9e09-5a11058f069f','bn_count_Profile',4,10,4,2,'{"color":"#e0e0e0","widgettype":"bigNumber","use_gradient":"0","limit":"7"}'),
	 (18,1,'bn_count_Supplier_36ff9011-e4cf-4d89-b9ab-346b9857d734','bn_count_Supplier',8,8,3,2,'{"color":"#c9c9c9","widgettype":"bigNumber","use_gradient":"0","limit":"7"}'),
	 (19,1,'bn_count_KnowbaseItem_a3785a56-bed4-4a30-8387-f251f5365b3b','bn_count_KnowbaseItem',8,10,3,2,'{"color":"#c9c9c9","widgettype":"bigNumber","use_gradient":"0","limit":"7"}'),
	 (20,1,'bn_count_Entity_9b82951a-ba52-45cc-a2d3-1d238ec37adf','bn_count_Entity',0,10,4,2,'{"color":"#f9f9f9","widgettype":"bigNumber","use_gradient":"0","limit":"7"}');
INSERT INTO glpi_dev.glpi_dashboards_items (id,dashboards_dashboards_id,gridstack_id,card_id,x,y,width,height,card_options) VALUES
	 (21,1,'bn_count_Document_7dc7f4b8-61ff-4147-b994-5541bddd7b66','bn_count_Document',11,8,3,2,'{"color":"#b4b4b4","widgettype":"bigNumber","use_gradient":"0","limit":"7"}'),
	 (22,1,'bn_count_Project_4d412ee2-8b79-469b-995f-4c0a05ab849d','bn_count_Project',11,10,3,2,'{"color":"#b3b3b3","widgettype":"bigNumber","use_gradient":"0","limit":"7"}'),
	 (23,1,'bn_count_NetworkEquipment_c537e334-d584-43bc-b6de-b4a939143e89','bn_count_NetworkEquipment',6,0,3,2,'{"color":"#bfe7ea","widgettype":"bigNumber","use_gradient":"0","limit":"7"}'),
	 (24,1,'bn_count_User_ac0cbe52-3593-43c1-8ecc-0eb115de494d','bn_count_User',0,8,4,2,'{"color":"#fafafa","widgettype":"bigNumber","use_gradient":"0","limit":"7"}'),
	 (25,1,'count_Monitor_MonitorModel_5a476ff9-116e-4270-858b-c003c20841a9','count_Monitor_MonitorModel',5,4,5,4,'{"color":"#f5fafa","widgettype":"donut","use_gradient":"1","limit":"5"}'),
	 (26,1,'count_NetworkEquipment_State_81f2ae35-b366-4065-ac26-02ea4e3704a6','count_NetworkEquipment_State',10,4,4,4,'{"color":"#f5f3ef","widgettype":"donut","use_gradient":"1","limit":"5"}'),
	 (27,2,'bn_count_Computer_34cfbaf9-a471-4852-b48c-0dadea7644de','bn_count_Computer',0,0,4,3,'{"color":"#f3d0d0","widgettype":"bigNumber"}'),
	 (28,2,'bn_count_Software_60091467-2137-49f4-8834-f6602a482079','bn_count_Software',4,0,4,3,'{"color":"#d1f1a8","widgettype":"bigNumber"}'),
	 (29,2,'bn_count_Printer_c9a385d4-76a3-4971-ad0e-1470efeafacc','bn_count_Printer',8,3,4,3,'{"color":"#5da8d6","widgettype":"bigNumber"}'),
	 (30,2,'bn_count_PDU_60053eb6-8dda-4416-9a4b-afd51889bd09','bn_count_PDU',12,3,4,3,'{"color":"#ffb62f","widgettype":"bigNumber"}');
INSERT INTO glpi_dev.glpi_dashboards_items (id,dashboards_dashboards_id,gridstack_id,card_id,x,y,width,height,card_options) VALUES
	 (31,2,'bn_count_Rack_0fdc196f-20d2-4f63-9ddb-b75c165cc664','bn_count_Rack',12,0,4,3,'{"color":"#f7d79a","widgettype":"bigNumber"}'),
	 (32,2,'bn_count_Phone_c31fde2d-510a-4482-b17d-2f65b61eae08','bn_count_Phone',16,3,4,3,'{"color":"#a0cec2","widgettype":"bigNumber"}'),
	 (33,2,'bn_count_Enclosure_c21ce30a-58c3-456a-81ec-3c5f01527a8f','bn_count_Enclosure',16,0,4,3,'{"color":"#d7e8e4","widgettype":"bigNumber"}'),
	 (34,2,'bn_count_NetworkEquipment_76f1e239-777b-4552-b053-ae5c64190347','bn_count_NetworkEquipment',8,0,4,3,'{"color":"#c8dae4","widgettype":"bigNumber"}'),
	 (35,2,'bn_count_SoftwareLicense_576e58fe-a386-480f-b405-1c2315b8ab47','bn_count_SoftwareLicense',4,3,4,3,'{"color":"#9bc06b","widgettype":"bigNumber","use_gradient":"0","limit":"7"}'),
	 (36,2,'bn_count_Monitor_890e16d3-b121-48c6-9713-d9c239d9a970','bn_count_Monitor',0,3,4,3,'{"color":"#dc6f6f","widgettype":"bigNumber","use_gradient":"0","limit":"7"}'),
	 (37,2,'count_Computer_Manufacturer_986e92e8-32e8-4a6f-806f-6f5383acbb3f','count_Computer_Manufacturer',4,6,4,4,'{"color":"#f3f5f1","widgettype":"hbar","use_gradient":"1","limit":"5"}'),
	 (38,2,'count_Computer_State_290c5920-9eab-4db8-8753-46108e60f1d8','count_Computer_State',0,6,4,4,'{"color":"#fbf7f7","widgettype":"donut","use_gradient":"1","limit":"5"}'),
	 (39,2,'count_Computer_ComputerType_c58f9c7e-22d5-478b-8226-d2a752bcbb09','count_Computer_ComputerType',8,6,4,4,'{"color":"#f5f9fa","widgettype":"donut","use_gradient":"1","limit":"5"}'),
	 (40,2,'count_NetworkEquipment_Manufacturer_8132b21c-6f7f-4dc1-af54-bea794cb96e9','count_NetworkEquipment_Manufacturer',12,6,4,4,'{"color":"#fcf8ed","widgettype":"hbar","use_gradient":"0","limit":"5"}');
INSERT INTO glpi_dev.glpi_dashboards_items (id,dashboards_dashboards_id,gridstack_id,card_id,x,y,width,height,card_options) VALUES
	 (41,2,'count_Monitor_Manufacturer_43b0c16b-af82-418e-aac1-f32b39705c0d','count_Monitor_Manufacturer',16,6,4,4,'{"color":"#f9fbfb","widgettype":"donut","use_gradient":"1","limit":"5"}'),
	 (42,3,'bn_count_Ticket_344e761b-f7e8-4617-8c90-154b266b4d67','bn_count_Ticket',0,0,3,2,'{"color":"#ffdc64","widgettype":"bigNumber","use_gradient":"0","limit":"7"}'),
	 (43,3,'bn_count_Problem_bdb4002b-a674-4493-820f-af85bed44d2a','bn_count_Problem',0,4,3,2,'{"color":"#f0967b","widgettype":"bigNumber","use_gradient":"0","limit":"7"}'),
	 (44,3,'bn_count_Change_b9b87513-4f40-41e6-8621-f51f9a30fb19','bn_count_Change',0,6,3,2,'{"color":"#cae3c4","widgettype":"bigNumber","use_gradient":"0","limit":"7"}'),
	 (45,3,'bn_count_tickets_late_1e9ae481-21b4-4463-a830-dec1b68ec5e7','bn_count_tickets_late',0,2,3,2,'{"color":"#f8911f","widgettype":"bigNumber","use_gradient":"0","limit":"7"}'),
	 (46,3,'bn_count_tickets_incoming_336a36d9-67fe-4475-880e-447bd766b8fe','bn_count_tickets_incoming',3,6,3,2,'{"color":"#a0e19d","widgettype":"bigNumber","use_gradient":"0","limit":"7"}'),
	 (47,3,'bn_count_tickets_closed_e004bab5-f2b6-4060-a401-a2a8b9885245','bn_count_tickets_closed',9,8,3,2,'{"color":"#515151","widgettype":"bigNumber","use_gradient":"0","limit":"7"}'),
	 (48,3,'bn_count_tickets_assigned_7455c855-6df8-4514-a3d9-8b0fce52bd63','bn_count_tickets_assigned',6,6,3,2,'{"color":"#eaf5f7","widgettype":"bigNumber","use_gradient":"0","limit":"7"}'),
	 (49,3,'bn_count_tickets_solved_5e9759b3-ee7e-4a14-b68f-1ac024ef55ee','bn_count_tickets_solved',9,6,3,2,'{"color":"#d8d8d8","widgettype":"bigNumber","use_gradient":"0","limit":"7"}'),
	 (50,3,'bn_count_tickets_waiting_102b2c2a-6ac6-4d73-ba47-8b09382fe00e','bn_count_tickets_waiting',3,8,3,2,'{"color":"#ffcb7d","widgettype":"bigNumber","use_gradient":"0","limit":"7"}');
INSERT INTO glpi_dev.glpi_dashboards_items (id,dashboards_dashboards_id,gridstack_id,card_id,x,y,width,height,card_options) VALUES
	 (51,3,'bn_count_TicketRecurrent_13f79539-61f6-45f7-8dde-045706e652f2','bn_count_TicketRecurrent',0,8,3,2,'{"color":"#fafafa","widgettype":"bigNumber","use_gradient":"0","limit":"7"}'),
	 (52,3,'bn_count_tickets_planned_267bf627-9d5e-4b6c-b53d-b8623d793ccf','bn_count_tickets_planned',6,8,3,2,'{"color":"#6298d5","widgettype":"bigNumber","use_gradient":"0","limit":"7"}'),
	 (53,3,'top_ticket_ITILCategory_0cba0c84-6c62-4cd8-8564-18614498d8e4','top_ticket_ITILCategory',12,6,4,4,'{"color":"#f1f5ef","widgettype":"donut","use_gradient":"1","limit":"7"}'),
	 (54,3,'top_ticket_RequestType_b9e43f34-8e94-4a6e-9023-c5d1e2ce7859','top_ticket_RequestType',16,6,4,4,'{"color":"#f9fafb","widgettype":"hbar","use_gradient":"1","limit":"4"}'),
	 (55,3,'top_ticket_Entity_a8e65812-519c-488e-9892-9adbe22fbd5c','top_ticket_Entity',20,6,4,4,'{"color":"#f7f1f0","widgettype":"donut","use_gradient":"1","limit":"7"}'),
	 (56,3,'ticket_evolution_76fd4926-ee5e-48db-b6d6-e2947c190c5e','ticket_evolution',3,0,12,6,'{"color":"#f3f7f8","widgettype":"areas","use_gradient":"0","limit":"12"}'),
	 (57,3,'ticket_status_5b256a35-b36b-4db5-ba11-ea7c125f126e','ticket_status',15,0,11,6,'{"color":"#f7f3f2","widgettype":"stackedbars","use_gradient":"0","limit":"12"}'),
	 (58,4,'bn_count_tickets_closed_ccf7246b-645a-40d2-8206-fa33c769e3f5','bn_count_tickets_closed',24,0,4,2,'{"color":"#fafafa","widgettype":"bigNumber","use_gradient":"0","limit":"7"}'),
	 (59,4,'bn_count_Ticket_d5bf3576-5033-40fb-bbdb-292294a7698e','bn_count_Ticket',0,0,4,2,'{"color":"#ffd957","widgettype":"bigNumber","use_gradient":"0","limit":"7"}'),
	 (60,4,'bn_count_tickets_incoming_055e813c-b0ce-4687-91ef-559249e8ddd8','bn_count_tickets_incoming',4,0,4,2,'{"color":"#6fd169","widgettype":"bigNumber","use_gradient":"0","limit":"7"}');
INSERT INTO glpi_dev.glpi_dashboards_items (id,dashboards_dashboards_id,gridstack_id,card_id,x,y,width,height,card_options) VALUES
	 (61,4,'bn_count_tickets_waiting_793c665b-b620-4b3a-a5a8-cf502defc008','bn_count_tickets_waiting',8,0,4,2,'{"color":"#ffcb7d","widgettype":"bigNumber","use_gradient":"0","limit":"7"}'),
	 (62,4,'bn_count_tickets_assigned_d3d2f697-52b4-435e-9030-a760dd649085','bn_count_tickets_assigned',12,0,4,2,'{"color":"#eaf4f7","widgettype":"bigNumber","use_gradient":"0","limit":"7"}'),
	 (63,4,'bn_count_tickets_planned_0c7f3569-c23b-4ee3-8e85-279229b23e70','bn_count_tickets_planned',16,0,4,2,'{"color":"#6298d5","widgettype":"bigNumber","use_gradient":"0","limit":"7"}'),
	 (64,4,'bn_count_tickets_solved_ae2406cf-e8e8-410b-b355-46e3f5705ee8','bn_count_tickets_solved',20,0,4,2,'{"color":"#d7d7d7","widgettype":"bigNumber","use_gradient":"0","limit":"7"}');
INSERT INTO glpi_dev.glpi_devicefirmwaretypes (id,name,comment,date_mod,date_creation) VALUES
	 (1,'BIOS',NULL,NULL,NULL),
	 (2,'UEFI',NULL,NULL,NULL),
	 (3,'Firmware',NULL,NULL,NULL);
INSERT INTO glpi_dev.glpi_devicememorytypes (id,name,comment,date_mod,date_creation) VALUES
	 (1,'EDO',NULL,NULL,NULL),
	 (2,'DDR',NULL,NULL,NULL),
	 (3,'SDRAM',NULL,NULL,NULL),
	 (4,'SDRAM-2',NULL,NULL,NULL);
INSERT INTO glpi_dev.glpi_devicesimcardtypes (id,name,comment,date_mod,date_creation) VALUES
	 (1,'Full SIM',NULL,NULL,NULL),
	 (2,'Mini SIM',NULL,NULL,NULL),
	 (3,'Micro SIM',NULL,NULL,NULL),
	 (4,'Nano SIM',NULL,NULL,NULL);
INSERT INTO glpi_dev.glpi_displaypreferences (id,itemtype,num,`rank`,users_id) VALUES
	 (1,'Computer',4,4,0),
	 (2,'Computer',45,6,0),
	 (3,'Computer',40,5,0),
	 (4,'Computer',5,3,0),
	 (5,'Computer',23,2,0),
	 (6,'DocumentType',3,1,0),
	 (7,'Monitor',31,1,0),
	 (8,'Monitor',23,2,0),
	 (9,'Monitor',3,3,0),
	 (10,'Monitor',4,4,0);
INSERT INTO glpi_dev.glpi_displaypreferences (id,itemtype,num,`rank`,users_id) VALUES
	 (11,'Printer',31,1,0),
	 (12,'NetworkEquipment',31,1,0),
	 (13,'NetworkEquipment',23,2,0),
	 (14,'Printer',23,2,0),
	 (15,'Printer',3,3,0),
	 (16,'Software',4,3,0),
	 (17,'Software',5,2,0),
	 (18,'Software',23,1,0),
	 (19,'CartridgeItem',4,2,0),
	 (20,'CartridgeItem',34,1,0);
INSERT INTO glpi_dev.glpi_displaypreferences (id,itemtype,num,`rank`,users_id) VALUES
	 (21,'Peripheral',3,3,0),
	 (22,'Peripheral',23,2,0),
	 (23,'Peripheral',31,1,0),
	 (24,'Computer',31,1,0),
	 (25,'Computer',3,7,0),
	 (26,'Computer',19,8,0),
	 (27,'Computer',17,9,0),
	 (28,'NetworkEquipment',3,3,0),
	 (29,'NetworkEquipment',4,4,0),
	 (30,'NetworkEquipment',11,6,0);
INSERT INTO glpi_dev.glpi_displaypreferences (id,itemtype,num,`rank`,users_id) VALUES
	 (31,'NetworkEquipment',19,7,0),
	 (32,'Printer',4,4,0),
	 (33,'Printer',19,6,0),
	 (34,'Monitor',19,6,0),
	 (35,'Monitor',7,7,0),
	 (36,'Peripheral',4,4,0),
	 (37,'Peripheral',19,6,0),
	 (38,'Peripheral',7,7,0),
	 (39,'Contact',3,1,0),
	 (40,'Contact',4,2,0);
INSERT INTO glpi_dev.glpi_displaypreferences (id,itemtype,num,`rank`,users_id) VALUES
	 (41,'Contact',5,3,0),
	 (42,'Contact',6,4,0),
	 (43,'Contact',9,5,0),
	 (44,'Supplier',9,1,0),
	 (45,'Supplier',3,2,0),
	 (46,'Supplier',4,3,0),
	 (47,'Supplier',5,4,0),
	 (48,'Supplier',10,5,0),
	 (49,'Supplier',6,6,0),
	 (50,'Contract',4,1,0);
INSERT INTO glpi_dev.glpi_displaypreferences (id,itemtype,num,`rank`,users_id) VALUES
	 (51,'Contract',3,2,0),
	 (52,'Contract',5,3,0),
	 (53,'Contract',6,4,0),
	 (54,'Contract',7,5,0),
	 (55,'Contract',11,6,0),
	 (56,'CartridgeItem',23,3,0),
	 (57,'CartridgeItem',3,4,0),
	 (58,'DocumentType',6,2,0),
	 (59,'DocumentType',4,3,0),
	 (60,'DocumentType',5,4,0);
INSERT INTO glpi_dev.glpi_displaypreferences (id,itemtype,num,`rank`,users_id) VALUES
	 (61,'Document',3,1,0),
	 (62,'Document',4,2,0),
	 (63,'Document',7,3,0),
	 (64,'Document',5,4,0),
	 (65,'Document',16,5,0),
	 (66,'User',34,1,0),
	 (67,'User',5,3,0),
	 (68,'User',6,4,0),
	 (69,'User',3,5,0),
	 (70,'ConsumableItem',34,1,0);
INSERT INTO glpi_dev.glpi_displaypreferences (id,itemtype,num,`rank`,users_id) VALUES
	 (71,'ConsumableItem',4,2,0),
	 (72,'ConsumableItem',23,3,0),
	 (73,'ConsumableItem',3,4,0),
	 (74,'NetworkEquipment',40,5,0),
	 (75,'Printer',40,5,0),
	 (76,'Monitor',40,5,0),
	 (77,'Peripheral',40,5,0),
	 (78,'User',8,6,0),
	 (79,'Phone',31,1,0),
	 (80,'Phone',23,2,0);
INSERT INTO glpi_dev.glpi_displaypreferences (id,itemtype,num,`rank`,users_id) VALUES
	 (81,'Phone',3,3,0),
	 (82,'Phone',4,4,0),
	 (83,'Phone',40,5,0),
	 (84,'Phone',19,6,0),
	 (85,'Phone',7,7,0),
	 (86,'Group',16,1,0),
	 (87,'AllAssets',31,1,0),
	 (88,'ReservationItem',4,1,0),
	 (89,'ReservationItem',3,2,0),
	 (90,'Budget',3,2,0);
INSERT INTO glpi_dev.glpi_displaypreferences (id,itemtype,num,`rank`,users_id) VALUES
	 (91,'Software',72,4,0),
	 (92,'Software',163,5,0),
	 (93,'Budget',5,1,0),
	 (94,'Budget',4,3,0),
	 (95,'Budget',19,4,0),
	 (96,'CronTask',8,1,0),
	 (97,'CronTask',3,2,0),
	 (98,'CronTask',4,3,0),
	 (99,'CronTask',7,4,0),
	 (100,'RequestType',14,1,0);
INSERT INTO glpi_dev.glpi_displaypreferences (id,itemtype,num,`rank`,users_id) VALUES
	 (101,'RequestType',15,2,0),
	 (102,'NotificationTemplate',4,1,0),
	 (103,'NotificationTemplate',16,2,0),
	 (104,'Notification',5,1,0),
	 (105,'Notification',6,2,0),
	 (106,'Notification',2,3,0),
	 (107,'Notification',4,4,0),
	 (108,'Notification',80,5,0),
	 (109,'Notification',86,6,0),
	 (110,'MailCollector',2,1,0);
INSERT INTO glpi_dev.glpi_displaypreferences (id,itemtype,num,`rank`,users_id) VALUES
	 (111,'MailCollector',19,2,0),
	 (112,'AuthLDAP',3,1,0),
	 (113,'AuthLDAP',19,2,0),
	 (114,'AuthMail',3,1,0),
	 (115,'AuthMail',19,2,0),
	 (116,'IPNetwork',18,1,0),
	 (117,'WifiNetwork',10,1,0),
	 (118,'Profile',2,1,0),
	 (119,'Profile',3,2,0),
	 (120,'Profile',19,3,0);
INSERT INTO glpi_dev.glpi_displaypreferences (id,itemtype,num,`rank`,users_id) VALUES
	 (121,'Transfer',19,1,0),
	 (122,'TicketValidation',3,1,0),
	 (123,'TicketValidation',2,2,0),
	 (124,'TicketValidation',8,3,0),
	 (125,'TicketValidation',4,4,0),
	 (126,'TicketValidation',9,5,0),
	 (127,'TicketValidation',7,6,0),
	 (128,'NotImportedEmail',2,1,0),
	 (129,'NotImportedEmail',5,2,0),
	 (130,'NotImportedEmail',4,3,0);
INSERT INTO glpi_dev.glpi_displaypreferences (id,itemtype,num,`rank`,users_id) VALUES
	 (131,'NotImportedEmail',6,4,0),
	 (132,'NotImportedEmail',16,5,0),
	 (133,'NotImportedEmail',19,6,0),
	 (134,'RuleRightParameter',11,1,0),
	 (135,'Ticket',12,1,0),
	 (136,'Ticket',19,2,0),
	 (137,'Ticket',15,3,0),
	 (138,'Ticket',3,4,0),
	 (139,'Ticket',4,5,0),
	 (140,'Ticket',5,6,0);
INSERT INTO glpi_dev.glpi_displaypreferences (id,itemtype,num,`rank`,users_id) VALUES
	 (141,'Ticket',7,7,0),
	 (142,'Calendar',19,1,0),
	 (143,'Holiday',11,1,0),
	 (144,'Holiday',12,2,0),
	 (145,'Holiday',13,3,0),
	 (146,'SLA',4,1,0),
	 (147,'Ticket',18,8,0),
	 (148,'AuthLDAP',30,3,0),
	 (149,'AuthMail',6,3,0),
	 (150,'FQDN',11,1,0);
INSERT INTO glpi_dev.glpi_displaypreferences (id,itemtype,num,`rank`,users_id) VALUES
	 (151,'FieldUnicity',1,1,0),
	 (152,'FieldUnicity',80,2,0),
	 (153,'FieldUnicity',4,3,0),
	 (154,'FieldUnicity',3,4,0),
	 (155,'FieldUnicity',86,5,0),
	 (156,'FieldUnicity',30,6,0),
	 (157,'Problem',21,1,0),
	 (158,'Problem',12,2,0),
	 (159,'Problem',19,3,0),
	 (160,'Problem',15,4,0);
INSERT INTO glpi_dev.glpi_displaypreferences (id,itemtype,num,`rank`,users_id) VALUES
	 (161,'Problem',3,5,0),
	 (162,'Problem',7,6,0),
	 (163,'Problem',18,7,0),
	 (164,'Vlan',11,1,0),
	 (165,'TicketRecurrent',11,1,0),
	 (166,'TicketRecurrent',12,2,0),
	 (167,'TicketRecurrent',13,3,0),
	 (168,'TicketRecurrent',15,4,0),
	 (169,'TicketRecurrent',14,5,0),
	 (170,'Reminder',2,1,0);
INSERT INTO glpi_dev.glpi_displaypreferences (id,itemtype,num,`rank`,users_id) VALUES
	 (171,'Reminder',3,2,0),
	 (172,'Reminder',4,3,0),
	 (173,'Reminder',5,4,0),
	 (174,'Reminder',6,5,0),
	 (175,'Reminder',7,6,0),
	 (176,'IPNetwork',10,2,0),
	 (177,'IPNetwork',11,3,0),
	 (178,'IPNetwork',12,4,0),
	 (179,'IPNetwork',17,5,0),
	 (180,'NetworkName',12,1,0);
INSERT INTO glpi_dev.glpi_displaypreferences (id,itemtype,num,`rank`,users_id) VALUES
	 (181,'NetworkName',13,2,0),
	 (182,'RSSFeed',2,1,0),
	 (183,'RSSFeed',4,2,0),
	 (184,'RSSFeed',5,3,0),
	 (185,'RSSFeed',19,4,0),
	 (186,'RSSFeed',6,5,0),
	 (187,'RSSFeed',7,6,0),
	 (188,'Blacklist',12,1,0),
	 (189,'Blacklist',11,2,0),
	 (190,'ReservationItem',5,3,0);
INSERT INTO glpi_dev.glpi_displaypreferences (id,itemtype,num,`rank`,users_id) VALUES
	 (191,'QueueMail',16,1,0),
	 (192,'QueueMail',7,2,0),
	 (193,'QueueMail',20,3,0),
	 (194,'QueueMail',21,4,0),
	 (195,'QueueMail',22,5,0),
	 (196,'QueueMail',15,6,0),
	 (197,'Change',12,1,0),
	 (198,'Change',19,2,0),
	 (199,'Change',15,3,0),
	 (200,'Change',7,4,0);
INSERT INTO glpi_dev.glpi_displaypreferences (id,itemtype,num,`rank`,users_id) VALUES
	 (201,'Change',18,5,0),
	 (202,'Project',3,1,0),
	 (203,'Project',4,2,0),
	 (204,'Project',12,3,0),
	 (205,'Project',5,4,0),
	 (206,'Project',15,5,0),
	 (207,'Project',21,6,0),
	 (208,'ProjectState',12,1,0),
	 (209,'ProjectState',11,2,0),
	 (210,'ProjectTask',2,1,0);
INSERT INTO glpi_dev.glpi_displaypreferences (id,itemtype,num,`rank`,users_id) VALUES
	 (211,'ProjectTask',12,2,0),
	 (212,'ProjectTask',14,3,0),
	 (213,'ProjectTask',5,4,0),
	 (214,'ProjectTask',7,5,0),
	 (215,'ProjectTask',8,6,0),
	 (216,'ProjectTask',13,7,0),
	 (217,'CartridgeItem',9,5,0),
	 (218,'ConsumableItem',9,5,0),
	 (219,'ReservationItem',9,4,0),
	 (220,'SoftwareLicense',1,1,0);
INSERT INTO glpi_dev.glpi_displaypreferences (id,itemtype,num,`rank`,users_id) VALUES
	 (221,'SoftwareLicense',3,2,0),
	 (222,'SoftwareLicense',10,3,0),
	 (223,'SoftwareLicense',162,4,0),
	 (224,'SoftwareLicense',5,5,0),
	 (225,'SavedSearch',8,1,0),
	 (226,'SavedSearch',9,1,0),
	 (227,'SavedSearch',3,1,0),
	 (228,'SavedSearch',10,1,0),
	 (229,'SavedSearch',11,1,0),
	 (230,'Plugin',2,1,0);
INSERT INTO glpi_dev.glpi_displaypreferences (id,itemtype,num,`rank`,users_id) VALUES
	 (231,'Plugin',3,2,0),
	 (232,'Plugin',4,3,0),
	 (233,'Plugin',5,4,0),
	 (234,'Plugin',6,5,0),
	 (235,'Plugin',7,6,0),
	 (236,'Plugin',8,7,0),
	 (237,'Cluster',31,1,0),
	 (238,'Cluster',19,2,0),
	 (239,'Domain',3,1,0),
	 (240,'Domain',4,2,0);
INSERT INTO glpi_dev.glpi_displaypreferences (id,itemtype,num,`rank`,users_id) VALUES
	 (241,'Domain',2,3,0),
	 (242,'Domain',6,4,0),
	 (243,'Domain',7,5,0),
	 (244,'DomainRecord',2,1,0),
	 (245,'DomainRecord',3,2,0),
	 (246,'Appliance',2,1,0),
	 (247,'Appliance',3,2,0),
	 (248,'Appliance',4,3,0),
	 (249,'Appliance',5,4,0),
	 (250,'Lockedfield',3,1,0);
INSERT INTO glpi_dev.glpi_displaypreferences (id,itemtype,num,`rank`,users_id) VALUES
	 (251,'Lockedfield',13,2,0),
	 (252,'Lockedfield',5,3,0),
	 (253,'Unmanaged',2,1,0),
	 (254,'Unmanaged',4,2,0),
	 (255,'Unmanaged',3,3,0),
	 (256,'Unmanaged',5,4,0),
	 (257,'Unmanaged',7,5,0),
	 (258,'Unmanaged',10,6,0),
	 (259,'Unmanaged',18,7,0),
	 (260,'Unmanaged',14,8,0);
INSERT INTO glpi_dev.glpi_displaypreferences (id,itemtype,num,`rank`,users_id) VALUES
	 (261,'Unmanaged',15,9,0),
	 (262,'Unmanaged',9,10,0),
	 (263,'NetworkPortType',10,1,0),
	 (264,'NetworkPortType',11,2,0),
	 (265,'NetworkPortType',12,3,0),
	 (266,'NetworkPort',3,1,0),
	 (267,'NetworkPort',30,2,0),
	 (268,'NetworkPort',31,3,0),
	 (269,'NetworkPort',32,4,0),
	 (270,'NetworkPort',33,5,0);
INSERT INTO glpi_dev.glpi_displaypreferences (id,itemtype,num,`rank`,users_id) VALUES
	 (271,'NetworkPort',34,6,0),
	 (272,'NetworkPort',35,7,0),
	 (273,'NetworkPort',36,8,0),
	 (274,'NetworkPort',38,9,0),
	 (275,'NetworkPort',39,10,0),
	 (276,'NetworkPort',40,11,0),
	 (277,'USBVendor',10,1,0),
	 (278,'USBVendor',11,2,0),
	 (279,'PCIVendor',10,1,0),
	 (280,'PCIVendor',11,2,0);
INSERT INTO glpi_dev.glpi_displaypreferences (id,itemtype,num,`rank`,users_id) VALUES
	 (281,'Agent',2,1,0),
	 (282,'Agent',4,2,0),
	 (283,'Agent',10,3,0),
	 (284,'Agent',8,4,0),
	 (285,'Agent',11,5,0),
	 (286,'Agent',6,6,0),
	 (287,'Agent',15,7,0),
	 (288,'Database',2,1,0),
	 (289,'Database',3,2,0),
	 (290,'Database',6,3,0);
INSERT INTO glpi_dev.glpi_displaypreferences (id,itemtype,num,`rank`,users_id) VALUES
	 (291,'Database',9,4,0),
	 (292,'Database',10,5,0),
	 (293,'Glpi\\Socket',5,1,0),
	 (294,'Glpi\\Socket',6,2,0),
	 (295,'Glpi\\Socket',9,3,0),
	 (296,'Glpi\\Socket',8,4,0),
	 (297,'Glpi\\Socket',7,5,0),
	 (298,'Cable',4,1,0),
	 (299,'Cable',31,2,0),
	 (300,'Cable',6,3,0);
INSERT INTO glpi_dev.glpi_displaypreferences (id,itemtype,num,`rank`,users_id) VALUES
	 (301,'Cable',15,4,0),
	 (302,'Cable',24,5,0),
	 (303,'Cable',8,6,0),
	 (304,'Cable',10,7,0),
	 (305,'Cable',13,8,0),
	 (306,'Cable',14,9,0);
INSERT INTO glpi_dev.glpi_documents (id,entities_id,is_recursive,name,filename,filepath,documentcategories_id,mime,date_mod,comment,is_deleted,link,users_id,tickets_id,sha1sum,is_blacklisted,tag,date_creation) VALUES
	 (1,0,0,'IMG20221129125231.jpg','IMG20221129125231.jpg','JPG/8e/6dbff28c3665cab29f758bff8b20bc113d1665.JPG',0,'image/jpeg','2022-12-01 07:40:47',NULL,0,NULL,4,0,'8e6dbff28c3665cab29f758bff8b20bc113d1665',0,'1aa83514-7603856b-63884c6873dd99.32347836','2022-12-01 07:40:47'),
	 (2,0,0,'iris-flower-meaning-and-symbolism.jpg','iris-flower-meaning-and-symbolism.jpg','JPG/1d/b6495f8bd0a37ec162eb9090a9a54f5d810fab.JPG',0,'image/jpeg','2022-12-01 07:42:14',NULL,0,NULL,4,0,'1db6495f8bd0a37ec162eb9090a9a54f5d810fab',0,'1aa83514-7603856b-63884cb142bdc6.72287896','2022-12-01 07:42:14');
INSERT INTO glpi_dev.glpi_documenttypes (id,name,ext,icon,mime,is_uploadable,date_mod,comment,date_creation) VALUES
	 (1,'JPEG','jpg','jpg-dist.png',NULL,1,NULL,NULL,NULL),
	 (2,'PNG','png','png-dist.png',NULL,1,NULL,NULL,NULL),
	 (3,'GIF','gif','gif-dist.png',NULL,1,NULL,NULL,NULL),
	 (4,'BMP','bmp','bmp-dist.png',NULL,1,NULL,NULL,NULL),
	 (5,'Photoshop','psd','psd-dist.png',NULL,1,NULL,NULL,NULL),
	 (6,'TIFF','tif','tif-dist.png',NULL,1,NULL,NULL,NULL),
	 (7,'AIFF','aiff','aiff-dist.png',NULL,1,NULL,NULL,NULL),
	 (8,'Windows Media','asf','asf-dist.png',NULL,1,NULL,NULL,NULL),
	 (9,'Windows Media','avi','avi-dist.png',NULL,1,NULL,NULL,NULL),
	 (10,'BZip','bz2','bz2-dist.png',NULL,1,NULL,NULL,NULL);
INSERT INTO glpi_dev.glpi_documenttypes (id,name,ext,icon,mime,is_uploadable,date_mod,comment,date_creation) VALUES
	 (11,'Word','doc','doc-dist.png',NULL,1,NULL,NULL,NULL),
	 (12,'DjVu','djvu','',NULL,1,NULL,NULL,NULL),
	 (13,'PostScript','eps','ps-dist.png',NULL,1,NULL,NULL,NULL),
	 (14,'GZ','gz','gz-dist.png',NULL,1,NULL,NULL,NULL),
	 (15,'HTML','html','html-dist.png',NULL,1,NULL,NULL,NULL),
	 (16,'Midi','mid','mid-dist.png',NULL,1,NULL,NULL,NULL),
	 (17,'QuickTime','mov','mov-dist.png',NULL,1,NULL,NULL,NULL),
	 (18,'MP3','mp3','mp3-dist.png',NULL,1,NULL,NULL,NULL),
	 (19,'MPEG','mpg','mpg-dist.png',NULL,1,NULL,NULL,NULL),
	 (20,'Ogg Vorbis','ogg','ogg-dist.png',NULL,1,NULL,NULL,NULL);
INSERT INTO glpi_dev.glpi_documenttypes (id,name,ext,icon,mime,is_uploadable,date_mod,comment,date_creation) VALUES
	 (21,'PDF','pdf','pdf-dist.png',NULL,1,NULL,NULL,NULL),
	 (22,'PowerPoint','ppt','ppt-dist.png',NULL,1,NULL,NULL,NULL),
	 (23,'PostScript','ps','ps-dist.png',NULL,1,NULL,NULL,NULL),
	 (24,'QuickTime','qt','qt-dist.png',NULL,1,NULL,NULL,NULL),
	 (25,'RealAudio','ra','ra-dist.png',NULL,1,NULL,NULL,NULL),
	 (26,'RealAudio','ram','ram-dist.png',NULL,1,NULL,NULL,NULL),
	 (27,'RealAudio','rm','rm-dist.png',NULL,1,NULL,NULL,NULL),
	 (28,'RTF','rtf','rtf-dist.png',NULL,1,NULL,NULL,NULL),
	 (29,'StarOffice','sdd','sdd-dist.png',NULL,1,NULL,NULL,NULL),
	 (30,'StarOffice','sdw','sdw-dist.png',NULL,1,NULL,NULL,NULL);
INSERT INTO glpi_dev.glpi_documenttypes (id,name,ext,icon,mime,is_uploadable,date_mod,comment,date_creation) VALUES
	 (31,'Stuffit','sit','sit-dist.png',NULL,1,NULL,NULL,NULL),
	 (32,'OpenOffice Impress','sxi','sxi-dist.png',NULL,1,NULL,NULL,NULL),
	 (33,'OpenOffice','sxw','sxw-dist.png',NULL,1,NULL,NULL,NULL),
	 (34,'Flash','swf','swf-dist.png',NULL,1,NULL,NULL,NULL),
	 (35,'TGZ','tgz','tgz-dist.png',NULL,1,NULL,NULL,NULL),
	 (36,'texte','txt','txt-dist.png',NULL,1,NULL,NULL,NULL),
	 (37,'WAV','wav','wav-dist.png',NULL,1,NULL,NULL,NULL),
	 (38,'Excel','xls','xls-dist.png',NULL,1,NULL,NULL,NULL),
	 (39,'XML','xml','xml-dist.png',NULL,1,NULL,NULL,NULL),
	 (40,'Windows Media','wmv','wmv-dist.png',NULL,1,NULL,NULL,NULL);
INSERT INTO glpi_dev.glpi_documenttypes (id,name,ext,icon,mime,is_uploadable,date_mod,comment,date_creation) VALUES
	 (41,'Zip','zip','zip-dist.png',NULL,1,NULL,NULL,NULL),
	 (42,'MNG','mng','',NULL,1,NULL,NULL,NULL),
	 (43,'Adobe Illustrator','ai','ai-dist.png',NULL,1,NULL,NULL,NULL),
	 (44,'C source','c','c-dist.png',NULL,1,NULL,NULL,NULL),
	 (45,'Debian','deb','deb-dist.png',NULL,1,NULL,NULL,NULL),
	 (46,'DVI','dvi','dvi-dist.png',NULL,1,NULL,NULL,NULL),
	 (47,'C header','h','h-dist.png',NULL,1,NULL,NULL,NULL),
	 (48,'Pascal','pas','pas-dist.png',NULL,1,NULL,NULL,NULL),
	 (49,'RedHat/Mandrake/SuSE','rpm','rpm-dist.png',NULL,1,NULL,NULL,NULL),
	 (50,'OpenOffice Calc','sxc','sxc-dist.png',NULL,1,NULL,NULL,NULL);
INSERT INTO glpi_dev.glpi_documenttypes (id,name,ext,icon,mime,is_uploadable,date_mod,comment,date_creation) VALUES
	 (51,'LaTeX','tex','tex-dist.png',NULL,1,NULL,NULL,NULL),
	 (52,'GIMP multi-layer','xcf','xcf-dist.png',NULL,1,NULL,NULL,NULL),
	 (53,'JPEG','jpeg','jpg-dist.png',NULL,1,NULL,NULL,NULL),
	 (54,'Oasis Open Office Writer','odt','odt-dist.png',NULL,1,NULL,NULL,NULL),
	 (55,'Oasis Open Office Calc','ods','ods-dist.png',NULL,1,NULL,NULL,NULL),
	 (56,'Oasis Open Office Impress','odp','odp-dist.png',NULL,1,NULL,NULL,NULL),
	 (57,'Oasis Open Office Impress Template','otp','odp-dist.png',NULL,1,NULL,NULL,NULL),
	 (58,'Oasis Open Office Writer Template','ott','odt-dist.png',NULL,1,NULL,NULL,NULL),
	 (59,'Oasis Open Office Calc Template','ots','ods-dist.png',NULL,1,NULL,NULL,NULL),
	 (60,'Oasis Open Office Math','odf','odf-dist.png',NULL,1,NULL,NULL,NULL);
INSERT INTO glpi_dev.glpi_documenttypes (id,name,ext,icon,mime,is_uploadable,date_mod,comment,date_creation) VALUES
	 (61,'Oasis Open Office Draw','odg','odg-dist.png',NULL,1,NULL,NULL,NULL),
	 (62,'Oasis Open Office Draw Template','otg','odg-dist.png',NULL,1,NULL,NULL,NULL),
	 (63,'Oasis Open Office Base','odb','odb-dist.png',NULL,1,NULL,NULL,NULL),
	 (64,'Oasis Open Office HTML','oth','oth-dist.png',NULL,1,NULL,NULL,NULL),
	 (65,'Oasis Open Office Writer Master','odm','odm-dist.png',NULL,1,NULL,NULL,NULL),
	 (66,'Oasis Open Office Chart','odc','',NULL,1,NULL,NULL,NULL),
	 (67,'Oasis Open Office Image','odi','',NULL,1,NULL,NULL,NULL),
	 (68,'Word XML','docx','doc-dist.png',NULL,1,NULL,NULL,NULL),
	 (69,'Excel XML','xlsx','xls-dist.png',NULL,1,NULL,NULL,NULL),
	 (70,'PowerPoint XML','pptx','ppt-dist.png',NULL,1,NULL,NULL,NULL);
INSERT INTO glpi_dev.glpi_documenttypes (id,name,ext,icon,mime,is_uploadable,date_mod,comment,date_creation) VALUES
	 (71,'Comma-Separated Values','csv','csv-dist.png',NULL,1,NULL,NULL,NULL),
	 (72,'Scalable Vector Graphics','svg','svg-dist.png',NULL,1,NULL,NULL,NULL);
INSERT INTO glpi_dev.glpi_domainrecordtypes (id,name,fields,entities_id,is_recursive,comment) VALUES
	 (1,'A','[]',0,1,'Host address'),
	 (2,'AAAA','[]',0,1,'IPv6 host address'),
	 (3,'ALIAS','[]',0,1,'Auto resolved alias'),
	 (4,'CNAME','[{"key":"target","label":"Target","placeholder":"sip.example.com.","is_fqdn":true}]',0,1,'Canonical name for an alias'),
	 (5,'MX','[{"key":"priority","label":"Priority","placeholder":"10"},{"key":"server","label":"Server","placeholder":"mail.example.com.","is_fqdn":true}]',0,1,'Mail eXchange'),
	 (6,'NS','[]',0,1,'Name Server'),
	 (7,'PTR','[]',0,1,'Pointer'),
	 (8,'SOA','[{"key":"primary_name_server","label":"Primary name server","placeholder":"ns1.example.com.","is_fqdn":true},{"key":"primary_contact","label":"Primary contact","placeholder":"admin.example.com.","is_fqdn":true},{"key":"serial","label":"Serial","placeholder":"2020010101"},{"key":"zone_refresh_timer","label":"Zone refresh timer","placeholder":"86400"},{"key":"failed_refresh_retry_timer","label":"Failed refresh retry timer","placeholder":"7200"},{"key":"zone_expiry_timer","label":"Zone expiry timer","placeholder":"1209600"},{"key":"minimum_ttl","label":"Minimum TTL","placeholder":"300"}]',0,1,'Start Of Authority'),
	 (9,'SRV','[{"key":"priority","label":"Priority","placeholder":"0"},{"key":"weight","label":"Weight","placeholder":"10"},{"key":"port","label":"Port","placeholder":"5060"},{"key":"target","label":"Target","placeholder":"sip.example.com.","is_fqdn":true}]',0,1,'Location of service'),
	 (10,'TXT','[{"key":"data","label":"TXT record data","placeholder":"Your TXT record data","quote_value":true}]',0,1,'Descriptive text');
INSERT INTO glpi_dev.glpi_domainrecordtypes (id,name,fields,entities_id,is_recursive,comment) VALUES
	 (11,'CAA','[{"key":"flag","label":"Flag","placeholder":"0"},{"key":"tag","label":"Tag","placeholder":"issue"},{"key":"value","label":"Value","placeholder":"letsencrypt.org","quote_value":true}]',0,1,'Certification Authority Authorization');
INSERT INTO glpi_dev.glpi_domainrelations (id,name,entities_id,is_recursive,comment) VALUES
	 (1,'Belongs',0,1,'Item belongs to domain'),
	 (2,'Manage',0,1,'Item manages domain');
INSERT INTO glpi_dev.glpi_entities (id,name,entities_id,completename,comment,`level`,sons_cache,ancestors_cache,registration_number,address,postcode,town,state,country,website,phonenumber,fax,email,admin_email,admin_email_name,from_email,from_email_name,noreply_email,noreply_email_name,replyto_email,replyto_email_name,notification_subject_tag,ldap_dn,tag,authldaps_id,mail_domain,entity_ldapfilter,mailing_signature,cartridges_alert_repeat,consumables_alert_repeat,use_licenses_alert,send_licenses_alert_before_delay,use_certificates_alert,send_certificates_alert_before_delay,certificates_alert_repeat_interval,use_contracts_alert,send_contracts_alert_before_delay,use_infocoms_alert,send_infocoms_alert_before_delay,use_reservations_alert,use_domains_alert,send_domains_alert_close_expiries_delay,send_domains_alert_expired_delay,autoclose_delay,autopurge_delay,notclosed_delay,calendars_strategy,calendars_id,auto_assign_mode,tickettype,max_closedate,inquest_config,inquest_rate,inquest_delay,inquest_URL,autofill_warranty_date,autofill_use_date,autofill_buy_date,autofill_delivery_date,autofill_order_date,tickettemplates_strategy,tickettemplates_id,changetemplates_strategy,changetemplates_id,problemtemplates_strategy,problemtemplates_id,entities_strategy_software,entities_id_software,default_contract_alert,default_infocom_alert,default_cartridges_alarm_threshold,default_consumables_alarm_threshold,delay_send_emails,is_notif_enable_default,inquest_duration,date_mod,date_creation,autofill_decommission_date,suppliers_as_private,anonymize_support_agents,display_users_initials,contracts_strategy_default,contracts_id_default,enable_custom_css,custom_css_code,latitude,longitude,altitude,transfers_strategy,transfers_id,agent_base_url) VALUES
	 (0,'Root Entity',NULL,'Root Entity',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,-2,-2,-2,-10,-10,0,0,0,-10,1,'2022-11-19 09:58:07',1,100,0,NULL,'0','0','0','0','0',0,1,0,1,0,1,-10,0,0,0,10,10,0,1,0,'2022-11-19 09:58:07',NULL,'0',0,0,1,0,0,0,NULL,NULL,NULL,NULL,0,0,NULL);
INSERT INTO glpi_dev.glpi_entities_knowbaseitems (id,knowbaseitems_id,entities_id,is_recursive) VALUES
	 (1,9,0,1);
INSERT INTO glpi_dev.glpi_events (id,items_id,`type`,`date`,service,`level`,message) VALUES
	 (1,0,'system','2022-10-31 05:31:33','login',3,'glpi log in from IP ::1'),
	 (2,0,'system','2022-10-31 05:38:29','login',3,'glpi log in from IP ::1'),
	 (3,0,'system','2022-10-31 05:40:20','login',3,'glpi log in from IP ::1'),
	 (4,0,'system','2022-11-06 07:13:57','login',3,'glpi log in from IP ::1'),
	 (5,0,'system','2022-11-07 05:38:17','login',3,'glpi log in from IP ::1'),
	 (6,0,'system','2022-11-07 05:38:56','login',3,'post-only log in from IP ::1'),
	 (7,0,'system','2022-11-07 06:22:44','login',3,'glpi log in from IP ::1'),
	 (8,0,'system','2022-11-07 06:25:44','login',3,'glpi log in from IP ::1'),
	 (9,0,'system','2022-11-07 06:27:01','login',3,'post-only log in from IP ::1'),
	 (10,0,'system','2022-11-08 14:10:36','login',3,'post-only log in from IP ::1');
INSERT INTO glpi_dev.glpi_events (id,items_id,`type`,`date`,service,`level`,message) VALUES
	 (11,0,'system','2022-11-08 14:15:29','login',3,'glpi log in from IP ::1'),
	 (12,0,'system','2022-11-08 14:20:25','login',3,'post-only log in from IP ::1'),
	 (13,0,'system','2022-11-23 02:18:42','login',3,'glpi log in from IP ::1'),
	 (14,1,'knowbaseitem','2022-11-23 02:22:02','tools',4,'glpi adds a target'),
	 (15,1,'knowbaseitem','2022-11-23 02:22:02','tools',5,'glpi adds the item 1'),
	 (16,0,'system','2022-11-23 02:29:24','login',3,'post-only log in from IP ::1'),
	 (17,0,'system','2022-11-23 03:36:48','login',3,'tech log in from IP ::1'),
	 (18,0,'system','2022-11-23 03:38:39','login',3,'glpi log in from IP ::1'),
	 (19,0,'system','2022-11-23 03:41:37','login',3,'tech log in from IP ::1'),
	 (20,0,'system','2022-11-23 03:42:51','login',3,'glpi log in from IP ::1');
INSERT INTO glpi_dev.glpi_events (id,items_id,`type`,`date`,service,`level`,message) VALUES
	 (21,0,'system','2022-11-23 03:46:07','login',3,'tech log in from IP ::1'),
	 (22,0,'system','2022-11-23 03:54:29','login',3,'glpi log in from IP ::1'),
	 (23,7,'users','2022-11-23 03:59:18','setup',4,'glpi adds the item kb-manager'),
	 (24,0,'system','2022-11-23 03:59:36','login',3,'kb-manager log in from IP ::1'),
	 (25,0,'system','2022-11-23 03:59:59','login',3,'glpi log in from IP ::1'),
	 (26,0,'system','2022-11-23 04:01:18','login',3,'kb-manager log in from IP ::1'),
	 (27,2,'knowbaseitem','2022-11-23 04:12:43','tools',4,'kb-manager adds a target'),
	 (28,2,'knowbaseitem','2022-11-23 04:12:43','tools',5,'kb-manager adds the item 2'),
	 (29,0,'system','2022-11-26 07:20:39','login',3,'kb-manager log in from IP ::1'),
	 (30,0,'system','2022-11-26 07:21:19','login',3,'post-only log in from IP ::1');
INSERT INTO glpi_dev.glpi_events (id,items_id,`type`,`date`,service,`level`,message) VALUES
	 (31,0,'system','2022-11-26 07:26:20','login',3,'post-only log in from IP ::1'),
	 (32,0,'system','2022-11-26 07:27:35','login',3,'glpi log in from IP ::1'),
	 (33,0,'system','2022-11-26 07:34:27','login',3,'glpi log in from IP ::1'),
	 (34,0,'system','2022-11-26 07:34:56','login',3,'post-only log in from IP ::1'),
	 (35,0,'system','2022-11-26 07:36:21','login',3,'tech log in from IP ::1'),
	 (36,0,'system','2022-11-26 08:38:10','login',3,'glpi log in from IP ::1'),
	 (37,0,'system','2022-11-26 08:39:06','login',3,'tech log in from IP ::1'),
	 (38,0,'system','2022-11-26 08:39:47','login',3,'tech log in from IP ::1'),
	 (39,0,'system','2022-11-26 08:50:58','login',3,'glpi log in from IP ::1'),
	 (40,1,'slms','2022-11-26 08:58:34','setup',4,'glpi adds the item Sla contoh');
INSERT INTO glpi_dev.glpi_events (id,items_id,`type`,`date`,service,`level`,message) VALUES
	 (41,71,'rules','2022-11-26 09:07:06','setup',4,'glpi adds the item 71'),
	 (42,75,'rules','2022-11-26 10:02:22','setup',4,'glpi adds the item 75'),
	 (43,75,'rules','2022-11-26 10:02:34','setup',4,'glpi Updates an Item'),
	 (44,75,'rules','2022-11-26 10:02:52','setup',4,'glpi Updates an Item'),
	 (45,76,'rules','2022-11-26 10:06:00','setup',4,'glpi adds the item 76'),
	 (46,0,'system','2022-11-26 11:02:57','login',3,'Failed login for  from IP ::1'),
	 (47,0,'system','2022-11-26 11:03:00','login',3,'Failed login for  from IP ::1'),
	 (48,0,'system','2022-11-26 11:03:11','login',3,'Failed login for tech from IP ::1'),
	 (49,0,'system','2022-11-26 11:09:38','login',3,'Failed login for kb-managet from IP ::1'),
	 (50,0,'system','2022-11-26 11:09:47','login',3,'glpi log in from IP ::1');
INSERT INTO glpi_dev.glpi_events (id,items_id,`type`,`date`,service,`level`,message) VALUES
	 (51,75,'rules','2022-11-26 13:03:54','setup',4,'glpi adds the item 75'),
	 (52,76,'rules','2022-11-26 13:53:15','setup',4,'glpi adds the item 76'),
	 (53,77,'rules','2022-11-26 13:56:00','setup',4,'glpi adds the item 77'),
	 (54,78,'rules','2022-11-26 13:58:32','setup',4,'glpi adds the item 78'),
	 (55,0,'system','2022-11-27 11:44:58','login',3,'glpi log in from IP ::1'),
	 (56,0,'system','2022-11-27 11:45:22','login',3,'post-only log in from IP ::1'),
	 (57,0,'system','2022-11-27 11:45:47','login',3,'glpi log in from IP ::1'),
	 (58,1,'ticket','2022-11-27 11:46:55','tracking',4,'post-only adds the item 1'),
	 (59,2,'ticket','2022-11-27 11:49:48','tracking',4,'post-only adds the item 2'),
	 (60,77,'rules','2022-11-27 11:57:53','setup',4,'glpi Updates an Item');
INSERT INTO glpi_dev.glpi_events (id,items_id,`type`,`date`,service,`level`,message) VALUES
	 (61,3,'ticket','2022-11-27 12:03:29','tracking',4,'post-only adds the item 3'),
	 (62,4,'ticket','2022-11-27 12:04:43','tracking',4,'post-only adds the item 4'),
	 (63,75,'rules','2022-11-27 12:05:51','setup',4,'glpi Updates an Item'),
	 (64,5,'ticket','2022-11-27 12:06:17','tracking',4,'post-only adds the item 5'),
	 (65,0,'system','2022-11-28 04:30:40','login',3,'post-only log in from IP ::1'),
	 (66,0,'system','2022-11-28 04:31:27','login',3,'glpi log in from IP ::1'),
	 (67,17,'users','2022-11-28 05:00:49','setup',4,'glpi adds the item kb-manager'),
	 (68,0,'system','2022-11-28 05:01:18','login',3,'kb-manager log in from IP ::1'),
	 (69,2,'knowbaseitem','2022-11-28 05:02:01','tools',4,'kb-manager adds a target'),
	 (70,0,'system','2022-11-28 05:02:20','login',3,'post-only log in from IP ::1');
INSERT INTO glpi_dev.glpi_events (id,items_id,`type`,`date`,service,`level`,message) VALUES
	 (71,0,'system','2022-11-28 05:07:55','login',3,'tech log in from IP ::1'),
	 (72,2,'groups','2022-11-28 05:09:43','setup',4,'glpi adds a user to a group'),
	 (73,0,'system','2022-11-28 05:10:38','login',3,'tech log in from IP ::1'),
	 (74,0,'system','2022-11-28 05:12:42','login',3,'Failed login for admin from IP ::1'),
	 (75,0,'system','2022-11-28 05:12:52','login',3,'glpi log in from IP ::1'),
	 (76,18,'users','2022-11-28 05:18:09','setup',4,'glpi adds the item operator1'),
	 (77,0,'system','2022-11-28 05:18:32','login',3,'operator1 log in from IP ::1'),
	 (78,0,'system','2022-11-30 11:36:20','login',3,'operator1 log in from IP ::1'),
	 (79,0,'system','2022-11-30 11:49:17','login',3,'glpi log in from IP ::1'),
	 (80,0,'system','2022-11-30 11:52:44','login',3,'operator1 log in from IP ::1');
INSERT INTO glpi_dev.glpi_events (id,items_id,`type`,`date`,service,`level`,message) VALUES
	 (81,0,'system','2022-11-30 11:54:47','login',3,'tech log in from IP ::1'),
	 (82,0,'system','2022-11-30 11:55:09','login',3,'glpi log in from IP ::1'),
	 (83,0,'system','2022-11-30 11:55:27','login',3,'post-only log in from IP ::1'),
	 (84,9,'groups','2022-11-30 11:58:48','setup',4,'glpi adds the item All Profile'),
	 (85,2,'knowbaseitem','2022-11-30 12:02:57','tools',4,'glpi adds a target'),
	 (86,0,'system','2022-11-30 12:04:37','login',3,'kb-manager log in from IP ::1'),
	 (87,0,'system','2022-11-30 12:04:58','login',3,'tech log in from IP ::1'),
	 (88,3,'knowbaseitem','2022-11-30 12:06:43','tools',4,'tech adds a target'),
	 (89,3,'knowbaseitem','2022-11-30 12:06:43','tools',5,'tech adds the item 3'),
	 (90,0,'system','2022-11-30 19:38:45','login',3,'glpi log in from IP ::1');
INSERT INTO glpi_dev.glpi_events (id,items_id,`type`,`date`,service,`level`,message) VALUES
	 (91,0,'system','2022-11-30 19:39:55','login',3,'tech log in from IP ::1'),
	 (92,0,'system','2022-11-30 19:40:28','login',3,'glpi log in from IP ::1'),
	 (93,0,'system','2022-11-30 19:42:04','login',3,'Failed login for tech from IP ::1'),
	 (94,0,'system','2022-11-30 19:42:12','login',3,'tech log in from IP ::1'),
	 (95,0,'system','2022-11-30 19:42:49','login',3,'operator1 log in from IP ::1'),
	 (96,3,'knowbaseitem','2022-11-30 19:43:52','tools',4,'tech adds a target'),
	 (97,4,'knowbaseitem','2022-11-30 19:46:09','tools',4,'tech adds a target'),
	 (98,4,'knowbaseitem','2022-11-30 19:46:09','tools',5,'tech adds the item 4'),
	 (99,4,'knowbaseitem','2022-11-30 19:46:27','tools',4,'tech adds a target'),
	 (100,0,'system','2022-11-30 19:48:52','login',3,'post-only log in from IP ::1');
INSERT INTO glpi_dev.glpi_events (id,items_id,`type`,`date`,service,`level`,message) VALUES
	 (101,0,'system','2022-11-30 19:49:20','login',3,'glpi log in from IP ::1'),
	 (102,0,'system','2022-11-30 19:49:32','login',3,'tech log in from IP ::1'),
	 (103,3,'knowbaseitem','2022-11-30 19:50:04','tools',4,'tech adds a target'),
	 (104,0,'system','2022-11-30 19:50:37','login',3,'Failed login for post-only from IP ::1'),
	 (105,0,'system','2022-11-30 19:50:47','login',3,'post-only log in from IP ::1'),
	 (106,0,'system','2022-11-30 19:51:20','login',3,'glpi log in from IP ::1'),
	 (107,0,'system','2022-11-30 19:53:10','login',3,'Failed login for kiefer from IP ::1'),
	 (108,0,'system','2022-11-30 19:53:18','login',3,'Failed login for kiefer from IP ::1'),
	 (109,0,'system','2022-11-30 19:53:37','login',3,'tech log in from IP ::1'),
	 (110,0,'system','2022-11-30 19:55:18','login',3,'operator1 log in from IP ::1');
INSERT INTO glpi_dev.glpi_events (id,items_id,`type`,`date`,service,`level`,message) VALUES
	 (111,0,'system','2022-11-30 19:56:21','login',3,'glpi log in from IP ::1'),
	 (112,0,'system','2022-11-30 20:01:39','login',3,'tech log in from IP ::1'),
	 (113,0,'system','2022-11-30 20:02:25','login',3,'operator1 log in from IP ::1'),
	 (114,4,'knowbaseitem','2022-11-30 20:03:24','tools',4,'operator1 adds a target'),
	 (115,0,'system','2022-11-30 20:05:29','login',3,'kb-manager log in from IP ::1'),
	 (116,5,'knowbaseitem','2022-11-30 20:07:33','tools',4,'kb-manager adds a target'),
	 (117,5,'knowbaseitem','2022-11-30 20:07:33','tools',5,'kb-manager adds the item 5'),
	 (118,5,'knowbaseitem','2022-11-30 20:08:05','tools',4,'kb-manager adds a target'),
	 (119,0,'system','2022-11-30 20:08:37','login',3,'operator1 log in from IP ::1'),
	 (120,5,'knowbaseitem','2022-11-30 20:09:03','tools',5,'operator1 Updates an Item');
INSERT INTO glpi_dev.glpi_events (id,items_id,`type`,`date`,service,`level`,message) VALUES
	 (121,0,'system','2022-11-30 20:09:59','login',3,'kb-manager log in from IP ::1'),
	 (122,2,'knowbaseitem','2022-11-30 20:10:43','tools',4,'kb-manager adds a target'),
	 (123,0,'system','2022-11-30 20:11:19','login',3,'operator1 log in from IP ::1'),
	 (124,0,'system','2022-11-30 20:12:43','login',3,'tech log in from IP ::1'),
	 (125,0,'system','2022-11-30 20:14:37','login',3,'kb-manager log in from IP ::1'),
	 (126,5,'knowbaseitem','2022-11-30 20:14:59','tools',5,'kb-manager Updates an Item'),
	 (127,5,'knowbaseitem','2022-11-30 20:15:14','tools',4,'kb-manager adds a target'),
	 (128,0,'system','2022-11-30 20:15:31','login',3,'tech log in from IP ::1'),
	 (129,0,'system','2022-11-30 20:15:59','login',3,'post-only log in from IP ::1'),
	 (130,0,'system','2022-11-30 20:16:22','login',3,'Failed login for  from IP ::1');
INSERT INTO glpi_dev.glpi_events (id,items_id,`type`,`date`,service,`level`,message) VALUES
	 (131,0,'system','2022-11-30 20:17:20','login',3,'tech log in from IP ::1'),
	 (132,3,'knowbaseitem','2022-11-30 20:17:55','tools',5,'tech updates an item'),
	 (133,0,'system','2022-11-30 20:18:07','login',3,'post-only log in from IP ::1'),
	 (134,0,'system','2022-11-30 20:18:31','login',3,'glpi log in from IP ::1'),
	 (135,0,'system','2022-11-30 20:18:48','login',3,'glpi log in from IP ::1'),
	 (136,0,'system','2022-11-30 20:20:31','login',3,'glpi log in from IP ::1'),
	 (137,0,'system','2022-11-30 20:20:41','login',3,'glpi log in from IP ::1'),
	 (138,0,'system','2022-11-30 20:24:41','login',3,'tech log in from IP ::1'),
	 (139,0,'system','2022-11-30 20:29:22','login',3,'glpi log in from IP ::1'),
	 (140,0,'system','2022-11-30 20:33:32','login',3,'operator1 log in from IP ::1');
INSERT INTO glpi_dev.glpi_events (id,items_id,`type`,`date`,service,`level`,message) VALUES
	 (141,0,'system','2022-11-30 20:34:02','login',3,'glpi log in from IP ::1'),
	 (142,0,'system','2022-11-30 20:34:30','login',3,'operator1 log in from IP ::1'),
	 (143,0,'system','2022-11-30 20:35:27','login',3,'operator1 log in from IP ::1'),
	 (144,0,'system','2022-11-30 20:36:08','login',3,'operator1 log in from IP ::1'),
	 (145,0,'system','2022-11-30 20:36:52','login',3,'tech log in from IP ::1'),
	 (146,0,'system','2022-11-30 20:38:00','login',3,'operator1 log in from IP ::1'),
	 (147,6,'knowbaseitem','2022-11-30 20:40:12','tools',4,'operator1 adds a target'),
	 (148,6,'knowbaseitem','2022-11-30 20:40:12','tools',5,'operator1 adds the item 6'),
	 (149,6,'knowbaseitem','2022-11-30 20:40:25','tools',4,'operator1 adds a target'),
	 (150,0,'system','2022-11-30 20:40:46','login',3,'kb-manager log in from IP ::1');
INSERT INTO glpi_dev.glpi_events (id,items_id,`type`,`date`,service,`level`,message) VALUES
	 (151,6,'knowbaseitem','2022-11-30 20:41:06','tools',5,'kb-manager Updates an Item'),
	 (152,6,'knowbaseitem','2022-11-30 20:41:18','tools',5,'kb-manager Updates an Item'),
	 (153,6,'knowbaseitem','2022-11-30 20:41:38','tools',4,'kb-manager adds a target'),
	 (154,0,'system','2022-11-30 20:41:50','login',3,'post-only log in from IP ::1'),
	 (155,0,'system','2022-11-30 20:42:03','login',3,'tech log in from IP ::1'),
	 (156,0,'system','2022-11-30 20:42:30','login',3,'kb-manager log in from IP ::1'),
	 (157,0,'system','2022-11-30 20:42:37','login',3,'operator1 log in from IP ::1'),
	 (158,7,'knowbaseitem','2022-11-30 20:43:50','tools',4,'operator1 adds a target'),
	 (159,7,'knowbaseitem','2022-11-30 20:43:50','tools',5,'operator1 adds the item 7'),
	 (160,0,'system','2022-11-30 20:44:07','login',3,'kb-manager log in from IP ::1');
INSERT INTO glpi_dev.glpi_events (id,items_id,`type`,`date`,service,`level`,message) VALUES
	 (161,7,'knowbaseitem','2022-11-30 20:44:25','tools',5,'kb-manager Updates an Item'),
	 (162,0,'system','2022-11-30 20:44:42','login',3,'post-only log in from IP ::1'),
	 (163,0,'system','2022-11-30 20:45:07','login',3,'operator1 log in from IP ::1'),
	 (164,0,'system','2022-11-30 20:45:29','login',3,'kb-manager log in from IP ::1'),
	 (165,7,'knowbaseitem','2022-11-30 20:45:53','tools',4,'kb-manager adds a target'),
	 (166,7,'knowbaseitem','2022-11-30 20:46:04','tools',4,'kb-manager adds a target'),
	 (167,7,'knowbaseitem','2022-11-30 20:46:15','tools',4,'kb-manager adds a target'),
	 (168,6,'knowbaseitem','2022-11-30 20:46:46','tools',4,'kb-manager adds a target'),
	 (169,0,'system','2022-11-30 20:46:57','login',3,'tech log in from IP ::1'),
	 (170,0,'system','2022-11-30 20:48:13','login',3,'kb-manager log in from IP ::1');
INSERT INTO glpi_dev.glpi_events (id,items_id,`type`,`date`,service,`level`,message) VALUES
	 (171,3,'knowbaseitem','2022-11-30 20:49:08','tools',5,'kb-manager Updates an Item'),
	 (172,0,'system','2022-11-30 20:49:24','login',3,'tech log in from IP ::1'),
	 (173,1,'knowbaseitem','2022-11-30 20:50:19','tools',5,'tech purges an item'),
	 (174,0,'system','2022-12-01 02:28:48','login',3,'tech log in from IP ::1'),
	 (175,0,'system','2022-12-01 02:29:03','login',3,'glpi log in from IP ::1'),
	 (176,0,'system','2022-12-01 02:42:12','login',3,'glpi log in from IP ::1'),
	 (177,0,'system','2022-12-01 02:43:23','login',3,'operator1 log in from IP ::1'),
	 (178,0,'system','2022-12-01 02:44:07','login',3,'glpi log in from IP ::1'),
	 (179,0,'system','2022-12-01 02:44:37','login',3,'operator1 log in from IP ::1'),
	 (180,0,'system','2022-12-01 02:45:06','login',3,'tech log in from IP ::1');
INSERT INTO glpi_dev.glpi_events (id,items_id,`type`,`date`,service,`level`,message) VALUES
	 (181,8,'knowbaseitem','2022-12-01 02:46:31','tools',4,'tech adds a target'),
	 (182,8,'knowbaseitem','2022-12-01 02:46:31','tools',5,'tech adds the item 8'),
	 (183,8,'knowbaseitem','2022-12-01 02:46:48','tools',5,'tech updates an item'),
	 (184,0,'system','2022-12-01 02:46:59','login',3,'kb-manager log in from IP ::1'),
	 (185,8,'knowbaseitem','2022-12-01 02:47:38','tools',5,'kb-manager Updates an Item'),
	 (186,8,'knowbaseitem','2022-12-01 02:48:26','tools',5,'kb-manager Updates an Item'),
	 (187,0,'system','2022-12-01 02:48:34','login',3,'tech log in from IP ::1'),
	 (188,0,'system','2022-12-01 02:48:56','login',3,'kb-manager log in from IP ::1'),
	 (189,8,'knowbaseitem','2022-12-01 02:49:13','tools',4,'kb-manager adds a target'),
	 (190,8,'knowbaseitem','2022-12-01 02:49:28','tools',4,'kb-manager adds a target');
INSERT INTO glpi_dev.glpi_events (id,items_id,`type`,`date`,service,`level`,message) VALUES
	 (191,8,'knowbaseitem','2022-12-01 02:49:41','tools',4,'kb-manager adds a target'),
	 (192,0,'system','2022-12-01 02:49:52','login',3,'tech log in from IP ::1'),
	 (193,0,'system','2022-12-01 02:51:56','login',3,'kb-manager log in from IP ::1'),
	 (194,0,'system','2022-12-01 02:53:24','login',3,'glpi log in from IP ::1'),
	 (195,0,'system','2022-12-01 02:54:27','login',3,'tech log in from IP ::1'),
	 (196,9,'knowbaseitem','2022-12-01 02:55:00','tools',4,'tech adds a target'),
	 (197,9,'knowbaseitem','2022-12-01 02:55:00','tools',5,'tech adds the item 9'),
	 (198,0,'system','2022-12-01 02:55:16','login',3,'post-only log in from IP ::1'),
	 (199,0,'system','2022-12-01 02:55:30','login',3,'kb-manager log in from IP ::1'),
	 (200,9,'knowbaseitem','2022-12-01 02:55:43','tools',5,'kb-manager Updates an Item');
INSERT INTO glpi_dev.glpi_events (id,items_id,`type`,`date`,service,`level`,message) VALUES
	 (201,0,'system','2022-12-01 02:55:51','login',3,'post-only log in from IP ::1'),
	 (202,0,'system','2022-12-01 02:56:08','login',3,'tech log in from IP ::1'),
	 (203,0,'system','2022-12-01 03:00:31','login',3,'glpi log in from IP ::1'),
	 (204,0,'system','2022-12-01 07:14:14','login',3,'glpi log in from IP ::1'),
	 (205,0,'system','2022-12-01 07:14:25','login',3,'operator1 log in from IP ::1'),
	 (206,5,'ticket','2022-12-01 07:15:23','tracking',4,'operator1 Deletes an Item'),
	 (207,0,'system','2022-12-01 07:15:55','login',3,'post-only log in from IP ::1'),
	 (208,0,'system','2022-12-01 07:17:20','login',3,'Failed login for tech from IP ::1'),
	 (209,0,'system','2022-12-01 07:17:29','login',3,'tech log in from IP ::1'),
	 (210,0,'system','2022-12-01 07:18:56','login',3,'kb-manager log in from IP ::1');
INSERT INTO glpi_dev.glpi_events (id,items_id,`type`,`date`,service,`level`,message) VALUES
	 (211,0,'system','2022-12-01 07:20:25','login',3,'glpi log in from IP ::1'),
	 (212,0,'system','2022-12-01 07:23:12','login',3,'tech log in from IP ::1'),
	 (213,0,'system','2022-12-01 07:24:53','login',3,'tech log in from IP ::1'),
	 (214,0,'system','2022-12-01 07:25:42','login',3,'tech log in from IP ::1'),
	 (215,0,'system','2022-12-01 07:26:24','login',3,'tech log in from IP ::1'),
	 (216,0,'system','2022-12-01 07:26:50','login',3,'tech log in from IP ::1'),
	 (217,0,'system','2022-12-01 07:27:37','login',3,'tech log in from IP ::1'),
	 (218,0,'system','2022-12-01 07:27:50','login',3,'operator1 log in from IP ::1'),
	 (219,4,'ticket','2022-12-01 07:28:49','tracking',4,'operator1 Updates an Item'),
	 (220,0,'system','2022-12-01 07:30:43','login',3,'operator1 log in from IP ::1');
INSERT INTO glpi_dev.glpi_events (id,items_id,`type`,`date`,service,`level`,message) VALUES
	 (221,0,'system','2022-12-01 07:31:08','login',3,'tech log in from IP ::1'),
	 (222,0,'system','2022-12-01 07:31:41','login',3,'operator1 log in from IP ::1'),
	 (223,4,'ticket','2022-12-01 07:32:11','tracking',4,'operator1 Updates an Item'),
	 (224,4,'ticket','2022-12-01 07:32:21','tracking',4,'operator1 Updates an Item'),
	 (225,12,'users','2022-12-01 07:34:05','setup',4,'glpi adds a user to an entity'),
	 (226,15,'users','2022-12-01 07:34:34','setup',4,'glpi adds a user to an entity'),
	 (227,16,'users','2022-12-01 07:35:19','setup',4,'glpi adds a user to an entity'),
	 (228,13,'users','2022-12-01 07:35:41','setup',4,'glpi adds a user to an entity'),
	 (229,18,'users','2022-12-01 07:36:31','setup',4,'glpi adds a user to a group'),
	 (230,10,'users','2022-12-01 07:37:20','setup',4,'glpi adds a user to an entity');
INSERT INTO glpi_dev.glpi_events (id,items_id,`type`,`date`,service,`level`,message) VALUES
	 (231,14,'users','2022-12-01 07:37:34','setup',4,'glpi adds a user to an entity'),
	 (232,11,'users','2022-12-01 07:37:44','setup',4,'glpi adds a user to an entity'),
	 (233,0,'system','2022-12-01 07:38:21','login',3,'operator1 log in from IP ::1'),
	 (234,3,'ticket','2022-12-01 07:39:15','tracking',4,'operator1 Updates an Item'),
	 (235,0,'system','2022-12-01 07:40:00','login',3,'tech log in from IP ::1'),
	 (236,4,'ticket','2022-12-01 07:40:47','tracking',4,'tech adds a followup'),
	 (237,4,'ticket','2022-12-01 07:42:14','tracking',4,'tech updates a followup'),
	 (238,4,'ticket','2022-12-01 07:46:23','tracking',4,'tech updates a followup'),
	 (239,0,'system','2022-12-01 07:46:59','login',3,'glpi log in from IP ::1'),
	 (240,0,'system','2022-12-01 07:48:58','login',3,'operator1 log in from IP ::1');
INSERT INTO glpi_dev.glpi_events (id,items_id,`type`,`date`,service,`level`,message) VALUES
	 (241,4,'ticket','2022-12-01 07:49:32','tracking',4,'operator1 purges a followup'),
	 (242,0,'system','2022-12-01 07:57:51','login',3,'operator1 log in from IP ::1'),
	 (243,2,'ticket','2022-12-01 07:58:33','tracking',4,'operator1 adds a followup'),
	 (244,0,'system','2022-12-01 08:17:11','login',3,'post-only log in from IP ::1'),
	 (245,2,'ticket','2022-12-01 08:17:32','tracking',4,'post-only approves or refuses a solution'),
	 (246,0,'system','2022-12-01 08:20:34','login',3,'post-only log in from IP ::1'),
	 (247,0,'ticket','2022-12-01 08:20:57','tracking',4,'post-only approves or refuses a solution'),
	 (248,1,'ticket','2022-12-01 08:21:13','tracking',4,'post-only approves or refuses a solution'),
	 (249,0,'system','2022-12-01 08:21:34','login',3,'operator1 log in from IP ::1'),
	 (250,0,'system','2022-12-01 08:22:53','login',3,'post-only log in from IP ::1');
INSERT INTO glpi_dev.glpi_events (id,items_id,`type`,`date`,service,`level`,message) VALUES
	 (251,1,'ticket','2022-12-01 08:23:18','tracking',4,'post-only approves or refuses a solution'),
	 (252,0,'system','2022-12-01 08:24:18','login',3,'glpi log in from IP ::1'),
	 (253,0,'system','2022-12-01 08:29:36','login',3,'glpi log in from IP ::1'),
	 (254,0,'system','2022-12-01 08:44:21','login',3,'tech log in from IP ::1');
INSERT INTO glpi_dev.glpi_filesystems (id,name,comment,date_mod,date_creation) VALUES
	 (1,'ext',NULL,NULL,NULL),
	 (2,'ext2',NULL,NULL,NULL),
	 (3,'ext3',NULL,NULL,NULL),
	 (4,'ext4',NULL,NULL,NULL),
	 (5,'FAT',NULL,NULL,NULL),
	 (6,'FAT32',NULL,NULL,NULL),
	 (7,'VFAT',NULL,NULL,NULL),
	 (8,'HFS',NULL,NULL,NULL),
	 (9,'HPFS',NULL,NULL,NULL),
	 (10,'HTFS',NULL,NULL,NULL);
INSERT INTO glpi_dev.glpi_filesystems (id,name,comment,date_mod,date_creation) VALUES
	 (11,'JFS',NULL,NULL,NULL),
	 (12,'JFS2',NULL,NULL,NULL),
	 (13,'NFS',NULL,NULL,NULL),
	 (14,'NTFS',NULL,NULL,NULL),
	 (15,'ReiserFS',NULL,NULL,NULL),
	 (16,'SMBFS',NULL,NULL,NULL),
	 (17,'UDF',NULL,NULL,NULL),
	 (18,'UFS',NULL,NULL,NULL),
	 (19,'XFS',NULL,NULL,NULL),
	 (20,'ZFS',NULL,NULL,NULL);
INSERT INTO glpi_dev.glpi_filesystems (id,name,comment,date_mod,date_creation) VALUES
	 (21,'APFS',NULL,NULL,NULL);
INSERT INTO glpi_dev.glpi_groups (id,entities_id,is_recursive,name,comment,ldap_field,ldap_value,ldap_group_dn,date_mod,groups_id,completename,`level`,ancestors_cache,sons_cache,is_requester,is_watcher,is_assign,is_task,is_notify,is_itemgroup,is_usergroup,is_manager,date_creation) VALUES
	 (1,0,0,'Operator','',NULL,NULL,NULL,'2022-11-14 04:49:20',0,'Operator',1,'[]','{"1":1}',1,1,1,1,1,1,1,1,'2022-11-14 04:49:20'),
	 (2,0,0,'Tim Teknis','',NULL,NULL,NULL,'2022-11-14 04:57:58',0,'Tim Teknis',1,'[]','{"2":2,"6":6,"3":3,"4":4,"5":5}',0,0,1,1,1,1,1,1,'2022-11-14 04:57:58'),
	 (3,0,0,'IPD','',NULL,NULL,NULL,'2022-11-14 04:58:18',2,'Tim Teknis > IPD',2,'{"2":2}',NULL,0,0,1,1,1,1,1,1,'2022-11-14 04:58:18'),
	 (4,0,0,'JKD','',NULL,NULL,NULL,'2022-11-14 04:58:41',2,'Tim Teknis > JKD',2,'{"2":2}',NULL,0,0,1,1,1,1,1,1,'2022-11-14 04:58:41'),
	 (5,0,0,'PTI','',NULL,NULL,NULL,'2022-11-14 04:59:03',2,'Tim Teknis > PTI',2,'{"2":2}','{"5":5}',0,0,1,1,1,1,1,1,'2022-11-14 04:59:03'),
	 (6,0,0,'InSis','',NULL,NULL,NULL,'2022-11-14 04:59:14',2,'Tim Teknis > InSis',2,'{"2":2}','{"6":6}',0,0,1,1,1,1,1,1,'2022-11-14 04:59:14'),
	 (7,0,0,'Admin','',NULL,NULL,NULL,'2022-11-14 05:00:40',0,'Admin',1,'[]',NULL,1,1,1,1,1,1,1,1,'2022-11-14 05:00:40'),
	 (8,0,0,'Knowledge Base Manager','',NULL,NULL,NULL,'2022-11-14 05:01:06',0,'Knowledge Base Manager',1,'[]','{"8":8}',1,1,1,1,1,1,1,1,'2022-11-14 05:01:06'),
	 (9,0,0,'All Profile','',NULL,NULL,NULL,'2022-11-30 11:58:48',0,'All Profile',1,'[]','{"9":9}',1,1,1,1,1,1,1,1,'2022-11-30 11:58:48');
INSERT INTO glpi_dev.glpi_groups_knowbaseitems (id,knowbaseitems_id,groups_id,entities_id,is_recursive,no_entity_restriction) VALUES
	 (1,2,2,0,0,0),
	 (2,2,9,0,0,0),
	 (3,3,2,0,0,0),
	 (4,4,2,0,0,0);
INSERT INTO glpi_dev.glpi_groups_users (id,users_id,groups_id,is_dynamic,is_manager,is_userdelegate) VALUES
	 (1,7,6,0,0,0),
	 (3,10,6,0,0,0),
	 (4,11,3,0,0,0),
	 (5,12,3,0,0,0),
	 (6,13,4,0,0,0),
	 (7,14,4,0,0,0),
	 (8,15,5,0,0,0),
	 (9,16,5,0,0,0),
	 (10,4,2,0,0,0),
	 (11,18,1,0,0,0);
INSERT INTO glpi_dev.glpi_interfacetypes (id,name,comment,date_mod,date_creation) VALUES
	 (1,'IDE',NULL,NULL,NULL),
	 (2,'SATA',NULL,NULL,NULL),
	 (3,'SCSI',NULL,NULL,NULL),
	 (4,'USB',NULL,NULL,NULL),
	 (5,'AGP',NULL,NULL,NULL),
	 (6,'PCI',NULL,NULL,NULL),
	 (7,'PCIe',NULL,NULL,NULL),
	 (8,'PCI-X',NULL,NULL,NULL);
INSERT INTO glpi_dev.glpi_itilcategories (id,entities_id,is_recursive,itilcategories_id,name,completename,comment,`level`,knowbaseitemcategories_id,users_id,groups_id,code,ancestors_cache,sons_cache,is_helpdeskvisible,tickettemplates_id_incident,tickettemplates_id_demand,changetemplates_id,problemtemplates_id,is_incident,is_request,is_problem,is_change,date_mod,date_creation) VALUES
	 (1,0,0,0,'Layanan Crawling Informasi','Layanan Crawling Informasi','',1,0,0,0,'','[]',NULL,1,0,0,0,0,1,1,0,0,'2022-10-05 11:23:53','2022-10-05 11:23:53'),
	 (2,0,0,0,'Layanan Aplikasi Monitoring/Dashboard','Layanan Aplikasi Monitoring/Dashboard','',1,0,0,0,'','[]',NULL,1,0,0,0,0,1,1,0,0,'2022-10-05 11:24:38','2022-10-05 11:24:38'),
	 (3,0,0,0,'Layanan Aplikasi Data Capture','Layanan Aplikasi Data Capture','',1,0,0,0,'','[]',NULL,1,0,0,0,0,1,1,0,0,'2022-10-05 11:25:02','2022-10-05 11:25:02'),
	 (4,0,0,0,'Layanan Aplikasi Sensus/Survei','Layanan Aplikasi Sensus/Survei','',1,0,0,0,'','[]',NULL,1,0,0,0,0,1,1,0,0,'2022-10-05 11:35:31','2022-10-05 11:25:39'),
	 (5,0,0,0,'Layanan Konsultasi','Layanan Konsultasi','',1,0,0,0,'','[]',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 11:31:36','2022-10-05 11:31:36'),
	 (7,0,0,1,'Insiden perubahan requirement','Layanan Crawling Informasi > Insiden perubahan requirement','',2,0,0,0,'','{"1":1}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 11:39:05','2022-10-05 11:39:05'),
	 (8,0,0,0,'Layanan Koneksi Jaringan','Layanan Koneksi Jaringan','',1,0,0,0,'','[]',NULL,1,0,0,0,0,1,1,0,0,'2022-10-05 11:44:38','2022-10-05 11:44:38'),
	 (9,0,0,0,'Layanan Infrastruktur &#38; Platform Jaringan','Layanan Infrastruktur &#38; Platform Jaringan','',1,0,0,0,'','[]',NULL,1,0,0,0,0,1,1,0,0,'2022-10-05 11:50:32','2022-10-05 11:50:32'),
	 (10,0,0,0,'Layanan Aplikasi Jaringan','Layanan Aplikasi Jaringan','',1,0,0,0,'','[]',NULL,1,0,0,0,0,1,1,0,0,'2022-10-05 11:50:43','2022-10-05 11:50:43'),
	 (11,0,0,0,'Layanan Keamanan Jaringan','Layanan Keamanan Jaringan','',1,0,0,0,'','[]',NULL,1,0,0,0,0,1,1,0,0,'2022-10-05 11:50:56','2022-10-05 11:50:56');
INSERT INTO glpi_dev.glpi_itilcategories (id,entities_id,is_recursive,itilcategories_id,name,completename,comment,`level`,knowbaseitemcategories_id,users_id,groups_id,code,ancestors_cache,sons_cache,is_helpdeskvisible,tickettemplates_id_incident,tickettemplates_id_demand,changetemplates_id,problemtemplates_id,is_incident,is_request,is_problem,is_change,date_mod,date_creation) VALUES
	 (12,0,0,0,'Layanan Piranti Lunak COTS','Layanan Piranti Lunak COTS','',1,0,0,0,'','[]',NULL,1,0,0,0,0,1,1,0,0,'2022-10-05 11:56:06','2022-10-05 11:56:06'),
	 (13,0,0,0,'Layanan Perangkat Keras','Layanan Perangkat Keras','',1,0,0,0,'','[]',NULL,1,0,0,0,0,1,1,0,0,'2022-10-05 11:56:20','2022-10-05 11:56:20'),
	 (14,0,0,0,'Layanan Back Office Selindo','Layanan Back Office Selindo','',1,0,0,0,'','[]',NULL,1,0,0,0,0,1,1,0,0,'2022-10-05 11:56:35','2022-10-05 11:56:35'),
	 (15,0,0,0,'Layanan Sistem Informasi Manajemen','Layanan Sistem Informasi Manajemen','',1,0,0,0,'','[]',NULL,1,0,0,0,0,1,1,0,0,'2022-10-05 11:56:46','2022-10-05 11:56:46'),
	 (16,0,0,0,'Layanan Meeting Online','Layanan Meeting Online','',1,0,0,0,'','[]',NULL,1,0,0,0,0,1,1,0,0,'2022-10-05 11:56:58','2022-10-05 11:56:58'),
	 (17,0,0,0,'Layanan WhatsApp Business','Layanan WhatsApp Business','',1,0,0,0,'','[]',NULL,1,0,0,0,0,1,1,0,0,'2022-10-05 11:57:11','2022-10-05 11:57:11'),
	 (18,0,0,0,'Layanan Pengelolaan E-Sign','Layanan Pengelolaan E-Sign','',1,0,0,0,'','[]',NULL,1,0,0,0,0,1,1,0,0,'2022-10-05 11:57:26','2022-10-05 11:57:26'),
	 (19,0,0,0,'Layanan Data','Layanan Data','',1,0,0,0,'','[]',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 11:58:04','2022-10-05 11:58:04'),
	 (20,0,0,0,'Layanan Elearning BPS','Layanan Elearning BPS','',1,0,0,0,'','[]',NULL,1,0,0,0,0,1,1,0,0,'2022-10-05 11:59:26','2022-10-05 11:59:26'),
	 (21,0,0,0,'Layanan Kaizala','Layanan Kaizala','',1,0,0,0,'','[]',NULL,1,0,0,0,0,1,1,0,0,'2022-10-05 11:59:38','2022-10-05 11:59:38');
INSERT INTO glpi_dev.glpi_itilcategories (id,entities_id,is_recursive,itilcategories_id,name,completename,comment,`level`,knowbaseitemcategories_id,users_id,groups_id,code,ancestors_cache,sons_cache,is_helpdeskvisible,tickettemplates_id_incident,tickettemplates_id_demand,changetemplates_id,problemtemplates_id,is_incident,is_request,is_problem,is_change,date_mod,date_creation) VALUES
	 (22,0,0,0,'Layanan OMS','Layanan OMS','',1,0,0,0,'','[]',NULL,1,0,0,0,0,1,1,0,0,'2022-10-05 11:59:52','2022-10-05 11:59:52'),
	 (23,0,0,0,'Layanan Duplikasi HaloSIS','Layanan Duplikasi HaloSIS','',1,0,0,0,'','[]',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 12:01:15','2022-10-05 12:01:15'),
	 (24,0,0,1,'Permintaan crawling data/informasi','Layanan Crawling Informasi > Permintaan crawling data/informasi','',2,0,0,0,'','{"1":1}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-06 10:33:13','2022-10-06 10:33:13'),
	 (25,0,0,1,'Permintaan pelatihan pembuatan robot','Layanan Crawling Informasi > Permintaan pelatihan pembuatan robot','',2,0,0,0,'','{"1":1}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-06 10:33:37','2022-10-06 10:33:37'),
	 (26,0,0,2,'Kegiatan survei rutin','Layanan Aplikasi Monitoring/Dashboard > Kegiatan survei rutin','',2,0,0,0,'','{"2":2}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-06 10:34:18','2022-10-06 10:34:18'),
	 (27,0,0,2,'Kegiatan sensus Non Survei','Layanan Aplikasi Monitoring/Dashboard > Kegiatan sensus Non Survei','',2,0,0,0,'','{"2":2}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-06 10:34:45','2022-10-06 10:34:45'),
	 (28,0,0,26,'Permintaan pembangunan aplikasi','Layanan Aplikasi Monitoring/Dashboard > Kegiatan survei rutin > Permintaan pembangunan aplikasi','',3,0,0,0,'','{"2":2,"26":26}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-06 10:35:17','2022-10-06 10:35:17'),
	 (29,0,0,26,'Permintaan pengembangan aplikasi','Layanan Aplikasi Monitoring/Dashboard > Kegiatan survei rutin > Permintaan pengembangan aplikasi','',3,0,0,0,'','{"2":2,"26":26}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-06 10:35:45','2022-10-06 10:35:45'),
	 (30,0,0,27,'Permintaan pembangunan aplikasi','Layanan Aplikasi Monitoring/Dashboard > Kegiatan sensus Non Survei > Permintaan pembangunan aplikasi','',3,0,0,0,'','{"2":2,"27":27}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-06 10:36:11','2022-10-06 10:36:11'),
	 (31,0,0,27,'Permintaan pengembangan aplikasi','Layanan Aplikasi Monitoring/Dashboard > Kegiatan sensus Non Survei > Permintaan pengembangan aplikasi','',3,0,0,0,'','{"2":2,"27":27}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-06 10:36:40','2022-10-06 10:36:40');
INSERT INTO glpi_dev.glpi_itilcategories (id,entities_id,is_recursive,itilcategories_id,name,completename,comment,`level`,knowbaseitemcategories_id,users_id,groups_id,code,ancestors_cache,sons_cache,is_helpdeskvisible,tickettemplates_id_incident,tickettemplates_id_demand,changetemplates_id,problemtemplates_id,is_incident,is_request,is_problem,is_change,date_mod,date_creation) VALUES
	 (32,0,0,3,'Permintaan pembangunan aplikasi','Layanan Aplikasi Data Capture > Permintaan pembangunan aplikasi','',2,0,0,0,'','{"3":3}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-06 10:37:17','2022-10-06 10:37:17'),
	 (33,0,0,5,'Permintaan Konsultasi terkait Pengolahan Data','Layanan Konsultasi > Permintaan Konsultasi terkait Pengolahan Data','',2,0,0,0,'','{"5":5}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-06 10:37:48','2022-10-06 10:37:48'),
	 (34,0,0,5,'Permintaan Konsultasi Jaringan','Layanan Konsultasi > Permintaan Konsultasi Jaringan','',2,0,0,0,'','{"5":5}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-06 10:38:12','2022-10-06 10:38:12'),
	 (35,0,0,19,'Pengolahan Data Sensus/Survei yang Sedang Berlangsung','Layanan Data > Pengolahan Data Sensus/Survei yang Sedang Berlangsung','',2,0,0,0,'','{"19":19}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-06 10:41:05','2022-10-06 10:41:05'),
	 (36,0,0,35,'Permintaan kompilasi','Layanan Data > Pengolahan Data Sensus/Survei yang Sedang Berlangsung > Permintaan kompilasi','',3,0,0,0,'','{"19":19,"35":35}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-06 10:41:38','2022-10-06 10:41:38'),
	 (37,0,0,35,'Permintaan pemrosesan','Layanan Data > Pengolahan Data Sensus/Survei yang Sedang Berlangsung > Permintaan pemrosesan','',3,0,0,0,'','{"19":19,"35":35}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-06 10:42:14','2022-10-06 10:42:14'),
	 (38,0,0,35,'Permintaan tabulasi','Layanan Data > Pengolahan Data Sensus/Survei yang Sedang Berlangsung > Permintaan tabulasi','',3,0,0,0,'','{"19":19,"35":35}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-06 10:42:34','2022-10-06 10:42:34'),
	 (39,0,0,4,'Aplikasi Direktorat Pengembangan Metodologi Sensus dan Survei','Layanan Aplikasi Sensus/Survei > Aplikasi Direktorat Pengembangan Metodologi Sensus dan Survei','',2,0,0,0,'','{"4":4}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-06 10:43:29','2022-10-06 10:43:29'),
	 (40,0,0,39,'Permintaan pembangunan aplikasi','Layanan Aplikasi Sensus/Survei > Aplikasi Direktorat Pengembangan Metodologi Sensus dan Survei > Permintaan pembangunan aplikasi','',3,0,0,0,'','{"4":4,"39":39}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-06 10:44:07','2022-10-06 10:44:07'),
	 (41,0,0,39,'Permintaan pengembangan aplikasi','Layanan Aplikasi Sensus/Survei > Aplikasi Direktorat Pengembangan Metodologi Sensus dan Survei > Permintaan pengembangan aplikasi','',3,0,0,0,'','{"4":4,"39":39}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-06 10:44:29','2022-10-06 10:44:29');
INSERT INTO glpi_dev.glpi_itilcategories (id,entities_id,is_recursive,itilcategories_id,name,completename,comment,`level`,knowbaseitemcategories_id,users_id,groups_id,code,ancestors_cache,sons_cache,is_helpdeskvisible,tickettemplates_id_incident,tickettemplates_id_demand,changetemplates_id,problemtemplates_id,is_incident,is_request,is_problem,is_change,date_mod,date_creation) VALUES
	 (42,0,0,4,'Aplikasi Direktorat Diseminasi Statistik','Layanan Aplikasi Sensus/Survei > Aplikasi Direktorat Diseminasi Statistik','',2,0,0,0,'','{"4":4}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-06 10:44:57','2022-10-06 10:44:57'),
	 (43,0,0,42,'Permintaan pembangunan aplikasi','Layanan Aplikasi Sensus/Survei > Aplikasi Direktorat Diseminasi Statistik > Permintaan pembangunan aplikasi','',3,0,0,0,'','{"4":4,"42":42}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-06 10:45:51','2022-10-06 10:45:51'),
	 (44,0,0,42,'Permintaan pengembangan aplikasi','Layanan Aplikasi Sensus/Survei > Aplikasi Direktorat Diseminasi Statistik > Permintaan pengembangan aplikasi','',3,0,0,0,'','{"4":4,"42":42}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-06 10:46:30','2022-10-06 10:46:30'),
	 (45,0,0,4,'Aplikasi Direktorat Statistik Kependudukan dan Ketenagakerjaan','Layanan Aplikasi Sensus/Survei > Aplikasi Direktorat Statistik Kependudukan dan Ketenagakerjaan','',2,0,0,0,'','{"4":4}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-06 10:47:03','2022-10-06 10:47:03'),
	 (46,0,0,45,'Permintaan pembangunan aplikasi','Layanan Aplikasi Sensus/Survei > Aplikasi Direktorat Statistik Kependudukan dan Ketenagakerjaan > Permintaan pembangunan aplikasi','',3,0,0,0,'','{"4":4,"45":45}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-06 10:47:24','2022-10-06 10:47:24'),
	 (47,0,0,45,'Permintaan pengembangan aplikasi','Layanan Aplikasi Sensus/Survei > Aplikasi Direktorat Statistik Kependudukan dan Ketenagakerjaan > Permintaan pengembangan aplikasi','',3,0,0,0,'','{"4":4,"45":45}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-06 10:47:47','2022-10-06 10:47:47'),
	 (48,0,0,4,'Aplikasi Direktorat Statistik Kesejahteraan Rakyat','Layanan Aplikasi Sensus/Survei > Aplikasi Direktorat Statistik Kesejahteraan Rakyat','',2,0,0,0,'','{"4":4}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-06 10:48:14','2022-10-06 10:48:14'),
	 (49,0,0,48,'Permintaan pembangunan aplikasi','Layanan Aplikasi Sensus/Survei > Aplikasi Direktorat Statistik Kesejahteraan Rakyat > Permintaan pembangunan aplikasi','',3,0,0,0,'','{"4":4,"48":48}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-06 10:48:36','2022-10-06 10:48:36'),
	 (50,0,0,48,'Permintaan pengembangan aplikasi','Layanan Aplikasi Sensus/Survei > Aplikasi Direktorat Statistik Kesejahteraan Rakyat > Permintaan pengembangan aplikasi','',3,0,0,0,'','{"4":4,"48":48}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-06 10:48:55','2022-10-06 10:48:55'),
	 (51,0,0,4,'Aplikasi Direktorat Statistik Ketahanan Sosial','Layanan Aplikasi Sensus/Survei > Aplikasi Direktorat Statistik Ketahanan Sosial','',2,0,0,0,'','{"4":4}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-06 10:49:16','2022-10-06 10:49:16');
INSERT INTO glpi_dev.glpi_itilcategories (id,entities_id,is_recursive,itilcategories_id,name,completename,comment,`level`,knowbaseitemcategories_id,users_id,groups_id,code,ancestors_cache,sons_cache,is_helpdeskvisible,tickettemplates_id_incident,tickettemplates_id_demand,changetemplates_id,problemtemplates_id,is_incident,is_request,is_problem,is_change,date_mod,date_creation) VALUES
	 (52,0,0,51,'Permintaan pembangunan aplikasi','Layanan Aplikasi Sensus/Survei > Aplikasi Direktorat Statistik Ketahanan Sosial > Permintaan pembangunan aplikasi','',3,0,0,0,'','{"4":4,"51":51}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-06 10:49:34','2022-10-06 10:49:34'),
	 (53,0,0,51,'Permintaan pengembangan aplikasi','Layanan Aplikasi Sensus/Survei > Aplikasi Direktorat Statistik Ketahanan Sosial > Permintaan pengembangan aplikasi','',3,0,0,0,'','{"4":4,"51":51}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-06 10:49:57','2022-10-06 10:49:57'),
	 (54,0,0,4,'Aplikasi Direktorat Statistik Tanaman Pangan, Hortikultura, dan Perkebunan','Layanan Aplikasi Sensus/Survei > Aplikasi Direktorat Statistik Tanaman Pangan, Hortikultura, dan Perkebunan','',2,0,0,0,'','{"4":4}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-06 10:50:34','2022-10-06 10:50:34'),
	 (55,0,0,54,'Permintaan pembangunan aplikasi','Layanan Aplikasi Sensus/Survei > Aplikasi Direktorat Statistik Tanaman Pangan, Hortikultura, dan Perkebunan > Permintaan pembangunan aplikasi','',3,0,0,0,'','{"4":4,"54":54}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-06 10:50:55','2022-10-06 10:50:55'),
	 (56,0,0,54,'Permintaan pengembangan aplikasi','Layanan Aplikasi Sensus/Survei > Aplikasi Direktorat Statistik Tanaman Pangan, Hortikultura, dan Perkebunan > Permintaan pengembangan aplikasi','',3,0,0,0,'','{"4":4,"54":54}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-06 10:51:12','2022-10-06 10:51:12'),
	 (57,0,0,4,'Aplikasi Direktorat Statistik Peternakan, Perikanan, dan Kehutanan','Layanan Aplikasi Sensus/Survei > Aplikasi Direktorat Statistik Peternakan, Perikanan, dan Kehutanan','',2,0,0,0,'','{"4":4}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-06 10:51:36','2022-10-06 10:51:36'),
	 (58,0,0,57,'Permintaan pembangunan aplikasi','Layanan Aplikasi Sensus/Survei > Aplikasi Direktorat Statistik Peternakan, Perikanan, dan Kehutanan > Permintaan pembangunan aplikasi','',3,0,0,0,'','{"4":4,"57":57}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-06 10:52:01','2022-10-06 10:52:01'),
	 (59,0,0,57,'Permintaan pengembangan aplikasi','Layanan Aplikasi Sensus/Survei > Aplikasi Direktorat Statistik Peternakan, Perikanan, dan Kehutanan > Permintaan pengembangan aplikasi','',3,0,0,0,'','{"4":4,"57":57}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-06 10:52:32','2022-10-06 10:52:32'),
	 (60,0,0,4,'Aplikasi Direktorat Statistik Industri','Layanan Aplikasi Sensus/Survei > Aplikasi Direktorat Statistik Industri','',2,0,0,0,'','{"4":4}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-06 10:53:01','2022-10-06 10:53:01'),
	 (61,0,0,60,'Permintaan pembangunan aplikasi','Layanan Aplikasi Sensus/Survei > Aplikasi Direktorat Statistik Industri > Permintaan pembangunan aplikasi','',3,0,0,0,'','{"4":4,"60":60}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-06 10:53:27','2022-10-06 10:53:27');
INSERT INTO glpi_dev.glpi_itilcategories (id,entities_id,is_recursive,itilcategories_id,name,completename,comment,`level`,knowbaseitemcategories_id,users_id,groups_id,code,ancestors_cache,sons_cache,is_helpdeskvisible,tickettemplates_id_incident,tickettemplates_id_demand,changetemplates_id,problemtemplates_id,is_incident,is_request,is_problem,is_change,date_mod,date_creation) VALUES
	 (62,0,0,60,'Permintaan pengembangan aplikasi','Layanan Aplikasi Sensus/Survei > Aplikasi Direktorat Statistik Industri > Permintaan pengembangan aplikasi','',3,0,0,0,'','{"4":4,"60":60}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-06 10:53:49','2022-10-06 10:53:49'),
	 (63,0,0,4,'Aplikasi Direktorat Statistik Distribusi','Layanan Aplikasi Sensus/Survei > Aplikasi Direktorat Statistik Distribusi','',2,0,0,0,'','{"4":4}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-06 10:54:08','2022-10-06 10:54:08'),
	 (64,0,0,63,'Permintaan pembangunan aplikasi','Layanan Aplikasi Sensus/Survei > Aplikasi Direktorat Statistik Distribusi > Permintaan pembangunan aplikasi','',3,0,0,0,'','{"4":4,"63":63}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-06 10:54:29','2022-10-06 10:54:29'),
	 (65,0,0,63,'Permintaan pengembangan aplikasi','Layanan Aplikasi Sensus/Survei > Aplikasi Direktorat Statistik Distribusi > Permintaan pengembangan aplikasi','',3,0,0,0,'','{"4":4,"63":63}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-06 10:54:47','2022-10-06 10:54:47'),
	 (66,0,0,4,'Aplikasi Direktorat Statistik Harga','Layanan Aplikasi Sensus/Survei > Aplikasi Direktorat Statistik Harga','',2,0,0,0,'','{"4":4}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-06 10:55:12','2022-10-06 10:55:12'),
	 (67,0,0,66,'Permintaan pembangunan aplikasi','Layanan Aplikasi Sensus/Survei > Aplikasi Direktorat Statistik Harga > Permintaan pembangunan aplikasi','',3,0,0,0,'','{"4":4,"66":66}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-06 10:55:35','2022-10-06 10:55:35'),
	 (68,0,0,66,'Permintaan pengembangan aplikasi','Layanan Aplikasi Sensus/Survei > Aplikasi Direktorat Statistik Harga > Permintaan pengembangan aplikasi','',3,0,0,0,'','{"4":4,"66":66}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-06 10:55:55','2022-10-06 10:55:55'),
	 (69,0,0,4,'Aplikasi Direktorat Statistik Keuangan, Teknologi Informasi, dan Pariwisata','Layanan Aplikasi Sensus/Survei > Aplikasi Direktorat Statistik Keuangan, Teknologi Informasi, dan Pariwisata','',2,0,0,0,'','{"4":4}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-06 10:56:19','2022-10-06 10:56:19'),
	 (70,0,0,69,'Permintaan pembangunan aplikasi','Layanan Aplikasi Sensus/Survei > Aplikasi Direktorat Statistik Keuangan, Teknologi Informasi, dan Pariwisata > Permintaan pembangunan aplikasi','',3,0,0,0,'','{"4":4,"69":69}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-06 10:56:41','2022-10-06 10:56:41'),
	 (71,0,0,69,'Permintaan pengembangan aplikasi','Layanan Aplikasi Sensus/Survei > Aplikasi Direktorat Statistik Keuangan, Teknologi Informasi, dan Pariwisata > Permintaan pengembangan aplikasi','',3,0,0,0,'','{"4":4,"69":69}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-06 10:56:59','2022-10-06 10:56:59');
INSERT INTO glpi_dev.glpi_itilcategories (id,entities_id,is_recursive,itilcategories_id,name,completename,comment,`level`,knowbaseitemcategories_id,users_id,groups_id,code,ancestors_cache,sons_cache,is_helpdeskvisible,tickettemplates_id_incident,tickettemplates_id_demand,changetemplates_id,problemtemplates_id,is_incident,is_request,is_problem,is_change,date_mod,date_creation) VALUES
	 (72,0,0,4,'Aplikasi Direktorat Neraca Produksi','Layanan Aplikasi Sensus/Survei > Aplikasi Direktorat Neraca Produksi','',2,0,0,0,'','{"4":4}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-06 10:57:21','2022-10-06 10:57:21'),
	 (73,0,0,72,'Permintaan pembangunan aplikasi','Layanan Aplikasi Sensus/Survei > Aplikasi Direktorat Neraca Produksi > Permintaan pembangunan aplikasi','',3,0,0,0,'','{"4":4,"72":72}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-06 10:57:58','2022-10-06 10:57:58'),
	 (74,0,0,72,'Permintaan pengembangan aplikasi','Layanan Aplikasi Sensus/Survei > Aplikasi Direktorat Neraca Produksi > Permintaan pengembangan aplikasi','',3,0,0,0,'','{"4":4,"72":72}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-06 10:58:27','2022-10-06 10:58:27'),
	 (75,0,0,4,'Aplikasi Direktorat Neraca Pengeluaran','Layanan Aplikasi Sensus/Survei > Aplikasi Direktorat Neraca Pengeluaran','',2,0,0,0,'','{"4":4}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-06 10:58:49','2022-10-06 10:58:49'),
	 (76,0,0,75,'Permintaan pembangunan aplikasi','Layanan Aplikasi Sensus/Survei > Aplikasi Direktorat Neraca Pengeluaran > Permintaan pembangunan aplikasi','',3,0,0,0,'','{"4":4,"75":75}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-06 10:59:18','2022-10-06 10:59:18'),
	 (77,0,0,75,'Permintaan pengembangan aplikasi','Layanan Aplikasi Sensus/Survei > Aplikasi Direktorat Neraca Pengeluaran > Permintaan pengembangan aplikasi','',3,0,0,0,'','{"4":4,"75":75}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-06 10:59:38','2022-10-06 10:59:38'),
	 (78,0,0,4,'Aplikasi Direktorat Analisis dan Pengembangan Statistik','Layanan Aplikasi Sensus/Survei > Aplikasi Direktorat Analisis dan Pengembangan Statistik','',2,0,0,0,'','{"4":4}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-06 11:00:00','2022-10-06 11:00:00'),
	 (79,0,0,78,'Permintaan pembangunan aplikasi','Layanan Aplikasi Sensus/Survei > Aplikasi Direktorat Analisis dan Pengembangan Statistik > Permintaan pembangunan aplikasi','',3,0,0,0,'','{"4":4,"78":78}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-06 11:00:19','2022-10-06 11:00:19'),
	 (80,0,0,78,'Permintaan pengembangan aplikasi','Layanan Aplikasi Sensus/Survei > Aplikasi Direktorat Analisis dan Pengembangan Statistik > Permintaan pengembangan aplikasi','',3,0,0,0,'','{"4":4,"78":78}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-06 11:00:36','2022-10-06 11:00:36'),
	 (81,0,0,1,'Insiden pembuatan robot','Layanan Crawling Informasi > Insiden pembuatan robot','',2,0,0,0,'','{"1":1}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-06 11:04:10','2022-10-06 11:04:10');
INSERT INTO glpi_dev.glpi_itilcategories (id,entities_id,is_recursive,itilcategories_id,name,completename,comment,`level`,knowbaseitemcategories_id,users_id,groups_id,code,ancestors_cache,sons_cache,is_helpdeskvisible,tickettemplates_id_incident,tickettemplates_id_demand,changetemplates_id,problemtemplates_id,is_incident,is_request,is_problem,is_change,date_mod,date_creation) VALUES
	 (82,0,0,2,'Insiden penggunaan dashboard kegiatan survei rutin','Layanan Aplikasi Monitoring/Dashboard > Insiden penggunaan dashboard kegiatan survei rutin','',2,0,0,0,'','{"2":2}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-06 11:05:55','2022-10-06 11:05:55'),
	 (83,0,0,2,'Insiden penggunaan dashboard kegiatan non-survei','Layanan Aplikasi Monitoring/Dashboard > Insiden penggunaan dashboard kegiatan non-survei','',2,0,0,0,'','{"2":2}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-06 11:06:11','2022-10-06 11:06:11'),
	 (84,0,0,3,'Insiden penggunaan aplikasi','Layanan Aplikasi Data Capture > Insiden penggunaan aplikasi','',2,0,0,0,'','{"3":3}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-06 11:06:41','2022-10-06 11:06:41'),
	 (85,0,0,4,'Insiden penggunaan aplikasi Direktorat Pengembangan Metodologi Sensus dan Survei','Layanan Aplikasi Sensus/Survei > Insiden penggunaan aplikasi Direktorat Pengembangan Metodologi Sensus dan Survei','',2,0,0,0,'','{"4":4}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-06 11:07:11','2022-10-06 11:07:11'),
	 (86,0,0,4,'Insiden penggunaan aplikasi Direktorat Diseminasi Statistik','Layanan Aplikasi Sensus/Survei > Insiden penggunaan aplikasi Direktorat Diseminasi Statistik','',2,0,0,0,'','{"4":4}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-06 11:07:34','2022-10-06 11:07:34'),
	 (87,0,0,4,'Insiden penggunaan aplikasi Direktorat Statistik Kependudukan dan Ketenagakerjaan','Layanan Aplikasi Sensus/Survei > Insiden penggunaan aplikasi Direktorat Statistik Kependudukan dan Ketenagakerjaan','',2,0,0,0,'','{"4":4}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-06 11:08:07','2022-10-06 11:08:07'),
	 (88,0,0,4,'Insiden penggunaan aplikasi Direktorat Statistik Kesejahteraan Rakyat','Layanan Aplikasi Sensus/Survei > Insiden penggunaan aplikasi Direktorat Statistik Kesejahteraan Rakyat','',2,0,0,0,'','{"4":4}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-06 11:08:24','2022-10-06 11:08:24'),
	 (89,0,0,4,'Insiden penggunaan aplikasi Direktorat Statistik Ketahanan Sosial','Layanan Aplikasi Sensus/Survei > Insiden penggunaan aplikasi Direktorat Statistik Ketahanan Sosial','',2,0,0,0,'','{"4":4}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-06 11:08:46','2022-10-06 11:08:46'),
	 (90,0,0,4,'Insiden penggunaan aplikasi Direktorat Statistik Tanaman Pangan, Hortikultura, dan Perkebunan','Layanan Aplikasi Sensus/Survei > Insiden penggunaan aplikasi Direktorat Statistik Tanaman Pangan, Hortikultura, dan Perkebunan','',2,0,0,0,'','{"4":4}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-06 11:09:01','2022-10-06 11:09:01'),
	 (91,0,0,4,'Insiden penggunaan aplikasi Direktorat Statistik Peternakan, Perikanan, dan Kehutanan','Layanan Aplikasi Sensus/Survei > Insiden penggunaan aplikasi Direktorat Statistik Peternakan, Perikanan, dan Kehutanan','',2,0,0,0,'','{"4":4}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-06 11:09:17','2022-10-06 11:09:17');
INSERT INTO glpi_dev.glpi_itilcategories (id,entities_id,is_recursive,itilcategories_id,name,completename,comment,`level`,knowbaseitemcategories_id,users_id,groups_id,code,ancestors_cache,sons_cache,is_helpdeskvisible,tickettemplates_id_incident,tickettemplates_id_demand,changetemplates_id,problemtemplates_id,is_incident,is_request,is_problem,is_change,date_mod,date_creation) VALUES
	 (92,0,0,4,'Insiden penggunaan aplikasi Direktorat Statistik Industri','Layanan Aplikasi Sensus/Survei > Insiden penggunaan aplikasi Direktorat Statistik Industri','',2,0,0,0,'','{"4":4}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-06 11:09:33','2022-10-06 11:09:33'),
	 (93,0,0,4,'Insiden penggunaan aplikasi Direktorat Statistik Distribusi','Layanan Aplikasi Sensus/Survei > Insiden penggunaan aplikasi Direktorat Statistik Distribusi','',2,0,0,0,'','{"4":4}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-06 11:09:47','2022-10-06 11:09:47'),
	 (94,0,0,4,'Insiden penggunaan aplikasi Direktorat Statistik Harga','Layanan Aplikasi Sensus/Survei > Insiden penggunaan aplikasi Direktorat Statistik Harga','',2,0,0,0,'','{"4":4}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-06 11:10:03','2022-10-06 11:10:03'),
	 (95,0,0,4,'Insiden penggunaan aplikasi Direktorat Statistik Keuangan, Teknologi Informasi, dan Pariwisata','Layanan Aplikasi Sensus/Survei > Insiden penggunaan aplikasi Direktorat Statistik Keuangan, Teknologi Informasi, dan Pariwisata','',2,0,0,0,'','{"4":4}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-06 11:10:20','2022-10-06 11:10:20'),
	 (96,0,0,4,'Insiden penggunaan aplikasi Direktorat Neraca Produksi','Layanan Aplikasi Sensus/Survei > Insiden penggunaan aplikasi Direktorat Neraca Produksi','',2,0,0,0,'','{"4":4}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-06 11:10:34','2022-10-06 11:10:34'),
	 (97,0,0,4,'Insiden penggunaan aplikasi Direktorat Neraca Pengeluaran','Layanan Aplikasi Sensus/Survei > Insiden penggunaan aplikasi Direktorat Neraca Pengeluaran','',2,0,0,0,'','{"4":4}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-06 11:10:47','2022-10-06 11:10:47'),
	 (98,0,0,4,'Insiden penggunaan aplikasi Direktorat Analisis dan Pengembangan Statistik','Layanan Aplikasi Sensus/Survei > Insiden penggunaan aplikasi Direktorat Analisis dan Pengembangan Statistik','',2,0,0,0,'','{"4":4}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-06 11:11:03','2022-10-06 11:11:03'),
	 (99,0,0,8,'Insiden terkait LAN BPS Pusat','Layanan Koneksi Jaringan > Insiden terkait LAN BPS Pusat','',2,0,0,0,'','{"8":8}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 21:34:31','2022-10-05 21:34:31'),
	 (100,0,0,8,'Insiden terkait WAN BPS','Layanan Koneksi Jaringan > Insiden terkait WAN BPS','',2,0,0,0,'','{"8":8}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 21:34:47','2022-10-05 21:34:47'),
	 (101,0,0,8,'Insiden terkait VSAT','Layanan Koneksi Jaringan > Insiden terkait VSAT','',2,0,0,0,'','{"8":8}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 21:35:05','2022-10-05 21:35:05');
INSERT INTO glpi_dev.glpi_itilcategories (id,entities_id,is_recursive,itilcategories_id,name,completename,comment,`level`,knowbaseitemcategories_id,users_id,groups_id,code,ancestors_cache,sons_cache,is_helpdeskvisible,tickettemplates_id_incident,tickettemplates_id_demand,changetemplates_id,problemtemplates_id,is_incident,is_request,is_problem,is_change,date_mod,date_creation) VALUES
	 (102,0,0,8,'Insiden terkait VPN Mobile','Layanan Koneksi Jaringan > Insiden terkait VPN Mobile','',2,0,0,0,'','{"8":8}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 21:35:20','2022-10-05 21:35:20'),
	 (103,0,0,8,'Insiden terkait Ekstranet BPS','Layanan Koneksi Jaringan > Insiden terkait Ekstranet BPS','',2,0,0,0,'','{"8":8}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 21:35:40','2022-10-05 21:35:40'),
	 (104,0,0,9,'Insiden terkait Server','Layanan Infrastruktur &#38; Platform Jaringan > Insiden terkait Server','',2,0,0,0,'','{"9":9}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 21:36:05','2022-10-05 21:36:05'),
	 (105,0,0,9,'Insiden terkait Video Conference','Layanan Infrastruktur &#38; Platform Jaringan > Insiden terkait Video Conference','',2,0,0,0,'','{"9":9}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 21:36:19','2022-10-05 21:36:19'),
	 (106,0,0,9,'Insiden terkait Website','Layanan Infrastruktur &#38; Platform Jaringan > Insiden terkait Website','',2,0,0,0,'','{"9":9}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 21:36:31','2022-10-05 21:36:31'),
	 (107,0,0,9,'Insiden terkait Database','Layanan Infrastruktur &#38; Platform Jaringan > Insiden terkait Database','',2,0,0,0,'','{"9":9}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 21:36:49','2022-10-05 21:36:49'),
	 (108,0,0,10,'Insiden terkait Email','Layanan Aplikasi Jaringan > Insiden terkait Email','',2,0,0,0,'','{"10":10}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 21:37:19','2022-10-05 21:37:19'),
	 (109,0,0,10,'Insiden terkait Personal Drive','Layanan Aplikasi Jaringan > Insiden terkait Personal Drive','',2,0,0,0,'','{"10":10}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 21:37:41','2022-10-05 21:37:41'),
	 (110,0,0,10,'Insiden terkait Community','Layanan Aplikasi Jaringan > Insiden terkait Community','',2,0,0,0,'','{"10":10}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 21:38:01','2022-10-05 21:38:01'),
	 (111,0,0,10,'Insiden terkait Kolaborasi','Layanan Aplikasi Jaringan > Insiden terkait Kolaborasi','',2,0,0,0,'','{"10":10}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 21:38:15','2022-10-05 21:38:15');
INSERT INTO glpi_dev.glpi_itilcategories (id,entities_id,is_recursive,itilcategories_id,name,completename,comment,`level`,knowbaseitemcategories_id,users_id,groups_id,code,ancestors_cache,sons_cache,is_helpdeskvisible,tickettemplates_id_incident,tickettemplates_id_demand,changetemplates_id,problemtemplates_id,is_incident,is_request,is_problem,is_change,date_mod,date_creation) VALUES
	 (112,0,0,10,'Insiden terkait Single Sign On','Layanan Aplikasi Jaringan > Insiden terkait Single Sign On','',2,0,0,0,'','{"10":10}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 21:38:31','2022-10-05 21:38:31'),
	 (113,0,0,10,'Insiden terkait Shorten URL','Layanan Aplikasi Jaringan > Insiden terkait Shorten URL','',2,0,0,0,'','{"10":10}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 21:38:45','2022-10-05 21:38:45'),
	 (114,0,0,10,'Insiden terkait Code Repository','Layanan Aplikasi Jaringan > Insiden terkait Code Repository','',2,0,0,0,'','{"10":10}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 21:39:01','2022-10-05 21:39:01'),
	 (115,0,0,11,'Insiden terkait Keamanan Jaringan','Layanan Keamanan Jaringan > Insiden terkait Keamanan Jaringan','',2,0,0,0,'','{"11":11}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 21:39:24','2022-10-05 21:39:24'),
	 (116,0,0,8,'Permintaan terkait LAN BPS Pusat','Layanan Koneksi Jaringan > Permintaan terkait LAN BPS Pusat','',2,0,0,0,'','{"8":8}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 21:40:33','2022-10-05 21:40:33'),
	 (117,0,0,9,'Permintaan terkait Server','Layanan Infrastruktur &#38; Platform Jaringan > Permintaan terkait Server','',2,0,0,0,'','{"9":9}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 21:40:53','2022-10-05 21:40:53'),
	 (118,0,0,9,'Permintaan terkait Video Conference','Layanan Infrastruktur &#38; Platform Jaringan > Permintaan terkait Video Conference','',2,0,0,0,'','{"9":9}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 21:41:07','2022-10-05 21:41:07'),
	 (119,0,0,9,'Permintaan terkait Website','Layanan Infrastruktur &#38; Platform Jaringan > Permintaan terkait Website','',2,0,0,0,'','{"9":9}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 21:41:24','2022-10-05 21:41:24'),
	 (120,0,0,9,'Permintaan terkait Database','Layanan Infrastruktur &#38; Platform Jaringan > Permintaan terkait Database','',2,0,0,0,'','{"9":9}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 21:41:38','2022-10-05 21:41:38'),
	 (121,0,0,10,'Permintaan terkait Email','Layanan Aplikasi Jaringan > Permintaan terkait Email','',2,0,0,0,'','{"10":10}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 21:41:59','2022-10-05 21:41:59');
INSERT INTO glpi_dev.glpi_itilcategories (id,entities_id,is_recursive,itilcategories_id,name,completename,comment,`level`,knowbaseitemcategories_id,users_id,groups_id,code,ancestors_cache,sons_cache,is_helpdeskvisible,tickettemplates_id_incident,tickettemplates_id_demand,changetemplates_id,problemtemplates_id,is_incident,is_request,is_problem,is_change,date_mod,date_creation) VALUES
	 (122,0,0,10,'Permintaan terkait Personal Drive','Layanan Aplikasi Jaringan > Permintaan terkait Personal Drive','',2,0,0,0,'','{"10":10}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 21:42:14','2022-10-05 21:42:14'),
	 (123,0,0,10,'Permintaan terkait Community','Layanan Aplikasi Jaringan > Permintaan terkait Community','',2,0,0,0,'','{"10":10}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 21:42:27','2022-10-05 21:42:27'),
	 (124,0,0,10,'Permintaan terkait Kolaborasi','Layanan Aplikasi Jaringan > Permintaan terkait Kolaborasi','',2,0,0,0,'','{"10":10}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 21:42:38','2022-10-05 21:42:38'),
	 (125,0,0,10,'Permintaan terkait Single Sign On','Layanan Aplikasi Jaringan > Permintaan terkait Single Sign On','',2,0,0,0,'','{"10":10}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 21:42:55','2022-10-05 21:42:55'),
	 (126,0,0,10,'Permintaan terkait Code Repository','Layanan Aplikasi Jaringan > Permintaan terkait Code Repository','',2,0,0,0,'','{"10":10}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 21:43:07','2022-10-05 21:43:07'),
	 (127,0,0,11,'Permintaan Pengujian Keamanan Aplikasi','Layanan Keamanan Jaringan > Permintaan Pengujian Keamanan Aplikasi','',2,0,0,0,'','{"11":11}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 21:43:28','2022-10-05 21:43:28'),
	 (128,0,0,20,'Permintaan terkait Elearning BPS','Layanan Elearning BPS > Permintaan terkait Elearning BPS','',2,0,0,0,'','{"20":20}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 21:44:29','2022-10-05 21:44:29'),
	 (129,0,0,21,'Permintaan pembuatan groupchat Kaizala.','Layanan Kaizala > Permintaan pembuatan groupchat Kaizala.','',2,0,0,0,'','{"21":21}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 21:45:00','2022-10-05 21:45:00'),
	 (130,0,0,21,'Permintaan broadcast message/pemasangan konten.','Layanan Kaizala > Permintaan broadcast message/pemasangan konten.','',2,0,0,0,'','{"21":21}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 21:45:36','2022-10-05 21:45:36'),
	 (131,0,0,21,'Permintaan pembuatan survei sederhana.','Layanan Kaizala > Permintaan pembuatan survei sederhana.','',2,0,0,0,'','{"21":21}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 21:45:49','2022-10-05 21:45:49');
INSERT INTO glpi_dev.glpi_itilcategories (id,entities_id,is_recursive,itilcategories_id,name,completename,comment,`level`,knowbaseitemcategories_id,users_id,groups_id,code,ancestors_cache,sons_cache,is_helpdeskvisible,tickettemplates_id_incident,tickettemplates_id_demand,changetemplates_id,problemtemplates_id,is_incident,is_request,is_problem,is_change,date_mod,date_creation) VALUES
	 (132,0,0,21,'Permintaan pembuatan multifitur','Layanan Kaizala > Permintaan pembuatan multifitur','',2,0,0,0,'','{"21":21}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 21:46:13','2022-10-05 21:46:13'),
	 (133,0,0,22,'Permintaan Penambahan Kategori Knowledge untuk KMS','Layanan OMS > Permintaan Penambahan Kategori Knowledge untuk KMS','',2,0,0,0,'','{"22":22}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 21:46:29','2022-10-05 21:46:29'),
	 (134,0,0,23,'Permintaan Duplikasi HaloSIS','Layanan Duplikasi HaloSIS > Permintaan Duplikasi HaloSIS','',2,0,0,0,'','{"23":23}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 21:46:45','2022-10-05 21:46:45'),
	 (135,0,0,20,'Insiden terkait Elearning BPS','Layanan Elearning BPS > Insiden terkait Elearning BPS','',2,0,0,0,'','{"20":20}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 21:47:03','2022-10-05 21:47:03'),
	 (136,0,0,21,'Insiden terkait Kaizala','Layanan Kaizala > Insiden terkait Kaizala','',2,0,0,0,'','{"21":21}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 21:47:16','2022-10-05 21:47:16'),
	 (137,0,0,22,'Insiden terkait OMS','Layanan OMS > Insiden terkait OMS','',2,0,0,0,'','{"22":22}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 21:47:37','2022-10-05 21:47:37'),
	 (138,0,0,12,'Permintaan instalasi/aktivasi piranti lunak COTS','Layanan Piranti Lunak COTS > Permintaan instalasi/aktivasi piranti lunak COTS','',2,0,0,0,'','{"12":12}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 22:22:02','2022-10-05 22:22:02'),
	 (139,0,0,12,'Permintaan pembelian piranti lunak COTS baru','Layanan Piranti Lunak COTS > Permintaan pembelian piranti lunak COTS baru','',2,0,0,0,'','{"12":12}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 22:22:16','2022-10-05 22:22:16'),
	 (140,0,0,13,'Perbaikan Perangkat Keras','Layanan Perangkat Keras > Perbaikan Perangkat Keras','',2,0,0,0,'','{"13":13}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 22:23:12','2022-10-05 22:23:12'),
	 (141,0,0,140,'Permintaan perbaikan komputer/AiO','Layanan Perangkat Keras > Perbaikan Perangkat Keras > Permintaan perbaikan komputer/AiO','',3,0,0,0,'','{"13":13,"140":140}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 22:23:32','2022-10-05 22:23:32');
INSERT INTO glpi_dev.glpi_itilcategories (id,entities_id,is_recursive,itilcategories_id,name,completename,comment,`level`,knowbaseitemcategories_id,users_id,groups_id,code,ancestors_cache,sons_cache,is_helpdeskvisible,tickettemplates_id_incident,tickettemplates_id_demand,changetemplates_id,problemtemplates_id,is_incident,is_request,is_problem,is_change,date_mod,date_creation) VALUES
	 (142,0,0,140,'Permintaan perbaikan laptop, netbook, tablet','Layanan Perangkat Keras > Perbaikan Perangkat Keras > Permintaan perbaikan laptop, netbook, tablet','',3,0,0,0,'','{"13":13,"140":140}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 22:23:49','2022-10-05 22:23:49'),
	 (143,0,0,140,'Permintaan perbaikan printer dan scanner','Layanan Perangkat Keras > Perbaikan Perangkat Keras > Permintaan perbaikan printer dan scanner','',3,0,0,0,'','{"13":13,"140":140}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 22:24:10','2022-10-05 22:24:10'),
	 (144,0,0,140,'Permintaan perbaikan UPS','Layanan Perangkat Keras > Perbaikan Perangkat Keras > Permintaan perbaikan UPS','',3,0,0,0,'','{"13":13,"140":140}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 22:24:24','2022-10-05 22:24:24'),
	 (145,0,0,140,'Permintaan perbaikan perangkat lainnya','Layanan Perangkat Keras > Perbaikan Perangkat Keras > Permintaan perbaikan perangkat lainnya','',3,0,0,0,'','{"13":13,"140":140}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 22:24:40','2022-10-05 22:24:40'),
	 (146,0,0,13,'Penyediaan Perangkat Keras','Layanan Perangkat Keras > Penyediaan Perangkat Keras','',2,0,0,0,'','{"13":13}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 22:25:04','2022-10-05 22:25:04'),
	 (147,0,0,146,'Permintaan penyediaan komputer/AiO','Layanan Perangkat Keras > Penyediaan Perangkat Keras > Permintaan penyediaan komputer/AiO','',3,0,0,0,'','{"13":13,"146":146}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 22:25:28','2022-10-05 22:25:28'),
	 (148,0,0,146,'Permintaan penyediaan laptop, netbook, tablet','Layanan Perangkat Keras > Penyediaan Perangkat Keras > Permintaan penyediaan laptop, netbook, tablet','',3,0,0,0,'','{"13":13,"146":146}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 22:25:39','2022-10-05 22:25:39'),
	 (149,0,0,146,'Permintaan penyediaan printer dan scanner','Layanan Perangkat Keras > Penyediaan Perangkat Keras > Permintaan penyediaan printer dan scanner','',3,0,0,0,'','{"13":13,"146":146}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 22:25:52','2022-10-05 22:25:52'),
	 (150,0,0,146,'Permintaan penyediaan UPS','Layanan Perangkat Keras > Penyediaan Perangkat Keras > Permintaan penyediaan UPS','',3,0,0,0,'','{"13":13,"146":146}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 22:26:04','2022-10-05 22:26:04'),
	 (151,0,0,146,'Permintaan penyediaan perangkat lainnya','Layanan Perangkat Keras > Penyediaan Perangkat Keras > Permintaan penyediaan perangkat lainnya','',3,0,0,0,'','{"13":13,"146":146}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 22:26:19','2022-10-05 22:26:19');
INSERT INTO glpi_dev.glpi_itilcategories (id,entities_id,is_recursive,itilcategories_id,name,completename,comment,`level`,knowbaseitemcategories_id,users_id,groups_id,code,ancestors_cache,sons_cache,is_helpdeskvisible,tickettemplates_id_incident,tickettemplates_id_demand,changetemplates_id,problemtemplates_id,is_incident,is_request,is_problem,is_change,date_mod,date_creation) VALUES
	 (152,0,0,13,'Peminjaman Perangkat Keras','Layanan Perangkat Keras > Peminjaman Perangkat Keras','',2,0,0,0,'','{"13":13}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 22:26:55','2022-10-05 22:26:55'),
	 (153,0,0,152,'Permintaan peminjaman komputer/AiO','Layanan Perangkat Keras > Peminjaman Perangkat Keras > Permintaan peminjaman komputer/AiO','',3,0,0,0,'','{"13":13,"152":152}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 22:27:13','2022-10-05 22:27:13'),
	 (154,0,0,152,'Permintaan peminjaman laptop, netbook, tablet','Layanan Perangkat Keras > Peminjaman Perangkat Keras > Permintaan peminjaman laptop, netbook, tablet','',3,0,0,0,'','{"13":13,"152":152}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 22:27:27','2022-10-05 22:27:27'),
	 (155,0,0,152,'Permintaan peminjaman printer dan scanner','Layanan Perangkat Keras > Peminjaman Perangkat Keras > Permintaan peminjaman printer dan scanner','',3,0,0,0,'','{"13":13,"152":152}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 22:27:39','2022-10-05 22:27:39'),
	 (156,0,0,152,'Permintaan peminjaman UPS','Layanan Perangkat Keras > Peminjaman Perangkat Keras > Permintaan peminjaman UPS','',3,0,0,0,'','{"13":13,"152":152}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 22:27:51','2022-10-05 22:27:51'),
	 (157,0,0,152,'Permintaan peminjaman perangkat lainnya','Layanan Perangkat Keras > Peminjaman Perangkat Keras > Permintaan peminjaman perangkat lainnya','',3,0,0,0,'','{"13":13,"152":152}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 22:28:03','2022-10-05 22:28:03'),
	 (158,0,0,14,'Permintaan pengembangan Aplikasi BOS','Layanan Back Office Selindo > Permintaan pengembangan Aplikasi BOS','',2,0,0,0,'','{"14":14}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 22:28:31','2022-10-05 22:28:31'),
	 (159,0,0,14,'Permintaan pengelolaan operator BOS','Layanan Back Office Selindo > Permintaan pengelolaan operator BOS','',2,0,0,0,'','{"14":14}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 22:28:46','2022-10-05 22:28:46'),
	 (160,0,0,15,'Permintaan pembangunan aplikasi SIM baru','Layanan Sistem Informasi Manajemen > Permintaan pembangunan aplikasi SIM baru','',2,0,0,0,'','{"15":15}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 22:29:30','2022-10-05 22:29:30'),
	 (161,0,0,15,'Permintaan pengembangan aplikasi SIM','Layanan Sistem Informasi Manajemen > Permintaan pengembangan aplikasi SIM','',2,0,0,0,'','{"15":15}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 22:29:50','2022-10-05 22:29:50');
INSERT INTO glpi_dev.glpi_itilcategories (id,entities_id,is_recursive,itilcategories_id,name,completename,comment,`level`,knowbaseitemcategories_id,users_id,groups_id,code,ancestors_cache,sons_cache,is_helpdeskvisible,tickettemplates_id_incident,tickettemplates_id_demand,changetemplates_id,problemtemplates_id,is_incident,is_request,is_problem,is_change,date_mod,date_creation) VALUES
	 (162,0,0,161,'Simpeg Online','Layanan Sistem Informasi Manajemen > Permintaan pengembangan aplikasi SIM > Simpeg Online','',3,0,0,0,'','{"15":15,"161":161}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 22:31:01','2022-10-05 22:31:01'),
	 (163,0,0,161,'Prestasi Online','Layanan Sistem Informasi Manajemen > Permintaan pengembangan aplikasi SIM > Prestasi Online','',3,0,0,0,'','{"15":15,"161":161}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 22:31:19','2022-10-05 22:31:19'),
	 (164,0,0,161,'Baperjakat Online','Layanan Sistem Informasi Manajemen > Permintaan pengembangan aplikasi SIM > Baperjakat Online','',3,0,0,0,'','{"15":15,"161":161}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 22:31:34','2022-10-05 22:31:34'),
	 (165,0,0,161,'Aplikasi TK Online','Layanan Sistem Informasi Manajemen > Permintaan pengembangan aplikasi SIM > Aplikasi TK Online','',3,0,0,0,'','{"15":15,"161":161}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 22:32:07','2022-10-05 22:32:07'),
	 (166,0,0,161,'SIM Perundang-Undangan','Layanan Sistem Informasi Manajemen > Permintaan pengembangan aplikasi SIM > SIM Perundang-Undangan','',3,0,0,0,'','{"15":15,"161":161}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 22:32:19','2022-10-05 22:32:19'),
	 (167,0,0,161,'Aplikasi KP Online','Layanan Sistem Informasi Manajemen > Permintaan pengembangan aplikasi SIM > Aplikasi KP Online','',3,0,0,0,'','{"15":15,"161":161}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 22:32:31','2022-10-05 22:32:31'),
	 (168,0,0,161,'Aplikasi Pejabat Pengelola Informasi dan Dokumentasi','Layanan Sistem Informasi Manajemen > Permintaan pengembangan aplikasi SIM > Aplikasi Pejabat Pengelola Informasi dan Dokumentasi','',3,0,0,0,'','{"15":15,"161":161}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 22:32:41','2022-10-05 22:32:41'),
	 (169,0,0,161,'Aplikasi Katalog Mikrodata','Layanan Sistem Informasi Manajemen > Permintaan pengembangan aplikasi SIM > Aplikasi Katalog Mikrodata','',3,0,0,0,'','{"15":15,"161":161}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 22:32:53','2022-10-05 22:32:53'),
	 (170,0,0,161,'Aplikasi Laporan Pekerjaan Pimpinan','Layanan Sistem Informasi Manajemen > Permintaan pengembangan aplikasi SIM > Aplikasi Laporan Pekerjaan Pimpinan','',3,0,0,0,'','{"15":15,"161":161}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 22:33:05','2022-10-05 22:33:05'),
	 (171,0,0,161,'Aplikasi Inpassing','Layanan Sistem Informasi Manajemen > Permintaan pengembangan aplikasi SIM > Aplikasi Inpassing','',3,0,0,0,'','{"15":15,"161":161}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 22:33:22','2022-10-05 22:33:22');
INSERT INTO glpi_dev.glpi_itilcategories (id,entities_id,is_recursive,itilcategories_id,name,completename,comment,`level`,knowbaseitemcategories_id,users_id,groups_id,code,ancestors_cache,sons_cache,is_helpdeskvisible,tickettemplates_id_incident,tickettemplates_id_demand,changetemplates_id,problemtemplates_id,is_incident,is_request,is_problem,is_change,date_mod,date_creation) VALUES
	 (172,0,0,161,'Aplikasi Uji Kompetensi','Layanan Sistem Informasi Manajemen > Permintaan pengembangan aplikasi SIM > Aplikasi Uji Kompetensi','',3,0,0,0,'','{"15":15,"161":161}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 22:33:35','2022-10-05 22:33:35'),
	 (173,0,0,161,'Aplikasi Mutasi (SiImut)','Layanan Sistem Informasi Manajemen > Permintaan pengembangan aplikasi SIM > Aplikasi Mutasi (SiImut)','',3,0,0,0,'','{"15":15,"161":161}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 22:34:01','2022-10-05 22:34:01'),
	 (174,0,0,161,'Aplikasi Performa 360','Layanan Sistem Informasi Manajemen > Permintaan pengembangan aplikasi SIM > Aplikasi Performa 360','',3,0,0,0,'','{"15":15,"161":161}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 22:34:13','2022-10-05 22:34:13'),
	 (175,0,0,161,'Aplikasi Monev','Layanan Sistem Informasi Manajemen > Permintaan pengembangan aplikasi SIM > Aplikasi Monev','',3,0,0,0,'','{"15":15,"161":161}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 22:34:29','2022-10-05 22:34:29'),
	 (176,0,0,161,'Aplikasi KSKP','Layanan Sistem Informasi Manajemen > Permintaan pengembangan aplikasi SIM > Aplikasi KSKP','',3,0,0,0,'','{"15":15,"161":161}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 22:34:39','2022-10-05 22:34:39'),
	 (177,0,0,161,'Aplikasi Daftar Hadir','Layanan Sistem Informasi Manajemen > Permintaan pengembangan aplikasi SIM > Aplikasi Daftar Hadir','',3,0,0,0,'','{"15":15,"161":161}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 22:34:53','2022-10-05 22:34:53'),
	 (178,0,0,161,'Aplikasi Manajemen SP','Layanan Sistem Informasi Manajemen > Permintaan pengembangan aplikasi SIM > Aplikasi Manajemen SP','',3,0,0,0,'','{"15":15,"161":161}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 22:35:05','2022-10-05 22:35:05'),
	 (179,0,0,161,'Aplikasi Manajemen Mitra','Layanan Sistem Informasi Manajemen > Permintaan pengembangan aplikasi SIM > Aplikasi Manajemen Mitra','',3,0,0,0,'','{"15":15,"161":161}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 22:35:16','2022-10-05 22:35:16'),
	 (180,0,0,161,'Aplikasi Sipmen','Layanan Sistem Informasi Manajemen > Permintaan pengembangan aplikasi SIM > Aplikasi Sipmen','',3,0,0,0,'','{"15":15,"161":161}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 22:35:34','2022-10-05 22:35:34'),
	 (181,0,0,161,'Aplikasi lainnya','Layanan Sistem Informasi Manajemen > Permintaan pengembangan aplikasi SIM > Aplikasi lainnya','',3,0,0,0,'','{"15":15,"161":161}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 22:35:49','2022-10-05 22:35:49');
INSERT INTO glpi_dev.glpi_itilcategories (id,entities_id,is_recursive,itilcategories_id,name,completename,comment,`level`,knowbaseitemcategories_id,users_id,groups_id,code,ancestors_cache,sons_cache,is_helpdeskvisible,tickettemplates_id_incident,tickettemplates_id_demand,changetemplates_id,problemtemplates_id,is_incident,is_request,is_problem,is_change,date_mod,date_creation) VALUES
	 (182,0,0,19,'Pengolahan Data Sensus/Survei Final','Layanan Data > Pengolahan Data Sensus/Survei Final','',2,0,0,0,'','{"19":19}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 22:36:34','2022-10-05 22:36:34'),
	 (183,0,0,182,'Permintaan data sensus/survei final','Layanan Data > Pengolahan Data Sensus/Survei Final > Permintaan data sensus/survei final','',3,0,0,0,'','{"19":19,"182":182}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 22:36:53','2022-10-05 22:36:53'),
	 (184,0,0,182,'Permintaan penyerahan data dari Subject Matter','Layanan Data > Pengolahan Data Sensus/Survei Final > Permintaan penyerahan data dari Subject Matter','',3,0,0,0,'','{"19":19,"182":182}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 22:37:10','2022-10-05 22:37:10'),
	 (185,0,0,19,'Pengolahan Data Sistem Informasi Manajemen','Layanan Data > Pengolahan Data Sistem Informasi Manajemen','',2,0,0,0,'','{"19":19}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 22:38:14','2022-10-05 22:38:14'),
	 (186,0,0,16,'Permintaan terkait MeetApp','Layanan Meeting Online > Permintaan terkait MeetApp','',2,0,0,0,'','{"16":16}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 22:39:48','2022-10-05 22:39:48'),
	 (187,0,0,16,'Permintaan terkait Zoom (di-nonaktif-kan)','Layanan Meeting Online > Permintaan terkait Zoom (di-nonaktif-kan)','',2,0,0,0,'','{"16":16}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 22:40:12','2022-10-05 22:40:12'),
	 (188,0,0,17,'Permintaan terkait WhatsApp Business','Layanan WhatsApp Business > Permintaan terkait WhatsApp Business','',2,0,0,0,'','{"17":17}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 22:40:27','2022-10-05 22:40:27'),
	 (189,0,0,18,'Permintaan pembuatan sertifikat elektronik','Layanan Pengelolaan E-Sign > Permintaan pembuatan sertifikat elektronik','',2,0,0,0,'','{"18":18}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 22:40:45','2022-10-05 22:40:45'),
	 (190,0,0,18,'Permintaan pembaruan sertifikat elektronik','Layanan Pengelolaan E-Sign > Permintaan pembaruan sertifikat elektronik','',2,0,0,0,'','{"18":18}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 22:41:20','2022-10-05 22:41:20'),
	 (191,0,0,18,'Permintaan reset passphrase dan password portal BSrE','Layanan Pengelolaan E-Sign > Permintaan reset passphrase dan password portal BSrE','',2,0,0,0,'','{"18":18}',NULL,1,0,0,0,0,0,1,0,0,'2022-10-05 22:41:41','2022-10-05 22:41:41');
INSERT INTO glpi_dev.glpi_itilcategories (id,entities_id,is_recursive,itilcategories_id,name,completename,comment,`level`,knowbaseitemcategories_id,users_id,groups_id,code,ancestors_cache,sons_cache,is_helpdeskvisible,tickettemplates_id_incident,tickettemplates_id_demand,changetemplates_id,problemtemplates_id,is_incident,is_request,is_problem,is_change,date_mod,date_creation) VALUES
	 (192,0,0,12,'Insiden penggunaan piranti lunak','Layanan Piranti Lunak COTS > Insiden penggunaan piranti lunak','',2,0,0,0,'','{"12":12}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 22:43:16','2022-10-05 22:43:16'),
	 (193,0,0,12,'Insiden terkait Sistem Operasi','Layanan Piranti Lunak COTS > Insiden terkait Sistem Operasi','',2,0,0,0,'','{"12":12}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 22:43:34','2022-10-05 22:43:34'),
	 (194,0,0,13,'Insiden penggunaan komputer/AiO','Layanan Perangkat Keras > Insiden penggunaan komputer/AiO','',2,0,0,0,'','{"13":13}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 22:44:01','2022-10-05 22:44:01'),
	 (195,0,0,13,'Insiden penggunaan laptop, netbook, tablet','Layanan Perangkat Keras > Insiden penggunaan laptop, netbook, tablet','',2,0,0,0,'','{"13":13}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 22:44:17','2022-10-05 22:44:17'),
	 (196,0,0,13,'Insiden penggunaan printer dan scanner','Layanan Perangkat Keras > Insiden penggunaan printer dan scanner','',2,0,0,0,'','{"13":13}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 22:44:29','2022-10-05 22:44:29'),
	 (197,0,0,13,'Insiden penggunaan UPS','Layanan Perangkat Keras > Insiden penggunaan UPS','',2,0,0,0,'','{"13":13}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 22:44:45','2022-10-05 22:44:45'),
	 (198,0,0,13,'Insiden perangkat lainnya','Layanan Perangkat Keras > Insiden perangkat lainnya','',2,0,0,0,'','{"13":13}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 22:45:04','2022-10-05 22:45:04'),
	 (199,0,0,14,'Insiden penggunaan modul Form Permintaan','Layanan Back Office Selindo > Insiden penggunaan modul Form Permintaan','',2,0,0,0,'','{"14":14}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 22:45:36','2022-10-05 22:45:36'),
	 (200,0,0,199,'Pembatalan','Layanan Back Office Selindo > Insiden penggunaan modul Form Permintaan > Pembatalan','',3,0,0,0,'','{"14":14,"199":199}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 22:46:00','2022-10-05 22:46:00'),
	 (201,0,0,199,'Form Permintaan','Layanan Back Office Selindo > Insiden penggunaan modul Form Permintaan > Form Permintaan','',3,0,0,0,'','{"14":14,"199":199}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 22:46:15','2022-10-05 22:46:15');
INSERT INTO glpi_dev.glpi_itilcategories (id,entities_id,is_recursive,itilcategories_id,name,completename,comment,`level`,knowbaseitemcategories_id,users_id,groups_id,code,ancestors_cache,sons_cache,is_helpdeskvisible,tickettemplates_id_incident,tickettemplates_id_demand,changetemplates_id,problemtemplates_id,is_incident,is_request,is_problem,is_change,date_mod,date_creation) VALUES
	 (202,0,0,199,'Approval','Layanan Back Office Selindo > Insiden penggunaan modul Form Permintaan > Approval','',3,0,0,0,'','{"14":14,"199":199}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 22:46:33','2022-10-05 22:46:33'),
	 (203,0,0,199,'Pemesanan Ruang Rapat','Layanan Back Office Selindo > Insiden penggunaan modul Form Permintaan > Pemesanan Ruang Rapat','',3,0,0,0,'','{"14":14,"199":199}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 22:46:43','2022-10-05 22:46:43'),
	 (204,0,0,14,'Insiden penggunaan modul Anggaran','Layanan Back Office Selindo > Insiden penggunaan modul Anggaran','',2,0,0,0,'','{"14":14}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 22:46:58','2022-10-05 22:46:58'),
	 (205,0,0,204,'Import ADK','Layanan Back Office Selindo > Insiden penggunaan modul Anggaran > Import ADK','',3,0,0,0,'','{"14":14,"204":204}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 22:47:18','2022-10-05 22:47:18'),
	 (206,0,0,204,'Entri Pembiayaan','Layanan Back Office Selindo > Insiden penggunaan modul Anggaran > Entri Pembiayaan','',3,0,0,0,'','{"14":14,"204":204}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 22:47:32','2022-10-05 22:47:32'),
	 (207,0,0,204,'Revisi dan Approval','Layanan Back Office Selindo > Insiden penggunaan modul Anggaran > Revisi dan Approval','',3,0,0,0,'','{"14":14,"204":204}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 22:47:44','2022-10-05 22:47:44'),
	 (208,0,0,204,'Rebooking','Layanan Back Office Selindo > Insiden penggunaan modul Anggaran > Rebooking','',3,0,0,0,'','{"14":14,"204":204}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 22:47:56','2022-10-05 22:47:56'),
	 (209,0,0,204,'Rencana Pengguna Anggaran (RPA)','Layanan Back Office Selindo > Insiden penggunaan modul Anggaran > Rencana Pengguna Anggaran (RPA)','',3,0,0,0,'','{"14":14,"204":204}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 22:48:07','2022-10-05 22:48:07'),
	 (210,0,0,14,'Insiden penggunaan modul Keuangan','Layanan Back Office Selindo > Insiden penggunaan modul Keuangan','',2,0,0,0,'','{"14":14}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 22:48:26','2022-10-05 22:48:26'),
	 (211,0,0,210,'Uang Makan','Layanan Back Office Selindo > Insiden penggunaan modul Keuangan > Uang Makan','',3,0,0,0,'','{"14":14,"210":210}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 22:49:00','2022-10-05 22:49:00');
INSERT INTO glpi_dev.glpi_itilcategories (id,entities_id,is_recursive,itilcategories_id,name,completename,comment,`level`,knowbaseitemcategories_id,users_id,groups_id,code,ancestors_cache,sons_cache,is_helpdeskvisible,tickettemplates_id_incident,tickettemplates_id_demand,changetemplates_id,problemtemplates_id,is_incident,is_request,is_problem,is_change,date_mod,date_creation) VALUES
	 (212,0,0,210,'Perjalanan Dinas','Layanan Back Office Selindo > Insiden penggunaan modul Keuangan > Perjalanan Dinas','',3,0,0,0,'','{"14":14,"210":210}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 22:49:12','2022-10-05 22:49:12'),
	 (213,0,0,210,'Transport Lokal','Layanan Back Office Selindo > Insiden penggunaan modul Keuangan > Transport Lokal','',3,0,0,0,'','{"14":14,"210":210}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 22:49:25','2022-10-05 22:49:25'),
	 (214,0,0,210,'Paket Meeting','Layanan Back Office Selindo > Insiden penggunaan modul Keuangan > Paket Meeting','',3,0,0,0,'','{"14":14,"210":210}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 22:49:38','2022-10-05 22:49:38'),
	 (215,0,0,210,'Lembur','Layanan Back Office Selindo > Insiden penggunaan modul Keuangan > Lembur','',3,0,0,0,'','{"14":14,"210":210}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 22:49:51','2022-10-05 22:49:51'),
	 (216,0,0,210,'Rekap Bendahara','Layanan Back Office Selindo > Insiden penggunaan modul Keuangan > Rekap Bendahara','',3,0,0,0,'','{"14":14,"210":210}',NULL,1,0,0,0,0,1,1,0,0,'2022-10-05 22:50:03','2022-10-05 22:50:03'),
	 (217,0,0,210,'PBJ','Layanan Back Office Selindo > Insiden penggunaan modul Keuangan > PBJ','',3,0,0,0,'','{"14":14,"210":210}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 22:50:14','2022-10-05 22:50:14'),
	 (218,0,0,210,'Pokja','Layanan Back Office Selindo > Insiden penggunaan modul Keuangan > Pokja','',3,0,0,0,'','{"14":14,"210":210}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 22:50:25','2022-10-05 22:50:25'),
	 (219,0,0,210,'Pajak','Layanan Back Office Selindo > Insiden penggunaan modul Keuangan > Pajak','',3,0,0,0,'','{"14":14,"210":210}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 22:50:36','2022-10-05 22:50:36'),
	 (220,0,0,14,'Insiden penggunaan modul Kepegawaian','Layanan Back Office Selindo > Insiden penggunaan modul Kepegawaian','',2,0,0,0,'','{"14":14}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 22:50:50','2022-10-05 22:50:50'),
	 (221,0,0,220,'Data Presensi Pegawai','Layanan Back Office Selindo > Insiden penggunaan modul Kepegawaian > Data Presensi Pegawai','',3,0,0,0,'','{"14":14,"220":220}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 22:51:09','2022-10-05 22:51:09');
INSERT INTO glpi_dev.glpi_itilcategories (id,entities_id,is_recursive,itilcategories_id,name,completename,comment,`level`,knowbaseitemcategories_id,users_id,groups_id,code,ancestors_cache,sons_cache,is_helpdeskvisible,tickettemplates_id_incident,tickettemplates_id_demand,changetemplates_id,problemtemplates_id,is_incident,is_request,is_problem,is_change,date_mod,date_creation) VALUES
	 (222,0,0,220,'Data Mitra','Layanan Back Office Selindo > Insiden penggunaan modul Kepegawaian > Data Mitra','',3,0,0,0,'','{"14":14,"220":220}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 22:51:21','2022-10-05 22:51:21'),
	 (223,0,0,14,'Insiden pada fitur pendukung','Layanan Back Office Selindo > Insiden pada fitur pendukung','',2,0,0,0,'','{"14":14}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 22:51:36','2022-10-05 22:51:36'),
	 (224,0,0,15,'Insiden penggunaan Simpeg Online','Layanan Sistem Informasi Manajemen > Insiden penggunaan Simpeg Online','',2,0,0,0,'','{"15":15}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 23:14:29','2022-10-05 23:14:29'),
	 (225,0,0,15,'Insiden penggunaan Prestasi Online','Layanan Sistem Informasi Manajemen > Insiden penggunaan Prestasi Online','',2,0,0,0,'','{"15":15}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 23:14:51','2022-10-05 23:14:51'),
	 (226,0,0,15,'Insiden penggunaan Baperjakat Online','Layanan Sistem Informasi Manajemen > Insiden penggunaan Baperjakat Online','',2,0,0,0,'','{"15":15}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 23:15:04','2022-10-05 23:15:04'),
	 (227,0,0,15,'Insiden penggunaan aplikasi TK Online','Layanan Sistem Informasi Manajemen > Insiden penggunaan aplikasi TK Online','',2,0,0,0,'','{"15":15}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 23:15:28','2022-10-05 23:15:28'),
	 (228,0,0,15,'Insiden penggunaan SIM Perundang-Undangan','Layanan Sistem Informasi Manajemen > Insiden penggunaan SIM Perundang-Undangan','',2,0,0,0,'','{"15":15}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 23:15:41','2022-10-05 23:15:41'),
	 (229,0,0,15,'Insiden penggunaan aplikasi KP Online','Layanan Sistem Informasi Manajemen > Insiden penggunaan aplikasi KP Online','',2,0,0,0,'','{"15":15}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 23:15:53','2022-10-05 23:15:53'),
	 (230,0,0,15,'Insiden penggunaan aplikasi Pejabat Pengelola Informasi dan Dokumentasi (PPID)','Layanan Sistem Informasi Manajemen > Insiden penggunaan aplikasi Pejabat Pengelola Informasi dan Dokumentasi (PPID)','',2,0,0,0,'','{"15":15}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 23:16:04','2022-10-05 23:16:04'),
	 (231,0,0,15,'Insiden penggunaan Aplikasi Katalog Mikrodata','Layanan Sistem Informasi Manajemen > Insiden penggunaan Aplikasi Katalog Mikrodata','',2,0,0,0,'','{"15":15}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 23:16:18','2022-10-05 23:16:18');
INSERT INTO glpi_dev.glpi_itilcategories (id,entities_id,is_recursive,itilcategories_id,name,completename,comment,`level`,knowbaseitemcategories_id,users_id,groups_id,code,ancestors_cache,sons_cache,is_helpdeskvisible,tickettemplates_id_incident,tickettemplates_id_demand,changetemplates_id,problemtemplates_id,is_incident,is_request,is_problem,is_change,date_mod,date_creation) VALUES
	 (232,0,0,15,'Insiden penggunaan Aplikasi Laporan Pekerjaan Pimpinan','Layanan Sistem Informasi Manajemen > Insiden penggunaan Aplikasi Laporan Pekerjaan Pimpinan','',2,0,0,0,'','{"15":15}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 23:16:33','2022-10-05 23:16:33'),
	 (233,0,0,15,'Insiden penggunaan Aplikasi Inpassing','Layanan Sistem Informasi Manajemen > Insiden penggunaan Aplikasi Inpassing','',2,0,0,0,'','{"15":15}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 23:16:45','2022-10-05 23:16:45'),
	 (234,0,0,15,'Insiden penggunaan Aplikasi Uji Kompetensi','Layanan Sistem Informasi Manajemen > Insiden penggunaan Aplikasi Uji Kompetensi','',2,0,0,0,'','{"15":15}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 23:16:57','2022-10-05 23:16:57'),
	 (235,0,0,15,'Insiden penggunaan Aplikasi Mutasi (SiImut)','Layanan Sistem Informasi Manajemen > Insiden penggunaan Aplikasi Mutasi (SiImut)','',2,0,0,0,'','{"15":15}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 23:17:09','2022-10-05 23:17:09'),
	 (236,0,0,15,'Insiden penggunaan Sistem Verifikasi Anggaran (Sivera)','Layanan Sistem Informasi Manajemen > Insiden penggunaan Sistem Verifikasi Anggaran (Sivera)','',2,0,0,0,'','{"15":15}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 23:17:21','2022-10-05 23:17:21'),
	 (237,0,0,15,'Insiden penggunaan Aplikasi Performa 360','Layanan Sistem Informasi Manajemen > Insiden penggunaan Aplikasi Performa 360','',2,0,0,0,'','{"15":15}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 23:17:35','2022-10-05 23:17:35'),
	 (238,0,0,15,'Insiden penggunaan Aplikasi Monev','Layanan Sistem Informasi Manajemen > Insiden penggunaan Aplikasi Monev','',2,0,0,0,'','{"15":15}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 23:17:50','2022-10-05 23:17:50'),
	 (239,0,0,15,'Insiden penggunaan Aplikasi KSKP','Layanan Sistem Informasi Manajemen > Insiden penggunaan Aplikasi KSKP','',2,0,0,0,'','{"15":15}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 23:18:06','2022-10-05 23:18:06'),
	 (240,0,0,15,'Insiden penggunaan Aplikasi Daftar Hadir','Layanan Sistem Informasi Manajemen > Insiden penggunaan Aplikasi Daftar Hadir','',2,0,0,0,'','{"15":15}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 23:18:16','2022-10-05 23:18:16'),
	 (241,0,0,15,'Insiden penggunaan  Aplikasi Manajemen SP','Layanan Sistem Informasi Manajemen > Insiden penggunaan  Aplikasi Manajemen SP','',2,0,0,0,'','{"15":15}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 23:18:27','2022-10-05 23:18:27');
INSERT INTO glpi_dev.glpi_itilcategories (id,entities_id,is_recursive,itilcategories_id,name,completename,comment,`level`,knowbaseitemcategories_id,users_id,groups_id,code,ancestors_cache,sons_cache,is_helpdeskvisible,tickettemplates_id_incident,tickettemplates_id_demand,changetemplates_id,problemtemplates_id,is_incident,is_request,is_problem,is_change,date_mod,date_creation) VALUES
	 (242,0,0,15,'Insiden penggunaan Aplikasi Manajemen Mitra','Layanan Sistem Informasi Manajemen > Insiden penggunaan Aplikasi Manajemen Mitra','',2,0,0,0,'','{"15":15}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 23:18:40','2022-10-05 23:18:40'),
	 (243,0,0,15,'Insiden penggunaan Aplikasi Sipmen','Layanan Sistem Informasi Manajemen > Insiden penggunaan Aplikasi Sipmen','',2,0,0,0,'','{"15":15}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 23:18:51','2022-10-05 23:18:51'),
	 (244,0,0,15,'Insiden penggunaan Aplikasi Sijafung','Layanan Sistem Informasi Manajemen > Insiden penggunaan Aplikasi Sijafung','',2,0,0,0,'','{"15":15}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 23:19:00','2022-10-05 23:19:00'),
	 (245,0,0,15,'Insiden penggunaan aplikasi lainnya','Layanan Sistem Informasi Manajemen > Insiden penggunaan aplikasi lainnya','',2,0,0,0,'','{"15":15}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 23:19:23','2022-10-05 23:19:23'),
	 (246,0,0,16,'Insiden terkait MeetApp','Layanan Meeting Online > Insiden terkait MeetApp','',2,0,0,0,'','{"16":16}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 23:19:54','2022-10-05 23:19:54'),
	 (247,0,0,16,'Insiden terkait Zoom (di-nonaktifkan)','Layanan Meeting Online > Insiden terkait Zoom (di-nonaktifkan)','',2,0,0,0,'','{"16":16}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 23:20:10','2022-10-05 23:20:10'),
	 (248,0,0,17,'Insiden terkait WhatsApp Business','Layanan WhatsApp Business > Insiden terkait WhatsApp Business','',2,0,0,0,'','{"17":17}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 23:20:26','2022-10-05 23:20:26'),
	 (249,0,0,18,'Insiden terkait e-Sign','Layanan Pengelolaan E-Sign > Insiden terkait e-Sign','',2,0,0,0,'','{"18":18}',NULL,1,0,0,0,0,1,0,0,0,'2022-10-05 23:20:46','2022-10-05 23:20:46');
INSERT INTO glpi_dev.glpi_itilfollowups (id,itemtype,items_id,`date`,users_id,users_id_editor,content,is_private,requesttypes_id,date_mod,date_creation,timeline_position,sourceitems_id,sourceof_items_id) VALUES
	 (2,'Ticket',2,'2022-12-01 07:58:33',18,0,'&#60;p&#62;coba restart hidup anda :P&#60;/p&#62;',0,1,'2022-12-01 07:58:33','2022-12-01 07:58:33',1,0,0),
	 (3,'Ticket',2,'2022-12-01 08:17:32',3,0,'Solution Approved',0,2,'2022-12-01 08:17:32','2022-12-01 08:17:32',1,0,0),
	 (4,'Ticket',1,'2022-12-01 08:21:13',3,0,'&#60;p&#62;Masih gabisa tuh&#60;/p&#62;',0,1,'2022-12-01 08:21:13','2022-12-01 08:21:13',1,0,0),
	 (5,'Ticket',1,'2022-12-01 08:23:18',3,0,'&#60;p&#62;oke deh mantep juga meskipun gak work&#60;/p&#62;',0,1,'2022-12-01 08:23:18','2022-12-01 08:23:18',1,0,0);
INSERT INTO glpi_dev.glpi_itilsolutions (id,itemtype,items_id,solutiontypes_id,solutiontype_name,content,date_creation,date_mod,date_approval,users_id,user_name,users_id_editor,users_id_approval,user_name_approval,status,itilfollowups_id) VALUES
	 (1,'Ticket',2,0,NULL,'&#60;p&#62;ini solusi paling bener udah&#60;/p&#62;
&#60;p&#62; &#60;/p&#62;
&#60;p&#62;coba makan&#60;/p&#62;','2022-12-01 07:59:26','2022-12-01 07:59:26','2022-12-01 08:17:32',18,NULL,0,3,NULL,3,NULL),
	 (2,'Ticket',1,0,NULL,'&#60;p&#62;Coba tarik napas  hitung sampai 3 bisa gak&#60;/p&#62;','2022-12-01 08:20:24','2022-12-01 08:20:24','2022-12-01 08:21:14',18,NULL,0,3,NULL,4,NULL),
	 (3,'Ticket',1,0,NULL,'&#60;p&#62;Coba 5 detik&#60;/p&#62;','2022-12-01 08:22:28','2022-12-01 08:22:28','2022-12-01 08:23:18',18,NULL,0,3,NULL,3,NULL);
INSERT INTO glpi_dev.glpi_knowbaseitems (id,name,answer,is_faq,users_id,`view`,date_creation,date_mod,begin_date,end_date) VALUES
	 (2,'Mengatasi Jaringan Lemot','&#60;p&#62;Coba direstart komputernya&#60;/p&#62;',1,7,35,'2022-11-23 04:12:43','2022-11-23 04:12:43',NULL,NULL),
	 (3,'Mengatasi Tiket Belum Terkirim New','&#60;p&#62;Kirim lagi aja yekan cappedehuhuhuh&#60;/p&#62;',1,17,35,'2022-11-30 12:06:43','2022-11-30 20:49:08',NULL,NULL),
	 (4,'Cara mengatasi Sakit hati :(','&#60;p&#62;Biarkan waktu yang menghapus jejaknya&#60;/p&#62;',0,4,24,'2022-11-30 19:46:09','2022-11-30 19:46:09',NULL,NULL),
	 (5,'Cara masak nasi goreng enak','&#60;p&#62;Ambil nasi, goreng, hmmm enaak bgtt&#60;/p&#62;',1,17,19,'2022-11-30 20:07:33','2022-11-30 20:14:59',NULL,NULL),
	 (6,'Cara melupakannya :((((((((((','&#60;p&#62;Pertama kamu harus sabar. Lalu harus berkeinginan kuat untuk itu. Karena, kadang, kamu bukannya gabisa melupakan. Gamau aja...&#60;/p&#62;',1,17,9,'2022-11-30 20:40:12','2022-11-30 20:41:18',NULL,NULL),
	 (7,'Ini dibuat oleh operator1','&#60;p&#62;Pokokny aku yg bikin&#60;/p&#62;',1,17,4,'2022-11-30 20:43:50','2022-11-30 20:44:25',NULL,NULL),
	 (8,'Cara Ganti Internet Jadul','&#60;p&#62;ganti aja bro gitu aja gabisaaaa&#60;/p&#62;',1,17,6,'2022-12-01 02:46:31','2022-12-01 02:48:26',NULL,NULL),
	 (9,'Pengujian Entities','&#60;p&#62;cek apa itu entitis&#60;/p&#62;',1,17,5,'2022-12-01 02:55:00','2022-12-01 02:55:43',NULL,NULL);
INSERT INTO glpi_dev.glpi_knowbaseitems_profiles (id,knowbaseitems_id,profiles_id,entities_id,is_recursive,no_entity_restriction) VALUES
	 (2,2,1,0,0,0),
	 (3,3,3,0,0,0),
	 (4,4,3,0,0,0),
	 (5,3,1,0,0,0),
	 (7,5,6,0,0,0),
	 (8,5,3,0,0,0),
	 (9,2,3,0,0,0),
	 (10,5,1,0,0,0),
	 (11,6,9,0,0,0),
	 (12,6,3,0,0,0);
INSERT INTO glpi_dev.glpi_knowbaseitems_profiles (id,knowbaseitems_id,profiles_id,entities_id,is_recursive,no_entity_restriction) VALUES
	 (13,6,1,0,0,0),
	 (14,7,9,0,0,0),
	 (15,7,3,0,0,0),
	 (16,7,1,0,0,0),
	 (17,7,6,0,0,0),
	 (18,6,6,0,0,0),
	 (19,8,9,0,0,0),
	 (20,8,1,0,0,0),
	 (21,8,3,0,0,0),
	 (22,8,6,0,0,0);
INSERT INTO glpi_dev.glpi_knowbaseitems_revisions (id,knowbaseitems_id,revision,name,answer,`language`,users_id,`date`) VALUES
	 (1,5,1,'Cara masak nasi goreng enak','&#60;p&#62;Ambil nasi, goreng, hmmm enaak&#60;/p&#62;','',17,'2022-11-30 20:07:33'),
	 (2,5,2,'Cara masak nasi goreng enak','&#60;p&#62;Ambil nasi, goreng, hmmm enaak bgtt&#60;/p&#62;','',18,'2022-11-30 20:09:03'),
	 (3,3,1,'Mengatasi Tiket Belum Terkirim','&#60;p&#62;Kirim lagi aja yekan cappedeh&#60;/p&#62;','',4,'2022-11-30 12:06:43'),
	 (4,6,1,'Cara melupakannya :(((','&#60;p&#62;Pertama kamu harus sabar. Lalu harus berkeinginan kuat untuk itu. Karena, kadang, kamu bukannya gabisa melupakan. Gamau aja...&#60;/p&#62;','',18,'2022-11-30 20:40:12'),
	 (5,6,2,'Cara melupakannya :(((','&#60;p&#62;Pertama kamu harus sabar. Lalu harus berkeinginan kuat untuk itu. Karena, kadang, kamu bukannya gabisa melupakan. Gamau aja...&#60;/p&#62;','',17,'2022-11-30 20:41:06'),
	 (6,7,1,'Ini dibuat oleh operator1','&#60;p&#62;Pokokny aku yg bikin&#60;/p&#62;','',18,'2022-11-30 20:43:50'),
	 (7,3,2,'Mengatasi Tiket Belum Terkirim','&#60;p&#62;Kirim lagi aja yekan cappedehuhuhuh&#60;/p&#62;','',4,'2022-11-30 20:17:55'),
	 (8,8,1,'Cara Ganti Internet','&#60;p&#62;ganti aja bro gitu aja gabisa&#60;/p&#62;','',4,'2022-12-01 02:46:31'),
	 (9,8,2,'Cara Ganti Internet','&#60;p&#62;ganti aja bro gitu aja gabisaaaa&#60;/p&#62;','',4,'2022-12-01 02:46:48'),
	 (10,8,3,'Cara Ganti Internet Jadul','&#60;p&#62;ganti aja bro gitu aja gabisaaaa&#60;/p&#62;','',17,'2022-12-01 02:47:38');
INSERT INTO glpi_dev.glpi_knowbaseitems_revisions (id,knowbaseitems_id,revision,name,answer,`language`,users_id,`date`) VALUES
	 (11,9,1,'Pengujian Entities','&#60;p&#62;cek apa itu entitis&#60;/p&#62;','',4,'2022-12-01 02:55:00');
INSERT INTO glpi_dev.glpi_logs (id,itemtype,items_id,itemtype_link,linked_action,user_name,date_mod,id_search_option,old_value,new_value) VALUES
	 (1,'Config',1,'',0,'','2022-10-31 05:17:24',1,'language en_GB','en_US'),
	 (2,'Config',1,'',0,'','2022-10-31 05:17:24',1,'version FILLED AT INSTALL','10.0.3'),
	 (3,'Config',1,'',0,'','2022-10-31 05:17:24',1,'dbversion FILLED AT INSTALL','10.0.3@a045be5eafdc91aa832177c031b23ef6678fdcef'),
	 (4,'Config',1,'',0,'','2022-10-31 05:20:14',1,'registration_uuid ','2b0vk4q3PKKFUUmHQgna8lllsKcNqwKNmeG00MxE'),
	 (7,'Profile',6,'',0,'glpi (2)','2022-11-23 03:41:25',34,'14359','10241'),
	 (8,'Profile',6,'',0,'glpi (2)','2022-11-23 03:41:25',36,'1055','1047'),
	 (9,'Profile',6,'',0,'glpi (2)','2022-11-23 03:43:39',120,'23','0'),
	 (10,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','appliance (714)'),
	 (11,'ProfileRight',714,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (12,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','backup (715)');
INSERT INTO glpi_dev.glpi_logs (id,itemtype,items_id,itemtype_link,linked_action,user_name,date_mod,id_search_option,old_value,new_value) VALUES
	 (13,'ProfileRight',715,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (14,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','bookmark_public (716)'),
	 (15,'ProfileRight',716,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (16,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','budget (717)'),
	 (17,'ProfileRight',717,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (18,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','cable_management (718)'),
	 (19,'ProfileRight',718,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (20,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','calendar (719)'),
	 (21,'ProfileRight',719,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (22,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','cartridge (720)');
INSERT INTO glpi_dev.glpi_logs (id,itemtype,items_id,itemtype_link,linked_action,user_name,date_mod,id_search_option,old_value,new_value) VALUES
	 (23,'ProfileRight',720,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (24,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','certificate (721)'),
	 (25,'ProfileRight',721,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (26,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','change (722)'),
	 (27,'ProfileRight',722,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (28,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','changevalidation (723)'),
	 (29,'ProfileRight',723,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (30,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','cluster (724)'),
	 (31,'ProfileRight',724,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (32,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','computer (725)');
INSERT INTO glpi_dev.glpi_logs (id,itemtype,items_id,itemtype_link,linked_action,user_name,date_mod,id_search_option,old_value,new_value) VALUES
	 (33,'ProfileRight',725,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (34,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','config (726)'),
	 (35,'ProfileRight',726,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (36,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','consumable (727)'),
	 (37,'ProfileRight',727,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (38,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','contact_enterprise (728)'),
	 (39,'ProfileRight',728,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (40,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','contract (729)'),
	 (41,'ProfileRight',729,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (42,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','dashboard (730)');
INSERT INTO glpi_dev.glpi_logs (id,itemtype,items_id,itemtype_link,linked_action,user_name,date_mod,id_search_option,old_value,new_value) VALUES
	 (43,'ProfileRight',730,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (44,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','database (731)'),
	 (45,'ProfileRight',731,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (46,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','datacenter (732)'),
	 (47,'ProfileRight',732,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (48,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','device (733)'),
	 (49,'ProfileRight',733,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (50,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','devicesimcard_pinpuk (734)'),
	 (51,'ProfileRight',734,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (52,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','document (735)');
INSERT INTO glpi_dev.glpi_logs (id,itemtype,items_id,itemtype_link,linked_action,user_name,date_mod,id_search_option,old_value,new_value) VALUES
	 (53,'ProfileRight',735,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (54,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','domain (736)'),
	 (55,'ProfileRight',736,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (56,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','dropdown (737)'),
	 (57,'ProfileRight',737,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (58,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','entity (738)'),
	 (59,'ProfileRight',738,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (60,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','externalevent (739)'),
	 (61,'ProfileRight',739,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (62,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','followup (740)');
INSERT INTO glpi_dev.glpi_logs (id,itemtype,items_id,itemtype_link,linked_action,user_name,date_mod,id_search_option,old_value,new_value) VALUES
	 (63,'ProfileRight',740,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (64,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','global_validation (741)'),
	 (65,'ProfileRight',741,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (66,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','group (742)'),
	 (67,'ProfileRight',742,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (68,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','infocom (743)'),
	 (69,'ProfileRight',743,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (70,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','internet (744)'),
	 (71,'ProfileRight',744,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (72,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','inventory (745)');
INSERT INTO glpi_dev.glpi_logs (id,itemtype,items_id,itemtype_link,linked_action,user_name,date_mod,id_search_option,old_value,new_value) VALUES
	 (73,'ProfileRight',745,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (74,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','itilcategory (746)'),
	 (75,'ProfileRight',746,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (76,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','itilfollowuptemplate (747)'),
	 (77,'ProfileRight',747,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (78,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','itiltemplate (748)'),
	 (79,'ProfileRight',748,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (80,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','knowbase (749)'),
	 (81,'ProfileRight',749,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (82,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','knowbasecategory (750)');
INSERT INTO glpi_dev.glpi_logs (id,itemtype,items_id,itemtype_link,linked_action,user_name,date_mod,id_search_option,old_value,new_value) VALUES
	 (83,'ProfileRight',750,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (84,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','license (751)'),
	 (85,'ProfileRight',751,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (86,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','line (752)'),
	 (87,'ProfileRight',752,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (88,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','lineoperator (753)'),
	 (89,'ProfileRight',753,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (90,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','link (754)'),
	 (91,'ProfileRight',754,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (92,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','location (755)');
INSERT INTO glpi_dev.glpi_logs (id,itemtype,items_id,itemtype_link,linked_action,user_name,date_mod,id_search_option,old_value,new_value) VALUES
	 (93,'ProfileRight',755,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (94,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','logs (756)'),
	 (95,'ProfileRight',756,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (96,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','monitor (757)'),
	 (97,'ProfileRight',757,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (98,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','networking (758)'),
	 (99,'ProfileRight',758,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (100,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','notification (759)'),
	 (101,'ProfileRight',759,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (102,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','password_update (760)');
INSERT INTO glpi_dev.glpi_logs (id,itemtype,items_id,itemtype_link,linked_action,user_name,date_mod,id_search_option,old_value,new_value) VALUES
	 (103,'ProfileRight',760,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (104,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','pendingreason (761)'),
	 (105,'ProfileRight',761,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (106,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','peripheral (762)'),
	 (107,'ProfileRight',762,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (108,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','personalization (763)'),
	 (109,'ProfileRight',763,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (110,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','phone (764)'),
	 (111,'ProfileRight',764,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (112,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','planning (765)');
INSERT INTO glpi_dev.glpi_logs (id,itemtype,items_id,itemtype_link,linked_action,user_name,date_mod,id_search_option,old_value,new_value) VALUES
	 (113,'ProfileRight',765,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (114,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','printer (766)'),
	 (115,'ProfileRight',766,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (116,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','problem (767)'),
	 (117,'ProfileRight',767,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (118,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','profile (768)'),
	 (119,'ProfileRight',768,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (120,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','project (769)'),
	 (121,'ProfileRight',769,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (122,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','projecttask (770)');
INSERT INTO glpi_dev.glpi_logs (id,itemtype,items_id,itemtype_link,linked_action,user_name,date_mod,id_search_option,old_value,new_value) VALUES
	 (123,'ProfileRight',770,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (124,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','queuednotification (771)'),
	 (125,'ProfileRight',771,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (126,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','recurrentchange (772)'),
	 (127,'ProfileRight',772,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (128,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','reminder_public (773)'),
	 (129,'ProfileRight',773,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (130,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','reports (774)'),
	 (131,'ProfileRight',774,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (132,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','reservation (775)');
INSERT INTO glpi_dev.glpi_logs (id,itemtype,items_id,itemtype_link,linked_action,user_name,date_mod,id_search_option,old_value,new_value) VALUES
	 (133,'ProfileRight',775,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (134,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','rssfeed_public (776)'),
	 (135,'ProfileRight',776,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (136,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','rule_asset (777)'),
	 (137,'ProfileRight',777,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (138,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','rule_dictionnary_dropdown (778)'),
	 (139,'ProfileRight',778,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (140,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','rule_dictionnary_printer (779)'),
	 (141,'ProfileRight',779,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (142,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','rule_dictionnary_software (780)');
INSERT INTO glpi_dev.glpi_logs (id,itemtype,items_id,itemtype_link,linked_action,user_name,date_mod,id_search_option,old_value,new_value) VALUES
	 (143,'ProfileRight',780,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (144,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','rule_import (781)'),
	 (145,'ProfileRight',781,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (146,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','rule_ldap (782)'),
	 (147,'ProfileRight',782,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (148,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','rule_location (783)'),
	 (149,'ProfileRight',783,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (150,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','rule_mailcollector (784)'),
	 (151,'ProfileRight',784,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (152,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','rule_softwarecategories (785)');
INSERT INTO glpi_dev.glpi_logs (id,itemtype,items_id,itemtype_link,linked_action,user_name,date_mod,id_search_option,old_value,new_value) VALUES
	 (153,'ProfileRight',785,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (154,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','rule_ticket (786)'),
	 (155,'ProfileRight',786,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (156,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','search_config (787)'),
	 (157,'ProfileRight',787,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (158,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','show_group_hardware (788)'),
	 (159,'ProfileRight',788,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (160,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','slm (789)'),
	 (161,'ProfileRight',789,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (162,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','software (790)');
INSERT INTO glpi_dev.glpi_logs (id,itemtype,items_id,itemtype_link,linked_action,user_name,date_mod,id_search_option,old_value,new_value) VALUES
	 (163,'ProfileRight',790,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (164,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','solutiontemplate (791)'),
	 (165,'ProfileRight',791,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (166,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','state (792)'),
	 (167,'ProfileRight',792,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (168,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','statistic (793)'),
	 (169,'ProfileRight',793,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (170,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','task (794)'),
	 (171,'ProfileRight',794,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (172,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','taskcategory (795)');
INSERT INTO glpi_dev.glpi_logs (id,itemtype,items_id,itemtype_link,linked_action,user_name,date_mod,id_search_option,old_value,new_value) VALUES
	 (173,'ProfileRight',795,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (174,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','ticket (796)'),
	 (175,'ProfileRight',796,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (176,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','ticketcost (797)'),
	 (177,'ProfileRight',797,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (178,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','ticketrecurrent (798)'),
	 (179,'ProfileRight',798,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (180,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','ticketvalidation (799)'),
	 (181,'ProfileRight',799,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (182,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','transfer (800)');
INSERT INTO glpi_dev.glpi_logs (id,itemtype,items_id,itemtype_link,linked_action,user_name,date_mod,id_search_option,old_value,new_value) VALUES
	 (183,'ProfileRight',800,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (184,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','typedoc (801)'),
	 (185,'ProfileRight',801,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (186,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-23 03:55:11',0,'','user (802)'),
	 (187,'ProfileRight',802,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (188,'Profile',9,'0',20,'glpi (2)','2022-11-23 03:55:11',0,'',''),
	 (189,'Profile',9,'',0,'glpi (2)','2022-11-23 03:56:43',5,'helpdesk','central'),
	 (190,'Profile',9,'',0,'glpi (2)','2022-11-23 03:57:50',110,'','{"1":{"7":0,"2":0,"3":0,"4":0,"5":0,"8":0,"6":0},"7":{"1":0,"2":0,"3":0,"4":0,"5":0,"8":0,"6":0},"2":{"1":0,"7":0,"3":0,"4":0,"5":0,"8":0,"6":0},"3":{"1":0,"7":0,"2":0,"4":0,"5":0,'),
	 (191,'Profile',9,'',0,'glpi (2)','2022-11-23 03:57:50',111,'','{"1":{"9":0,"10":0,"7":0,"4":0,"11":0,"12":0,"5":0,"8":0,"6":0,"14":0},"9":{"1":0,"10":0,"7":0,"4":0,"11":0,"12":0,"5":0,"8":0,"6":0,"14":0},"10":{"1":0,"9":0,"7":0,"4":0,"11":0,"1'),
	 (192,'User',7,'Profile',17,'glpi (2)','2022-11-23 03:59:18',0,'','kb-manager (9)');
INSERT INTO glpi_dev.glpi_logs (id,itemtype,items_id,itemtype_link,linked_action,user_name,date_mod,id_search_option,old_value,new_value) VALUES
	 (193,'User',7,'0',20,'glpi (2)','2022-11-23 03:59:18',0,'',''),
	 (194,'Profile',9,'',0,'glpi (2)','2022-11-23 04:00:46',34,'0','15383'),
	 (195,'KnowbaseItem',2,'Group',15,'kb manager (7)','2022-11-23 04:12:43',0,'','Tim Teknis (2)'),
	 (196,'KnowbaseItem',2,'0',20,'kb manager (7)','2022-11-23 04:12:43',0,'',''),
	 (197,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-26 07:28:56',0,'','calendar (714)'),
	 (198,'ProfileRight',714,'0',20,'glpi (2)','2022-11-26 07:28:56',0,'',''),
	 (199,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-26 07:28:56',0,'','config (715)'),
	 (200,'ProfileRight',715,'0',20,'glpi (2)','2022-11-26 07:28:56',0,'',''),
	 (201,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-26 07:28:56',0,'','dashboard (716)'),
	 (202,'ProfileRight',716,'0',20,'glpi (2)','2022-11-26 07:28:56',0,'','');
INSERT INTO glpi_dev.glpi_logs (id,itemtype,items_id,itemtype_link,linked_action,user_name,date_mod,id_search_option,old_value,new_value) VALUES
	 (203,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-26 07:28:56',0,'','device (717)'),
	 (204,'ProfileRight',717,'0',20,'glpi (2)','2022-11-26 07:28:56',0,'',''),
	 (205,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-26 07:28:56',0,'','dropdown (718)'),
	 (206,'ProfileRight',718,'0',20,'glpi (2)','2022-11-26 07:28:56',0,'',''),
	 (207,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-26 07:28:56',0,'','itilcategory (719)'),
	 (208,'ProfileRight',719,'0',20,'glpi (2)','2022-11-26 07:28:56',0,'',''),
	 (209,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-26 07:28:56',0,'','itilfollowuptemplate (720)'),
	 (210,'ProfileRight',720,'0',20,'glpi (2)','2022-11-26 07:28:56',0,'',''),
	 (211,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-26 07:28:56',0,'','knowbasecategory (721)'),
	 (212,'ProfileRight',721,'0',20,'glpi (2)','2022-11-26 07:28:56',0,'','');
INSERT INTO glpi_dev.glpi_logs (id,itemtype,items_id,itemtype_link,linked_action,user_name,date_mod,id_search_option,old_value,new_value) VALUES
	 (213,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-26 07:28:56',0,'','lineoperator (722)'),
	 (214,'ProfileRight',722,'0',20,'glpi (2)','2022-11-26 07:28:56',0,'',''),
	 (215,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-26 07:28:56',0,'','link (723)'),
	 (216,'ProfileRight',723,'0',20,'glpi (2)','2022-11-26 07:28:56',0,'',''),
	 (217,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-26 07:28:56',0,'','location (724)'),
	 (218,'ProfileRight',724,'0',20,'glpi (2)','2022-11-26 07:28:56',0,'',''),
	 (219,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-26 07:28:56',0,'','notification (725)'),
	 (220,'ProfileRight',725,'0',20,'glpi (2)','2022-11-26 07:28:56',0,'',''),
	 (221,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-26 07:28:56',0,'','personalization (726)'),
	 (222,'ProfileRight',726,'0',20,'glpi (2)','2022-11-26 07:28:56',0,'','');
INSERT INTO glpi_dev.glpi_logs (id,itemtype,items_id,itemtype_link,linked_action,user_name,date_mod,id_search_option,old_value,new_value) VALUES
	 (223,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-26 07:28:56',0,'','search_config (727)'),
	 (224,'ProfileRight',727,'0',20,'glpi (2)','2022-11-26 07:28:56',0,'',''),
	 (225,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-26 07:28:56',0,'','slm (728)'),
	 (226,'ProfileRight',728,'0',20,'glpi (2)','2022-11-26 07:28:56',0,'',''),
	 (227,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-26 07:28:56',0,'','solutiontemplate (729)'),
	 (228,'ProfileRight',729,'0',20,'glpi (2)','2022-11-26 07:28:56',0,'',''),
	 (229,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-26 07:28:56',0,'','state (730)'),
	 (230,'ProfileRight',730,'0',20,'glpi (2)','2022-11-26 07:28:56',0,'',''),
	 (231,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-26 07:28:56',0,'','taskcategory (731)'),
	 (232,'ProfileRight',731,'0',20,'glpi (2)','2022-11-26 07:28:56',0,'','');
INSERT INTO glpi_dev.glpi_logs (id,itemtype,items_id,itemtype_link,linked_action,user_name,date_mod,id_search_option,old_value,new_value) VALUES
	 (233,'Profile',9,'ProfileRight',17,'glpi (2)','2022-11-26 07:28:56',0,'','typedoc (732)'),
	 (234,'ProfileRight',732,'0',20,'glpi (2)','2022-11-26 07:28:56',0,'',''),
	 (235,'Profile',9,'',0,'glpi (2)','2022-11-26 07:29:13',34,'0','15383'),
	 (236,'Profile',5,'',0,'glpi (2)','2022-11-26 07:31:36',34,'10240','2049'),
	 (237,'Profile',2,'',0,'glpi (2)','2022-11-26 07:32:08',34,'10241','2049'),
	 (238,'Profile',2,'',0,'glpi (2)','2022-11-26 07:32:08',63,'1','0'),
	 (239,'Profile',2,'',0,'glpi (2)','2022-11-26 07:32:08',120,'1','0'),
	 (240,'Profile',8,'',0,'glpi (2)','2022-11-26 07:32:35',64,'1','0'),
	 (241,'Profile',8,'',0,'glpi (2)','2022-11-26 07:32:35',34,'10241','2049'),
	 (242,'Profile',8,'',0,'glpi (2)','2022-11-26 07:32:35',63,'1','0');
INSERT INTO glpi_dev.glpi_logs (id,itemtype,items_id,itemtype_link,linked_action,user_name,date_mod,id_search_option,old_value,new_value) VALUES
	 (243,'Profile',8,'',0,'glpi (2)','2022-11-26 07:32:35',120,'1','0'),
	 (244,'Profile',1,'',0,'glpi (2)','2022-11-26 07:33:02',63,'1','0'),
	 (245,'Profile',1,'',0,'glpi (2)','2022-11-26 07:33:02',120,'1','0'),
	 (246,'Profile',7,'',0,'glpi (2)','2022-11-26 07:33:38',34,'14359','14337'),
	 (247,'Profile',7,'',0,'glpi (2)','2022-11-26 07:33:38',63,'23','0'),
	 (248,'Profile',7,'',0,'glpi (2)','2022-11-26 07:33:38',120,'23','0'),
	 (249,'Profile',6,'',0,'glpi (2)','2022-11-26 07:34:16',34,'14359','14337'),
	 (250,'Profile',6,'',0,'glpi (2)','2022-11-26 07:34:16',63,'23','0'),
	 (251,'Profile',6,'',0,'glpi (2)','2022-11-26 07:34:16',120,'23','0'),
	 (252,'Profile',6,'',0,'glpi (2)','2022-11-26 08:38:28',34,'14337','14339');
INSERT INTO glpi_dev.glpi_logs (id,itemtype,items_id,itemtype_link,linked_action,user_name,date_mod,id_search_option,old_value,new_value) VALUES
	 (253,'Profile',6,'',0,'glpi (2)','2022-11-26 08:38:48',34,'14339','15361'),
	 (254,'Profile',6,'',0,'glpi (2)','2022-11-26 08:39:31',34,'15361','15360'),
	 (255,'SLM',1,'0',20,'glpi (2)','2022-11-26 08:58:34',0,'',''),
	 (256,'RuleTicket',71,'0',20,'glpi (2)','2022-11-26 09:07:06',0,'',''),
	 (257,'RuleTicket',71,'RuleCriteria',17,'glpi (2)','2022-11-26 09:07:51',0,'','Category - Name is Layanan Aplikasi Jaringan (Root Entity) (168)'),
	 (258,'RuleCriteria',168,'0',20,'glpi (2)','2022-11-26 09:07:51',0,'',''),
	 (259,'RuleTicket',71,'RuleCriteria',17,'glpi (2)','2022-11-26 09:08:37',0,'','Type is Request (169)'),
	 (260,'RuleCriteria',169,'0',20,'glpi (2)','2022-11-26 09:08:37',0,'',''),
	 (261,'RuleTicket',71,'RuleCriteria',17,'glpi (2)','2022-11-26 09:29:25',0,'','Category - Complete Name is Layanan Aplikasi Sensus-Survei &#62; Aplikasi Direktorat Analisis dan Pengembangan Statistik &#62; Permintaan pembangunan aplikasi (Root Entity) (170)'),
	 (262,'RuleCriteria',170,'0',20,'glpi (2)','2022-11-26 09:29:25',0,'','');
INSERT INTO glpi_dev.glpi_logs (id,itemtype,items_id,itemtype_link,linked_action,user_name,date_mod,id_search_option,old_value,new_value) VALUES
	 (263,'RuleTicket',71,'RuleCriteria',17,'glpi (2)','2022-11-26 09:29:43',0,'','Category - Name is Layanan Aplikasi Sensus-Survei &#62; Aplikasi Direktorat Analisis dan Pengembangan Statistik &#62; Permintaan pengembangan aplikasi (Root Entity) (171)'),
	 (264,'RuleCriteria',171,'0',20,'glpi (2)','2022-11-26 09:29:43',0,'',''),
	 (265,'RuleTicket',71,'RuleAction',17,'glpi (2)','2022-11-26 09:31:43',0,'','SLA Time to Resolve Assign TTR 30 HARI (71)'),
	 (266,'RuleAction',71,'0',20,'glpi (2)','2022-11-26 09:31:43',0,'',''),
	 (267,'RuleTicket',71,'RuleAction',17,'glpi (2)','2022-11-26 09:32:21',0,'','SLA Time to Own Assign TTO Ticket (72)'),
	 (268,'RuleAction',72,'0',20,'glpi (2)','2022-11-26 09:32:21',0,'',''),
	 (269,'RuleTicket',75,'0',20,'glpi (2)','2022-11-26 10:02:22',0,'',''),
	 (270,'RuleTicket',75,'',0,'glpi (2)','2022-11-26 10:02:34',8,'0','1'),
	 (271,'RuleTicket',75,'',0,'glpi (2)','2022-11-26 10:02:52',1,'RULE 2 HARI','Rule 2 Hari'),
	 (272,'RuleTicket',76,'0',20,'glpi (2)','2022-11-26 10:06:00',0,'','');
INSERT INTO glpi_dev.glpi_logs (id,itemtype,items_id,itemtype_link,linked_action,user_name,date_mod,id_search_option,old_value,new_value) VALUES
	 (273,'RuleTicket',76,'RuleCriteria',17,'glpi (2)','2022-11-26 10:06:21',0,'','Type is Incident (172)'),
	 (274,'RuleCriteria',172,'0',20,'glpi (2)','2022-11-26 10:06:21',0,'',''),
	 (275,'RuleCriteria',172,'',0,'glpi (2)','2022-11-26 10:06:28',3,'1','2'),
	 (276,'RuleTicket',76,'RuleCriteria',18,'glpi (2)','2022-11-26 10:06:28',0,'1','2'),
	 (277,'RuleTicket',76,'RuleCriteria',17,'glpi (2)','2022-11-26 10:06:58',0,'','Category - Name is Layanan Konsultasi &#62; Permintaan Konsultasi terkait Pengolahan Data (Root Entity) (173)'),
	 (278,'RuleCriteria',173,'0',20,'glpi (2)','2022-11-26 10:06:58',0,'',''),
	 (279,'RuleTicket',76,'RuleAction',17,'glpi (2)','2022-11-26 10:07:17',0,'','SLA Time to Resolve Assign TTR 7 HARI (73)'),
	 (280,'RuleAction',73,'0',20,'glpi (2)','2022-11-26 10:07:17',0,'',''),
	 (281,'RuleTicket',76,'RuleAction',17,'glpi (2)','2022-11-26 10:07:29',0,'','SLA Time to Own Assign TTO Ticket (74)'),
	 (282,'RuleAction',74,'0',20,'glpi (2)','2022-11-26 10:07:29',0,'','');
INSERT INTO glpi_dev.glpi_logs (id,itemtype,items_id,itemtype_link,linked_action,user_name,date_mod,id_search_option,old_value,new_value) VALUES
	 (283,'RuleTicket',75,'0',20,'glpi (2)','2022-11-26 13:03:54',0,'',''),
	 (284,'RuleTicket',75,'RuleCriteria',17,'glpi (2)','2022-11-26 13:04:13',0,'','Type is Request (215)'),
	 (285,'RuleCriteria',215,'0',20,'glpi (2)','2022-11-26 13:04:13',0,'',''),
	 (286,'RuleTicket',75,'RuleCriteria',17,'glpi (2)','2022-11-26 13:05:07',0,'','Category - Name is Layanan Konsultasi &#62; Permintaan Konsultasi Jaringan (Root Entity) (216)'),
	 (287,'RuleCriteria',216,'0',20,'glpi (2)','2022-11-26 13:05:07',0,'',''),
	 (288,'RuleTicket',75,'RuleAction',17,'glpi (2)','2022-11-26 13:06:23',0,'','SLA Time to Resolve Assign TTR 7 HARI (79)'),
	 (289,'RuleAction',79,'0',20,'glpi (2)','2022-11-26 13:06:23',0,'',''),
	 (290,'RuleTicket',75,'RuleAction',17,'glpi (2)','2022-11-26 13:06:32',0,'','SLA Time to Own Assign TTO Ticket (80)'),
	 (291,'RuleAction',80,'0',20,'glpi (2)','2022-11-26 13:06:32',0,'',''),
	 (292,'RuleTicket',75,'RuleCriteria',17,'glpi (2)','2022-11-26 13:43:08',0,'','Category - Name is Layanan Data &#62; Pengolahan Data Sensus-Survei yang Sedang Berlangsung &#62; Permintaan pemrosesan (Root Entity) (217)');
INSERT INTO glpi_dev.glpi_logs (id,itemtype,items_id,itemtype_link,linked_action,user_name,date_mod,id_search_option,old_value,new_value) VALUES
	 (293,'RuleCriteria',217,'0',20,'glpi (2)','2022-11-26 13:43:08',0,'',''),
	 (294,'RuleTicket',75,'RuleCriteria',17,'glpi (2)','2022-11-26 13:43:27',0,'','Category - Name is Layanan Data &#62; Pengolahan Data Sensus-Survei yang Sedang Berlangsung &#62; Permintaan tabulasi (Root Entity) (218)'),
	 (295,'RuleCriteria',218,'0',20,'glpi (2)','2022-11-26 13:43:27',0,'',''),
	 (296,'RuleTicket',75,'RuleCriteria',17,'glpi (2)','2022-11-26 13:44:12',0,'','Category - Name is Layanan Infrastruktur &#38; Platform Jaringan &#62; Permintaan terkait Website (Root Entity) (219)'),
	 (297,'RuleCriteria',219,'0',20,'glpi (2)','2022-11-26 13:44:12',0,'',''),
	 (298,'RuleTicket',75,'RuleCriteria',17,'glpi (2)','2022-11-26 13:44:29',0,'','Category - Name is Layanan Infrastruktur &#38; Platform Jaringan &#62; Permintaan terkait Database (Root Entity) (220)'),
	 (299,'RuleCriteria',220,'0',20,'glpi (2)','2022-11-26 13:44:29',0,'',''),
	 (300,'RuleTicket',75,'RuleCriteria',17,'glpi (2)','2022-11-26 13:44:43',0,'','Category - Name is Layanan Aplikasi Jaringan &#62; Permintaan terkait Email (Root Entity) (221)'),
	 (301,'RuleCriteria',221,'0',20,'glpi (2)','2022-11-26 13:44:43',0,'',''),
	 (302,'RuleTicket',75,'RuleCriteria',17,'glpi (2)','2022-11-26 13:44:57',0,'','Category - Name is Layanan Aplikasi Jaringan &#62; Permintaan terkait Personal Drive (Root Entity) (222)');
INSERT INTO glpi_dev.glpi_logs (id,itemtype,items_id,itemtype_link,linked_action,user_name,date_mod,id_search_option,old_value,new_value) VALUES
	 (303,'RuleCriteria',222,'0',20,'glpi (2)','2022-11-26 13:44:57',0,'',''),
	 (304,'RuleTicket',75,'RuleCriteria',17,'glpi (2)','2022-11-26 13:45:11',0,'','Category - Name is Layanan Aplikasi Jaringan &#62; Permintaan terkait Community (Root Entity) (223)'),
	 (305,'RuleCriteria',223,'0',20,'glpi (2)','2022-11-26 13:45:11',0,'',''),
	 (306,'RuleTicket',75,'RuleCriteria',17,'glpi (2)','2022-11-26 13:45:25',0,'','Category - Name is Layanan Aplikasi Jaringan &#62; Permintaan terkait Kolaborasi (Root Entity) (224)'),
	 (307,'RuleCriteria',224,'0',20,'glpi (2)','2022-11-26 13:45:25',0,'',''),
	 (308,'RuleTicket',75,'RuleCriteria',17,'glpi (2)','2022-11-26 13:45:39',0,'','Category - Name is Layanan Aplikasi Jaringan &#62; Permintaan terkait Single Sign On (Root Entity) (225)'),
	 (309,'RuleCriteria',225,'0',20,'glpi (2)','2022-11-26 13:45:39',0,'',''),
	 (310,'RuleTicket',75,'RuleCriteria',17,'glpi (2)','2022-11-26 13:45:54',0,'','Category - Name is Layanan Aplikasi Jaringan &#62; Permintaan terkait Code Repository (Root Entity) (226)'),
	 (311,'RuleCriteria',226,'0',20,'glpi (2)','2022-11-26 13:45:54',0,'',''),
	 (312,'RuleTicket',75,'RuleCriteria',17,'glpi (2)','2022-11-26 13:46:11',0,'','Category - Name is Layanan Keamanan Jaringan &#62; Permintaan Pengujian Keamanan Aplikasi (Root Entity) (227)');
INSERT INTO glpi_dev.glpi_logs (id,itemtype,items_id,itemtype_link,linked_action,user_name,date_mod,id_search_option,old_value,new_value) VALUES
	 (313,'RuleCriteria',227,'0',20,'glpi (2)','2022-11-26 13:46:11',0,'',''),
	 (314,'RuleTicket',75,'RuleCriteria',17,'glpi (2)','2022-11-26 13:46:32',0,'','Category - Name is Layanan Konsultasi &#62; Permintaan Konsultasi Jaringan (Root Entity) (228)'),
	 (315,'RuleCriteria',228,'0',20,'glpi (2)','2022-11-26 13:46:32',0,'',''),
	 (316,'RuleTicket',75,'RuleCriteria',17,'glpi (2)','2022-11-26 13:47:16',0,'','Category - Name is Layanan Data &#62; Pengolahan Data Sensus/Survei Final &#62; Permintaan data sensus/survei final (Root Entity) (229)'),
	 (317,'RuleCriteria',229,'0',20,'glpi (2)','2022-11-26 13:47:16',0,'',''),
	 (318,'RuleTicket',75,'RuleCriteria',17,'glpi (2)','2022-11-26 13:47:33',0,'','Category - Name is Layanan Data &#62; Pengolahan Data Sensus/Survei Final &#62; Permintaan penyerahan data dari Subject Matter (Root Entity) (230)'),
	 (319,'RuleCriteria',230,'0',20,'glpi (2)','2022-11-26 13:47:33',0,'',''),
	 (320,'RuleTicket',75,'RuleCriteria',17,'glpi (2)','2022-11-26 13:48:03',0,'','Category - Name is Layanan Data &#62; Pengolahan Data Sistem Informasi Manajemen (Root Entity) (231)'),
	 (321,'RuleCriteria',231,'0',20,'glpi (2)','2022-11-26 13:48:03',0,'',''),
	 (322,'RuleTicket',75,'RuleCriteria',17,'glpi (2)','2022-11-26 13:48:38',0,'','Category - Name is Layanan Meeting Online &#62; Permintaan terkait MeetApp (Root Entity) (232)');
INSERT INTO glpi_dev.glpi_logs (id,itemtype,items_id,itemtype_link,linked_action,user_name,date_mod,id_search_option,old_value,new_value) VALUES
	 (323,'RuleCriteria',232,'0',20,'glpi (2)','2022-11-26 13:48:38',0,'',''),
	 (324,'RuleTicket',75,'RuleCriteria',17,'glpi (2)','2022-11-26 13:48:57',0,'','Category - Name is Layanan Meeting Online &#62; Permintaan terkait Zoom (di-nonaktif-kan) (Root Entity) (233)'),
	 (325,'RuleCriteria',233,'0',20,'glpi (2)','2022-11-26 13:48:57',0,'',''),
	 (326,'RuleTicket',75,'RuleCriteria',17,'glpi (2)','2022-11-26 13:49:11',0,'','Category - Name is Layanan WhatsApp Business &#62; Permintaan terkait WhatsApp Business (Root Entity) (234)'),
	 (327,'RuleCriteria',234,'0',20,'glpi (2)','2022-11-26 13:49:11',0,'',''),
	 (328,'RuleTicket',75,'RuleCriteria',17,'glpi (2)','2022-11-26 13:49:41',0,'','Category - Name is Layanan Kaizala &#62; Permintaan pembuatan groupchat Kaizala. (Root Entity) (235)'),
	 (329,'RuleCriteria',235,'0',20,'glpi (2)','2022-11-26 13:49:41',0,'',''),
	 (330,'RuleTicket',75,'RuleCriteria',17,'glpi (2)','2022-11-26 13:50:51',0,'','Category - Name is Layanan Kaizala &#62; Permintaan broadcast message/pemasangan konten. (Root Entity) (236)'),
	 (331,'RuleCriteria',236,'0',20,'glpi (2)','2022-11-26 13:50:51',0,'',''),
	 (332,'RuleTicket',75,'RuleCriteria',17,'glpi (2)','2022-11-26 13:51:37',0,'','Category - Name is Layanan Kaizala &#62; Permintaan pembuatan survei sederhana. (Root Entity) (237)');
INSERT INTO glpi_dev.glpi_logs (id,itemtype,items_id,itemtype_link,linked_action,user_name,date_mod,id_search_option,old_value,new_value) VALUES
	 (333,'RuleCriteria',237,'0',20,'glpi (2)','2022-11-26 13:51:37',0,'',''),
	 (334,'RuleTicket',75,'RuleCriteria',17,'glpi (2)','2022-11-26 13:51:52',0,'','Category - Name is Layanan Kaizala &#62; Permintaan pembuatan multifitur (Root Entity) (238)'),
	 (335,'RuleCriteria',238,'0',20,'glpi (2)','2022-11-26 13:51:52',0,'',''),
	 (336,'RuleTicket',76,'0',20,'glpi (2)','2022-11-26 13:53:15',0,'',''),
	 (337,'RuleTicket',76,'RuleCriteria',17,'glpi (2)','2022-11-26 13:53:27',0,'','Type is Request (239)'),
	 (338,'RuleCriteria',239,'0',20,'glpi (2)','2022-11-26 13:53:27',0,'',''),
	 (339,'RuleTicket',76,'RuleCriteria',17,'glpi (2)','2022-11-26 13:54:14',0,'','Category - Name is Layanan Piranti Lunak COTS &#62; Permintaan instalasi/aktivasi piranti lunak COTS (Root Entity) (240)'),
	 (340,'RuleCriteria',240,'0',20,'glpi (2)','2022-11-26 13:54:14',0,'',''),
	 (341,'RuleTicket',76,'RuleCriteria',17,'glpi (2)','2022-11-26 13:54:45',0,'','Category - Name is Layanan Back Office Selindo &#62; Permintaan pengelolaan operator BOS (Root Entity) (241)'),
	 (342,'RuleCriteria',241,'0',20,'glpi (2)','2022-11-26 13:54:45',0,'','');
INSERT INTO glpi_dev.glpi_logs (id,itemtype,items_id,itemtype_link,linked_action,user_name,date_mod,id_search_option,old_value,new_value) VALUES
	 (343,'RuleTicket',76,'RuleCriteria',17,'glpi (2)','2022-11-26 13:55:10',0,'','Category - Name is Layanan OMS &#62; Permintaan Penambahan Kategori Knowledge untuk KMS (Root Entity) (242)'),
	 (344,'RuleCriteria',242,'0',20,'glpi (2)','2022-11-26 13:55:10',0,'',''),
	 (345,'RuleTicket',77,'0',20,'glpi (2)','2022-11-26 13:56:00',0,'',''),
	 (346,'RuleTicket',77,'RuleCriteria',17,'glpi (2)','2022-11-26 13:56:12',0,'','Type is Incident (243)'),
	 (347,'RuleCriteria',243,'0',20,'glpi (2)','2022-11-26 13:56:12',0,'',''),
	 (348,'RuleCriteria',243,'',0,'glpi (2)','2022-11-26 13:56:21',3,'1','2'),
	 (349,'RuleTicket',77,'RuleCriteria',18,'glpi (2)','2022-11-26 13:56:21',0,'1','2'),
	 (350,'RuleTicket',77,'RuleCriteria',17,'glpi (2)','2022-11-26 13:56:47',0,'','Category - Name is Layanan Infrastruktur &#38; Platform Jaringan &#62; Permintaan terkait Video Conference (Root Entity) (244)'),
	 (351,'RuleCriteria',244,'0',20,'glpi (2)','2022-11-26 13:56:47',0,'',''),
	 (352,'RuleTicket',77,'RuleCriteria',17,'glpi (2)','2022-11-26 13:57:17',0,'','Category - Name is Layanan Pengelolaan E-Sign &#62; Permintaan reset passphrase dan password portal BSrE (Root Entity) (245)');
INSERT INTO glpi_dev.glpi_logs (id,itemtype,items_id,itemtype_link,linked_action,user_name,date_mod,id_search_option,old_value,new_value) VALUES
	 (354,'RuleTicket',77,'RuleCriteria',17,'glpi (2)','2022-11-26 13:57:38',0,'','Category - Name is Layanan Elearning BPS &#62; Permintaan terkait Elearning BPS (Root Entity) (246)'),
	 (356,'RuleTicket',78,'0',20,'glpi (2)','2022-11-26 13:58:32',0,'',''),
	 (357,'RuleTicket',78,'RuleCriteria',17,'glpi (2)','2022-11-26 13:58:43',0,'','Type is Request (247)'),
	 (358,'RuleCriteria',247,'0',20,'glpi (2)','2022-11-26 13:58:43',0,'',''),
	 (359,'RuleTicket',78,'RuleCriteria',17,'glpi (2)','2022-11-26 13:58:59',0,'','Category - Name is Layanan Data &#62; Pengolahan Data Sensus-Survei yang Sedang Berlangsung &#62; Permintaan kompilasi (Root Entity) (248)'),
	 (360,'RuleCriteria',248,'0',20,'glpi (2)','2022-11-26 13:58:59',0,'',''),
	 (361,'RuleTicket',78,'RuleCriteria',17,'glpi (2)','2022-11-26 13:59:21',0,'','Category - Name is Layanan Koneksi Jaringan &#62; Permintaan terkait LAN BPS Pusat (Root Entity) (249)'),
	 (362,'RuleCriteria',249,'0',20,'glpi (2)','2022-11-26 13:59:21',0,'',''),
	 (363,'RuleTicket',78,'RuleCriteria',17,'glpi (2)','2022-11-26 13:59:41',0,'','Category - Name is Layanan Infrastruktur &#38; Platform Jaringan &#62; Permintaan terkait Server (Root Entity) (250)'),
	 (364,'RuleCriteria',250,'0',20,'glpi (2)','2022-11-26 13:59:41',0,'','');
INSERT INTO glpi_dev.glpi_logs (id,itemtype,items_id,itemtype_link,linked_action,user_name,date_mod,id_search_option,old_value,new_value) VALUES
	 (365,'RuleTicket',78,'RuleCriteria',17,'glpi (2)','2022-11-26 13:59:59',0,'','Category - Name is Layanan Duplikasi HaloSIS &#62; Permintaan Duplikasi HaloSIS (Root Entity) (251)'),
	 (366,'RuleCriteria',251,'0',20,'glpi (2)','2022-11-26 13:59:59',0,'',''),
	 (367,'RuleTicket',75,'',0,'glpi (2)','2022-11-26 14:00:35',3,'4','5'),
	 (368,'RuleTicket',76,'',0,'glpi (2)','2022-11-26 14:00:35',3,'5','4'),
	 (369,'RuleTicket',74,'',0,'glpi (2)','2022-11-26 14:00:41',3,'3','4'),
	 (370,'RuleTicket',76,'',0,'glpi (2)','2022-11-26 14:00:41',3,'4','3'),
	 (371,'RuleTicket',74,'',0,'glpi (2)','2022-11-26 14:00:44',3,'4','5'),
	 (372,'RuleTicket',75,'',0,'glpi (2)','2022-11-26 14:00:44',3,'5','6'),
	 (373,'RuleTicket',77,'',0,'glpi (2)','2022-11-26 14:00:44',3,'6','4'),
	 (374,'RuleTicket',74,'',0,'glpi (2)','2022-11-26 14:00:51',3,'5','6');
INSERT INTO glpi_dev.glpi_logs (id,itemtype,items_id,itemtype_link,linked_action,user_name,date_mod,id_search_option,old_value,new_value) VALUES
	 (375,'RuleTicket',75,'',0,'glpi (2)','2022-11-26 14:00:51',3,'6','5'),
	 (376,'RuleTicket',78,'',0,'glpi (2)','2022-11-26 14:00:54',3,'7','6'),
	 (377,'RuleTicket',74,'',0,'glpi (2)','2022-11-26 14:00:54',3,'6','7'),
	 (378,'RuleTicket',76,'RuleAction',17,'glpi (2)','2022-11-26 14:20:30',0,'','SLA Time to Own Assign TTO Ticket (81)'),
	 (379,'RuleAction',81,'0',20,'glpi (2)','2022-11-26 14:20:30',0,'',''),
	 (380,'RuleTicket',76,'RuleAction',17,'glpi (2)','2022-11-26 14:20:49',0,'','SLA Time to Resolve Assign TTR 2 HARI (82)'),
	 (381,'RuleAction',82,'0',20,'glpi (2)','2022-11-26 14:20:49',0,'',''),
	 (382,'RuleTicket',77,'RuleAction',17,'glpi (2)','2022-11-26 14:21:14',0,'','SLA Time to Own Assign TTO Ticket (83)'),
	 (383,'RuleAction',83,'0',20,'glpi (2)','2022-11-26 14:21:14',0,'',''),
	 (384,'RuleTicket',77,'RuleAction',17,'glpi (2)','2022-11-26 14:21:28',0,'','SLA Time to Resolve Assign TTR 3 HARI (84)');
INSERT INTO glpi_dev.glpi_logs (id,itemtype,items_id,itemtype_link,linked_action,user_name,date_mod,id_search_option,old_value,new_value) VALUES
	 (385,'RuleAction',84,'0',20,'glpi (2)','2022-11-26 14:21:28',0,'',''),
	 (386,'RuleTicket',78,'RuleAction',17,'glpi (2)','2022-11-26 14:30:38',0,'','SLA Time to Own Assign TTO Ticket (85)'),
	 (387,'RuleAction',85,'0',20,'glpi (2)','2022-11-26 14:30:38',0,'',''),
	 (388,'RuleTicket',78,'RuleAction',17,'glpi (2)','2022-11-26 14:30:53',0,'','SLA Time to Resolve Assign TTR 14 HARI (86)'),
	 (389,'RuleAction',86,'0',20,'glpi (2)','2022-11-26 14:30:53',0,'',''),
	 (390,'Ticket',1,'User',15,'post-only (3)','2022-11-27 11:46:55',4,'','post-only (3)'),
	 (391,'Ticket',1,'0',20,'post-only (3)','2022-11-27 11:46:55',0,'',''),
	 (392,'RuleTicket',77,'RuleCriteria',19,'glpi (2)','2022-11-27 11:49:14',0,'Category - Name is Layanan Pengelolaan E-Sign &#62; Permintaan reset passphrase dan password portal BSrE (Root Entity) (245)',''),
	 (393,'RuleTicket',77,'RuleCriteria',19,'glpi (2)','2022-11-27 11:49:14',0,'Category - Name is Layanan Elearning BPS &#62; Permintaan terkait Elearning BPS (Root Entity) (246)',''),
	 (394,'Ticket',2,'User',15,'post-only (3)','2022-11-27 11:49:48',4,'','post-only (3)');
INSERT INTO glpi_dev.glpi_logs (id,itemtype,items_id,itemtype_link,linked_action,user_name,date_mod,id_search_option,old_value,new_value) VALUES
	 (395,'Ticket',2,'0',20,'post-only (3)','2022-11-27 11:49:48',0,'',''),
	 (396,'RuleTicket',77,'',0,'glpi (2)','2022-11-27 11:57:53',5,'AND','OR'),
	 (397,'RuleTicket',77,'RuleCriteria',17,'glpi (2)','2022-11-27 12:02:24',0,'','Category - Name is Layanan Pengelolaan E-Sign &#62; Permintaan reset passphrase dan password portal BSrE (Root Entity) (252)'),
	 (398,'RuleCriteria',252,'0',20,'glpi (2)','2022-11-27 12:02:24',0,'',''),
	 (399,'RuleTicket',77,'RuleCriteria',17,'glpi (2)','2022-11-27 12:02:41',0,'','Category - Name is Layanan Elearning BPS &#62; Permintaan terkait Elearning BPS (Root Entity) (253)'),
	 (400,'RuleCriteria',253,'0',20,'glpi (2)','2022-11-27 12:02:41',0,'',''),
	 (401,'Ticket',3,'User',15,'post-only (3)','2022-11-27 12:03:29',4,'','post-only (3)'),
	 (402,'Ticket',3,'0',20,'post-only (3)','2022-11-27 12:03:29',0,'',''),
	 (403,'Ticket',4,'User',15,'post-only (3)','2022-11-27 12:04:43',4,'','post-only (3)'),
	 (404,'Ticket',4,'0',20,'post-only (3)','2022-11-27 12:04:43',0,'','');
INSERT INTO glpi_dev.glpi_logs (id,itemtype,items_id,itemtype_link,linked_action,user_name,date_mod,id_search_option,old_value,new_value) VALUES
	 (405,'RuleTicket',75,'',0,'glpi (2)','2022-11-27 12:05:51',5,'AND','OR'),
	 (406,'Ticket',5,'User',15,'post-only (3)','2022-11-27 12:06:17',4,'','post-only (3)'),
	 (407,'Ticket',5,'0',20,'post-only (3)','2022-11-27 12:06:17',0,'',''),
	 (408,'RuleTicket',75,'',0,'glpi (2)','2022-11-27 12:07:07',3,'5','4'),
	 (409,'RuleTicket',77,'',0,'glpi (2)','2022-11-27 12:07:07',3,'4','5'),
	 (410,'RuleTicket',77,'',0,'glpi (2)','2022-11-27 12:08:22',3,'5','4'),
	 (411,'RuleTicket',75,'',0,'glpi (2)','2022-11-27 12:08:22',3,'4','5'),
	 (412,'Profile',3,'',0,'glpi (2)','2022-11-28 04:34:47',34,'14359','2048'),
	 (413,'Profile',3,'',0,'glpi (2)','2022-11-28 04:35:10',34,'2048','2049'),
	 (414,'Profile',6,'',0,'glpi (2)','2022-11-28 04:48:35',34,'15360','14337');
INSERT INTO glpi_dev.glpi_logs (id,itemtype,items_id,itemtype_link,linked_action,user_name,date_mod,id_search_option,old_value,new_value) VALUES
	 (415,'User',17,'Profile',17,'glpi (2)','2022-11-28 05:00:49',0,'','kb-manager (9)'),
	 (416,'User',17,'0',20,'glpi (2)','2022-11-28 05:00:49',0,'',''),
	 (417,'KnowbaseItem',2,'Profile',15,'Tuan Kabeem (17)','2022-11-28 05:02:01',0,'','Self-Service (1)'),
	 (418,'User',18,'Profile',17,'glpi (2)','2022-11-28 05:18:09',0,'','Admin (3)'),
	 (419,'User',18,'0',20,'glpi (2)','2022-11-28 05:18:09',0,'',''),
	 (420,'Group',9,'0',20,'glpi (2)','2022-11-30 11:58:48',0,'',''),
	 (421,'KnowbaseItem',2,'Group',15,'glpi (2)','2022-11-30 12:02:57',0,'','All Profile (9)'),
	 (422,'User',3,'',0,'post-only (3)','2022-11-30 12:03:23',17,'en_GB','id_ID'),
	 (423,'User',3,'',0,'post-only = 3','2022-11-30 12:03:48',17,'id_ID',NULL),
	 (424,'KnowbaseItem',3,'Group',15,'tech (4)','2022-11-30 12:06:43',0,'','Tim Teknis (2)');
INSERT INTO glpi_dev.glpi_logs (id,itemtype,items_id,itemtype_link,linked_action,user_name,date_mod,id_search_option,old_value,new_value) VALUES
	 (425,'KnowbaseItem',3,'0',20,'tech (4)','2022-11-30 12:06:43',0,'',''),
	 (426,'Profile',6,'',0,'glpi (2)','2022-11-30 19:39:34',34,'14337','10241'),
	 (427,'Profile',6,'',0,'glpi (2)','2022-11-30 19:41:25',34,'10241','10247'),
	 (428,'Profile',3,'',0,'glpi (2)','2022-11-30 19:41:57',64,'23','0'),
	 (429,'Profile',3,'',0,'glpi (2)','2022-11-30 19:41:57',34,'2049','10247'),
	 (430,'Profile',3,'',0,'glpi (2)','2022-11-30 19:41:57',63,'23','0'),
	 (431,'Profile',3,'',0,'glpi (2)','2022-11-30 19:41:57',120,'23','0'),
	 (432,'KnowbaseItem',3,'Profile',15,'tech (4)','2022-11-30 19:43:52',0,'','Admin (3)'),
	 (433,'KnowbaseItem',4,'Group',15,'tech (4)','2022-11-30 19:46:09',0,'','Tim Teknis (2)'),
	 (434,'KnowbaseItem',4,'0',20,'tech (4)','2022-11-30 19:46:09',0,'','');
INSERT INTO glpi_dev.glpi_logs (id,itemtype,items_id,itemtype_link,linked_action,user_name,date_mod,id_search_option,old_value,new_value) VALUES
	 (435,'KnowbaseItem',4,'Profile',15,'tech (4)','2022-11-30 19:46:27',0,'','Admin (3)'),
	 (436,'KnowbaseItem',3,'Profile',15,'tech (4)','2022-11-30 19:50:04',0,'','Self-Service (1)'),
	 (437,'Profile',3,'',0,'glpi (2)','2022-11-30 19:58:30',58,'119','33'),
	 (438,'Profile',3,'',0,'glpi (2)','2022-11-30 19:58:30',105,'23','0'),
	 (439,'Profile',3,'',0,'glpi (2)','2022-11-30 19:58:30',48,'1047','1'),
	 (440,'Profile',3,'',0,'glpi (2)','2022-11-30 19:58:30',60,'1','0'),
	 (441,'Profile',3,'',0,'glpi (2)','2022-11-30 19:58:30',56,'7199','1'),
	 (442,'Profile',7,'',0,'glpi (2)','2022-11-30 20:00:50',105,'23','1'),
	 (443,'Profile',7,'',0,'glpi (2)','2022-11-30 20:00:50',48,'1047','1'),
	 (444,'Profile',7,'',0,'glpi (2)','2022-11-30 20:00:50',56,'1055','1');
INSERT INTO glpi_dev.glpi_logs (id,itemtype,items_id,itemtype_link,linked_action,user_name,date_mod,id_search_option,old_value,new_value) VALUES
	 (445,'Profile',6,'',0,'glpi (2)','2022-11-30 20:01:21',56,'1055','1'),
	 (446,'KnowbaseItem',4,'Profile',15,'Operator Satu (18)','2022-11-30 20:03:24',0,'','kb-manager (9)'),
	 (447,'KnowbaseItem',4,'Profile',16,'Operator Satu (18)','2022-11-30 20:03:38',0,'kb-manager (9)',''),
	 (448,'KnowbaseItem',5,'Profile',15,'Tuan Kabeem (17)','2022-11-30 20:07:33',0,'','Technician (6)'),
	 (449,'KnowbaseItem',5,'0',20,'Tuan Kabeem (17)','2022-11-30 20:07:33',0,'',''),
	 (450,'KnowbaseItem',5,'Profile',15,'Tuan Kabeem (17)','2022-11-30 20:08:05',0,'','Admin (3)'),
	 (451,'KnowbaseItem',5,'',0,'Operator Satu (18)','2022-11-30 20:09:03',70,'kb-manager (17)','operator1 (18)'),
	 (452,'KnowbaseItem',5,'',0,'Operator Satu (18)','2022-11-30 20:09:03',7,'&#60;p&#62;Ambil nasi, goreng, hmmm enaak&#60;/p&#62;','&#60;p&#62;Ambil nasi, goreng, hmmm enaak bgtt&#60;/p&#62;'),
	 (453,'KnowbaseItem',2,'Profile',15,'Tuan Kabeem (17)','2022-11-30 20:10:43',0,'','Admin (3)'),
	 (454,'KnowbaseItem',5,'',0,'Tuan Kabeem (17)','2022-11-30 20:14:59',70,'operator1 (18)','kb-manager (17)');
INSERT INTO glpi_dev.glpi_logs (id,itemtype,items_id,itemtype_link,linked_action,user_name,date_mod,id_search_option,old_value,new_value) VALUES
	 (455,'KnowbaseItem',5,'',0,'Tuan Kabeem (17)','2022-11-30 20:14:59',8,'0','1'),
	 (456,'KnowbaseItem',5,'Profile',15,'Tuan Kabeem (17)','2022-11-30 20:15:14',0,'','Self-Service (1)'),
	 (457,'KnowbaseItem',3,'',0,'tech (4)','2022-11-30 20:17:55',7,'&#60;p&#62;Kirim lagi aja yekan cappedeh&#60;/p&#62;','&#60;p&#62;Kirim lagi aja yekan cappedehuhuhuh&#60;/p&#62;'),
	 (458,'Profile',6,'',0,'glpi (2)','2022-11-30 20:24:32',34,'10247','10261'),
	 (459,'Profile',6,'',0,'glpi (2)','2022-11-30 20:32:01',34,'10261','10245'),
	 (460,'Profile',3,'',0,'glpi (2)','2022-11-30 20:32:19',34,'10247','10245'),
	 (461,'Profile',7,'',0,'glpi (2)','2022-11-30 20:33:14',34,'14337','10241'),
	 (462,'Profile',3,'',0,'glpi (2)','2022-11-30 20:35:00',34,'10245','10247'),
	 (463,'Profile',3,'',0,'glpi (2)','2022-11-30 20:35:57',34,'10247','10245'),
	 (464,'Profile',3,'',0,'glpi (2)','2022-11-30 20:36:26',34,'10245','10263');
INSERT INTO glpi_dev.glpi_logs (id,itemtype,items_id,itemtype_link,linked_action,user_name,date_mod,id_search_option,old_value,new_value) VALUES
	 (465,'Profile',6,'',0,'glpi (2)','2022-11-30 20:36:41',34,'10245','10263'),
	 (466,'KnowbaseItem',6,'Profile',15,'Operator Satu (18)','2022-11-30 20:40:12',0,'','kb-manager (9)'),
	 (467,'KnowbaseItem',6,'0',20,'Operator Satu (18)','2022-11-30 20:40:12',0,'',''),
	 (468,'KnowbaseItem',6,'Profile',15,'Operator Satu (18)','2022-11-30 20:40:25',0,'','Admin (3)'),
	 (469,'KnowbaseItem',6,'',0,'Tuan Kabeem (17)','2022-11-30 20:41:06',70,'operator1 (18)','kb-manager (17)'),
	 (470,'KnowbaseItem',6,'',0,'Tuan Kabeem (17)','2022-11-30 20:41:06',8,'0','1'),
	 (471,'KnowbaseItem',6,'',0,'Tuan Kabeem (17)','2022-11-30 20:41:18',6,'Cara melupakannya :(((','Cara melupakannya :(((((((((('),
	 (472,'KnowbaseItem',6,'Profile',15,'Tuan Kabeem (17)','2022-11-30 20:41:38',0,'','Self-Service (1)'),
	 (473,'KnowbaseItem',7,'Profile',15,'Operator Satu (18)','2022-11-30 20:43:50',0,'','kb-manager (9)'),
	 (474,'KnowbaseItem',7,'0',20,'Operator Satu (18)','2022-11-30 20:43:50',0,'','');
INSERT INTO glpi_dev.glpi_logs (id,itemtype,items_id,itemtype_link,linked_action,user_name,date_mod,id_search_option,old_value,new_value) VALUES
	 (475,'KnowbaseItem',7,'',0,'Tuan Kabeem (17)','2022-11-30 20:44:25',70,'operator1 (18)','kb-manager (17)'),
	 (476,'KnowbaseItem',7,'',0,'Tuan Kabeem (17)','2022-11-30 20:44:25',8,'0','1'),
	 (477,'KnowbaseItem',7,'Profile',15,'Tuan Kabeem (17)','2022-11-30 20:45:53',0,'','Admin (3)'),
	 (478,'KnowbaseItem',7,'Profile',15,'Tuan Kabeem (17)','2022-11-30 20:46:04',0,'','Self-Service (1)'),
	 (479,'KnowbaseItem',7,'Profile',15,'Tuan Kabeem (17)','2022-11-30 20:46:15',0,'','Technician (6)'),
	 (480,'KnowbaseItem',6,'Profile',15,'Tuan Kabeem (17)','2022-11-30 20:46:46',0,'','Technician (6)'),
	 (481,'KnowbaseItem',3,'',0,'Tuan Kabeem (17)','2022-11-30 20:49:08',70,'tech (4)','kb-manager (17)'),
	 (482,'KnowbaseItem',3,'',0,'Tuan Kabeem (17)','2022-11-30 20:49:08',6,'Mengatasi Tiket Belum Terkirim','Mengatasi Tiket Belum Terkirim New'),
	 (483,'Profile',3,'',0,'glpi (2)','2022-12-01 02:43:04',34,'10263','2049'),
	 (484,'Profile',3,'',0,'glpi (2)','2022-12-01 02:44:24',34,'2049','2048');
INSERT INTO glpi_dev.glpi_logs (id,itemtype,items_id,itemtype_link,linked_action,user_name,date_mod,id_search_option,old_value,new_value) VALUES
	 (485,'KnowbaseItem',8,'Profile',15,'tech (4)','2022-12-01 02:46:31',0,'','kb-manager (9)'),
	 (486,'KnowbaseItem',8,'0',20,'tech (4)','2022-12-01 02:46:31',0,'',''),
	 (487,'KnowbaseItem',8,'',0,'tech (4)','2022-12-01 02:46:48',7,'&#60;p&#62;ganti aja bro gitu aja gabisa&#60;/p&#62;','&#60;p&#62;ganti aja bro gitu aja gabisaaaa&#60;/p&#62;'),
	 (488,'KnowbaseItem',8,'',0,'Tuan Kabeem (17)','2022-12-01 02:47:38',70,'tech (4)','kb-manager (17)'),
	 (489,'KnowbaseItem',8,'',0,'Tuan Kabeem (17)','2022-12-01 02:47:38',6,'Cara Ganti Internet','Cara Ganti Internet Jadul'),
	 (490,'KnowbaseItem',8,'',0,'Tuan Kabeem (17)','2022-12-01 02:48:26',8,'0','1'),
	 (491,'KnowbaseItem',8,'Profile',15,'Tuan Kabeem (17)','2022-12-01 02:49:13',0,'','Self-Service (1)'),
	 (492,'KnowbaseItem',8,'Profile',15,'Tuan Kabeem (17)','2022-12-01 02:49:28',0,'','Admin (3)'),
	 (493,'KnowbaseItem',8,'Profile',15,'Tuan Kabeem (17)','2022-12-01 02:49:41',0,'','Technician (6)'),
	 (494,'KnowbaseItem',9,'Entity',15,'tech (4)','2022-12-01 02:55:00',0,'','Root Entity (0)');
INSERT INTO glpi_dev.glpi_logs (id,itemtype,items_id,itemtype_link,linked_action,user_name,date_mod,id_search_option,old_value,new_value) VALUES
	 (495,'KnowbaseItem',9,'0',20,'tech (4)','2022-12-01 02:55:00',0,'',''),
	 (496,'KnowbaseItem',9,'',0,'Tuan Kabeem (17)','2022-12-01 02:55:43',70,'tech (4)','kb-manager (17)'),
	 (497,'KnowbaseItem',9,'',0,'Tuan Kabeem (17)','2022-12-01 02:55:43',8,'0','1'),
	 (498,'Ticket',5,'0',13,'Operator Satu (18)','2022-12-01 07:15:23',0,'',''),
	 (499,'Profile',6,'',0,'glpi (2)','2022-12-01 07:22:59',87,'["Computer","Monitor","NetworkEquipment","Peripheral","Phone","Printer","Software", "DCRoom", "Rack", "Enclosure", "Database"]','["Computer","Monitor","NetworkEquipment","Peripheral","Phone","Printer","Software","DCRoom","Rack","Enclosure","Database"]'),
	 (500,'Profile',6,'',0,'glpi (2)','2022-12-01 07:22:59',102,'166919','12289'),
	 (501,'Profile',6,'',0,'glpi (2)','2022-12-01 07:24:45',102,'12289','0'),
	 (502,'Profile',6,'',0,'glpi (2)','2022-12-01 07:25:22',102,'0','4096'),
	 (503,'Profile',6,'',0,'glpi (2)','2022-12-01 07:26:15',102,'4096','4097'),
	 (504,'Profile',6,'',0,'glpi (2)','2022-12-01 07:26:42',102,'4097','12289');
INSERT INTO glpi_dev.glpi_logs (id,itemtype,items_id,itemtype_link,linked_action,user_name,date_mod,id_search_option,old_value,new_value) VALUES
	 (505,'Profile',6,'',0,'glpi (2)','2022-12-01 07:27:27',102,'12289','4097'),
	 (506,'Ticket',4,'',0,'Operator Satu (18)','2022-12-01 07:28:49',64,'post-only (3)','operator1 (18)'),
	 (507,'Ticket',4,'',0,'Operator Satu (18)','2022-12-01 07:28:49',150,'0','86400'),
	 (508,'Ticket',4,'Group',15,'Operator Satu (18)','2022-12-01 07:28:49',8,'','Tim Teknis (2)'),
	 (509,'Ticket',4,'',0,'Operator Satu (18)','2022-12-01 07:28:49',12,'1','2'),
	 (510,'Profile',6,'',0,'glpi (2)','2022-12-01 07:30:32',102,'4097','36865'),
	 (511,'Ticket',4,'User',15,'Operator Satu (18)','2022-12-01 07:32:11',5,'','tech (4)'),
	 (512,'Ticket',4,'Group',16,'Operator Satu (18)','2022-12-01 07:32:21',0,'Tim Teknis (2)',''),
	 (513,'User',12,'Profile',17,'glpi (2)','2022-12-01 07:34:05',0,'','Technician (6)'),
	 (514,'User',15,'Profile',17,'glpi (2)','2022-12-01 07:34:34',0,'','Technician (6)');
INSERT INTO glpi_dev.glpi_logs (id,itemtype,items_id,itemtype_link,linked_action,user_name,date_mod,id_search_option,old_value,new_value) VALUES
	 (515,'User',16,'Profile',17,'glpi (2)','2022-12-01 07:35:19',0,'','Technician (6)'),
	 (516,'User',13,'Profile',17,'glpi (2)','2022-12-01 07:35:41',0,'','Technician (6)'),
	 (517,'User',10,'Profile',17,'glpi (2)','2022-12-01 07:37:20',0,'','Technician (6)'),
	 (518,'User',14,'Profile',17,'glpi (2)','2022-12-01 07:37:34',0,'','Technician (6)'),
	 (519,'User',11,'Profile',17,'glpi (2)','2022-12-01 07:37:44',0,'','Technician (6)'),
	 (520,'Ticket',3,'',0,'Operator Satu (18)','2022-12-01 07:39:15',64,'post-only (3)','operator1 (18)'),
	 (521,'Ticket',3,'',0,'Operator Satu (18)','2022-12-01 07:39:15',150,'0','86400'),
	 (522,'Ticket',3,'User',15,'Operator Satu (18)','2022-12-01 07:39:15',5,'','bowie sukie (11)'),
	 (523,'Ticket',3,'',0,'Operator Satu (18)','2022-12-01 07:39:15',12,'1','2'),
	 (524,'Document',1,'0',20,'tech (4)','2022-12-01 07:40:47',0,'','');
INSERT INTO glpi_dev.glpi_logs (id,itemtype,items_id,itemtype_link,linked_action,user_name,date_mod,id_search_option,old_value,new_value) VALUES
	 (525,'Document',1,'ITILFollowup',15,'tech (4)','2022-12-01 07:40:47',0,'','Helpdesk (1)'),
	 (526,'Ticket',4,'ITILFollowup',17,'tech (4)','2022-12-01 07:40:47',0,'','1'),
	 (527,'Ticket',4,'ITILFollowup',12,'tech (4)','2022-12-01 07:40:47',0,'','Helpdesk (1)'),
	 (528,'Document',2,'0',20,'tech (4)','2022-12-01 07:42:14',0,'',''),
	 (529,'Document',2,'ITILFollowup',15,'tech (4)','2022-12-01 07:42:14',0,'','Helpdesk (1)'),
	 (530,'Ticket',4,'ITILFollowup',18,'tech (4)','2022-12-01 07:42:14',0,'','1'),
	 (531,'Ticket',4,'ITILFollowup',18,'tech (4)','2022-12-01 07:46:23',0,'','1'),
	 (532,'Ticket',4,'ITILFollowup',19,'Operator Satu (18)','2022-12-01 07:49:32',0,'','1'),
	 (533,'Ticket',2,'',0,'Operator Satu (18)','2022-12-01 07:58:33',150,'0','86400'),
	 (534,'Ticket',2,'',0,'Operator Satu (18)','2022-12-01 07:58:33',64,'post-only (3)','operator1 (18)');
INSERT INTO glpi_dev.glpi_logs (id,itemtype,items_id,itemtype_link,linked_action,user_name,date_mod,id_search_option,old_value,new_value) VALUES
	 (535,'Ticket',2,'ITILFollowup',17,'Operator Satu (18)','2022-12-01 07:58:33',0,'','2'),
	 (536,'Ticket',2,'ITILFollowup',12,'Operator Satu (18)','2022-12-01 07:58:33',0,'','Helpdesk (2)'),
	 (537,'Ticket',2,'',0,'Operator Satu (18)','2022-12-01 07:59:26',12,'1','5'),
	 (538,'Ticket',2,'',0,'Operator Satu (18)','2022-12-01 07:59:26',17,'','2022-12-01 07:59:26'),
	 (539,'Ticket',2,'ITILSolution',17,'Operator Satu (18)','2022-12-01 07:59:26',0,'','1 (1)'),
	 (540,'ITILSolution',1,'0',20,'Operator Satu (18)','2022-12-01 07:59:26',0,'',''),
	 (541,'Ticket',2,'',0,'post-only (3)','2022-12-01 08:17:32',12,'5','6'),
	 (542,'Ticket',2,'',0,'post-only (3)','2022-12-01 08:17:32',16,'','2022-12-01 08:17:32'),
	 (543,'Ticket',2,'ITILFollowup',17,'post-only (3)','2022-12-01 08:17:32',0,'','3'),
	 (544,'Ticket',2,'ITILFollowup',12,'post-only (3)','2022-12-01 08:17:32',0,'','E-Mail (3)');
INSERT INTO glpi_dev.glpi_logs (id,itemtype,items_id,itemtype_link,linked_action,user_name,date_mod,id_search_option,old_value,new_value) VALUES
	 (545,'Ticket',1,'',0,'Operator Satu (18)','2022-12-01 08:20:24',12,'1','5'),
	 (546,'Ticket',1,'',0,'Operator Satu (18)','2022-12-01 08:20:24',64,'post-only (3)','operator1 (18)'),
	 (547,'Ticket',1,'',0,'Operator Satu (18)','2022-12-01 08:20:24',17,'','2022-12-01 08:20:24'),
	 (548,'Ticket',1,'ITILSolution',17,'Operator Satu (18)','2022-12-01 08:20:24',0,'','2 (2)'),
	 (549,'ITILSolution',2,'0',20,'Operator Satu (18)','2022-12-01 08:20:24',0,'',''),
	 (550,'Ticket',1,'',0,'post-only (3)','2022-12-01 08:21:13',12,'5','1'),
	 (551,'Ticket',1,'',0,'post-only (3)','2022-12-01 08:21:13',17,'2022-12-01 08:20:24',NULL),
	 (552,'Ticket',1,'ITILFollowup',17,'post-only (3)','2022-12-01 08:21:13',0,'','4'),
	 (553,'Ticket',1,'ITILFollowup',12,'post-only (3)','2022-12-01 08:21:13',0,'','Helpdesk (4)'),
	 (554,'Ticket',1,'',0,'Operator Satu (18)','2022-12-01 08:22:28',12,'1','5');
INSERT INTO glpi_dev.glpi_logs (id,itemtype,items_id,itemtype_link,linked_action,user_name,date_mod,id_search_option,old_value,new_value) VALUES
	 (555,'Ticket',1,'',0,'Operator Satu (18)','2022-12-01 08:22:28',64,'post-only (3)','operator1 (18)'),
	 (556,'Ticket',1,'',0,'Operator Satu (18)','2022-12-01 08:22:28',17,'','2022-12-01 08:22:28'),
	 (557,'Ticket',1,'ITILSolution',17,'Operator Satu (18)','2022-12-01 08:22:28',0,'','3 (3)'),
	 (558,'ITILSolution',3,'0',20,'Operator Satu (18)','2022-12-01 08:22:28',0,'',''),
	 (559,'Ticket',1,'',0,'post-only (3)','2022-12-01 08:23:18',12,'5','6'),
	 (560,'Ticket',1,'',0,'post-only (3)','2022-12-01 08:23:18',16,'','2022-12-01 08:23:18'),
	 (561,'Ticket',1,'ITILFollowup',17,'post-only (3)','2022-12-01 08:23:18',0,'','5'),
	 (562,'Ticket',1,'ITILFollowup',12,'post-only (3)','2022-12-01 08:23:18',0,'','Helpdesk (5)'),
	 (563,'RuleTicket',74,'',0,'glpi (2)','2022-12-01 08:59:46',3,'7','8'),
	 (564,'RuleTicket',75,'',0,'glpi (2)','2022-12-01 08:59:46',3,'5','6');
INSERT INTO glpi_dev.glpi_logs (id,itemtype,items_id,itemtype_link,linked_action,user_name,date_mod,id_search_option,old_value,new_value) VALUES
	 (565,'RuleTicket',78,'',0,'glpi (2)','2022-12-01 08:59:46',3,'6','7'),
	 (566,'RuleTicket',79,'',0,'glpi (2)','2022-12-01 08:59:46',3,'8','9'),
	 (567,'RuleTicket',80,'',0,'glpi (2)','2022-12-01 08:59:46',3,'9','5'),
	 (568,'RuleTicket',74,'',0,'glpi (2)','2022-12-01 08:59:50',3,'8','9'),
	 (569,'RuleTicket',78,'',0,'glpi (2)','2022-12-01 08:59:50',3,'7','8'),
	 (570,'RuleTicket',79,'',0,'glpi (2)','2022-12-01 08:59:50',3,'9','10'),
	 (571,'RuleTicket',81,'',0,'glpi (2)','2022-12-01 08:59:50',3,'10','7'),
	 (572,'RuleTicket',75,'RuleCriteria',17,'glpi (2)','2022-12-01 09:16:40',0,'','Category - Name is Layanan Konsultasi &#62; Permintaan Konsultasi terkait Pengolahan Data (Root Entity) (676)'),
	 (573,'RuleCriteria',676,'0',20,'glpi (2)','2022-12-01 09:16:40',0,'',''),
	 (574,'Config',1,'',0,'','2022-12-04 12:56:23',1,'dbversion 10.0.3@a045be5eafdc91aa832177c031b23ef6678fdcef','10.0.3@a130db99c7d9b131c2e2ea59fe0d6260fe93d831');
INSERT INTO glpi_dev.glpi_networkporttypes (id,entities_id,is_recursive,value_decimal,name,comment,is_importable,instantiation_type,date_creation,date_mod) VALUES
	 (1,0,0,0,'Name','Description References',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (2,0,0,1,'other','none of the following [RFC1213]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (3,0,0,2,'regular1822','BBN Report 1822 [RFC1213]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (4,0,0,3,'hdh1822','BBN Report 1822 [RFC1213]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (5,0,0,4,'ddn-x25','BBN Report 1822 [RFC1213]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (6,0,0,5,'x25','X.25 [RFC1382]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (7,0,0,6,'ethernet-csmacd','[RFC1213]',1,'NetworkPortEthernet','2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (8,0,0,7,'IEEE802.3','DEPRECATED [RFC3635]',1,'NetworkPortEthernet','2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (9,0,0,8,'IEEE802.4','Token Bus-like Objects [RFC1239]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (10,0,0,9,'IEEE802.5','Token Ring-like Objects [RFC1748]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24');
INSERT INTO glpi_dev.glpi_networkporttypes (id,entities_id,is_recursive,value_decimal,name,comment,is_importable,instantiation_type,date_creation,date_mod) VALUES
	 (11,0,0,10,'iso88026-man','[RFC1213]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (12,0,0,11,'starLan','DEPRECATED [RFC3635]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (13,0,0,12,'proteon-10Mbit','[RFC1213]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (14,0,0,13,'proteon-80Mbit','[RFC1213]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (15,0,0,14,'hyperchannel','[RFC1213]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (16,0,0,15,'FDDI','FDDI Objects [RFC1512]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (17,0,0,16,'lapb','LAP B [RFC1381]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (18,0,0,17,'sdlc','[RFC1213]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (19,0,0,18,'ds1','T1/E1 Carrier Objects [RFC4805]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (20,0,0,19,'e1','obsolete [RFC4805]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24');
INSERT INTO glpi_dev.glpi_networkporttypes (id,entities_id,is_recursive,value_decimal,name,comment,is_importable,instantiation_type,date_creation,date_mod) VALUES
	 (21,0,0,20,'basicISDN','[RFC1213]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (22,0,0,21,'primaryISDN','[RFC1213]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (23,0,0,22,'propPointToPointSerial','[RFC1213]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (24,0,0,23,'ppp','Point-to-Point Protocol [RFC1213][RFC1471]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (25,0,0,24,'softwareLoopback','[RFC1213]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (26,0,0,25,'eon','[RFC1213]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (27,0,0,26,'ethernet-3Mbit','[RFC1213]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (28,0,0,27,'nsip','[RFC1213]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (29,0,0,28,'slip','[RFC1213]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (30,0,0,29,'ultra','[RFC1213]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24');
INSERT INTO glpi_dev.glpi_networkporttypes (id,entities_id,is_recursive,value_decimal,name,comment,is_importable,instantiation_type,date_creation,date_mod) VALUES
	 (31,0,0,30,'ds3','DS3/E3 Interface Objects [RFC3896]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (32,0,0,31,'sip','SMDS Interface Objects [RFC1694]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (33,0,0,32,'frame-relay','Frame Relay Objects for DTE [RFC2115]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (34,0,0,33,'RS-232','RS-232 Objects [RFC1659]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (35,0,0,34,'Parallel','Parallel Printer Objects [RFC1660]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (36,0,0,35,'arcnet','ARC network',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (37,0,0,36,'arcnet-plus','ARC network plus',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (38,0,0,37,'atm','ATM',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (39,0,0,38,'MIOX25','MIOX25 [RFC1461]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (40,0,0,39,'SONET','SONET or SDH',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24');
INSERT INTO glpi_dev.glpi_networkporttypes (id,entities_id,is_recursive,value_decimal,name,comment,is_importable,instantiation_type,date_creation,date_mod) VALUES
	 (41,0,0,40,'x25ple','X.25 packet level [RFC2127]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (42,0,0,41,'iso88022llc','802.2 LLC',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (43,0,0,42,'localTalk','',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (44,0,0,43,'smds-dxi','SMDS DXI',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (45,0,0,44,'frameRelayService','Frame Relay DCE [RFC2954]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (46,0,0,45,'v35','V.35',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (47,0,0,46,'hssi','HSSI',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (48,0,0,47,'hippi','HIPPI',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (49,0,0,48,'modem','generic modem',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (50,0,0,49,'aal5','AAL5 over ATM',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24');
INSERT INTO glpi_dev.glpi_networkporttypes (id,entities_id,is_recursive,value_decimal,name,comment,is_importable,instantiation_type,date_creation,date_mod) VALUES
	 (51,0,0,50,'sonetPath','',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (52,0,0,51,'sonetVT','',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (53,0,0,52,'smds-icip','SMDS Inter-Carrier Interface Protocol',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (54,0,0,53,'propVirtual','proprietary vitural/internal interface [RFC2863]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (55,0,0,54,'propMultiLink','proprietary multi-link multiplexing [RFC2863]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (56,0,0,55,'ieee80212','100BaseVG',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (57,0,0,56,'fibre-channel','Fibre Channel',1,'NetworkPortFiberchannel','2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (58,0,0,57,'hippiInterfaces','HIPPI interfaces [Philip_Cameron]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (59,0,0,58,'FrameRelayInterconnect','Interconnet over FR [Unknown]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (60,0,0,59,'aflane8023','ATM Emulated LAN for 802.3 [Keith_McCloghrie]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24');
INSERT INTO glpi_dev.glpi_networkporttypes (id,entities_id,is_recursive,value_decimal,name,comment,is_importable,instantiation_type,date_creation,date_mod) VALUES
	 (61,0,0,60,'aflane8025','ATM Emulated LAN for 802.5 [Keith_McCloghrie]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (62,0,0,61,'cctEmul','ATM Emulated circuit [Guy_Fedorkow]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (63,0,0,62,'fastEther','DEPRECATED [RFC3635]',1,'NetworkPortEthernet','2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (64,0,0,63,'isdn','ISDN and X.25 [RFC1356]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (65,0,0,64,'v11','CCITT V.11/X.21 [Satish_Popat]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (66,0,0,65,'v36','CCITT V.36 [Satish_Popat]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (67,0,0,66,'g703-64k','CCITT G703 at 64Kbps [Satish_Popat]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (68,0,0,67,'g703-2mb','CCITT G703 at 2Mbps [Satish_Popat]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (69,0,0,68,'qllc','SNA QLLC [Satish_Popat]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (70,0,0,69,'fastEtherFX','DEPRECATED [RFC3635]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24');
INSERT INTO glpi_dev.glpi_networkporttypes (id,entities_id,is_recursive,value_decimal,name,comment,is_importable,instantiation_type,date_creation,date_mod) VALUES
	 (71,0,0,70,'channel','channel [Steven_Schwell]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (72,0,0,71,'IEEE802.11','radio spread spectrum [Dawkoon_Paul_Lee]',1,'NetworkPortWifi','2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (73,0,0,72,'ibm370parChan','IBM System 360/370 OEMI Channel [Bill_Kwan]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (74,0,0,73,'ESCON','IBM Enterprise Systems Connection [Bill_Kwan]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (75,0,0,74,'DLSw','Data Link Switching [Bill_Kwan]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (76,0,0,75,'ISDNs','ISDN S/T interface [Ed_Alcoff]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (77,0,0,76,'ISDNu','ISDN U interface [Ed_Alcoff]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (78,0,0,77,'lapd','Link Access Protocol D [Ed_Alcoff]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (79,0,0,78,'ip-switch','IP Switching Objects [Joe_Wei]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (80,0,0,79,'rsrb','Remote Source Route Bridging [Bob_Clouston]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24');
INSERT INTO glpi_dev.glpi_networkporttypes (id,entities_id,is_recursive,value_decimal,name,comment,is_importable,instantiation_type,date_creation,date_mod) VALUES
	 (81,0,0,80,'atm-logical','ATM Logical Port [RFC3606]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (82,0,0,81,'ds0','Digital Signal Level 0 [RFC2494]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (83,0,0,82,'ds0Bundle','group of ds0s on the same ds1 [RFC2494]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (84,0,0,83,'bsc','Bisynchronous Protocol [Bill_Kwan]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (85,0,0,84,'async','Asynchronous Protocol [Bill_Kwan]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (86,0,0,85,'cnr','Combat Net Radio [Herb_Jensen]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (87,0,0,86,'iso88025Dtr','ISO 802.5r DTR [Trevor_Warwick]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (88,0,0,87,'eplrs','Enhanced  Pos Loc Report Sys [Herb_Jensen]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (89,0,0,88,'arap','Appletalk Remote Access Protocol [Jim_Halpin]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (90,0,0,89,'propCnls','Proprietary Connectionless Proto. [Robert_Neill]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24');
INSERT INTO glpi_dev.glpi_networkporttypes (id,entities_id,is_recursive,value_decimal,name,comment,is_importable,instantiation_type,date_creation,date_mod) VALUES
	 (91,0,0,90,'hostPad','CCITT-ITU X.29 PAD Protocol [Robert_Neill]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (92,0,0,91,'termPad','CCITT-ITU X.3 PAD Facility [Robert_Neill]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (93,0,0,92,'frameRelayMPI','Multiproto Interconnect over FR [Robert_Neill]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (94,0,0,93,'x213','CCITT-ITU X213 [Robert_Neill]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (95,0,0,94,'adsl','Asymmetric Digital Subscriber Loop [Gregory_Bathrick]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (96,0,0,95,'radsl','Rate-Adapt. Digital Subscriber Loop [Gregory_Bathrick]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (97,0,0,96,'sdsl','Symmetric Digital Subscriber Loop [Gregory_Bathrick]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (98,0,0,97,'vdsl','Very H-Speed Digital Subscrib. Loop [Gregory_Bathrick]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (99,0,0,98,'iso88025CRFPInt','ISO 802.5 CRFP [Trevor_Warwick]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (100,0,0,99,'myrinet','Myricom Myrinet [Bob_Felderman]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24');
INSERT INTO glpi_dev.glpi_networkporttypes (id,entities_id,is_recursive,value_decimal,name,comment,is_importable,instantiation_type,date_creation,date_mod) VALUES
	 (101,0,0,100,'voiceEM','Voice recEive and transMit (E&#38;M) [Bob_Stewart]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (102,0,0,101,'voiceFXO','Voice Foreign Exchange Office [Bob_Stewart]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (103,0,0,102,'voiceFXS','Voice Foreign Exchange Station [Bob_Stewart]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (104,0,0,103,'voiceEncap','Voice encapsulation [Bob_Stewart]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (105,0,0,104,'voiceOverIp','Voice over IP encapsulation [Bob_Stewart]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (106,0,0,105,'atmDxi','ATM DXI [Gary_Hanson]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (107,0,0,106,'atmFuni','ATM FUNI [Gary_Hanson]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (108,0,0,107,'atmIma','ATM IMA [Chris_Martin]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (109,0,0,108,'pppMultilinkBundle','PPP Multilink Bundle [John_Shriver]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (110,0,0,109,'ipOverCdlc','IBM ipOverCdlc [Ken_White]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24');
INSERT INTO glpi_dev.glpi_networkporttypes (id,entities_id,is_recursive,value_decimal,name,comment,is_importable,instantiation_type,date_creation,date_mod) VALUES
	 (111,0,0,110,'ipOverClaw','IBM Common Link Access to Workstn [Ken_White]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (112,0,0,111,'stackToStack','IBM stackToStack [Ken_White]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (113,0,0,112,'virtualIpAddress','IBM VIPA [Ken_White]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (114,0,0,113,'mpc','IBM multi-protocol channel support [Ken_White]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (115,0,0,114,'ipOverAtm','IBM ipOverAtm [RFC2320]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (116,0,0,115,'iso88025Fiber','ISO 802.5j Fiber Token Ring [Kevin_Lingle]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (117,0,0,116,'tdlc','IBM twinaxial data link control [John_Pechacek]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (118,0,0,117,'gigabitEthernet','DEPRECATED [RFC3635]',1,'NetworkPortEthernet','2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (119,0,0,118,'hdlc','HDLC [Sebastien_Rosset]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (120,0,0,119,'lapf','LAP F [Sebastien_Rosset]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24');
INSERT INTO glpi_dev.glpi_networkporttypes (id,entities_id,is_recursive,value_decimal,name,comment,is_importable,instantiation_type,date_creation,date_mod) VALUES
	 (121,0,0,120,'v37','V.37 [Sebastien_Rosset]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (122,0,0,121,'x25mlp','Multi-Link Protocol [Sebastien_Rosset]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (123,0,0,122,'x25huntGroup','X25 Hunt Group [Sebastien_Rosset]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (124,0,0,123,'transpHdlc','Transp HDLC [Sebastien_Rosset]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (125,0,0,124,'interleave','Interleave channel [Karmous_Edwards]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (126,0,0,125,'fast','Fast channel [Karmous_Edwards]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (127,0,0,126,'ip','IP (for APPN HPR in IP networks) [Robert_Moore]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (128,0,0,127,'docsCableMaclayer','CATV Mac Layer [Azlina_Palmer]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (129,0,0,128,'docsCableDownstream','CATV Downstream interface [Azlina_Palmer]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (130,0,0,129,'docsCableUpstream','CATV Upstream interface [Azlina_Palmer]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24');
INSERT INTO glpi_dev.glpi_networkporttypes (id,entities_id,is_recursive,value_decimal,name,comment,is_importable,instantiation_type,date_creation,date_mod) VALUES
	 (131,0,0,130,'a12MppSwitch','Avalon Parallel Processor [Ross_Harvey]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (132,0,0,131,'tunnel','Encapsulation interface [Dave_Thaler]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (133,0,0,132,'coffee','coffee pot [RFC2325]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (134,0,0,133,'ces','Circiut Emulation Service [Ron_Carmona]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (135,0,0,134,'atmSubInterface','(x)  ATM Sub Interface [Keith_McCloghrie]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (136,0,0,135,'l2vlan','Layer 2 Virtual LAN using 802.1Q [Mike_MacFaden]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (137,0,0,136,'l3ipvlan','Layer 3 Virtual LAN - IP Protocol [Mike_MacFaden]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (138,0,0,137,'l3ipxvlan','Layer 3 Virtual LAN - IPX Prot. [Mike_MacFaden]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (139,0,0,138,'digitalPowerLine','IP over Power Lines [Hans_Scholtes]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (140,0,0,139,'mediaMailOverIp','(xxx)  Multimedia Mail over IP [Hongchi_Shih]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24');
INSERT INTO glpi_dev.glpi_networkporttypes (id,entities_id,is_recursive,value_decimal,name,comment,is_importable,instantiation_type,date_creation,date_mod) VALUES
	 (141,0,0,140,'dtm','Dynamic synchronous Transfer Mode [Jakob_Ellerstedt]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (142,0,0,141,'dcn','Data Communications Network [James_Card]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (143,0,0,142,'ipForward','IP Forwarding Interface [James_Card]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (144,0,0,143,'msdsl','Multi-rate Symmetric DSL [Gopinath_Durairaj]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (145,0,0,144,'ieee1394     IEEE1394','High Performance Serial Bus [Kenji_Fujisawa]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (146,0,0,145,'if-gsn','HIPPI-6400 [Jean_Michel_Pittet]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (147,0,0,146,'dvbRccMacLayer','DVB-RCC MAC Layer [Maarten_Oelering]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (148,0,0,147,'dvbRccDownstream','DVB-RCC Downstream Channel [Maarten_Oelering]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (149,0,0,148,'dvbRccUpstream','DVB-RCC Upstream Channel [Maarten_Oelering]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (150,0,0,149,'atmVirtual','ATM Virtual Interface [Subrahmanya_Hegde]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24');
INSERT INTO glpi_dev.glpi_networkporttypes (id,entities_id,is_recursive,value_decimal,name,comment,is_importable,instantiation_type,date_creation,date_mod) VALUES
	 (151,0,0,150,'mplsTunnel','MPLS Tunnel Virtual Interface [Cheenu_Srinivasan]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (152,0,0,151,'srp','Spatial Reuse Protocol [Bill_Shetti]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (153,0,0,152,'voiceOverAtm','Voice over ATM [Chris_White]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (154,0,0,153,'voiceOverFrameRelay','Voice Over Frame Relay [Chris_White]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (155,0,0,154,'idsl','Digital Subscriber Loop over ISDN [Patrick_Gili]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (156,0,0,155,'compositeLink','Avici Composite Link Interface [Joseph_Dube]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (157,0,0,156,'ss7SigLink','SS7 Signaling Link [Cheenu_Srinivasan]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (158,0,0,157,'propWirelessP2P','Prop. P2P wireless interface [Joseph_Raja]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (159,0,0,158,'frForward','Frame forward Interface [Subrahmanya_Hegde]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (160,0,0,159,'rfc1483','Multiprotocol over ATM AAL5 [RFC1483]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24');
INSERT INTO glpi_dev.glpi_networkporttypes (id,entities_id,is_recursive,value_decimal,name,comment,is_importable,instantiation_type,date_creation,date_mod) VALUES
	 (161,0,0,160,'USB','USB Interface [Bejamin_Dolnik]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (162,0,0,161,'ieee8023adLag','IEEE 802.3ad Link Aggregate [Les_Bell]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (163,0,0,162,'bgpPolicyAccounting','BGP Policy Accounting [Vinod_B_C]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (164,0,0,163,'frf16MfrBundle','FRF.16 Multilik Frame Relay [Pate_Prayson]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (165,0,0,164,'h323Gatekeeper','H323 Gatekeeper [Chris_White]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (166,0,0,165,'h323Proxy','H323 Voice and Video Proxy [Chris_White]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (167,0,0,166,'mpls','MPLS [Cheenu_Srinivasan]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (168,0,0,167,'mfSigLink','Multi-frequency signaling link [Cheenu_Srinivasan]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (169,0,0,168,'hdsl2','High Bit-Rate DSL, 2nd gen. [Bob_Ray]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (170,0,0,169,'shdsl','Multirate HDSL2 [Bob_Ray]',1,'NetworkPortEthernet','2022-10-31 05:17:24','2022-10-31 05:17:24');
INSERT INTO glpi_dev.glpi_networkporttypes (id,entities_id,is_recursive,value_decimal,name,comment,is_importable,instantiation_type,date_creation,date_mod) VALUES
	 (171,0,0,170,'ds1FDL','Facility Data Link (4Kbps) on a DS1 [Bill_Kwan]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (172,0,0,171,'POS','Packet over SONET/SDH Interface [Ewart_Tempest]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (173,0,0,172,'dvbAsiIn','DVB-ASI Input [Hezi_Oved]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (174,0,0,173,'dvbAsiOut','DVB-ASI Output [Hezi_Oved]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (175,0,0,174,'plc','Power Line Communications [Andrew_Lunn]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (176,0,0,175,'NFAS','Non-Facility Associated Signaling [Sidney_Antommarchi]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (177,0,0,176,'TR008','TROO8 [Sidney_Antommarchi]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (178,0,0,177,'GR303RDT','Remote Digital Terminal [Sidney_Antommarchi]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (179,0,0,178,'GR303IDT','Integrated Digital Terminal [Sidney_Antommarchi]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (180,0,0,179,'ISUP','ISUP [Sidney_Antommarchi]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24');
INSERT INTO glpi_dev.glpi_networkporttypes (id,entities_id,is_recursive,value_decimal,name,comment,is_importable,instantiation_type,date_creation,date_mod) VALUES
	 (181,0,0,180,'propDocsWirelessMaclayer','Cisco proprietary Maclayer [Joseph_Raja]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (182,0,0,181,'propDocsWirelessDownstream','Cisco proprietary Downstream [Joseph_Raja]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (183,0,0,182,'propDocsWirelessUpstream','Cisco proprietary Upstream [Joseph_Raja]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (184,0,0,183,'hiperlan2','HIPERLAN Type 2 Radio Interface [Jamshid_Khun_Jush]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (185,0,0,184,'propBWAp2Mp','PropBroadbandWirelessAccesspt2Multipt
(use of this type for IEEE 802.16
WMAN, interfaces as per IEEE 802.16
is deprecated and iftype 237 should
be used instead) [Zvika_Zilberman]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (186,0,0,185,'sonetOverheadChannel','SONET Overhead Channel [ODSI_Coalition_K_Arv]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (187,0,0,186,'digitalWrapperOverheadChannel','Digital Wrapper
Overhead [ODSI_Coalition_K_Arv]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (188,0,0,187,'aal2','ATM adaptation layer 2 [K_Ashoka]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (189,0,0,188,'radioMAC','MAC layer over radio links [Daniele_Behar]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (190,0,0,189,'atmRadio','ATM over radio links [Daniele_Behar]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24');
INSERT INTO glpi_dev.glpi_networkporttypes (id,entities_id,is_recursive,value_decimal,name,comment,is_importable,instantiation_type,date_creation,date_mod) VALUES
	 (191,0,0,190,'IMT','Inter-Machine Trunks [Sidney_Antommarchi]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (192,0,0,191,'mvl','Multiple Virtual Lines DSL [Kevin_Baughman]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (193,0,0,192,'reachDSL','Long Reach DSL [Kevin_Baughman]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (194,0,0,193,'frDlciEndPt','Frame Relay DLCI End Point [Robert_Steinberger]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (195,0,0,194,'atmVciEndPt','ATM VCI End Point [Robert_Steinberger]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (196,0,0,195,'opticalChannel','Optical Channel [Mark_Stewart]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (197,0,0,196,'opticalTransport','Optical Transport [Mark_Stewart]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (198,0,0,197,'propAtm','Proprietary ATM [Subrahmanya_Hegde]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (199,0,0,198,'voiceOverCable','Voice Over Cable Interface [Eugene_Nechamkin]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (200,0,0,199,'infiniband','Infiniband [Bill_Strahm]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24');
INSERT INTO glpi_dev.glpi_networkporttypes (id,entities_id,is_recursive,value_decimal,name,comment,is_importable,instantiation_type,date_creation,date_mod) VALUES
	 (201,0,0,200,'teLink','TE Link [Martin_Dubuc]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (202,0,0,201,'q2931','Q.2931 [Sidney_Antommarchi_2]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (203,0,0,202,'virtualTg','Virtual Trunk Group [Sidney_Antommarchi_2]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (204,0,0,203,'sipTg','SIP Trunk Group [Sidney_Antommarchi_2]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (205,0,0,204,'sipSig','SIP Signaling [Sidney_Antommarchi_2]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (206,0,0,205,'docsCableUpstreamChannel','CATV Upstream Channel [Greg_Nakanishi]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (207,0,0,206,'econet','Acorn Econet [Ben_Harris]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (208,0,0,207,'pon155','FSAN 155Mb Symetrical PON interface [Graham_Higgins]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (209,0,0,208,'pon622','FSAN 622Mb Symetrical PON interface [Graham_Higgins]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (210,0,0,209,'bridge','Transparent bridge interface [Yuzo_Watanabe]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24');
INSERT INTO glpi_dev.glpi_networkporttypes (id,entities_id,is_recursive,value_decimal,name,comment,is_importable,instantiation_type,date_creation,date_mod) VALUES
	 (211,0,0,210,'linegroup','Interface common to multiple lines [Yuzo_Watanabe]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (212,0,0,211,'voiceEMFGD','voice E&#38;M Feature Group D [Taher_Shaikh]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (213,0,0,212,'voiceFGDEANA','voice FGD Exchange Access North American [Taher_Shaikh]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (214,0,0,213,'voiceDID','voice Direct Inward Dialing [Taher_Shaikh]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (215,0,0,214,'mpegTransport','MPEG transport interface [Gaurav_Aggarwal]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (216,0,0,215,'sixToFour','6to4 interface  (DEPRECATED) [RFC4087]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (217,0,0,216,'gtp','GTP (GPRS Tunneling Protocol) [Rajesh_M_L]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (218,0,0,217,'pdnEtherLoop1','Paradyne EtherLoop 1 [Shu_Dong]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (219,0,0,218,'pdnEtherLoop2','Paradyne EtherLoop 2 [Shu_Dong]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (220,0,0,219,'opticalChannelGroup','Optical Channel Group [Hing_Kam_Lam]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24');
INSERT INTO glpi_dev.glpi_networkporttypes (id,entities_id,is_recursive,value_decimal,name,comment,is_importable,instantiation_type,date_creation,date_mod) VALUES
	 (221,0,0,220,'homepna','HomePNA ITU-T G.989 [Stephen_Palm]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (222,0,0,221,'gfp','Generic Framing Procedure (GFP) [Italo_Busi]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (223,0,0,222,'ciscoISLvlan','Layer 2 Virtual LAN using Cisco ISL [Sandeep_Raghavendra]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (224,0,0,223,'actelisMetaLOOP','Acteleis proprietary MetaLOOP
High Speed Link [Edward_Beili]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (225,0,0,224,'fcipLink','FCIP Link [Anil_Rijhsinghani]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (226,0,0,225,'rpr','Resilient Packet Ring Interface Type [IEEE 802.17]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (227,0,0,226,'qam','RF Qam Interface [Jeyachitra_Alagar]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (228,0,0,227,'lmp','Link Management Protocol [RFC4327]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (229,0,0,228,'cblVectaStar','Cambridge Broadband Networks Limited
VectaStar [John_Naylon]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (230,0,0,229,'docsCableMCmtsDownstream','CATV Modular CMTS Downstream
Interface [Eduardo_Cardona]["Data-Over-Cable Service Interface Specifications:
M-CMTS Operations Support System Interface Specification,
CM-SP-M-OSSI-I01-050805", DOCSIS, August 2005.][http://www.cablemodem.com/specifications][https://www.cablelabs.com/specifications/archives/docsis.html]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24');
INSERT INTO glpi_dev.glpi_networkporttypes (id,entities_id,is_recursive,value_decimal,name,comment,is_importable,instantiation_type,date_creation,date_mod) VALUES
	 (231,0,0,230,'adsl2','Asymmetric Digital Subscriber Loop
Version 2 (DEPRECATED - REPLACED
BY 238) [RFC4706]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (232,0,0,231,'macSecControlledIF','MACSecControlled [Paul_Congdon]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (233,0,0,232,'macSecUncontrolledIF','MACSecUncontrolled [Paul_Congdon]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (234,0,0,233,'aviciOpticalEther','Avici Optical Ethernet Aggregate [Somen_Bhattacharya]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (235,0,0,234,'atmbond','atmbond [https://www.itu.int/rec/T-REC-G.998.1-200501-I/en]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (236,0,0,235,'voiceFGDOS','voice FGD Operator Services [Lizzie_Cheung]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (237,0,0,236,'mocaVersion1','MultiMedia over Coax Alliance [Ladd_Wardani]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (238,0,0,237,'ieee80216WMAN','IEEE 802.16 WMAN interface [http://standards.ieee.org/getieee802/802.16.html]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (239,0,0,238,'adsl2plus','Asymmetric Digital Subscriber Loop
Version 2 -- Version 2 Plus and all
variants [RFC4706]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (240,0,0,239,'dvbRcsMacLayer','DVB-RCS MAC Layer [RFC5728][ETSI EN 301 790][https://web.archive.org/web/20181229131835/http://satlabs.org/pdf/SatLabs_System_Recommendations_v2.0_M&#38;C.pdf]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24');
INSERT INTO glpi_dev.glpi_networkporttypes (id,entities_id,is_recursive,value_decimal,name,comment,is_importable,instantiation_type,date_creation,date_mod) VALUES
	 (241,0,0,240,'dvbTdm','DVB Satellite TDM [RFC5728][ETSI EN 300 421][ETSI EN 302 307][https://web.archive.org/web/20181229131835/http://satlabs.org/pdf/SatLabs_System_Recommendations_v2.0_M&#38;C.pdf]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (242,0,0,241,'dvbRcsTdma','DVB-RCS TDMA [RFC5728][ETSI EN 301 790][ETSI EN 300 421][https://web.archive.org/web/20181229131835/http://satlabs.org/pdf/SatLabs_System_Recommendations_v2.0_M&#38;C.pdf]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (243,0,0,242,'x86Laps','LAPS based on ITU-T X.86/Y.1323 [Orly_Nicklass][http://grouper.ieee.org/groups/802/3/ad_hoc/etholaps/public/docs/opening_report_0301.pdf]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (244,0,0,243,'wwanPP','3GPP WWAN [Gabriel_Montenegro][https://www.3gpp.org/ftp/specs/archive/23_series/23.060/23060-740.zip]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (245,0,0,244,'wwanPP2','3GPP2 WWAN [Gabriel_Montenegro][http://www.3gpp2.org/Public_html/Specs/C.S0017-005-A_v1.0_040617.pdf]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (246,0,0,245,'voiceEBS','voice P-phone EBS physical interface [Tom_Chou]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (247,0,0,246,'ifPwType','Pseudowire interface type [RFC5601]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (248,0,0,247,'ILAN','Internal LAN on a bridge per IEEE
802.1ap [Glenn_Parsons][http://www.ieee802.org/1/files/private/ap-drafts/d3/802-1ap-D3-4.pdf]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (249,0,0,248,'PIP','Provider Instance Port on a bridge
per IEEE 802.1ah PBB [Glenn_Parsons][http://www.ieee802.org/1/files/private/ah-drafts/d4/802-1ah-d4-2.pdf]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (250,0,0,249,'aluELP','Alcatel-Lucent Ethernet Link Protection [Xiaohua_Ma]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24');
INSERT INTO glpi_dev.glpi_networkporttypes (id,entities_id,is_recursive,value_decimal,name,comment,is_importable,instantiation_type,date_creation,date_mod) VALUES
	 (251,0,0,250,'gpon','Gigabit-capable passive optical networks
(G-PON)  as per ITU-T G.948 [Hyeri_Koh]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (252,0,0,251,'vdsl2','Very high speed digital subscriber
line Version 2 (as per ITU-T Recommendation
G.993.2) [Markus_Freudenberger][RFC5650]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (253,0,0,252,'capwapDot11Profile','WLAN Profile Interface [RFC5834]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (254,0,0,253,'capwapDot11Bss','WLAN BSS Interface [RFC5834]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (255,0,0,254,'capwapWtpVirtualRadio','WTP Virtual Radio Interface [RFC5833]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (256,0,0,255,'bits','bitsport [Du_Feng]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (257,0,0,256,'docsCableUpstreamRfPort','DOCSIS CATV Upstream RF
Port [Michael_Patrick][https://www.cablelabs.com/specifications/CM-SP-EQAM-PMI-I01-081209.pdf]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (258,0,0,257,'cableDownstreamRfPort','CATV downstream RF port [Michael_Patrick]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (259,0,0,258,'vmwareVirtualNic','VMware Virtual Network Interface [Mike_MacFaden]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (260,0,0,259,'ieee802154','IEEE 802.15.4 WPAN interface [Juergen_Schoenwaelde]["IEEE Std. 802.15.4-2006", October 2006.]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24');
INSERT INTO glpi_dev.glpi_networkporttypes (id,entities_id,is_recursive,value_decimal,name,comment,is_importable,instantiation_type,date_creation,date_mod) VALUES
	 (261,0,0,260,'otnOdu','OTN Optical Data Unit [Jim_Vance][https://www.itu.int/ITU-T/studygroups/com15/otn/OTNtutorial.pdf]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (262,0,0,261,'otnOtu','OTN Optical channel Transport Unit [Jim_Vance][https://www.itu.int/ITU-T/studygroups/com15/otn/OTNtutorial.pdf]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (263,0,0,262,'ifVfiType','VPLS Forwarding Instance Interface
Type [Manas_Pati]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (264,0,0,263,'g9981','G.998.1 bonded interface [RFC6768][RFC Errata 3591]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (265,0,0,264,'g9982','G.998.2 bonded interface [RFC6767][RFC Errata 3589]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (266,0,0,265,'g9983','G.998.3 bonded interface [RFC6766][RFC Errata 3588]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (267,0,0,266,'aluEpon (E-PON)','Ethernet Passive Optical Networks [Karel_Meijfroidt]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (268,0,0,267,'aluEponOnu','EPON Optical Network Unit [Karel_Meijfroidt]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (269,0,0,268,'aluEponPhysicalUni','EPON physical User to Network
interface [Karel_Meijfroidt]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (270,0,0,269,'aluEponLogicalLink','The emulation of a point-to-point
link over the EPON layer [Karel_Meijfroidt]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24');
INSERT INTO glpi_dev.glpi_networkporttypes (id,entities_id,is_recursive,value_decimal,name,comment,is_importable,instantiation_type,date_creation,date_mod) VALUES
	 (271,0,0,270,'aluGponOnu','GPON Optical Network Unit [Karel_Meijfroidt][https://www.itu.int/rec/T-REC-G.984.2/en]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (272,0,0,271,'aluGponPhysicalUni','GPON physical User to Network
interface [Karel_Meijfroidt][https://www.itu.int/rec/T-REC-G.984.2/en]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (273,0,0,272,'vmwareNicTeam','VMware NIC Team [Michael_MacFaden][https://www.vmware.com/pdf/esx2_NIC_Teaming.pdf]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (274,0,0,273,'Reserved','The corresponding transmission value
is allocated according to the following
reference. [RFC6825]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (275,0,0,274,'Reserved','The corresponding transmission value
is allocated according to the following reference. [RFC7257]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (276,0,0,275,'Reserved','The corresponding transmission value
is allocated according to the following reference. [RFC7257]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (277,0,0,276,'Reserved','The corresponding transmission value
is allocated according to the following reference. [RFC7257]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (278,0,0,277,'docsOfdmDownstream','CATV Downstream OFDM interface [https://www.cablelabs.com/specification/cable-modem-operations-support-system-interface-specification][Miguel_O_Alvarez]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (279,0,0,278,'docsOfdmaUpstream','CATV Upstream OFDMA interface [https://www.cablelabs.com/specification/cable-modem-operations-support-system-interface-specification][Miguel_O_Alvarez]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (280,0,0,279,'gfast','G.fast port [ITU-T G.9701]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24');
INSERT INTO glpi_dev.glpi_networkporttypes (id,entities_id,is_recursive,value_decimal,name,comment,is_importable,instantiation_type,date_creation,date_mod) VALUES
	 (281,0,0,280,'sdci','SDCI (IO-Link) [IEC 61131-9 Edition 1.0 2013-09][Markus_Rentschler]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (282,0,0,281,'xboxWireless','Xbox wireless [Brandon_Jiang]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (283,0,0,282,'fastdsl','FastDSL [BBF TR-355][Broadband_Forum]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (284,0,0,283,'docsCableScte55d1FwdOob','Cable SCTE 55-1 OOB Forward Channel [https://www.scte.org/documents/pdf/Standards/ANSI_SCTE-55-1-2009.pdf][Brian_Hedstrom]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (285,0,0,284,'docsCableScte55d1RetOob','Cable SCTE 55-1 OOB Return Channel [https://www.scte.org/documents/pdf/Standards/ANSI_SCTE-55-1-2009.pdf][Brian_Hedstrom]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (286,0,0,285,'docsCableScte55d2DsOob','Cable SCTE 55-2 OOB Downstream Channel [https://web.archive.org/web/20190822104256/http://www.scte.org/documents/pdf/Standards/ANSI_SCTE%2055-2%202008.pdf][Brian_Hedstrom]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (287,0,0,286,'docsCableScte55d2UsOob','Cable SCTE 55-2 OOB Upstream Channel [https://web.archive.org/web/20190822104256/http://www.scte.org/documents/pdf/Standards/ANSI_SCTE%2055-2%202008.pdf][Brian_Hedstrom]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (288,0,0,287,'docsCableNdf','Cable Narrowband Digital Forward [http://www.cablelabs.com/wp-content/uploads/specdocs/CM-SP-R-OOB-I04-160923.pdf][Brian_Hedstrom]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (289,0,0,288,'docsCableNdr','Cable Narrowband Digital Return [http://www.cablelabs.com/wp-content/uploads/specdocs/CM-SP-R-OOB-I04-160923.pdf][Brian_Hedstrom]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (290,0,0,289,'ptm','Packet Transfer Mode [ITU-T G.993.1, Annex H][ITU-T G.993.2][ITU-T G.9701][Broadband_Forum]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24');
INSERT INTO glpi_dev.glpi_networkporttypes (id,entities_id,is_recursive,value_decimal,name,comment,is_importable,instantiation_type,date_creation,date_mod) VALUES
	 (291,0,0,290,'ghn','G.hn port [ITU-T G.9961][Broadband_Forum]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (292,0,0,291,'otnOtsi','Optical Tributary Signal [ITU-T G.959.1][Koteswara_Boyapati]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (293,0,0,292,'otnOtuc','OTN OTUCn [ITU-T G.709/Y.1331][Koteswara_Boyapati]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (294,0,0,293,'otnOduc','OTN ODUC [ITU-T G.709][Koteswara_Boyapati]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (295,0,0,294,'otnOtsig','OTN OTUC Signal [ITU-T G.709][Koteswara_Boyapati]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (296,0,0,295,'microwaveCarrierTermination','air interface of a single microwave carrier [RFC8561]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (297,0,0,296,'microwaveRadioLinkTerminal','radio link interface for one or several aggregated microwave carriers [RFC8561]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (298,0,0,297,'ieee8021axDrni','IEEE 802.1AX Distributed Resilient Network Interface [IEEE 802.1AX-Rev-d2-0][John_Messenger]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (299,0,0,298,'ax25','AX.25 network interfaces [AX.25 Link Access Protocol for Amateur Packet Radio version 2.2][Iain_Learmonth]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24'),
	 (300,0,0,299,'ieee19061nanocom','Nanoscale and Molecular Communication [IEEE 1906.1-2015][Stephen_F_Bush]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24');
INSERT INTO glpi_dev.glpi_networkporttypes (id,entities_id,is_recursive,value_decimal,name,comment,is_importable,instantiation_type,date_creation,date_mod) VALUES
	 (301,0,0,300,'cpri','Common Public Radio Interface [CPRI v7.0][Renwang_Liu]',0,NULL,'2022-10-31 05:17:24','2022-10-31 05:17:24');
INSERT INTO glpi_dev.glpi_notifications (id,name,entities_id,itemtype,event,comment,is_recursive,is_active,date_mod,date_creation,allow_response) VALUES
	 (1,'Alert Tickets not closed',0,'Ticket','alertnotclosed',NULL,1,1,NULL,NULL,1),
	 (2,'New Ticket',0,'Ticket','new',NULL,1,1,NULL,NULL,1),
	 (3,'Update Ticket',0,'Ticket','update',NULL,1,0,NULL,NULL,1),
	 (4,'Close Ticket',0,'Ticket','closed',NULL,1,1,NULL,NULL,1),
	 (5,'Add Followup',0,'Ticket','add_followup',NULL,1,1,NULL,NULL,1),
	 (6,'Add Task',0,'Ticket','add_task',NULL,1,1,NULL,NULL,1),
	 (7,'Update Followup',0,'Ticket','update_followup',NULL,1,1,NULL,NULL,1),
	 (8,'Update Task',0,'Ticket','update_task',NULL,1,1,NULL,NULL,1),
	 (9,'Delete Followup',0,'Ticket','delete_followup',NULL,1,1,NULL,NULL,1),
	 (10,'Delete Task',0,'Ticket','delete_task',NULL,1,1,NULL,NULL,1);
INSERT INTO glpi_dev.glpi_notifications (id,name,entities_id,itemtype,event,comment,is_recursive,is_active,date_mod,date_creation,allow_response) VALUES
	 (11,'Resolve ticket',0,'Ticket','solved',NULL,1,1,NULL,NULL,1),
	 (12,'Ticket Validation',0,'Ticket','validation',NULL,1,1,NULL,NULL,1),
	 (13,'New Reservation',0,'Reservation','new',NULL,1,1,NULL,NULL,1),
	 (14,'Update Reservation',0,'Reservation','update',NULL,1,1,NULL,NULL,1),
	 (15,'Delete Reservation',0,'Reservation','delete',NULL,1,1,NULL,NULL,1),
	 (16,'Alert Reservation',0,'Reservation','alert',NULL,1,1,NULL,NULL,1),
	 (17,'Contract Notice',0,'Contract','notice',NULL,1,1,NULL,NULL,1),
	 (18,'Contract End',0,'Contract','end',NULL,1,1,NULL,NULL,1),
	 (19,'MySQL Synchronization',0,'DBConnection','desynchronization',NULL,1,1,NULL,NULL,1),
	 (20,'Cartridges',0,'CartridgeItem','alert',NULL,1,1,NULL,NULL,1);
INSERT INTO glpi_dev.glpi_notifications (id,name,entities_id,itemtype,event,comment,is_recursive,is_active,date_mod,date_creation,allow_response) VALUES
	 (21,'Consumables',0,'ConsumableItem','alert',NULL,1,1,NULL,NULL,1),
	 (22,'Infocoms',0,'Infocom','alert',NULL,1,1,NULL,NULL,1),
	 (23,'Software Licenses',0,'SoftwareLicense','alert',NULL,1,1,NULL,NULL,1),
	 (24,'Ticket Recall',0,'Ticket','recall',NULL,1,1,NULL,NULL,1),
	 (25,'Password Forget',0,'User','passwordforget',NULL,1,1,NULL,NULL,1),
	 (26,'Ticket Satisfaction',0,'Ticket','satisfaction',NULL,1,1,NULL,NULL,1),
	 (27,'Item not unique',0,'FieldUnicity','refuse',NULL,1,1,NULL,NULL,1),
	 (28,'CronTask Watcher',0,'CronTask','alert',NULL,1,1,NULL,NULL,1),
	 (29,'New Problem',0,'Problem','new',NULL,1,1,NULL,NULL,1),
	 (30,'Update Problem',0,'Problem','update',NULL,1,1,NULL,NULL,1);
INSERT INTO glpi_dev.glpi_notifications (id,name,entities_id,itemtype,event,comment,is_recursive,is_active,date_mod,date_creation,allow_response) VALUES
	 (31,'Resolve Problem',0,'Problem','solved',NULL,1,1,NULL,NULL,1),
	 (32,'Add Task',0,'Problem','add_task',NULL,1,1,NULL,NULL,1),
	 (33,'Update Task',0,'Problem','update_task',NULL,1,1,NULL,NULL,1),
	 (34,'Delete Task',0,'Problem','delete_task',NULL,1,1,NULL,NULL,1),
	 (35,'Close Problem',0,'Problem','closed',NULL,1,1,NULL,NULL,1),
	 (36,'Delete Problem',0,'Problem','delete',NULL,1,1,NULL,NULL,1),
	 (37,'Ticket Validation Answer',0,'Ticket','validation_answer',NULL,1,1,NULL,NULL,1),
	 (38,'Contract End Periodicity',0,'Contract','periodicity',NULL,1,1,NULL,NULL,1),
	 (39,'Contract Notice Periodicity',0,'Contract','periodicitynotice',NULL,1,1,NULL,NULL,1),
	 (40,'Planning recall',0,'PlanningRecall','planningrecall',NULL,1,1,NULL,NULL,1);
INSERT INTO glpi_dev.glpi_notifications (id,name,entities_id,itemtype,event,comment,is_recursive,is_active,date_mod,date_creation,allow_response) VALUES
	 (41,'Delete Ticket',0,'Ticket','delete',NULL,1,1,NULL,NULL,1),
	 (42,'New Change',0,'Change','new',NULL,1,1,NULL,NULL,1),
	 (43,'Update Change',0,'Change','update',NULL,1,1,NULL,NULL,1),
	 (44,'Resolve Change',0,'Change','solved',NULL,1,1,NULL,NULL,1),
	 (45,'Add Task',0,'Change','add_task',NULL,1,1,NULL,NULL,1),
	 (46,'Update Task',0,'Change','update_task',NULL,1,1,NULL,NULL,1),
	 (47,'Delete Task',0,'Change','delete_task',NULL,1,1,NULL,NULL,1),
	 (48,'Close Change',0,'Change','closed',NULL,1,1,NULL,NULL,1),
	 (49,'Delete Change',0,'Change','delete',NULL,1,1,NULL,NULL,1),
	 (50,'Ticket Satisfaction Answer',0,'Ticket','replysatisfaction',NULL,1,1,NULL,NULL,1);
INSERT INTO glpi_dev.glpi_notifications (id,name,entities_id,itemtype,event,comment,is_recursive,is_active,date_mod,date_creation,allow_response) VALUES
	 (51,'Receiver errors',0,'MailCollector','error',NULL,1,1,NULL,NULL,1),
	 (52,'New Project',0,'Project','new',NULL,1,1,NULL,NULL,1),
	 (53,'Update Project',0,'Project','update',NULL,1,1,NULL,NULL,1),
	 (54,'Delete Project',0,'Project','delete',NULL,1,1,NULL,NULL,1),
	 (55,'New Project Task',0,'ProjectTask','new',NULL,1,1,NULL,NULL,1),
	 (56,'Update Project Task',0,'ProjectTask','update',NULL,1,1,NULL,NULL,1),
	 (57,'Delete Project Task',0,'ProjectTask','delete',NULL,1,1,NULL,NULL,1),
	 (58,'Request Unlock Items',0,'ObjectLock','unlock',NULL,1,1,NULL,NULL,1),
	 (59,'New user in requesters',0,'Ticket','requester_user',NULL,1,1,NULL,NULL,1),
	 (60,'New group in requesters',0,'Ticket','requester_group',NULL,1,1,NULL,NULL,1);
INSERT INTO glpi_dev.glpi_notifications (id,name,entities_id,itemtype,event,comment,is_recursive,is_active,date_mod,date_creation,allow_response) VALUES
	 (61,'New user in observers',0,'Ticket','observer_user',NULL,1,1,NULL,NULL,1),
	 (62,'New group in observers',0,'Ticket','observer_group',NULL,1,1,NULL,NULL,1),
	 (63,'New user in assignees',0,'Ticket','assign_user',NULL,1,1,NULL,NULL,1),
	 (64,'New group in assignees',0,'Ticket','assign_group',NULL,1,1,NULL,NULL,1),
	 (65,'New supplier in assignees',0,'Ticket','assign_supplier',NULL,1,1,NULL,NULL,1),
	 (66,'Saved searches',0,'SavedSearch_Alert','alert',NULL,1,1,NULL,NULL,1),
	 (67,'Certificates',0,'Certificate','alert',NULL,1,1,NULL,NULL,1),
	 (68,'Alert expired domains',0,'Domain','ExpiredDomains',NULL,1,1,NULL,NULL,1),
	 (69,'Alert domains close expiries',0,'Domain','DomainsWhichExpire',NULL,1,1,NULL,NULL,1),
	 (70,'Password expires alert',0,'User','passwordexpires',NULL,1,1,NULL,NULL,1);
INSERT INTO glpi_dev.glpi_notifications (id,name,entities_id,itemtype,event,comment,is_recursive,is_active,date_mod,date_creation,allow_response) VALUES
	 (71,'Check plugin updates',0,'Glpi\\Marketplace\\Controller','checkpluginsupdate',NULL,1,1,NULL,NULL,1),
	 (72,'New user mentionned',0,'Ticket','user_mention',NULL,1,1,NULL,NULL,1);
INSERT INTO glpi_dev.glpi_notifications_notificationtemplates (id,notifications_id,mode,notificationtemplates_id) VALUES
	 (1,1,'mailing',6),
	 (2,2,'mailing',4),
	 (3,3,'mailing',4),
	 (4,4,'mailing',4),
	 (5,5,'mailing',4),
	 (6,6,'mailing',4),
	 (7,7,'mailing',4),
	 (8,8,'mailing',4),
	 (9,9,'mailing',4),
	 (10,10,'mailing',4);
INSERT INTO glpi_dev.glpi_notifications_notificationtemplates (id,notifications_id,mode,notificationtemplates_id) VALUES
	 (11,11,'mailing',4),
	 (12,12,'mailing',7),
	 (13,13,'mailing',2),
	 (14,14,'mailing',2),
	 (15,15,'mailing',2),
	 (16,16,'mailing',3),
	 (17,17,'mailing',12),
	 (18,18,'mailing',12),
	 (19,19,'mailing',1),
	 (20,20,'mailing',8);
INSERT INTO glpi_dev.glpi_notifications_notificationtemplates (id,notifications_id,mode,notificationtemplates_id) VALUES
	 (21,21,'mailing',9),
	 (22,22,'mailing',10),
	 (23,23,'mailing',11),
	 (24,24,'mailing',4),
	 (25,25,'mailing',13),
	 (26,26,'mailing',14),
	 (27,27,'mailing',15),
	 (28,28,'mailing',16),
	 (29,29,'mailing',17),
	 (30,30,'mailing',17);
INSERT INTO glpi_dev.glpi_notifications_notificationtemplates (id,notifications_id,mode,notificationtemplates_id) VALUES
	 (31,31,'mailing',17),
	 (32,32,'mailing',17),
	 (33,33,'mailing',17),
	 (34,34,'mailing',17),
	 (35,35,'mailing',17),
	 (36,36,'mailing',17),
	 (37,37,'mailing',7),
	 (38,38,'mailing',12),
	 (39,39,'mailing',12),
	 (40,40,'mailing',18);
INSERT INTO glpi_dev.glpi_notifications_notificationtemplates (id,notifications_id,mode,notificationtemplates_id) VALUES
	 (41,41,'mailing',4),
	 (42,42,'mailing',19),
	 (43,43,'mailing',19),
	 (44,44,'mailing',19),
	 (45,45,'mailing',19),
	 (46,46,'mailing',19),
	 (47,47,'mailing',19),
	 (48,48,'mailing',19),
	 (49,49,'mailing',19),
	 (50,50,'mailing',14);
INSERT INTO glpi_dev.glpi_notifications_notificationtemplates (id,notifications_id,mode,notificationtemplates_id) VALUES
	 (51,51,'mailing',20),
	 (52,52,'mailing',21),
	 (53,53,'mailing',21),
	 (54,54,'mailing',21),
	 (55,55,'mailing',22),
	 (56,56,'mailing',22),
	 (57,57,'mailing',22),
	 (58,58,'mailing',23),
	 (59,59,'mailing',4),
	 (60,60,'mailing',4);
INSERT INTO glpi_dev.glpi_notifications_notificationtemplates (id,notifications_id,mode,notificationtemplates_id) VALUES
	 (61,61,'mailing',4),
	 (62,62,'mailing',4),
	 (63,63,'mailing',4),
	 (64,64,'mailing',4),
	 (65,65,'mailing',4),
	 (66,66,'mailing',24),
	 (67,67,'mailing',25),
	 (68,68,'mailing',26),
	 (69,69,'mailing',26),
	 (70,70,'mailing',27);
INSERT INTO glpi_dev.glpi_notifications_notificationtemplates (id,notifications_id,mode,notificationtemplates_id) VALUES
	 (71,71,'mailing',28),
	 (72,72,'mailing',4);
INSERT INTO glpi_dev.glpi_notificationtargets (id,items_id,`type`,notifications_id) VALUES
	 (1,3,1,13),
	 (2,1,1,13),
	 (3,3,2,2),
	 (4,1,1,2),
	 (5,1,1,3),
	 (6,1,1,5),
	 (7,1,1,4),
	 (8,2,1,3),
	 (9,4,1,3),
	 (10,3,1,2);
INSERT INTO glpi_dev.glpi_notificationtargets (id,items_id,`type`,notifications_id) VALUES
	 (11,3,1,3),
	 (12,3,1,5),
	 (13,3,1,4),
	 (14,1,1,19),
	 (15,14,1,12),
	 (16,3,1,14),
	 (17,1,1,14),
	 (18,3,1,15),
	 (19,1,1,15),
	 (20,1,1,6);
INSERT INTO glpi_dev.glpi_notificationtargets (id,items_id,`type`,notifications_id) VALUES
	 (21,3,1,6),
	 (22,1,1,7),
	 (23,3,1,7),
	 (24,1,1,8),
	 (25,3,1,8),
	 (26,1,1,9),
	 (27,3,1,9),
	 (28,1,1,10),
	 (29,3,1,10),
	 (30,1,1,11);
INSERT INTO glpi_dev.glpi_notificationtargets (id,items_id,`type`,notifications_id) VALUES
	 (31,3,1,11),
	 (32,19,1,25),
	 (33,3,1,26),
	 (34,21,1,2),
	 (35,21,1,3),
	 (36,21,1,5),
	 (37,21,1,4),
	 (38,21,1,6),
	 (39,21,1,7),
	 (40,21,1,8);
INSERT INTO glpi_dev.glpi_notificationtargets (id,items_id,`type`,notifications_id) VALUES
	 (41,21,1,9),
	 (42,21,1,10),
	 (43,21,1,11),
	 (46,1,1,28),
	 (47,3,1,29),
	 (48,1,1,29),
	 (49,21,1,29),
	 (50,2,1,30),
	 (51,4,1,30),
	 (52,3,1,30);
INSERT INTO glpi_dev.glpi_notificationtargets (id,items_id,`type`,notifications_id) VALUES
	 (53,1,1,30),
	 (54,21,1,30),
	 (55,3,1,31),
	 (56,1,1,31),
	 (57,21,1,31),
	 (58,3,1,32),
	 (59,1,1,32),
	 (60,21,1,32),
	 (61,3,1,33),
	 (62,1,1,33);
INSERT INTO glpi_dev.glpi_notificationtargets (id,items_id,`type`,notifications_id) VALUES
	 (63,21,1,33),
	 (64,3,1,34),
	 (65,1,1,34),
	 (66,21,1,34),
	 (67,3,1,35),
	 (68,1,1,35),
	 (69,21,1,35),
	 (70,3,1,36),
	 (71,1,1,36),
	 (72,21,1,36);
INSERT INTO glpi_dev.glpi_notificationtargets (id,items_id,`type`,notifications_id) VALUES
	 (73,14,1,37),
	 (74,3,1,40),
	 (75,1,1,41),
	 (76,3,1,42),
	 (77,1,1,42),
	 (78,21,1,42),
	 (79,2,1,43),
	 (80,4,1,43),
	 (81,3,1,43),
	 (82,1,1,43);
INSERT INTO glpi_dev.glpi_notificationtargets (id,items_id,`type`,notifications_id) VALUES
	 (83,21,1,43),
	 (84,3,1,44),
	 (85,1,1,44),
	 (86,21,1,44),
	 (87,3,1,45),
	 (88,1,1,45),
	 (89,21,1,45),
	 (90,3,1,46),
	 (91,1,1,46),
	 (92,21,1,46);
INSERT INTO glpi_dev.glpi_notificationtargets (id,items_id,`type`,notifications_id) VALUES
	 (93,3,1,47),
	 (94,1,1,47),
	 (95,21,1,47),
	 (96,3,1,48),
	 (97,1,1,48),
	 (98,21,1,48),
	 (99,3,1,49),
	 (100,1,1,49),
	 (101,21,1,49),
	 (102,3,1,50);
INSERT INTO glpi_dev.glpi_notificationtargets (id,items_id,`type`,notifications_id) VALUES
	 (103,2,1,50),
	 (104,1,1,51),
	 (105,27,1,52),
	 (106,1,1,52),
	 (107,28,1,52),
	 (108,27,1,53),
	 (109,1,1,53),
	 (110,28,1,53),
	 (111,27,1,54),
	 (112,1,1,54);
INSERT INTO glpi_dev.glpi_notificationtargets (id,items_id,`type`,notifications_id) VALUES
	 (113,28,1,54),
	 (114,31,1,55),
	 (115,1,1,55),
	 (116,32,1,55),
	 (117,31,1,56),
	 (118,1,1,56),
	 (119,32,1,56),
	 (120,31,1,57),
	 (121,1,1,57),
	 (122,32,1,57);
INSERT INTO glpi_dev.glpi_notificationtargets (id,items_id,`type`,notifications_id) VALUES
	 (123,19,1,58),
	 (124,3,1,59),
	 (125,13,1,60),
	 (126,21,1,61),
	 (127,20,1,62),
	 (128,2,1,63),
	 (129,9,1,64),
	 (130,8,1,65),
	 (131,19,1,66),
	 (132,5,1,67);
INSERT INTO glpi_dev.glpi_notificationtargets (id,items_id,`type`,notifications_id) VALUES
	 (133,23,1,67),
	 (134,5,1,68),
	 (135,23,1,68),
	 (136,5,1,69),
	 (137,23,1,69),
	 (138,19,1,70),
	 (139,1,1,71),
	 (140,39,1,72);
INSERT INTO glpi_dev.glpi_notificationtemplates (id,name,itemtype,date_mod,comment,css,date_creation) VALUES
	 (1,'MySQL Synchronization','DBConnection',NULL,NULL,NULL,NULL),
	 (2,'Reservations','Reservation',NULL,NULL,NULL,NULL),
	 (3,'Alert Reservation','Reservation',NULL,NULL,NULL,NULL),
	 (4,'Tickets','Ticket',NULL,NULL,NULL,NULL),
	 (5,'Tickets (Simple)','Ticket',NULL,NULL,NULL,NULL),
	 (6,'Alert Tickets not closed','Ticket',NULL,NULL,NULL,NULL),
	 (7,'Tickets Validation','Ticket',NULL,NULL,NULL,NULL),
	 (8,'Cartridges','CartridgeItem',NULL,NULL,NULL,NULL),
	 (9,'Consumables','ConsumableItem',NULL,NULL,NULL,NULL),
	 (10,'Infocoms','Infocom',NULL,NULL,NULL,NULL);
INSERT INTO glpi_dev.glpi_notificationtemplates (id,name,itemtype,date_mod,comment,css,date_creation) VALUES
	 (11,'Licenses','SoftwareLicense',NULL,NULL,NULL,NULL),
	 (12,'Contracts','Contract',NULL,NULL,NULL,NULL),
	 (13,'Password Forget','User',NULL,NULL,NULL,NULL),
	 (14,'Ticket Satisfaction','Ticket',NULL,NULL,NULL,NULL),
	 (15,'Item not unique','FieldUnicity',NULL,NULL,NULL,NULL),
	 (16,'CronTask','CronTask',NULL,NULL,NULL,NULL),
	 (17,'Problems','Problem',NULL,NULL,NULL,NULL),
	 (18,'Planning recall','PlanningRecall',NULL,NULL,NULL,NULL),
	 (19,'Changes','Change',NULL,NULL,NULL,NULL),
	 (20,'Receiver errors','MailCollector',NULL,NULL,NULL,NULL);
INSERT INTO glpi_dev.glpi_notificationtemplates (id,name,itemtype,date_mod,comment,css,date_creation) VALUES
	 (21,'Projects','Project',NULL,NULL,NULL,NULL),
	 (22,'Project Tasks','ProjectTask',NULL,NULL,NULL,NULL),
	 (23,'Unlock Item request','ObjectLock',NULL,NULL,NULL,NULL),
	 (24,'Saved searches alerts','SavedSearch_Alert',NULL,NULL,NULL,NULL),
	 (25,'Certificates','Certificate',NULL,NULL,NULL,NULL),
	 (26,'Alert domains','Domain',NULL,NULL,NULL,NULL),
	 (27,'Password expires alert','User',NULL,NULL,NULL,NULL),
	 (28,'Plugin updates','Glpi\\Marketplace\\Controller',NULL,NULL,NULL,NULL);
INSERT INTO glpi_dev.glpi_notificationtemplatetranslations (id,notificationtemplates_id,`language`,subject,content_text,content_html) VALUES
	 (1,1,'','##lang.dbconnection.title##','##lang.dbconnection.delay## : ##dbconnection.delay##','&lt;p&gt;##lang.dbconnection.delay## : ##dbconnection.delay##&lt;/p&gt;'),
	 (2,2,'','##reservation.action##','======================================================================
##lang.reservation.user##: ##reservation.user##
##lang.reservation.item.name##: ##reservation.itemtype## - ##reservation.item.name##
##IFreservation.tech## ##lang.reservation.tech## ##reservation.tech## ##ENDIFreservation.tech##
##lang.reservation.begin##: ##reservation.begin##
##lang.reservation.end##: ##reservation.end##
##lang.reservation.comment##: ##reservation.comment##
======================================================================','&lt;!-- description{ color: inherit; background: #ebebeb;border-style: solid;border-color: #8d8d8d; border-width: 0px 1px 1px 0px; } --&gt;
&lt;p&gt;&lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt;##lang.reservation.user##:&lt;/span&gt;##reservation.user##&lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt;##lang.reservation.item.name##:&lt;/span&gt;##reservation.itemtype## - ##reservation.item.name##&lt;br /&gt;##IFreservation.tech## ##lang.reservation.tech## ##reservation.tech####ENDIFreservation.tech##&lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt;##lang.reservation.begin##:&lt;/span&gt; ##reservation.begin##&lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt;##lang.reservation.end##:&lt;/span&gt;##reservation.end##&lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt;##lang.reservation.comment##:&lt;/span&gt; ##reservation.comment##&lt;/p&gt;'),
	 (3,3,'','##reservation.action##  ##reservation.entity##','##lang.reservation.entity## : ##reservation.entity##


##FOREACHreservations##
##lang.reservation.itemtype## : ##reservation.itemtype##

 ##lang.reservation.item## : ##reservation.item##

 ##reservation.url##

 ##ENDFOREACHreservations##','&lt;p&gt;##lang.reservation.entity## : ##reservation.entity## &lt;br /&gt; &lt;br /&gt;
##FOREACHreservations## &lt;br /&gt;##lang.reservation.itemtype## :  ##reservation.itemtype##&lt;br /&gt;
 ##lang.reservation.item## :  ##reservation.item##&lt;br /&gt; &lt;br /&gt;
 &lt;a href="##reservation.url##"&gt; ##reservation.url##&lt;/a&gt;&lt;br /&gt;
 ##ENDFOREACHreservations##&lt;/p&gt;'),
	 (4,4,'','##ticket.action## ##ticket.title##',' ##IFticket.storestatus=5##
 ##lang.ticket.url## : ##ticket.urlapprove##
 ##lang.ticket.autoclosewarning##
 ##lang.ticket.solvedate## : ##ticket.solvedate##
 ##lang.ticket.solution.type## : ##ticket.solution.type##
 ##lang.ticket.solution.description## : ##ticket.solution.description## ##ENDIFticket.storestatus##
 ##ELSEticket.storestatus## ##lang.ticket.url## : ##ticket.url## ##ENDELSEticket.storestatus##

 ##lang.ticket.description##

 ##lang.ticket.title## : ##ticket.title##
 ##lang.ticket.authors## : ##IFticket.authors## ##ticket.authors## ##ENDIFticket.authors## ##ELSEticket.authors##--##ENDELSEticket.authors##
 ##lang.ticket.creationdate## : ##ticket.creationdate##
 ##lang.ticket.closedate## : ##ticket.closedate##
 ##lang.ticket.requesttype## : ##ticket.requesttype##
##lang.ticket.item.name## :

##FOREACHitems##

 ##IFticket.itemtype##
  ##ticket.itemtype## - ##ticket.item.name##
  ##IFticket.item.model## ##lang.ticket.item.model## : ##ticket.item.model## ##ENDIFticket.item.model##
  ##IFticket.item.serial## ##lang.ticket.item.serial## : ##ticket.item.serial## ##ENDIFticket.item.serial##
  ##IFticket.item.otherserial## ##lang.ticket.item.otherserial## : ##ticket.item.otherserial## ##ENDIFticket.item.otherserial##
 ##ENDIFticket.itemtype##

##ENDFOREACHitems##
##IFticket.assigntousers## ##lang.ticket.assigntousers## : ##ticket.assigntousers## ##ENDIFticket.assigntousers##
 ##lang.ticket.status## : ##ticket.status##
##IFticket.assigntogroups## ##lang.ticket.assigntogroups## : ##ticket.assigntogroups## ##ENDIFticket.assigntogroups##
 ##lang.ticket.urgency## : ##ticket.urgency##
 ##lang.ticket.impact## : ##ticket.impact##
 ##lang.ticket.priority## : ##ticket.priority##
##IFticket.user.email## ##lang.ticket.user.email## : ##ticket.user.email ##ENDIFticket.user.email##
##IFticket.category## ##lang.ticket.category## : ##ticket.category## ##ENDIFticket.category## ##ELSEticket.category## ##lang.ticket.nocategoryassigned## ##ENDELSEticket.category##
 ##lang.ticket.content## : ##ticket.content##
 ##IFticket.storestatus=6##

 ##lang.ticket.solvedate## : ##ticket.solvedate##
 ##lang.ticket.solution.type## : ##ticket.solution.type##
 ##lang.ticket.solution.description## : ##ticket.solution.description##
 ##ENDIFticket.storestatus##

##FOREACHtimelineitems##
[##timelineitems.date##]
##lang.timelineitems.author## ##timelineitems.author##
##lang.timelineitems.description## ##timelineitems.description##
##lang.timelineitems.date## ##timelineitems.date##
##lang.timelineitems.position## ##timelineitems.position##
##lang.timelineitems.type## ##timelineitems.type##
##lang.timelineitems.typename## ##timelineitems.typename##
##ENDFOREACHtimelineitems##

##lang.ticket.numberoffollowups## : ##ticket.numberoffollowups##
##lang.ticket.numberoftasks## : ##ticket.numberoftasks##','&lt;!-- description{ color: inherit; background: #ebebeb; border-style: solid;border-color: #8d8d8d; border-width: 0px 1px 1px 0px; }    --&gt;
&lt;div&gt;##IFticket.storestatus=5##&lt;/div&gt;
&lt;div&gt;##lang.ticket.url## : &lt;a href="##ticket.urlapprove##"&gt;##ticket.urlapprove##&lt;/a&gt; &lt;strong&gt;&#160;&lt;/strong&gt;&lt;/div&gt;
&lt;div&gt;&lt;strong&gt;##lang.ticket.autoclosewarning##&lt;/strong&gt;&lt;/div&gt;
&lt;div&gt;&lt;span style="color: #888888;"&gt;&lt;strong&gt;&lt;span style="text-decoration: underline;"&gt;##lang.ticket.solvedate##&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt; : ##ticket.solvedate##&lt;br /&gt;&lt;span style="text-decoration: underline; color: #888888;"&gt;&lt;strong&gt;##lang.ticket.solution.type##&lt;/strong&gt;&lt;/span&gt; : ##ticket.solution.type##&lt;br /&gt;&lt;span style="text-decoration: underline; color: #888888;"&gt;&lt;strong&gt;##lang.ticket.solution.description##&lt;/strong&gt;&lt;/span&gt; : ##ticket.solution.description## ##ENDIFticket.storestatus##&lt;/div&gt;
&lt;div&gt;##ELSEticket.storestatus## ##lang.ticket.url## : &lt;a href="##ticket.url##"&gt;##ticket.url##&lt;/a&gt; ##ENDELSEticket.storestatus##&lt;/div&gt;
&lt;p class="description b"&gt;&lt;strong&gt;##lang.ticket.description##&lt;/strong&gt;&lt;/p&gt;
&lt;p&gt;&lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.ticket.title##&lt;/span&gt;&#160;:##ticket.title## &lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.ticket.authors##&lt;/span&gt;&#160;:##IFticket.authors## ##ticket.authors## ##ENDIFticket.authors##    ##ELSEticket.authors##--##ENDELSEticket.authors## &lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.ticket.creationdate##&lt;/span&gt;&#160;:##ticket.creationdate## &lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.ticket.closedate##&lt;/span&gt;&#160;:##ticket.closedate## &lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.ticket.requesttype##&lt;/span&gt;&#160;:##ticket.requesttype##&lt;br /&gt;
&lt;br /&gt;&lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.ticket.item.name##&lt;/span&gt;&#160;:
&lt;p&gt;##FOREACHitems##&lt;/p&gt;
&lt;div class="description b"&gt;##IFticket.itemtype## ##ticket.itemtype##&#160;- ##ticket.item.name## ##IFticket.item.model## ##lang.ticket.item.model## : ##ticket.item.model## ##ENDIFticket.item.model## ##IFticket.item.serial## ##lang.ticket.item.serial## : ##ticket.item.serial## ##ENDIFticket.item.serial## ##IFticket.item.otherserial## ##lang.ticket.item.otherserial## : ##ticket.item.otherserial## ##ENDIFticket.item.otherserial## ##ENDIFticket.itemtype## &lt;/div&gt;&lt;br /&gt;
&lt;p&gt;##ENDFOREACHitems##&lt;/p&gt;
##IFticket.assigntousers## &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.ticket.assigntousers##&lt;/span&gt;&#160;: ##ticket.assigntousers## ##ENDIFticket.assigntousers##&lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt;##lang.ticket.status## &lt;/span&gt;&#160;: ##ticket.status##&lt;br /&gt; ##IFticket.assigntogroups## &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.ticket.assigntogroups##&lt;/span&gt;&#160;: ##ticket.assigntogroups## ##ENDIFticket.assigntogroups##&lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.ticket.urgency##&lt;/span&gt;&#160;: ##ticket.urgency##&lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.ticket.impact##&lt;/span&gt;&#160;: ##ticket.impact##&lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.ticket.priority##&lt;/span&gt;&#160;: ##ticket.priority## &lt;br /&gt; ##IFticket.user.email##&lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.ticket.user.email##&lt;/span&gt;&#160;: ##ticket.user.email ##ENDIFticket.user.email##    &lt;br /&gt; ##IFticket.category##&lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt;##lang.ticket.category## &lt;/span&gt;&#160;:##ticket.category## ##ENDIFticket.category## ##ELSEticket.category## ##lang.ticket.nocategoryassigned## ##ENDELSEticket.category##    &lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.ticket.content##&lt;/span&gt;&#160;: ##ticket.content##&lt;/p&gt;
&lt;br /&gt;##IFticket.storestatus=6##&lt;br /&gt;&lt;span style="text-decoration: underline;"&gt;&lt;strong&gt;&lt;span style="color: #888888;"&gt;##lang.ticket.solvedate##&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt; : ##ticket.solvedate##&lt;br /&gt;&lt;span style="color: #888888;"&gt;&lt;strong&gt;&lt;span style="text-decoration: underline;"&gt;##lang.ticket.solution.type##&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt; : ##ticket.solution.type##&lt;br /&gt;&lt;span style="text-decoration: underline; color: #888888;"&gt;&lt;strong&gt;##lang.ticket.solution.description##&lt;/strong&gt;&lt;/span&gt; : ##ticket.solution.description##&lt;br /&gt;##ENDIFticket.storestatus##&lt;/p&gt;
&lt;p&gt;##FOREACHtimelineitems##&lt;/p&gt;
&lt;div class="description b"&gt;&lt;br /&gt;&lt;strong&gt; [##timelineitems.date##]&lt;/strong&gt;&lt;br /&gt;&lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.timelineitems.author## &lt;/span&gt; &lt;span style="color: #000000; font-weight: bold; text-decoration: underline;"&gt;##timelineitems.author##&lt;/span&gt;&lt;br /&gt;&lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.timelineitems.description## &lt;/span&gt; &lt;span style="color: #000000; font-weight: bold; text-decoration: underline;"&gt;##timelineitems.description##&lt;/span&gt;&lt;br /&gt;&lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.timelineitems.date## &lt;/span&gt; &lt;span style="color: #000000; font-weight: bold; text-decoration: underline;"&gt;##timelineitems.date##&lt;/span&gt;&lt;br /&gt;&lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt;##lang.timelineitems.position## &lt;/span&gt;&lt;span style="color: #000000; font-weight: bold; text-decoration: underline;"&gt; ##timelineitems.position##&lt;/span&gt;&lt;/div&gt;
&lt;div class="description b"&gt;&lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt;##lang.timelineitems.type## &lt;/span&gt;&lt;span style="color: #000000; font-weight: bold; text-decoration: underline;"&gt; ##timelineitems.type##&lt;/span&gt;&lt;/div&gt;
&lt;div class="description b"&gt;&lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt;##lang.timelineitems.typename## &lt;/span&gt; &lt;span style="color: #000000; font-weight: bold; text-decoration: underline;"&gt;##timelineitems.typename##&lt;/span&gt;&lt;/div&gt;
&lt;p&gt;##ENDFOREACHtimelineitems##&lt;/p&gt;
&lt;div class="description b"&gt;##lang.ticket.numberoffollowups##&#160;: ##ticket.numberoffollowups##&lt;/div&gt;
&lt;div class="description b"&gt;##lang.ticket.numberoftasks##&#160;: ##ticket.numberoftasks##&lt;/div&gt;'),
	 (5,12,'','##contract.action##  ##contract.entity##','##lang.contract.entity## : ##contract.entity##

##FOREACHcontracts##
##lang.contract.name## : ##contract.name##
##lang.contract.number## : ##contract.number##
##lang.contract.time## : ##contract.time##
##IFcontract.type####lang.contract.type## : ##contract.type####ENDIFcontract.type##
##contract.url##
##ENDFOREACHcontracts##','&lt;p&gt;##lang.contract.entity## : ##contract.entity##&lt;br /&gt;
&lt;br /&gt;##FOREACHcontracts##&lt;br /&gt;##lang.contract.name## :
##contract.name##&lt;br /&gt;
##lang.contract.number## : ##contract.number##&lt;br /&gt;
##lang.contract.time## : ##contract.time##&lt;br /&gt;
##IFcontract.type####lang.contract.type## : ##contract.type##
##ENDIFcontract.type##&lt;br /&gt;
&lt;a href="##contract.url##"&gt;
##contract.url##&lt;/a&gt;&lt;br /&gt;
##ENDFOREACHcontracts##&lt;/p&gt;'),
	 (6,5,'','##ticket.action## ##ticket.title##','##lang.ticket.url## : ##ticket.url##

##lang.ticket.description##


##lang.ticket.title##  :##ticket.title##

##lang.ticket.authors##  :##IFticket.authors##
##ticket.authors## ##ENDIFticket.authors##
##ELSEticket.authors##--##ENDELSEticket.authors##

##IFticket.category## ##lang.ticket.category##  :##ticket.category##
##ENDIFticket.category## ##ELSEticket.category##
##lang.ticket.nocategoryassigned## ##ENDELSEticket.category##

##lang.ticket.content##  : ##ticket.content##
##IFticket.itemtype##
##lang.ticket.item.name##  : ##ticket.itemtype## - ##ticket.item.name##
##ENDIFticket.itemtype##','&lt;div&gt;##lang.ticket.url## : &lt;a href="##ticket.url##"&gt;
##ticket.url##&lt;/a&gt;&lt;/div&gt;
&lt;div class="description b"&gt;
##lang.ticket.description##&lt;/div&gt;
&lt;p&gt;&lt;span
style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt;
##lang.ticket.title##&lt;/span&gt;&#160;:##ticket.title##
&lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt;
##lang.ticket.authors##&lt;/span&gt;
##IFticket.authors## ##ticket.authors##
##ENDIFticket.authors##
##ELSEticket.authors##--##ENDELSEticket.authors##
&lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt;
&lt;/span&gt;&lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; &lt;/span&gt;
##IFticket.category##&lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt;
##lang.ticket.category## &lt;/span&gt;&#160;:##ticket.category##
##ENDIFticket.category## ##ELSEticket.category##
##lang.ticket.nocategoryassigned## ##ENDELSEticket.category##
&lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt;
##lang.ticket.content##&lt;/span&gt;&#160;:
##ticket.content##&lt;br /&gt;##IFticket.itemtype##
&lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt;
##lang.ticket.item.name##&lt;/span&gt;&#160;:
##ticket.itemtype## - ##ticket.item.name##
##ENDIFticket.itemtype##&lt;/p&gt;'),
	 (7,7,'','##ticket.action## ##ticket.title##','##FOREACHvalidations##

##IFvalidation.storestatus=2##
##validation.submission.title##
##lang.validation.commentsubmission## : ##validation.commentsubmission##
##ENDIFvalidation.storestatus##
##ELSEvalidation.storestatus## ##validation.answer.title## ##ENDELSEvalidation.storestatus##

##lang.ticket.url## : ##ticket.urlvalidation##

##IFvalidation.status## ##lang.validation.status## : ##validation.status## ##ENDIFvalidation.status##
##IFvalidation.commentvalidation##
##lang.validation.commentvalidation## : ##validation.commentvalidation##
##ENDIFvalidation.commentvalidation##
##ENDFOREACHvalidations##','&lt;div&gt;##FOREACHvalidations##&lt;/div&gt;
&lt;p&gt;##IFvalidation.storestatus=2##&lt;/p&gt;
&lt;div&gt;##validation.submission.title##&lt;/div&gt;
&lt;div&gt;##lang.validation.commentsubmission## : ##validation.commentsubmission##&lt;/div&gt;
&lt;div&gt;##ENDIFvalidation.storestatus##&lt;/div&gt;
&lt;div&gt;##ELSEvalidation.storestatus## ##validation.answer.title## ##ENDELSEvalidation.storestatus##&lt;/div&gt;
&lt;div&gt;&lt;/div&gt;
&lt;div&gt;
&lt;div&gt;##lang.ticket.url## : &lt;a href="##ticket.urlvalidation##"&gt; ##ticket.urlvalidation## &lt;/a&gt;&lt;/div&gt;
&lt;/div&gt;
&lt;p&gt;##IFvalidation.status## ##lang.validation.status## : ##validation.status## ##ENDIFvalidation.status##
&lt;br /&gt; ##IFvalidation.commentvalidation##&lt;br /&gt; ##lang.validation.commentvalidation## :
&#160; ##validation.commentvalidation##&lt;br /&gt; ##ENDIFvalidation.commentvalidation##
&lt;br /&gt;##ENDFOREACHvalidations##&lt;/p&gt;'),
	 (8,6,'','##ticket.action## ##ticket.entity##','##FOREACHtickets##
##lang.ticket.authors##: ##ticket.authors##
##lang.ticket.title##: ##ticket.title##
##lang.ticket.priority##: ##ticket.priority##
##lang.ticket.status##: ##ticket.status##
##lang.ticket.attribution##: ##IFticket.assigntousers####ticket.assigntousers##
##ENDIFticket.assigntousers####IFticket.assigntogroups##
##ticket.assigntogroups## ##ENDIFticket.assigntogroups####IFticket.assigntosupplier##
##ticket.assigntosupplier## ##ENDIFticket.assigntosupplier##
##lang.ticket.creationdate##: ##ticket.creationdate##
##lang.ticket.content##: ##ticket.content## ##ENDFOREACHtickets##','&lt;table class="tab_cadre" border="1" cellspacing="2" cellpadding="3"&gt;
&lt;tbody&gt;
&lt;tr&gt;
&lt;td style="text-align: left;" width="auto" bgcolor="#cccccc"&gt;&lt;span style="font-size: 11px; text-align: left;"&gt;##lang.ticket.authors##&lt;/span&gt;&lt;/td&gt;
&lt;td style="text-align: left;" width="auto" bgcolor="#cccccc"&gt;&lt;span style="font-size: 11px; text-align: left;"&gt;##lang.ticket.title##&lt;/span&gt;&lt;/td&gt;
&lt;td style="text-align: left;" width="auto" bgcolor="#cccccc"&gt;&lt;span style="font-size: 11px; text-align: left;"&gt;##lang.ticket.priority##&lt;/span&gt;&lt;/td&gt;
&lt;td style="text-align: left;" width="auto" bgcolor="#cccccc"&gt;&lt;span style="font-size: 11px; text-align: left;"&gt;##lang.ticket.status##&lt;/span&gt;&lt;/td&gt;
&lt;td style="text-align: left;" width="auto" bgcolor="#cccccc"&gt;&lt;span style="font-size: 11px; text-align: left;"&gt;##lang.ticket.attribution##&lt;/span&gt;&lt;/td&gt;
&lt;td style="text-align: left;" width="auto" bgcolor="#cccccc"&gt;&lt;span style="font-size: 11px; text-align: left;"&gt;##lang.ticket.creationdate##&lt;/span&gt;&lt;/td&gt;
&lt;td style="text-align: left;" width="auto" bgcolor="#cccccc"&gt;&lt;span style="font-size: 11px; text-align: left;"&gt;##lang.ticket.content##&lt;/span&gt;##FOREACHtickets##&lt;/td&gt;
&lt;/tr&gt;
&lt;tr&gt;
&lt;td width="auto"&gt;&lt;span style="font-size: 11px; text-align: left;"&gt;##ticket.authors##&lt;/span&gt;&lt;/td&gt;
&lt;td width="auto"&gt;&lt;span style="font-size: 11px; text-align: left;"&gt;&lt;a href="##ticket.url##"&gt;##ticket.title##&lt;/a&gt;&lt;/span&gt;&lt;/td&gt;
&lt;td width="auto"&gt;&lt;span style="font-size: 11px; text-align: left;"&gt;##ticket.priority##&lt;/span&gt;&lt;/td&gt;
&lt;td width="auto"&gt;&lt;span style="font-size: 11px; text-align: left;"&gt;##ticket.status##&lt;/span&gt;&lt;/td&gt;
&lt;td width="auto"&gt;&lt;span style="font-size: 11px; text-align: left;"&gt;##IFticket.assigntousers####ticket.assigntousers##&lt;br /&gt;##ENDIFticket.assigntousers####IFticket.assigntogroups##&lt;br /&gt;##ticket.assigntogroups## ##ENDIFticket.assigntogroups####IFticket.assigntosupplier##&lt;br /&gt;##ticket.assigntosupplier## ##ENDIFticket.assigntosupplier##&lt;/span&gt;&lt;/td&gt;
&lt;td width="auto"&gt;&lt;span style="font-size: 11px; text-align: left;"&gt;##ticket.creationdate##&lt;/span&gt;&lt;/td&gt;
&lt;td width="auto"&gt;&lt;span style="font-size: 11px; text-align: left;"&gt;##ticket.content##&lt;/span&gt;##ENDFOREACHtickets##&lt;/td&gt;
&lt;/tr&gt;
&lt;/tbody&gt;
&lt;/table&gt;'),
	 (9,9,'','##consumable.action##  ##consumable.entity##','##lang.consumable.entity## : ##consumable.entity##


##FOREACHconsumables##
##lang.consumable.item## : ##consumable.item##


##lang.consumable.reference## : ##consumable.reference##

##lang.consumable.remaining## : ##consumable.remaining##
##lang.consumable.stock_target## : ##consumable.stock_target##
##lang.consumable.to_order## : ##consumable.to_order##

##consumable.url##

##ENDFOREACHconsumables##','&lt;p&gt;
##lang.consumable.entity## : ##consumable.entity##
&lt;br /&gt; &lt;br /&gt;##FOREACHconsumables##
&lt;br /&gt;##lang.consumable.item## : ##consumable.item##&lt;br /&gt;
&lt;br /&gt;##lang.consumable.reference## : ##consumable.reference##&lt;br /&gt;
##lang.consumable.remaining## : ##consumable.remaining##&lt;br /&gt;
##lang.consumable.stock_target## : ##consumable.stock_target##&lt;br /&gt;
##lang.consumable.to_order## : ##consumable.to_order##&lt;br /&gt;
&lt;a href="##consumable.url##"&gt; ##consumable.url##&lt;/a&gt;&lt;br /&gt;
   ##ENDFOREACHconsumables##&lt;/p&gt;'),
	 (10,8,'','##cartridge.action##  ##cartridge.entity##','##lang.cartridge.entity## : ##cartridge.entity##


##FOREACHcartridges##
##lang.cartridge.item## : ##cartridge.item##


##lang.cartridge.reference## : ##cartridge.reference##

##lang.cartridge.remaining## : ##cartridge.remaining##
##lang.cartridge.stock_target## : ##cartridge.stock_target##
##lang.cartridge.to_order## : ##cartridge.to_order##

##cartridge.url##
 ##ENDFOREACHcartridges##','&lt;p&gt;##lang.cartridge.entity## : ##cartridge.entity##
&lt;br /&gt; &lt;br /&gt;##FOREACHcartridges##
&lt;br /&gt;##lang.cartridge.item## :
##cartridge.item##&lt;br /&gt; &lt;br /&gt;
##lang.cartridge.reference## :
##cartridge.reference##&lt;br /&gt;
##lang.cartridge.remaining## :
##cartridge.remaining##&lt;br /&gt;
##lang.cartridge.stock_target## :
##cartridge.stock_target##&lt;br /&gt;
##lang.cartridge.to_order## :
##cartridge.to_order##&lt;br /&gt;
&lt;a href="##cartridge.url##"&gt;
##cartridge.url##&lt;/a&gt;&lt;br /&gt;
##ENDFOREACHcartridges##&lt;/p&gt;');
INSERT INTO glpi_dev.glpi_notificationtemplatetranslations (id,notificationtemplates_id,`language`,subject,content_text,content_html) VALUES
	 (11,10,'','##infocom.action##  ##infocom.entity##','##lang.infocom.entity## : ##infocom.entity##


##FOREACHinfocoms##

##lang.infocom.itemtype## : ##infocom.itemtype##

##lang.infocom.item## : ##infocom.item##


##lang.infocom.expirationdate## : ##infocom.expirationdate##

##infocom.url##
 ##ENDFOREACHinfocoms##','&lt;p&gt;##lang.infocom.entity## : ##infocom.entity##
&lt;br /&gt; &lt;br /&gt;##FOREACHinfocoms##
&lt;br /&gt;##lang.infocom.itemtype## : ##infocom.itemtype##&lt;br /&gt;
##lang.infocom.item## : ##infocom.item##&lt;br /&gt; &lt;br /&gt;
##lang.infocom.expirationdate## : ##infocom.expirationdate##
&lt;br /&gt; &lt;a href="##infocom.url##"&gt;
##infocom.url##&lt;/a&gt;&lt;br /&gt;
##ENDFOREACHinfocoms##&lt;/p&gt;'),
	 (12,11,'','##license.action##  ##license.entity##','##lang.license.entity## : ##license.entity##

##FOREACHlicenses##

##lang.license.item## : ##license.item##

##lang.license.serial## : ##license.serial##

##lang.license.expirationdate## : ##license.expirationdate##

##license.url##
 ##ENDFOREACHlicenses##','&lt;p&gt;
##lang.license.entity## : ##license.entity##&lt;br /&gt;
##FOREACHlicenses##
&lt;br /&gt;##lang.license.item## : ##license.item##&lt;br /&gt;
##lang.license.serial## : ##license.serial##&lt;br /&gt;
##lang.license.expirationdate## : ##license.expirationdate##
&lt;br /&gt; &lt;a href="##license.url##"&gt; ##license.url##
&lt;/a&gt;&lt;br /&gt; ##ENDFOREACHlicenses##&lt;/p&gt;'),
	 (13,13,'','##user.action##','##user.realname## ##user.firstname##

##lang.passwordforget.information##

##lang.passwordforget.link## ##user.passwordforgeturl##','&lt;p&gt;&lt;strong&gt;##user.realname## ##user.firstname##&lt;/strong&gt;&lt;/p&gt;
&lt;p&gt;##lang.passwordforget.information##&lt;/p&gt;
&lt;p&gt;##lang.passwordforget.link## &lt;a title="##user.passwordforgeturl##" href="##user.passwordforgeturl##"&gt;##user.passwordforgeturl##&lt;/a&gt;&lt;/p&gt;'),
	 (14,14,'','##ticket.action## ##ticket.title##','##lang.ticket.title## : ##ticket.title##

##lang.ticket.closedate## : ##ticket.closedate##

##lang.satisfaction.text## ##ticket.urlsatisfaction##','&lt;p&gt;##lang.ticket.title## : ##ticket.title##&lt;/p&gt;
&lt;p&gt;##lang.ticket.closedate## : ##ticket.closedate##&lt;/p&gt;
&lt;p&gt;##lang.satisfaction.text## &lt;a href="##ticket.urlsatisfaction##"&gt;##ticket.urlsatisfaction##&lt;/a&gt;&lt;/p&gt;'),
	 (15,15,'','##lang.unicity.action##','##lang.unicity.entity## : ##unicity.entity##

##lang.unicity.itemtype## : ##unicity.itemtype##

##lang.unicity.message## : ##unicity.message##

##lang.unicity.action_user## : ##unicity.action_user##

##lang.unicity.action_type## : ##unicity.action_type##

##lang.unicity.date## : ##unicity.date##','&lt;p&gt;##lang.unicity.entity## : ##unicity.entity##&lt;/p&gt;
&lt;p&gt;##lang.unicity.itemtype## : ##unicity.itemtype##&lt;/p&gt;
&lt;p&gt;##lang.unicity.message## : ##unicity.message##&lt;/p&gt;
&lt;p&gt;##lang.unicity.action_user## : ##unicity.action_user##&lt;/p&gt;
&lt;p&gt;##lang.unicity.action_type## : ##unicity.action_type##&lt;/p&gt;
&lt;p&gt;##lang.unicity.date## : ##unicity.date##&lt;/p&gt;'),
	 (16,16,'','##crontask.action##','##lang.crontask.warning##

##FOREACHcrontasks##
 ##crontask.name## : ##crontask.description##

##ENDFOREACHcrontasks##','&lt;p&gt;##lang.crontask.warning##&lt;/p&gt;
&lt;p&gt;##FOREACHcrontasks## &lt;br /&gt;&lt;a href="##crontask.url##"&gt;##crontask.name##&lt;/a&gt; : ##crontask.description##&lt;br /&gt; &lt;br /&gt;##ENDFOREACHcrontasks##&lt;/p&gt;'),
	 (17,17,'','##problem.action## ##problem.title##','##IFproblem.storestatus=5##
 ##lang.problem.url## : ##problem.urlapprove##
 ##lang.problem.solvedate## : ##problem.solvedate##
 ##lang.problem.solution.type## : ##problem.solution.type##
 ##lang.problem.solution.description## : ##problem.solution.description## ##ENDIFproblem.storestatus##
 ##ELSEproblem.storestatus## ##lang.problem.url## : ##problem.url## ##ENDELSEproblem.storestatus##

 ##lang.problem.description##

 ##lang.problem.title##  :##problem.title##
 ##lang.problem.authors##  :##IFproblem.authors## ##problem.authors## ##ENDIFproblem.authors## ##ELSEproblem.authors##--##ENDELSEproblem.authors##
 ##lang.problem.creationdate##  :##problem.creationdate##
 ##IFproblem.assigntousers## ##lang.problem.assigntousers##  : ##problem.assigntousers## ##ENDIFproblem.assigntousers##
 ##lang.problem.status##  : ##problem.status##
 ##IFproblem.assigntogroups## ##lang.problem.assigntogroups##  : ##problem.assigntogroups## ##ENDIFproblem.assigntogroups##
 ##lang.problem.urgency##  : ##problem.urgency##
 ##lang.problem.impact##  : ##problem.impact##
 ##lang.problem.priority## : ##problem.priority##
##IFproblem.category## ##lang.problem.category##  :##problem.category## ##ENDIFproblem.category## ##ELSEproblem.category## ##lang.problem.nocategoryassigned## ##ENDELSEproblem.category##
 ##lang.problem.content##  : ##problem.content##

##IFproblem.storestatus=6##
 ##lang.problem.solvedate## : ##problem.solvedate##
 ##lang.problem.solution.type## : ##problem.solution.type##
 ##lang.problem.solution.description## : ##problem.solution.description##
##ENDIFproblem.storestatus##
 ##lang.problem.numberoffollowups## : ##problem.numberoffollowups##

##FOREACHfollowups##

 [##followup.date##] ##lang.followup.isprivate## : ##followup.isprivate##
 ##lang.followup.author## ##followup.author##
 ##lang.followup.description## ##followup.description##
 ##lang.followup.date## ##followup.date##
 ##lang.followup.requesttype## ##followup.requesttype##

##ENDFOREACHfollowups##
 ##lang.problem.numberoftickets## : ##problem.numberoftickets##

##FOREACHtickets##
 [##ticket.date##] ##lang.problem.title## : ##ticket.title##
 ##lang.problem.content## ##ticket.content##

##ENDFOREACHtickets##
 ##lang.problem.numberoftasks## : ##problem.numberoftasks##

##FOREACHtasks##
 [##task.date##]
 ##lang.task.author## ##task.author##
 ##lang.task.description## ##task.description##
 ##lang.task.time## ##task.time##
 ##lang.task.category## ##task.category##

##ENDFOREACHtasks##
','&lt;p&gt;##IFproblem.storestatus=5##&lt;/p&gt;
&lt;div&gt;##lang.problem.url## : &lt;a href="##problem.urlapprove##"&gt;##problem.urlapprove##&lt;/a&gt;&lt;/div&gt;
&lt;div&gt;&lt;span style="color: #888888;"&gt;&lt;strong&gt;&lt;span style="text-decoration: underline;"&gt;##lang.problem.solvedate##&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt; : ##problem.solvedate##&lt;br /&gt;&lt;span style="text-decoration: underline; color: #888888;"&gt;&lt;strong&gt;##lang.problem.solution.type##&lt;/strong&gt;&lt;/span&gt; : ##problem.solution.type##&lt;br /&gt;&lt;span style="text-decoration: underline; color: #888888;"&gt;&lt;strong&gt;##lang.problem.solution.description##&lt;/strong&gt;&lt;/span&gt; : ##problem.solution.description## ##ENDIFproblem.storestatus##&lt;/div&gt;
&lt;div&gt;##ELSEproblem.storestatus## ##lang.problem.url## : &lt;a href="##problem.url##"&gt;##problem.url##&lt;/a&gt; ##ENDELSEproblem.storestatus##&lt;/div&gt;
&lt;p class="description b"&gt;&lt;strong&gt;##lang.problem.description##&lt;/strong&gt;&lt;/p&gt;
&lt;p&gt;&lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.problem.title##&lt;/span&gt;&#160;:##problem.title## &lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.problem.authors##&lt;/span&gt;&#160;:##IFproblem.authors## ##problem.authors## ##ENDIFproblem.authors##    ##ELSEproblem.authors##--##ENDELSEproblem.authors## &lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.problem.creationdate##&lt;/span&gt;&#160;:##problem.creationdate## &lt;br /&gt; ##IFproblem.assigntousers## &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.problem.assigntousers##&lt;/span&gt;&#160;: ##problem.assigntousers## ##ENDIFproblem.assigntousers##&lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt;##lang.problem.status## &lt;/span&gt;&#160;: ##problem.status##&lt;br /&gt; ##IFproblem.assigntogroups## &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.problem.assigntogroups##&lt;/span&gt;&#160;: ##problem.assigntogroups## ##ENDIFproblem.assigntogroups##&lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.problem.urgency##&lt;/span&gt;&#160;: ##problem.urgency##&lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.problem.impact##&lt;/span&gt;&#160;: ##problem.impact##&lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.problem.priority##&lt;/span&gt; : ##problem.priority## &lt;br /&gt;##IFproblem.category##&lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt;##lang.problem.category## &lt;/span&gt;&#160;:##problem.category##  ##ENDIFproblem.category## ##ELSEproblem.category##  ##lang.problem.nocategoryassigned## ##ENDELSEproblem.category##    &lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.problem.content##&lt;/span&gt;&#160;: ##problem.content##&lt;/p&gt;
&lt;p&gt;##IFproblem.storestatus=6##&lt;br /&gt;&lt;span style="text-decoration: underline;"&gt;&lt;strong&gt;&lt;span style="color: #888888;"&gt;##lang.problem.solvedate##&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt; : ##problem.solvedate##&lt;br /&gt;&lt;span style="color: #888888;"&gt;&lt;strong&gt;&lt;span style="text-decoration: underline;"&gt;##lang.problem.solution.type##&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt; : ##problem.solution.type##&lt;br /&gt;&lt;span style="text-decoration: underline; color: #888888;"&gt;&lt;strong&gt;##lang.problem.solution.description##&lt;/strong&gt;&lt;/span&gt; : ##problem.solution.description##&lt;br /&gt;##ENDIFproblem.storestatus##&lt;/p&gt;
&lt;div class="description b"&gt;##lang.problem.numberoffollowups##&#160;: ##problem.numberoffollowups##&lt;/div&gt;
&lt;p&gt;##FOREACHfollowups##&lt;/p&gt;
&lt;div class="description b"&gt;&lt;br /&gt; &lt;strong&gt; [##followup.date##] &lt;em&gt;##lang.followup.isprivate## : ##followup.isprivate## &lt;/em&gt;&lt;/strong&gt;&lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.followup.author## &lt;/span&gt; ##followup.author##&lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.followup.description## &lt;/span&gt; ##followup.description##&lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.followup.date## &lt;/span&gt; ##followup.date##&lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.followup.requesttype## &lt;/span&gt; ##followup.requesttype##&lt;/div&gt;
&lt;p&gt;##ENDFOREACHfollowups##&lt;/p&gt;
&lt;div class="description b"&gt;##lang.problem.numberoftickets##&#160;: ##problem.numberoftickets##&lt;/div&gt;
&lt;p&gt;##FOREACHtickets##&lt;/p&gt;
&lt;div&gt;&lt;strong&gt; [##ticket.date##] &lt;em&gt;##lang.problem.title## : &lt;a href="##ticket.url##"&gt;##ticket.title## &lt;/a&gt;&lt;/em&gt;&lt;/strong&gt;&lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; &lt;/span&gt;&lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt;##lang.problem.content## &lt;/span&gt; ##ticket.content##
&lt;p&gt;##ENDFOREACHtickets##&lt;/p&gt;
&lt;div class="description b"&gt;##lang.problem.numberoftasks##&#160;: ##problem.numberoftasks##&lt;/div&gt;
&lt;p&gt;##FOREACHtasks##&lt;/p&gt;
&lt;div class="description b"&gt;&lt;strong&gt;[##task.date##] &lt;/strong&gt;&lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.task.author##&lt;/span&gt; ##task.author##&lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.task.description##&lt;/span&gt; ##task.description##&lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.task.time##&lt;/span&gt; ##task.time##&lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.task.category##&lt;/span&gt; ##task.category##&lt;/div&gt;
&lt;p&gt;##ENDFOREACHtasks##&lt;/p&gt;
&lt;/div&gt;'),
	 (18,18,'','##recall.action##: ##recall.item.name##','##recall.action##: ##recall.item.name##

##recall.item.content##

##lang.recall.planning.begin##: ##recall.planning.begin##
##lang.recall.planning.end##: ##recall.planning.end##
##lang.recall.planning.state##: ##recall.planning.state##
##lang.recall.item.private##: ##recall.item.private##','&lt;p&gt;##recall.action##: &lt;a href="##recall.item.url##"&gt;##recall.item.name##&lt;/a&gt;&lt;/p&gt;
&lt;p&gt;##recall.item.content##&lt;/p&gt;
&lt;p&gt;##lang.recall.planning.begin##: ##recall.planning.begin##&lt;br /&gt;##lang.recall.planning.end##: ##recall.planning.end##&lt;br /&gt;##lang.recall.planning.state##: ##recall.planning.state##&lt;br /&gt;##lang.recall.item.private##: ##recall.item.private##&lt;br /&gt;&lt;br /&gt;&lt;/p&gt;
&lt;p&gt;&lt;br /&gt;&lt;br /&gt;&lt;/p&gt;'),
	 (19,19,'','##change.action## ##change.title##','##IFchange.storestatus=5##
 ##lang.change.url## : ##change.urlapprove##
 ##lang.change.solvedate## : ##change.solvedate##
 ##lang.change.solution.type## : ##change.solution.type##
 ##lang.change.solution.description## : ##change.solution.description## ##ENDIFchange.storestatus##
 ##ELSEchange.storestatus## ##lang.change.url## : ##change.url## ##ENDELSEchange.storestatus##

 ##lang.change.description##

 ##lang.change.title##  :##change.title##
 ##lang.change.authors##  :##IFchange.authors## ##change.authors## ##ENDIFchange.authors## ##ELSEchange.authors##--##ENDELSEchange.authors##
 ##lang.change.creationdate##  :##change.creationdate##
 ##IFchange.assigntousers## ##lang.change.assigntousers##  : ##change.assigntousers## ##ENDIFchange.assigntousers##
 ##lang.change.status##  : ##change.status##
 ##IFchange.assigntogroups## ##lang.change.assigntogroups##  : ##change.assigntogroups## ##ENDIFchange.assigntogroups##
 ##lang.change.urgency##  : ##change.urgency##
 ##lang.change.impact##  : ##change.impact##
 ##lang.change.priority## : ##change.priority##
##IFchange.category## ##lang.change.category##  :##change.category## ##ENDIFchange.category## ##ELSEchange.category## ##lang.change.nocategoryassigned## ##ENDELSEchange.category##
 ##lang.change.content##  : ##change.content##

##IFchange.storestatus=6##
 ##lang.change.solvedate## : ##change.solvedate##
 ##lang.change.solution.type## : ##change.solution.type##
 ##lang.change.solution.description## : ##change.solution.description##
##ENDIFchange.storestatus##
 ##lang.change.numberoffollowups## : ##change.numberoffollowups##

##FOREACHfollowups##

 [##followup.date##] ##lang.followup.isprivate## : ##followup.isprivate##
 ##lang.followup.author## ##followup.author##
 ##lang.followup.description## ##followup.description##
 ##lang.followup.date## ##followup.date##
 ##lang.followup.requesttype## ##followup.requesttype##

##ENDFOREACHfollowups##
 ##lang.change.numberofproblems## : ##change.numberofproblems##

##FOREACHproblems##
 [##problem.date##] ##lang.change.title## : ##problem.title##
 ##lang.change.content## ##problem.content##

##ENDFOREACHproblems##
 ##lang.change.numberoftasks## : ##change.numberoftasks##

##FOREACHtasks##
 [##task.date##]
 ##lang.task.author## ##task.author##
 ##lang.task.description## ##task.description##
 ##lang.task.time## ##task.time##
 ##lang.task.category## ##task.category##

##ENDFOREACHtasks##
','&lt;p&gt;##IFchange.storestatus=5##&lt;/p&gt;
&lt;div&gt;##lang.change.url## : &lt;a href="##change.urlapprove##"&gt;##change.urlapprove##&lt;/a&gt;&lt;/div&gt;
&lt;div&gt;&lt;span style="color: #888888;"&gt;&lt;strong&gt;&lt;span style="text-decoration: underline;"&gt;##lang.change.solvedate##&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt; : ##change.solvedate##&lt;br /&gt;&lt;span style="text-decoration: underline; color: #888888;"&gt;&lt;strong&gt;##lang.change.solution.type##&lt;/strong&gt;&lt;/span&gt; : ##change.solution.type##&lt;br /&gt;&lt;span style="text-decoration: underline; color: #888888;"&gt;&lt;strong&gt;##lang.change.solution.description##&lt;/strong&gt;&lt;/span&gt; : ##change.solution.description## ##ENDIFchange.storestatus##&lt;/div&gt;
&lt;div&gt;##ELSEchange.storestatus## ##lang.change.url## : &lt;a href="##change.url##"&gt;##change.url##&lt;/a&gt; ##ENDELSEchange.storestatus##&lt;/div&gt;
&lt;p class="description b"&gt;&lt;strong&gt;##lang.change.description##&lt;/strong&gt;&lt;/p&gt;
&lt;p&gt;&lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.change.title##&lt;/span&gt;&#160;:##change.title## &lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.change.authors##&lt;/span&gt;&#160;:##IFchange.authors## ##change.authors## ##ENDIFchange.authors##    ##ELSEchange.authors##--##ENDELSEchange.authors## &lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.change.creationdate##&lt;/span&gt;&#160;:##change.creationdate## &lt;br /&gt; ##IFchange.assigntousers## &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.change.assigntousers##&lt;/span&gt;&#160;: ##change.assigntousers## ##ENDIFchange.assigntousers##&lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt;##lang.change.status## &lt;/span&gt;&#160;: ##change.status##&lt;br /&gt; ##IFchange.assigntogroups## &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.change.assigntogroups##&lt;/span&gt;&#160;: ##change.assigntogroups## ##ENDIFchange.assigntogroups##&lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.change.urgency##&lt;/span&gt;&#160;: ##change.urgency##&lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.change.impact##&lt;/span&gt;&#160;: ##change.impact##&lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.change.priority##&lt;/span&gt; : ##change.priority## &lt;br /&gt;##IFchange.category##&lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt;##lang.change.category## &lt;/span&gt;&#160;:##change.category##  ##ENDIFchange.category## ##ELSEchange.category##  ##lang.change.nocategoryassigned## ##ENDELSEchange.category##    &lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.change.content##&lt;/span&gt;&#160;: ##change.content##&lt;/p&gt;
&lt;p&gt;##IFchange.storestatus=6##&lt;br /&gt;&lt;span style="text-decoration: underline;"&gt;&lt;strong&gt;&lt;span style="color: #888888;"&gt;##lang.change.solvedate##&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt; : ##change.solvedate##&lt;br /&gt;&lt;span style="color: #888888;"&gt;&lt;strong&gt;&lt;span style="text-decoration: underline;"&gt;##lang.change.solution.type##&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt; : ##change.solution.type##&lt;br /&gt;&lt;span style="text-decoration: underline; color: #888888;"&gt;&lt;strong&gt;##lang.change.solution.description##&lt;/strong&gt;&lt;/span&gt; : ##change.solution.description##&lt;br /&gt;##ENDIFchange.storestatus##&lt;/p&gt;
&lt;div class="description b"&gt;##lang.change.numberoffollowups##&#160;: ##change.numberoffollowups##&lt;/div&gt;
&lt;p&gt;##FOREACHfollowups##&lt;/p&gt;
&lt;div class="description b"&gt;&lt;br /&gt; &lt;strong&gt; [##followup.date##] &lt;em&gt;##lang.followup.isprivate## : ##followup.isprivate## &lt;/em&gt;&lt;/strong&gt;&lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.followup.author## &lt;/span&gt; ##followup.author##&lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.followup.description## &lt;/span&gt; ##followup.description##&lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.followup.date## &lt;/span&gt; ##followup.date##&lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.followup.requesttype## &lt;/span&gt; ##followup.requesttype##&lt;/div&gt;
&lt;p&gt;##ENDFOREACHfollowups##&lt;/p&gt;
&lt;div class="description b"&gt;##lang.change.numberofproblems##&#160;: ##change.numberofproblems##&lt;/div&gt;
&lt;p&gt;##FOREACHproblems##&lt;/p&gt;
&lt;div&gt;&lt;strong&gt; [##problem.date##] &lt;em&gt;##lang.change.title## : &lt;a href="##problem.url##"&gt;##problem.title## &lt;/a&gt;&lt;/em&gt;&lt;/strong&gt;&lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; &lt;/span&gt;&lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt;##lang.change.content## &lt;/span&gt; ##problem.content##
&lt;p&gt;##ENDFOREACHproblems##&lt;/p&gt;
&lt;div class="description b"&gt;##lang.change.numberoftasks##&#160;: ##change.numberoftasks##&lt;/div&gt;
&lt;p&gt;##FOREACHtasks##&lt;/p&gt;
&lt;div class="description b"&gt;&lt;strong&gt;[##task.date##] &lt;/strong&gt;&lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.task.author##&lt;/span&gt; ##task.author##&lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.task.description##&lt;/span&gt; ##task.description##&lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.task.time##&lt;/span&gt; ##task.time##&lt;br /&gt; &lt;span style="color: #8b8c8f; font-weight: bold; text-decoration: underline;"&gt; ##lang.task.category##&lt;/span&gt; ##task.category##&lt;/div&gt;
&lt;p&gt;##ENDFOREACHtasks##&lt;/p&gt;
&lt;/div&gt;'),
	 (20,20,'','##mailcollector.action##','##FOREACHmailcollectors##
##lang.mailcollector.name## : ##mailcollector.name##
##lang.mailcollector.errors## : ##mailcollector.errors##
##mailcollector.url##
##ENDFOREACHmailcollectors##','&lt;p&gt;##FOREACHmailcollectors##&lt;br /&gt;##lang.mailcollector.name## : ##mailcollector.name##&lt;br /&gt; ##lang.mailcollector.errors## : ##mailcollector.errors##&lt;br /&gt;&lt;a href="##mailcollector.url##"&gt;##mailcollector.url##&lt;/a&gt;&lt;br /&gt; ##ENDFOREACHmailcollectors##&lt;/p&gt;
&lt;p&gt;&lt;/p&gt;');
INSERT INTO glpi_dev.glpi_notificationtemplatetranslations (id,notificationtemplates_id,`language`,subject,content_text,content_html) VALUES
	 (21,21,'','##project.action## ##project.name## ##project.code##','##lang.project.url## : ##project.url##

##lang.project.description##

##lang.project.name## : ##project.name##
##lang.project.code## : ##project.code##
##lang.project.manager## : ##project.manager##
##lang.project.managergroup## : ##project.managergroup##
##lang.project.creationdate## : ##project.creationdate##
##lang.project.priority## : ##project.priority##
##lang.project.state## : ##project.state##
##lang.project.type## : ##project.type##
##lang.project.description## : ##project.description##

##lang.project.numberoftasks## : ##project.numberoftasks##



##FOREACHtasks##

[##task.creationdate##]
##lang.task.name## : ##task.name##
##lang.task.state## : ##task.state##
##lang.task.type## : ##task.type##
##lang.task.percent## : ##task.percent##
##lang.task.description## : ##task.description##

##ENDFOREACHtasks##','&lt;p&gt;##lang.project.url## : &lt;a href="##project.url##"&gt;##project.url##&lt;/a&gt;&lt;/p&gt;
&lt;p&gt;&lt;strong&gt;##lang.project.description##&lt;/strong&gt;&lt;/p&gt;
&lt;p&gt;##lang.project.name## : ##project.name##&lt;br /&gt;##lang.project.code## : ##project.code##&lt;br /&gt; ##lang.project.manager## : ##project.manager##&lt;br /&gt;##lang.project.managergroup## : ##project.managergroup##&lt;br /&gt; ##lang.project.creationdate## : ##project.creationdate##&lt;br /&gt;##lang.project.priority## : ##project.priority## &lt;br /&gt;##lang.project.state## : ##project.state##&lt;br /&gt;##lang.project.type## : ##project.type##&lt;br /&gt;##lang.project.description## : ##project.description##&lt;/p&gt;
&lt;p&gt;##lang.project.numberoftasks## : ##project.numberoftasks##&lt;/p&gt;
&lt;div&gt;
&lt;p&gt;##FOREACHtasks##&lt;/p&gt;
&lt;div&gt;&lt;strong&gt;[##task.creationdate##] &lt;/strong&gt;&lt;br /&gt; ##lang.task.name## : ##task.name##&lt;br /&gt;##lang.task.state## : ##task.state##&lt;br /&gt;##lang.task.type## : ##task.type##&lt;br /&gt;##lang.task.percent## : ##task.percent##&lt;br /&gt;##lang.task.description## : ##task.description##&lt;/div&gt;
&lt;p&gt;##ENDFOREACHtasks##&lt;/p&gt;
&lt;/div&gt;'),
	 (22,22,'','##projecttask.action## ##projecttask.name##','##lang.projecttask.url## : ##projecttask.url##

##lang.projecttask.description##

##lang.projecttask.name## : ##projecttask.name##
##lang.projecttask.project## : ##projecttask.project##
##lang.projecttask.creationdate## : ##projecttask.creationdate##
##lang.projecttask.state## : ##projecttask.state##
##lang.projecttask.type## : ##projecttask.type##
##lang.projecttask.description## : ##projecttask.description##

##lang.projecttask.numberoftasks## : ##projecttask.numberoftasks##



##FOREACHtasks##

[##task.creationdate##]
##lang.task.name## : ##task.name##
##lang.task.state## : ##task.state##
##lang.task.type## : ##task.type##
##lang.task.percent## : ##task.percent##
##lang.task.description## : ##task.description##

##ENDFOREACHtasks##','&lt;p&gt;##lang.projecttask.url## : &lt;a href="##projecttask.url##"&gt;##projecttask.url##&lt;/a&gt;&lt;/p&gt;
&lt;p&gt;&lt;strong&gt;##lang.projecttask.description##&lt;/strong&gt;&lt;/p&gt;
&lt;p&gt;##lang.projecttask.name## : ##projecttask.name##&lt;br /&gt;##lang.projecttask.project## : &lt;a href="##projecttask.projecturl##"&gt;##projecttask.project##&lt;/a&gt;&lt;br /&gt;##lang.projecttask.creationdate## : ##projecttask.creationdate##&lt;br /&gt;##lang.projecttask.state## : ##projecttask.state##&lt;br /&gt;##lang.projecttask.type## : ##projecttask.type##&lt;br /&gt;##lang.projecttask.description## : ##projecttask.description##&lt;/p&gt;
&lt;p&gt;##lang.projecttask.numberoftasks## : ##projecttask.numberoftasks##&lt;/p&gt;
&lt;div&gt;
&lt;p&gt;##FOREACHtasks##&lt;/p&gt;
&lt;div&gt;&lt;strong&gt;[##task.creationdate##] &lt;/strong&gt;&lt;br /&gt;##lang.task.name## : ##task.name##&lt;br /&gt;##lang.task.state## : ##task.state##&lt;br /&gt;##lang.task.type## : ##task.type##&lt;br /&gt;##lang.task.percent## : ##task.percent##&lt;br /&gt;##lang.task.description## : ##task.description##&lt;/div&gt;
&lt;p&gt;##ENDFOREACHtasks##&lt;/p&gt;
&lt;/div&gt;'),
	 (23,23,'','##objectlock.action##','##objectlock.type## ###objectlock.id## - ##objectlock.name##

      ##lang.objectlock.url##
      ##objectlock.url##

      ##lang.objectlock.date_mod##
      ##objectlock.date_mod##

      Hello ##objectlock.lockedby.firstname##,
      Could go to this item and unlock it for me?
      Thank you,
      Regards,
      ##objectlock.requester.firstname##','&lt;table&gt;
      &lt;tbody&gt;
      &lt;tr&gt;&lt;th colspan="2"&gt;&lt;a href="##objectlock.url##"&gt;##objectlock.type## ###objectlock.id## - ##objectlock.name##&lt;/a&gt;&lt;/th&gt;&lt;/tr&gt;
      &lt;tr&gt;
      &lt;td&gt;##lang.objectlock.url##&lt;/td&gt;
      &lt;td&gt;##objectlock.url##&lt;/td&gt;
      &lt;/tr&gt;
      &lt;tr&gt;
      &lt;td&gt;##lang.objectlock.date_mod##&lt;/td&gt;
      &lt;td&gt;##objectlock.date_mod##&lt;/td&gt;
      &lt;/tr&gt;
      &lt;/tbody&gt;
      &lt;/table&gt;
      &lt;p&gt;&lt;span style="font-size: small;"&gt;Hello ##objectlock.lockedby.firstname##,&lt;br /&gt;Could go to this item and unlock it for me?&lt;br /&gt;Thank you,&lt;br /&gt;Regards,&lt;br /&gt;##objectlock.requester.firstname## ##objectlock.requester.lastname##&lt;/span&gt;&lt;/p&gt;'),
	 (24,24,'','##savedsearch.action## ##savedsearch.name##','##savedsearch.type## ###savedsearch.id## - ##savedsearch.name##

      ##savedsearch.message##

      ##lang.savedsearch.url##
      ##savedsearch.url##

      Regards,','&lt;table&gt;
      &lt;tbody&gt;
      &lt;tr&gt;&lt;th colspan="2"&gt;&lt;a href="##savedsearch.url##"&gt;##savedsearch.type## ###savedsearch.id## - ##savedsearch.name##&lt;/a&gt;&lt;/th&gt;&lt;/tr&gt;
      &lt;tr&gt;&lt;td colspan="2"&gt;&lt;a href="##savedsearch.url##"&gt;##savedsearch.message##&lt;/a&gt;&lt;/td&gt;&lt;/tr&gt;
      &lt;tr&gt;
      &lt;td&gt;##lang.savedsearch.url##&lt;/td&gt;
      &lt;td&gt;##savedsearch.url##&lt;/td&gt;
      &lt;/tr&gt;
      &lt;/tbody&gt;
      &lt;/table&gt;
      &lt;p&gt;&lt;span style="font-size: small;"&gt;Hello &lt;br /&gt;Regards,&lt;/span&gt;&lt;/p&gt;'),
	 (25,25,'','##certificate.action##  ##certificate.name##','##lang.certificate.entity## : ##certificate.entity##

##lang.certificate.serial## : ##certificate.serial##

##lang.certificate.expirationdate## : ##certificate.expirationdate##

##certificate.url##','&lt;p&gt;
##lang.certificate.entity## : ##certificate.entity##&lt;br /&gt;
&lt;br /&gt;##lang.certificate.name## : ##certificate.name##&lt;br /&gt;
##lang.certificate.serial## : ##certificate.serial##&lt;br /&gt;
##lang.certificate.expirationdate## : ##certificate.expirationdate##
&lt;br /&gt; &lt;a href="##certificate.url##"&gt; ##certificate.url##
&lt;/a&gt;&lt;br /&gt;
&lt;/p&gt;'),
	 (26,26,'','##domain.action## : ##domain.name##','##lang.domain.entity## :##domain.entity##
   ##lang.domain.name## : ##domain.name## - ##lang.domain.dateexpiration## : ##domain.dateexpiration##','&lt;p&gt;##lang.domain.entity## :##domain.entity##&lt;br /&gt; &lt;br /&gt;
                        ##lang.domain.name##  : ##domain.name## - ##lang.domain.dateexpiration## :  ##domain.dateexpiration##&lt;br /&gt;
                        &lt;/p&gt;'),
	 (27,27,'','##user.action##','##user.realname## ##user.firstname##,

##IFuser.password.has_expired=1##
##lang.password.has_expired.information##
##ENDIFuser.password.has_expired##
##ELSEuser.password.has_expired##
##lang.password.expires_soon.information##
##ENDELSEuser.password.has_expired##
##lang.user.password.expiration.date##: ##user.password.expiration.date##
##IFuser.account.lock.date##
##lang.user.account.lock.date##: ##user.account.lock.date##
##ENDIFuser.account.lock.date##

##password.update.link## ##user.password.update.url##','&lt;p&gt;&lt;strong&gt;##user.realname## ##user.firstname##&lt;/strong&gt;&lt;/p&gt;

##IFuser.password.has_expired=1##
&lt;p&gt;##lang.password.has_expired.information##&lt;/p&gt;
##ENDIFuser.password.has_expired##
##ELSEuser.password.has_expired##
&lt;p&gt;##lang.password.expires_soon.information##&lt;/p&gt;
##ENDELSEuser.password.has_expired##
&lt;p&gt;##lang.user.password.expiration.date##: ##user.password.expiration.date##&lt;/p&gt;
##IFuser.account.lock.date##
&lt;p&gt;##lang.user.account.lock.date##: ##user.account.lock.date##&lt;/p&gt;
##ENDIFuser.account.lock.date##

&lt;p&gt;##lang.password.update.link## &lt;a href="##user.password.update.url##"&gt;##user.password.update.url##&lt;/a&gt;&lt;/p&gt;'),
	 (28,28,'','##lang.plugins_updates_available##','##lang.plugins_updates_available##

##FOREACHplugins##
##plugin.name## :##plugin.old_version## -&gt; ##plugin.version##
##ENDFOREACHplugins##','&lt;p&gt;##lang.plugins_updates_available##&lt;/p&gt;
&lt;ul&gt;##FOREACHplugins##
&lt;li&gt;##plugin.name## :##plugin.old_version## -&gt; ##plugin.version##&lt;/li&gt;
##ENDFOREACHplugins##&lt;/ul&gt;');
INSERT INTO glpi_dev.glpi_problemtemplatemandatoryfields (id,problemtemplates_id,num) VALUES
	 (1,1,21);
INSERT INTO glpi_dev.glpi_problemtemplates (id,name,entities_id,is_recursive,comment) VALUES
	 (1,'Default',0,1,NULL);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (1,1,'computer',0),
	 (2,1,'monitor',0),
	 (3,1,'software',0),
	 (4,1,'networking',0),
	 (5,1,'internet',0),
	 (6,1,'printer',0),
	 (7,1,'peripheral',0),
	 (8,1,'cartridge',0),
	 (9,1,'consumable',0),
	 (10,1,'phone',0);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (11,6,'queuednotification',0),
	 (12,1,'contact_enterprise',0),
	 (13,1,'document',0),
	 (14,1,'contract',0),
	 (15,1,'infocom',0),
	 (16,1,'knowbase',2048),
	 (17,1,'reservation',0),
	 (18,1,'reports',0),
	 (19,1,'dropdown',0),
	 (20,1,'device',0);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (21,1,'typedoc',0),
	 (22,1,'link',0),
	 (23,1,'config',0),
	 (24,1,'rule_ticket',0),
	 (25,1,'rule_import',0),
	 (26,1,'rule_location',0),
	 (27,1,'rule_ldap',0),
	 (28,1,'rule_softwarecategories',0),
	 (29,1,'search_config',0),
	 (30,5,'location',0);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (31,7,'domain',0),
	 (32,1,'profile',0),
	 (33,1,'user',0),
	 (34,1,'group',0),
	 (35,1,'entity',0),
	 (36,1,'transfer',0),
	 (37,1,'logs',0),
	 (38,1,'reminder_public',0),
	 (39,1,'rssfeed_public',0),
	 (40,1,'bookmark_public',0);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (41,1,'backup',0),
	 (42,1,'ticket',5),
	 (43,1,'followup',5),
	 (44,1,'task',1),
	 (45,1,'planning',0),
	 (46,2,'state',0),
	 (47,2,'taskcategory',0),
	 (48,1,'statistic',0),
	 (49,1,'password_update',1),
	 (50,1,'show_group_hardware',0);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (51,1,'rule_dictionnary_software',0),
	 (52,1,'rule_dictionnary_dropdown',0),
	 (53,1,'budget',0),
	 (54,1,'notification',0),
	 (55,1,'rule_mailcollector',0),
	 (56,7,'solutiontemplate',23),
	 (57,7,'itilfollowuptemplate',23),
	 (58,1,'calendar',0),
	 (59,1,'slm',0),
	 (60,1,'rule_dictionnary_printer',0);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (61,1,'problem',0),
	 (62,2,'cable_management',0),
	 (63,4,'knowbasecategory',23),
	 (64,5,'itilcategory',0),
	 (65,1,'itiltemplate',0),
	 (66,1,'ticketrecurrent',0),
	 (67,1,'ticketcost',0),
	 (68,6,'changevalidation',20),
	 (69,1,'ticketvalidation',0),
	 (70,2,'computer',0);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (71,2,'monitor',0),
	 (72,2,'software',0),
	 (73,2,'networking',0),
	 (74,2,'internet',0),
	 (75,2,'printer',0),
	 (76,2,'peripheral',0),
	 (77,2,'cartridge',0),
	 (78,2,'consumable',0),
	 (79,2,'phone',0),
	 (80,5,'queuednotification',0);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (81,2,'contact_enterprise',0),
	 (82,2,'document',0),
	 (83,2,'contract',0),
	 (84,2,'infocom',0),
	 (85,2,'knowbase',2049),
	 (86,2,'reservation',0),
	 (87,2,'reports',0),
	 (88,2,'dropdown',0),
	 (89,2,'device',0),
	 (90,2,'typedoc',1);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (91,2,'link',1),
	 (92,2,'config',0),
	 (93,2,'rule_ticket',0),
	 (94,2,'rule_import',0),
	 (95,2,'rule_location',0),
	 (96,2,'rule_ldap',0),
	 (97,2,'rule_softwarecategories',0),
	 (98,2,'search_config',1024),
	 (99,4,'location',23),
	 (100,6,'domain',0);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (101,2,'profile',0),
	 (102,2,'user',2049),
	 (103,2,'group',33),
	 (104,2,'entity',0),
	 (105,2,'transfer',0),
	 (106,2,'logs',0),
	 (107,2,'reminder_public',0),
	 (108,2,'rssfeed_public',0),
	 (109,2,'bookmark_public',0),
	 (110,2,'backup',0);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (111,2,'ticket',168989),
	 (112,2,'followup',5),
	 (113,2,'task',1),
	 (114,6,'projecttask',0),
	 (115,7,'projecttask',0),
	 (116,2,'planning',1),
	 (117,1,'state',0),
	 (118,1,'taskcategory',0),
	 (119,2,'statistic',1),
	 (120,2,'password_update',1);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (121,2,'show_group_hardware',0),
	 (122,2,'rule_dictionnary_software',0),
	 (123,2,'rule_dictionnary_dropdown',0),
	 (124,2,'budget',0),
	 (125,2,'notification',0),
	 (126,2,'rule_mailcollector',0),
	 (127,5,'solutiontemplate',0),
	 (128,5,'itilfollowuptemplate',0),
	 (129,6,'solutiontemplate',0),
	 (130,6,'itilfollowuptemplate',0);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (131,2,'calendar',0),
	 (132,2,'slm',0),
	 (133,2,'rule_dictionnary_printer',0),
	 (134,2,'problem',1057),
	 (135,1,'cable_management',0),
	 (136,3,'knowbasecategory',23),
	 (137,4,'itilcategory',23),
	 (138,2,'itiltemplate',0),
	 (139,2,'ticketrecurrent',0),
	 (140,2,'ticketcost',1);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (141,4,'changevalidation',1044),
	 (142,5,'changevalidation',20),
	 (143,2,'ticketvalidation',15376),
	 (144,3,'computer',0),
	 (145,3,'monitor',0),
	 (146,3,'software',0),
	 (147,3,'networking',0),
	 (148,3,'internet',0),
	 (149,3,'printer',0),
	 (150,3,'peripheral',0);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (151,3,'cartridge',0),
	 (152,3,'consumable',0),
	 (153,3,'phone',0),
	 (154,4,'queuednotification',31),
	 (155,3,'contact_enterprise',0),
	 (156,3,'document',0),
	 (157,3,'contract',0),
	 (158,3,'infocom',0),
	 (159,3,'knowbase',2048),
	 (160,3,'reservation',0);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (161,3,'reports',0),
	 (162,3,'dropdown',23),
	 (163,3,'device',23),
	 (164,3,'typedoc',23),
	 (165,3,'link',23),
	 (166,3,'config',0),
	 (167,3,'rule_ticket',1),
	 (168,3,'rule_import',0),
	 (169,3,'rule_location',0),
	 (170,3,'rule_ldap',0);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (171,3,'rule_softwarecategories',0),
	 (172,3,'search_config',3072),
	 (173,3,'location',23),
	 (174,5,'domain',0),
	 (175,3,'profile',1),
	 (176,3,'user',1),
	 (177,3,'group',33),
	 (178,3,'entity',33),
	 (179,3,'transfer',0),
	 (180,3,'logs',1);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (181,3,'reminder_public',0),
	 (182,3,'rssfeed_public',0),
	 (183,3,'bookmark_public',0),
	 (184,3,'backup',1024),
	 (185,3,'ticket',261151),
	 (186,3,'followup',31767),
	 (187,3,'task',13329),
	 (188,3,'projecttask',0),
	 (189,4,'projecttask',0),
	 (190,5,'projecttask',0);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (191,3,'planning',3073),
	 (192,7,'taskcategory',23),
	 (193,7,'cable_management',0),
	 (194,3,'statistic',1),
	 (195,3,'password_update',1),
	 (196,3,'show_group_hardware',0),
	 (197,3,'rule_dictionnary_software',0),
	 (198,3,'rule_dictionnary_dropdown',0),
	 (199,3,'budget',0),
	 (200,3,'notification',0);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (201,3,'rule_mailcollector',0),
	 (202,3,'solutiontemplate',23),
	 (203,3,'itilfollowuptemplate',23),
	 (204,4,'solutiontemplate',23),
	 (205,4,'itilfollowuptemplate',23),
	 (206,3,'calendar',23),
	 (207,3,'slm',23),
	 (208,3,'rule_dictionnary_printer',0),
	 (209,3,'problem',1151),
	 (210,2,'knowbasecategory',0);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (211,3,'itilcategory',23),
	 (212,3,'itiltemplate',23),
	 (213,3,'ticketrecurrent',1),
	 (214,3,'ticketcost',23),
	 (215,2,'changevalidation',1044),
	 (216,3,'changevalidation',1044),
	 (217,3,'ticketvalidation',15376),
	 (218,4,'computer',0),
	 (219,4,'monitor',0),
	 (220,4,'software',0);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (221,4,'networking',0),
	 (222,4,'internet',0),
	 (223,4,'printer',0),
	 (224,4,'peripheral',0),
	 (225,4,'cartridge',0),
	 (226,4,'consumable',0),
	 (227,4,'phone',0),
	 (228,4,'contact_enterprise',0),
	 (229,4,'document',0),
	 (230,4,'contract',0);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (231,4,'infocom',0),
	 (232,4,'knowbase',15383),
	 (233,4,'reservation',0),
	 (234,4,'reports',0),
	 (235,4,'dropdown',23),
	 (236,4,'device',0),
	 (237,4,'typedoc',23),
	 (238,4,'link',23),
	 (239,4,'config',3),
	 (240,4,'rule_ticket',1047);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (241,4,'rule_import',23),
	 (242,4,'rule_location',23),
	 (243,4,'rule_ldap',23),
	 (244,4,'rule_softwarecategories',23),
	 (245,4,'search_config',3072),
	 (246,2,'location',0),
	 (247,4,'domain',0),
	 (248,4,'profile',23),
	 (249,4,'user',7327),
	 (250,4,'group',119);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (251,4,'entity',3327),
	 (252,4,'transfer',23),
	 (253,4,'logs',1),
	 (254,4,'reminder_public',0),
	 (255,4,'rssfeed_public',0),
	 (256,4,'bookmark_public',0),
	 (257,4,'backup',1045),
	 (258,4,'ticket',261151),
	 (259,4,'followup',31767),
	 (260,4,'task',13329);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (261,7,'project',0),
	 (262,1,'projecttask',0),
	 (263,2,'projecttask',0),
	 (264,4,'planning',3073),
	 (265,6,'taskcategory',0),
	 (266,6,'cable_management',0),
	 (267,4,'statistic',1),
	 (268,4,'password_update',1),
	 (269,4,'show_group_hardware',1),
	 (270,4,'rule_dictionnary_software',23);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (271,4,'rule_dictionnary_dropdown',23),
	 (272,4,'budget',0),
	 (273,4,'notification',23),
	 (274,4,'rule_mailcollector',23),
	 (275,1,'solutiontemplate',0),
	 (276,1,'itilfollowuptemplate',0),
	 (277,2,'solutiontemplate',0),
	 (278,2,'itilfollowuptemplate',0),
	 (279,4,'calendar',23),
	 (280,4,'slm',23);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (281,4,'rule_dictionnary_printer',23),
	 (282,4,'problem',1151),
	 (283,1,'knowbasecategory',0),
	 (284,2,'itilcategory',0),
	 (285,4,'itiltemplate',23),
	 (286,4,'ticketrecurrent',23),
	 (287,4,'ticketcost',23),
	 (288,7,'change',1151),
	 (289,1,'changevalidation',0),
	 (290,4,'ticketvalidation',15376);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (291,5,'computer',0),
	 (292,5,'monitor',0),
	 (293,5,'software',0),
	 (294,5,'networking',0),
	 (295,5,'internet',0),
	 (296,5,'printer',0),
	 (297,5,'peripheral',0),
	 (298,5,'cartridge',0),
	 (299,5,'consumable',0),
	 (300,5,'phone',0);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (301,3,'queuednotification',0),
	 (302,5,'contact_enterprise',0),
	 (303,5,'document',0),
	 (304,5,'contract',0),
	 (305,5,'infocom',0),
	 (306,5,'knowbase',2049),
	 (307,5,'reservation',0),
	 (308,5,'reports',0),
	 (309,5,'dropdown',0),
	 (310,5,'device',0);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (311,5,'typedoc',0),
	 (312,5,'link',0),
	 (313,5,'config',0),
	 (314,5,'rule_ticket',0),
	 (315,5,'rule_import',0),
	 (316,5,'rule_location',0),
	 (317,5,'rule_ldap',0),
	 (318,5,'rule_softwarecategories',0),
	 (319,5,'search_config',0),
	 (320,1,'location',0);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (321,3,'domain',0),
	 (322,5,'profile',0),
	 (323,5,'user',1025),
	 (324,5,'group',0),
	 (325,5,'entity',0),
	 (326,5,'transfer',0),
	 (327,5,'logs',0),
	 (328,5,'reminder_public',0),
	 (329,5,'rssfeed_public',0),
	 (330,5,'bookmark_public',0);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (331,5,'backup',0),
	 (332,5,'ticket',140295),
	 (333,5,'followup',12295),
	 (334,5,'task',8193),
	 (335,4,'project',0),
	 (336,5,'project',0),
	 (337,6,'project',0),
	 (338,5,'planning',1),
	 (339,5,'taskcategory',0),
	 (340,5,'cable_management',0);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (341,5,'statistic',1),
	 (342,5,'password_update',1),
	 (343,5,'show_group_hardware',0),
	 (344,5,'rule_dictionnary_software',0),
	 (345,5,'rule_dictionnary_dropdown',0),
	 (346,5,'budget',0),
	 (347,5,'notification',0),
	 (348,5,'rule_mailcollector',0),
	 (349,6,'state',0),
	 (350,7,'state',23);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (351,5,'calendar',0),
	 (352,5,'slm',0),
	 (353,5,'rule_dictionnary_printer',0),
	 (354,5,'problem',1024),
	 (355,7,'knowbasecategory',23),
	 (356,1,'itilcategory',0),
	 (357,5,'itiltemplate',0),
	 (358,5,'ticketrecurrent',0),
	 (359,5,'ticketcost',23),
	 (360,5,'change',1054);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (361,6,'change',1151),
	 (362,5,'ticketvalidation',3088),
	 (363,6,'computer',0),
	 (364,6,'monitor',0),
	 (365,6,'software',0),
	 (366,6,'networking',0),
	 (367,6,'internet',0),
	 (368,6,'printer',0),
	 (369,6,'peripheral',0),
	 (370,6,'cartridge',0);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (371,6,'consumable',0),
	 (372,6,'phone',0),
	 (373,2,'queuednotification',0),
	 (374,6,'contact_enterprise',0),
	 (375,6,'document',0),
	 (376,6,'contract',0),
	 (377,6,'infocom',0),
	 (378,6,'knowbase',10263),
	 (379,6,'reservation',0),
	 (380,6,'reports',0);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (381,6,'dropdown',0),
	 (382,6,'device',0),
	 (383,6,'typedoc',0),
	 (384,6,'link',0),
	 (385,6,'config',0),
	 (386,6,'rule_ticket',0),
	 (387,6,'rule_import',0),
	 (388,6,'rule_location',0),
	 (389,6,'rule_ldap',0),
	 (390,6,'rule_softwarecategories',0);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (391,6,'search_config',0),
	 (392,2,'domain',0),
	 (393,6,'profile',0),
	 (394,6,'user',1),
	 (395,6,'group',1),
	 (396,6,'entity',33),
	 (397,6,'transfer',1),
	 (398,6,'logs',0),
	 (399,6,'reminder_public',0),
	 (400,6,'rssfeed_public',0);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (401,6,'bookmark_public',0),
	 (402,6,'backup',0),
	 (403,6,'ticket',36865),
	 (404,6,'followup',13319),
	 (405,6,'task',13329),
	 (406,1,'project',0),
	 (407,2,'project',0),
	 (408,3,'project',0),
	 (409,6,'planning',1),
	 (410,4,'taskcategory',23);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (411,4,'cable_management',0),
	 (412,6,'statistic',1),
	 (413,6,'password_update',1),
	 (414,6,'show_group_hardware',0),
	 (415,6,'rule_dictionnary_software',0),
	 (416,6,'rule_dictionnary_dropdown',0),
	 (417,6,'budget',0),
	 (418,6,'notification',0),
	 (419,6,'rule_mailcollector',0),
	 (420,4,'state',23);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (421,5,'state',0),
	 (422,6,'calendar',0),
	 (423,6,'slm',1),
	 (424,6,'rule_dictionnary_printer',0),
	 (425,6,'problem',1121),
	 (426,6,'knowbasecategory',0),
	 (427,7,'itilcategory',23),
	 (428,7,'location',23),
	 (429,6,'itiltemplate',1),
	 (430,6,'ticketrecurrent',1);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (431,6,'ticketcost',23),
	 (432,3,'change',1151),
	 (433,4,'change',1151),
	 (434,6,'ticketvalidation',3088),
	 (435,7,'computer',0),
	 (436,7,'monitor',0),
	 (437,7,'software',0),
	 (438,7,'networking',0),
	 (439,7,'internet',0),
	 (440,7,'printer',0);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (441,7,'peripheral',0),
	 (442,7,'cartridge',0),
	 (443,7,'consumable',0),
	 (444,7,'phone',0),
	 (445,1,'queuednotification',0),
	 (446,7,'contact_enterprise',0),
	 (447,7,'document',0),
	 (448,7,'contract',0),
	 (449,7,'infocom',0),
	 (450,7,'knowbase',10241);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (451,7,'reservation',0),
	 (452,7,'reports',0),
	 (453,7,'dropdown',0),
	 (454,7,'device',0),
	 (455,7,'typedoc',0),
	 (456,7,'link',0),
	 (457,7,'config',0),
	 (458,7,'rule_ticket',1),
	 (459,7,'rule_import',0),
	 (460,7,'rule_location',0);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (461,7,'rule_ldap',0),
	 (462,7,'rule_softwarecategories',0),
	 (463,7,'search_config',0),
	 (464,1,'domain',0),
	 (465,7,'profile',0),
	 (466,7,'user',1),
	 (467,7,'group',1),
	 (468,7,'entity',33),
	 (469,7,'transfer',1),
	 (470,7,'logs',1);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (471,7,'reminder_public',0),
	 (472,7,'rssfeed_public',0),
	 (473,7,'bookmark_public',0),
	 (474,7,'backup',0),
	 (475,7,'ticket',261151),
	 (476,7,'followup',31767),
	 (477,7,'task',13329),
	 (478,7,'queuednotification',0),
	 (479,7,'planning',3073),
	 (480,3,'taskcategory',23);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (481,3,'cable_management',0),
	 (482,7,'statistic',1),
	 (483,7,'password_update',1),
	 (484,7,'show_group_hardware',0),
	 (485,7,'rule_dictionnary_software',0),
	 (486,7,'rule_dictionnary_dropdown',0),
	 (487,7,'budget',0),
	 (488,7,'notification',0),
	 (489,7,'rule_mailcollector',1),
	 (490,7,'changevalidation',1044);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (491,3,'state',23),
	 (492,7,'calendar',23),
	 (493,7,'slm',23),
	 (494,7,'rule_dictionnary_printer',0),
	 (495,7,'problem',1151),
	 (496,5,'knowbasecategory',0),
	 (497,6,'itilcategory',0),
	 (498,6,'location',0),
	 (499,7,'itiltemplate',23),
	 (500,7,'ticketrecurrent',1);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (501,7,'ticketcost',23),
	 (502,1,'change',0),
	 (503,2,'change',1057),
	 (504,7,'ticketvalidation',15376),
	 (505,8,'backup',1),
	 (506,8,'bookmark_public',0),
	 (507,8,'budget',0),
	 (508,8,'calendar',1),
	 (509,8,'cartridge',0),
	 (510,8,'change',1057);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (511,8,'changevalidation',0),
	 (512,8,'computer',0),
	 (513,8,'config',1),
	 (514,8,'consumable',0),
	 (515,8,'contact_enterprise',0),
	 (516,8,'contract',0),
	 (517,8,'device',1),
	 (518,8,'document',0),
	 (519,8,'domain',0),
	 (520,8,'dropdown',1);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (521,8,'entity',33),
	 (522,8,'followup',8193),
	 (523,8,'global_validation',0),
	 (524,8,'group',33),
	 (525,8,'infocom',0),
	 (526,8,'internet',0),
	 (527,8,'itilcategory',1),
	 (528,8,'knowbase',2049),
	 (529,8,'knowbasecategory',1),
	 (530,8,'link',1);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (531,8,'location',1),
	 (532,8,'logs',1),
	 (533,8,'monitor',0),
	 (534,8,'cable_management',0),
	 (535,8,'networking',0),
	 (536,8,'notification',1),
	 (537,8,'password_update',0),
	 (538,8,'peripheral',0),
	 (539,8,'phone',0),
	 (540,8,'planning',3073);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (541,8,'printer',0),
	 (542,8,'problem',1057),
	 (543,8,'profile',1),
	 (544,8,'project',0),
	 (545,8,'projecttask',0),
	 (546,8,'queuednotification',1),
	 (547,8,'reminder_public',0),
	 (548,8,'reports',0),
	 (549,8,'reservation',0),
	 (550,8,'rssfeed_public',0);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (551,8,'rule_dictionnary_dropdown',1),
	 (552,8,'rule_dictionnary_printer',1),
	 (553,8,'rule_dictionnary_software',1),
	 (554,8,'rule_import',1),
	 (555,8,'rule_location',1),
	 (556,8,'rule_ldap',1),
	 (557,8,'rule_mailcollector',1),
	 (558,8,'rule_softwarecategories',1),
	 (559,8,'rule_ticket',1),
	 (560,8,'search_config',0);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (561,8,'show_group_hardware',1),
	 (562,8,'slm',1),
	 (563,8,'software',0),
	 (564,8,'solutiontemplate',1),
	 (565,8,'itilfollowuptemplate',1),
	 (566,8,'state',1),
	 (567,8,'statistic',1),
	 (568,8,'task',8193),
	 (569,8,'taskcategory',1),
	 (570,8,'ticket',138241);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (571,8,'ticketcost',1),
	 (572,8,'ticketrecurrent',1),
	 (573,8,'itiltemplate',1),
	 (574,8,'ticketvalidation',0),
	 (575,8,'transfer',1),
	 (576,8,'typedoc',1),
	 (577,8,'user',1),
	 (578,1,'license',0),
	 (579,2,'license',0),
	 (580,3,'license',0);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (581,4,'license',0),
	 (582,5,'license',0),
	 (583,6,'license',0),
	 (584,7,'license',0),
	 (585,8,'license',0),
	 (586,1,'line',0),
	 (587,2,'line',0),
	 (588,3,'line',0),
	 (589,4,'line',0),
	 (590,5,'line',0);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (591,6,'line',0),
	 (592,7,'line',0),
	 (593,8,'line',0),
	 (594,1,'lineoperator',0),
	 (595,2,'lineoperator',33),
	 (596,3,'lineoperator',23),
	 (597,4,'lineoperator',23),
	 (598,5,'lineoperator',0),
	 (599,6,'lineoperator',0),
	 (600,7,'lineoperator',23);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (601,8,'lineoperator',1),
	 (602,1,'devicesimcard_pinpuk',0),
	 (603,2,'devicesimcard_pinpuk',0),
	 (604,3,'devicesimcard_pinpuk',0),
	 (605,4,'devicesimcard_pinpuk',0),
	 (606,5,'devicesimcard_pinpuk',0),
	 (607,6,'devicesimcard_pinpuk',0),
	 (608,7,'devicesimcard_pinpuk',0),
	 (609,8,'devicesimcard_pinpuk',0),
	 (610,1,'certificate',0);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (611,2,'certificate',0),
	 (612,3,'certificate',0),
	 (613,4,'certificate',0),
	 (614,5,'certificate',0),
	 (615,6,'certificate',0),
	 (616,7,'certificate',0),
	 (617,8,'certificate',0),
	 (618,1,'datacenter',0),
	 (619,2,'datacenter',0),
	 (620,3,'datacenter',0);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (621,4,'datacenter',0),
	 (622,5,'datacenter',0),
	 (623,6,'datacenter',0),
	 (624,7,'datacenter',0),
	 (625,8,'datacenter',0),
	 (626,4,'rule_asset',1047),
	 (627,1,'personalization',3),
	 (628,2,'personalization',3),
	 (629,3,'personalization',3),
	 (630,4,'personalization',3);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (631,5,'personalization',3),
	 (632,6,'personalization',3),
	 (633,7,'personalization',3),
	 (634,8,'personalization',3),
	 (635,1,'rule_asset',0),
	 (636,2,'rule_asset',0),
	 (637,3,'rule_asset',0),
	 (638,5,'rule_asset',0),
	 (639,6,'rule_asset',0),
	 (640,7,'rule_asset',0);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (641,8,'rule_asset',0),
	 (642,1,'global_validation',0),
	 (643,2,'global_validation',0),
	 (644,3,'global_validation',0),
	 (645,4,'global_validation',0),
	 (646,5,'global_validation',0),
	 (647,6,'global_validation',0),
	 (648,7,'global_validation',0),
	 (649,1,'cluster',0),
	 (650,2,'cluster',0);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (651,3,'cluster',0),
	 (652,4,'cluster',0),
	 (653,5,'cluster',0),
	 (654,6,'cluster',0),
	 (655,7,'cluster',0),
	 (656,8,'cluster',0),
	 (657,1,'externalevent',0),
	 (658,2,'externalevent',1),
	 (659,3,'externalevent',1055),
	 (660,4,'externalevent',1055);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (661,5,'externalevent',0),
	 (662,6,'externalevent',1),
	 (663,7,'externalevent',31),
	 (664,8,'externalevent',1),
	 (665,1,'dashboard',0),
	 (666,2,'dashboard',0),
	 (667,3,'dashboard',0),
	 (668,4,'dashboard',0),
	 (669,5,'dashboard',0),
	 (670,6,'dashboard',0);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (671,7,'dashboard',0),
	 (672,8,'dashboard',0),
	 (673,1,'appliance',0),
	 (674,2,'appliance',0),
	 (675,3,'appliance',0),
	 (676,4,'appliance',0),
	 (677,5,'appliance',0),
	 (678,6,'appliance',0),
	 (679,7,'appliance',0),
	 (680,8,'appliance',0);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (681,1,'inventory',0),
	 (682,2,'inventory',0),
	 (683,3,'inventory',0),
	 (684,4,'inventory',3073),
	 (685,5,'inventory',0),
	 (686,6,'inventory',0),
	 (687,7,'inventory',0),
	 (688,8,'inventory',0),
	 (689,1,'pendingreason',0),
	 (690,2,'pendingreason',0);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (691,3,'pendingreason',31),
	 (692,4,'pendingreason',31),
	 (693,5,'pendingreason',1),
	 (694,6,'pendingreason',1),
	 (695,7,'pendingreason',1),
	 (696,8,'pendingreason',1),
	 (697,1,'database',0),
	 (698,2,'database',0),
	 (699,3,'database',0),
	 (700,4,'database',0);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (701,5,'database',0),
	 (702,6,'database',0),
	 (703,7,'database',0),
	 (704,8,'database',0),
	 (705,1,'recurrentchange',0),
	 (706,2,'recurrentchange',0),
	 (707,3,'recurrentchange',1),
	 (708,4,'recurrentchange',31),
	 (709,5,'recurrentchange',0),
	 (710,6,'recurrentchange',1);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (711,7,'recurrentchange',1),
	 (712,8,'recurrentchange',1),
	 (714,9,'calendar',0),
	 (715,9,'config',0),
	 (716,9,'dashboard',0),
	 (717,9,'device',0),
	 (718,9,'dropdown',0),
	 (719,9,'itilcategory',0),
	 (720,9,'itilfollowuptemplate',0),
	 (721,9,'knowbasecategory',0);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (722,9,'lineoperator',0),
	 (723,9,'link',0),
	 (724,9,'location',0),
	 (725,9,'notification',0),
	 (726,9,'personalization',0),
	 (727,9,'search_config',0),
	 (728,9,'slm',0),
	 (729,9,'solutiontemplate',0),
	 (730,9,'state',0),
	 (731,9,'taskcategory',0);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (732,9,'typedoc',0),
	 (733,9,'appliance',0),
	 (734,9,'backup',0),
	 (735,9,'bookmark_public',0),
	 (736,9,'budget',0),
	 (737,9,'cable_management',0),
	 (738,9,'cartridge',0),
	 (739,9,'certificate',0),
	 (740,9,'change',0),
	 (741,9,'changevalidation',0);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (742,9,'cluster',0),
	 (743,9,'computer',0),
	 (744,9,'consumable',0),
	 (745,9,'contact_enterprise',0),
	 (746,9,'contract',0),
	 (747,9,'database',0),
	 (748,9,'datacenter',0),
	 (749,9,'devicesimcard_pinpuk',0),
	 (750,9,'document',0),
	 (751,9,'domain',0);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (752,9,'entity',0),
	 (753,9,'externalevent',0),
	 (754,9,'followup',0),
	 (755,9,'global_validation',0),
	 (756,9,'group',0),
	 (757,9,'infocom',0),
	 (758,9,'internet',0),
	 (759,9,'inventory',0),
	 (760,9,'itiltemplate',0),
	 (761,9,'knowbase',15383);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (762,9,'license',0),
	 (763,9,'line',0),
	 (764,9,'logs',0),
	 (765,9,'monitor',0),
	 (766,9,'networking',0),
	 (767,9,'password_update',0),
	 (768,9,'pendingreason',0),
	 (769,9,'peripheral',0),
	 (770,9,'phone',0),
	 (771,9,'planning',0);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (772,9,'printer',0),
	 (773,9,'problem',0),
	 (774,9,'profile',0),
	 (775,9,'project',0),
	 (776,9,'projecttask',0),
	 (777,9,'queuednotification',0),
	 (778,9,'recurrentchange',0),
	 (779,9,'reminder_public',0),
	 (780,9,'reports',0),
	 (781,9,'reservation',0);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (782,9,'rssfeed_public',0),
	 (783,9,'rule_asset',0),
	 (784,9,'rule_dictionnary_dropdown',0),
	 (785,9,'rule_dictionnary_printer',0),
	 (786,9,'rule_dictionnary_software',0),
	 (787,9,'rule_import',0),
	 (788,9,'rule_ldap',0),
	 (789,9,'rule_location',0),
	 (790,9,'rule_mailcollector',0),
	 (791,9,'rule_softwarecategories',0);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (792,9,'rule_ticket',0),
	 (793,9,'show_group_hardware',0),
	 (794,9,'software',0),
	 (795,9,'statistic',0),
	 (796,9,'task',0),
	 (797,9,'ticket',0),
	 (798,9,'ticketcost',0),
	 (799,9,'ticketrecurrent',0),
	 (800,9,'ticketvalidation',0),
	 (801,9,'transfer',0);
INSERT INTO glpi_dev.glpi_profilerights (id,profiles_id,name,rights) VALUES
	 (802,9,'user',0);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (1,1,'computer',0),
	 (2,1,'monitor',0),
	 (3,1,'software',0),
	 (4,1,'networking',0),
	 (5,1,'internet',0),
	 (6,1,'printer',0),
	 (7,1,'peripheral',0),
	 (8,1,'cartridge',0),
	 (9,1,'consumable',0),
	 (10,1,'phone',0);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (11,6,'queuednotification',0),
	 (12,1,'contact_enterprise',0),
	 (13,1,'document',0),
	 (14,1,'contract',0),
	 (15,1,'infocom',0),
	 (16,1,'knowbase',2048),
	 (17,1,'reservation',1024),
	 (18,1,'reports',0),
	 (19,1,'dropdown',0),
	 (20,1,'device',0);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (21,1,'typedoc',0),
	 (22,1,'link',0),
	 (23,1,'config',0),
	 (24,1,'rule_ticket',0),
	 (25,1,'rule_import',0),
	 (26,1,'rule_location',0),
	 (27,1,'rule_ldap',0),
	 (28,1,'rule_softwarecategories',0),
	 (29,1,'search_config',0),
	 (30,5,'location',0);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (31,7,'domain',23),
	 (32,1,'profile',0),
	 (33,1,'user',0),
	 (34,1,'group',0),
	 (35,1,'entity',0),
	 (36,1,'transfer',0),
	 (37,1,'logs',0),
	 (38,1,'reminder_public',1),
	 (39,1,'rssfeed_public',1),
	 (40,1,'bookmark_public',0);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (41,1,'backup',0),
	 (42,1,'ticket',5),
	 (43,1,'followup',5),
	 (44,1,'task',1),
	 (45,1,'planning',0),
	 (46,2,'state',0),
	 (47,2,'taskcategory',0),
	 (48,1,'statistic',0),
	 (49,1,'password_update',1),
	 (50,1,'show_group_hardware',0);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (51,1,'rule_dictionnary_software',0),
	 (52,1,'rule_dictionnary_dropdown',0),
	 (53,1,'budget',0),
	 (54,1,'notification',0),
	 (55,1,'rule_mailcollector',0),
	 (56,7,'solutiontemplate',23),
	 (57,7,'itilfollowuptemplate',23),
	 (58,1,'calendar',0),
	 (59,1,'slm',0),
	 (60,1,'rule_dictionnary_printer',0);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (61,1,'problem',0),
	 (62,2,'cable_management',0),
	 (63,4,'knowbasecategory',23),
	 (64,5,'itilcategory',0),
	 (65,1,'itiltemplate',0),
	 (66,1,'ticketrecurrent',0),
	 (67,1,'ticketcost',0),
	 (68,6,'changevalidation',20),
	 (69,1,'ticketvalidation',0),
	 (70,2,'computer',33);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (71,2,'monitor',33),
	 (72,2,'software',33),
	 (73,2,'networking',33),
	 (74,2,'internet',1),
	 (75,2,'printer',33),
	 (76,2,'peripheral',33),
	 (77,2,'cartridge',33),
	 (78,2,'consumable',33),
	 (79,2,'phone',33),
	 (80,5,'queuednotification',0);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (81,2,'contact_enterprise',33),
	 (82,2,'document',33),
	 (83,2,'contract',33),
	 (84,2,'infocom',1),
	 (85,2,'knowbase',10241),
	 (86,2,'reservation',1025),
	 (87,2,'reports',1),
	 (88,2,'dropdown',0),
	 (89,2,'device',0),
	 (90,2,'typedoc',1);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (91,2,'link',1),
	 (92,2,'config',0),
	 (93,2,'rule_ticket',0),
	 (94,2,'rule_import',0),
	 (95,2,'rule_location',0),
	 (96,2,'rule_ldap',0),
	 (97,2,'rule_softwarecategories',0),
	 (98,2,'search_config',1024),
	 (99,4,'location',23),
	 (100,6,'domain',0);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (101,2,'profile',0),
	 (102,2,'user',2049),
	 (103,2,'group',33),
	 (104,2,'entity',0),
	 (105,2,'transfer',0),
	 (106,2,'logs',0),
	 (107,2,'reminder_public',1),
	 (108,2,'rssfeed_public',1),
	 (109,2,'bookmark_public',0),
	 (110,2,'backup',0);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (111,2,'ticket',168989),
	 (112,2,'followup',5),
	 (113,2,'task',1),
	 (114,6,'projecttask',1025),
	 (115,7,'projecttask',1025),
	 (116,2,'planning',1),
	 (117,1,'state',0),
	 (118,1,'taskcategory',0),
	 (119,2,'statistic',1),
	 (120,2,'password_update',1);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (121,2,'show_group_hardware',0),
	 (122,2,'rule_dictionnary_software',0),
	 (123,2,'rule_dictionnary_dropdown',0),
	 (124,2,'budget',33),
	 (125,2,'notification',0),
	 (126,2,'rule_mailcollector',0),
	 (127,5,'solutiontemplate',0),
	 (128,5,'itilfollowuptemplate',0),
	 (129,6,'solutiontemplate',0),
	 (130,6,'itilfollowuptemplate',0);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (131,2,'calendar',0),
	 (132,2,'slm',0),
	 (133,2,'rule_dictionnary_printer',0),
	 (134,2,'problem',1057),
	 (135,1,'cable_management',0),
	 (136,3,'knowbasecategory',23),
	 (137,4,'itilcategory',23),
	 (138,2,'itiltemplate',0),
	 (139,2,'ticketrecurrent',0),
	 (140,2,'ticketcost',1);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (141,4,'changevalidation',1044),
	 (142,5,'changevalidation',20),
	 (143,2,'ticketvalidation',15376),
	 (144,3,'computer',127),
	 (145,3,'monitor',127),
	 (146,3,'software',127),
	 (147,3,'networking',127),
	 (148,3,'internet',31),
	 (149,3,'printer',127),
	 (150,3,'peripheral',127);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (151,3,'cartridge',127),
	 (152,3,'consumable',127),
	 (153,3,'phone',127),
	 (154,4,'queuednotification',31),
	 (155,3,'contact_enterprise',127),
	 (156,3,'document',127),
	 (157,3,'contract',127),
	 (158,3,'infocom',23),
	 (159,3,'knowbase',14359),
	 (160,3,'reservation',1055);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (161,3,'reports',1),
	 (162,3,'dropdown',23),
	 (163,3,'device',23),
	 (164,3,'typedoc',23),
	 (165,3,'link',23),
	 (166,3,'config',0),
	 (167,3,'rule_ticket',1047),
	 (168,3,'rule_import',0),
	 (169,3,'rule_location',0),
	 (170,3,'rule_ldap',0);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (171,3,'rule_softwarecategories',0),
	 (172,3,'search_config',3072),
	 (173,3,'location',23),
	 (174,5,'domain',0),
	 (175,3,'profile',1),
	 (176,3,'user',7199),
	 (177,3,'group',119),
	 (178,3,'entity',33),
	 (179,3,'transfer',1),
	 (180,3,'logs',1);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (181,3,'reminder_public',23),
	 (182,3,'rssfeed_public',23),
	 (183,3,'bookmark_public',23),
	 (184,3,'backup',1024),
	 (185,3,'ticket',261151),
	 (186,3,'followup',31767),
	 (187,3,'task',13329),
	 (188,3,'projecttask',1121),
	 (189,4,'projecttask',1121),
	 (190,5,'projecttask',0);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (191,3,'planning',3073),
	 (192,7,'taskcategory',23),
	 (193,7,'cable_management',23),
	 (194,3,'statistic',1),
	 (195,3,'password_update',1),
	 (196,3,'show_group_hardware',0),
	 (197,3,'rule_dictionnary_software',0),
	 (198,3,'rule_dictionnary_dropdown',0),
	 (199,3,'budget',127),
	 (200,3,'notification',0);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (201,3,'rule_mailcollector',23),
	 (202,3,'solutiontemplate',23),
	 (203,3,'itilfollowuptemplate',23),
	 (204,4,'solutiontemplate',23),
	 (205,4,'itilfollowuptemplate',23),
	 (206,3,'calendar',23),
	 (207,3,'slm',23),
	 (208,3,'rule_dictionnary_printer',0),
	 (209,3,'problem',1151),
	 (210,2,'knowbasecategory',0);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (211,3,'itilcategory',23),
	 (212,3,'itiltemplate',23),
	 (213,3,'ticketrecurrent',1),
	 (214,3,'ticketcost',23),
	 (215,2,'changevalidation',1044),
	 (216,3,'changevalidation',1044),
	 (217,3,'ticketvalidation',15376),
	 (218,4,'computer',255),
	 (219,4,'monitor',255),
	 (220,4,'software',255);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (221,4,'networking',255),
	 (222,4,'internet',159),
	 (223,4,'printer',255),
	 (224,4,'peripheral',255),
	 (225,4,'cartridge',255),
	 (226,4,'consumable',255),
	 (227,4,'phone',255),
	 (228,4,'contact_enterprise',255),
	 (229,4,'document',255),
	 (230,4,'contract',255);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (231,4,'infocom',23),
	 (232,4,'knowbase',15383),
	 (233,4,'reservation',1055),
	 (234,4,'reports',1),
	 (235,4,'dropdown',23),
	 (236,4,'device',23),
	 (237,4,'typedoc',23),
	 (238,4,'link',159),
	 (239,4,'config',3),
	 (240,4,'rule_ticket',1047);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (241,4,'rule_import',23),
	 (242,4,'rule_location',23),
	 (243,4,'rule_ldap',23),
	 (244,4,'rule_softwarecategories',23),
	 (245,4,'search_config',3072),
	 (246,2,'location',0),
	 (247,4,'domain',23),
	 (248,4,'profile',23),
	 (249,4,'user',7327),
	 (250,4,'group',119);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (251,4,'entity',3327),
	 (252,4,'transfer',23),
	 (253,4,'logs',1),
	 (254,4,'reminder_public',159),
	 (255,4,'rssfeed_public',159),
	 (256,4,'bookmark_public',23),
	 (257,4,'backup',1045),
	 (258,4,'ticket',261151),
	 (259,4,'followup',31767),
	 (260,4,'task',13329);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (261,7,'project',1151),
	 (262,1,'projecttask',0),
	 (263,2,'projecttask',1025),
	 (264,4,'planning',3073),
	 (265,6,'taskcategory',0),
	 (266,6,'cable_management',0),
	 (267,4,'statistic',1),
	 (268,4,'password_update',1),
	 (269,4,'show_group_hardware',1),
	 (270,4,'rule_dictionnary_software',23);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (271,4,'rule_dictionnary_dropdown',23),
	 (272,4,'budget',127),
	 (273,4,'notification',23),
	 (274,4,'rule_mailcollector',23),
	 (275,1,'solutiontemplate',0),
	 (276,1,'itilfollowuptemplate',0),
	 (277,2,'solutiontemplate',0),
	 (278,2,'itilfollowuptemplate',0),
	 (279,4,'calendar',23),
	 (280,4,'slm',23);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (281,4,'rule_dictionnary_printer',23),
	 (282,4,'problem',1151),
	 (283,1,'knowbasecategory',0),
	 (284,2,'itilcategory',0),
	 (285,4,'itiltemplate',23),
	 (286,4,'ticketrecurrent',23),
	 (287,4,'ticketcost',23),
	 (288,7,'change',1151),
	 (289,1,'changevalidation',0),
	 (290,4,'ticketvalidation',15376);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (291,5,'computer',0),
	 (292,5,'monitor',0),
	 (293,5,'software',0),
	 (294,5,'networking',0),
	 (295,5,'internet',0),
	 (296,5,'printer',0),
	 (297,5,'peripheral',0),
	 (298,5,'cartridge',0),
	 (299,5,'consumable',0),
	 (300,5,'phone',0);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (301,3,'queuednotification',0),
	 (302,5,'contact_enterprise',0),
	 (303,5,'document',0),
	 (304,5,'contract',0),
	 (305,5,'infocom',0),
	 (306,5,'knowbase',10240),
	 (307,5,'reservation',0),
	 (308,5,'reports',0),
	 (309,5,'dropdown',0),
	 (310,5,'device',0);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (311,5,'typedoc',0),
	 (312,5,'link',0),
	 (313,5,'config',0),
	 (314,5,'rule_ticket',0),
	 (315,5,'rule_import',0),
	 (316,5,'rule_location',0),
	 (317,5,'rule_ldap',0),
	 (318,5,'rule_softwarecategories',0),
	 (319,5,'search_config',0),
	 (320,1,'location',0);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (321,3,'domain',23),
	 (322,5,'profile',0),
	 (323,5,'user',1025),
	 (324,5,'group',0),
	 (325,5,'entity',0),
	 (326,5,'transfer',0),
	 (327,5,'logs',0),
	 (328,5,'reminder_public',0),
	 (329,5,'rssfeed_public',0),
	 (330,5,'bookmark_public',0);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (331,5,'backup',0),
	 (332,5,'ticket',140295),
	 (333,5,'followup',12295),
	 (334,5,'task',8193),
	 (335,4,'project',1151),
	 (336,5,'project',1151),
	 (337,6,'project',1151),
	 (338,5,'planning',1),
	 (339,5,'taskcategory',0),
	 (340,5,'cable_management',0);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (341,5,'statistic',1),
	 (342,5,'password_update',1),
	 (343,5,'show_group_hardware',0),
	 (344,5,'rule_dictionnary_software',0),
	 (345,5,'rule_dictionnary_dropdown',0),
	 (346,5,'budget',0),
	 (347,5,'notification',0),
	 (348,5,'rule_mailcollector',0),
	 (349,6,'state',0),
	 (350,7,'state',23);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (351,5,'calendar',0),
	 (352,5,'slm',0),
	 (353,5,'rule_dictionnary_printer',0),
	 (354,5,'problem',1024),
	 (355,7,'knowbasecategory',23),
	 (356,1,'itilcategory',0),
	 (357,5,'itiltemplate',0),
	 (358,5,'ticketrecurrent',0),
	 (359,5,'ticketcost',23),
	 (360,5,'change',1054);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (361,6,'change',1151),
	 (362,5,'ticketvalidation',3088),
	 (363,6,'computer',127),
	 (364,6,'monitor',127),
	 (365,6,'software',127),
	 (366,6,'networking',127),
	 (367,6,'internet',31),
	 (368,6,'printer',127),
	 (369,6,'peripheral',127),
	 (370,6,'cartridge',127);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (371,6,'consumable',127),
	 (372,6,'phone',127),
	 (373,2,'queuednotification',0),
	 (374,6,'contact_enterprise',96),
	 (375,6,'document',127),
	 (376,6,'contract',96),
	 (377,6,'infocom',0),
	 (378,6,'knowbase',14359),
	 (379,6,'reservation',1055),
	 (380,6,'reports',1);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (381,6,'dropdown',0),
	 (382,6,'device',0),
	 (383,6,'typedoc',0),
	 (384,6,'link',0),
	 (385,6,'config',0),
	 (386,6,'rule_ticket',0),
	 (387,6,'rule_import',0),
	 (388,6,'rule_location',0),
	 (389,6,'rule_ldap',0),
	 (390,6,'rule_softwarecategories',0);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (391,6,'search_config',0),
	 (392,2,'domain',0),
	 (393,6,'profile',0),
	 (394,6,'user',1055),
	 (395,6,'group',1),
	 (396,6,'entity',33),
	 (397,6,'transfer',1),
	 (398,6,'logs',0),
	 (399,6,'reminder_public',23),
	 (400,6,'rssfeed_public',23);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (401,6,'bookmark_public',0),
	 (402,6,'backup',0),
	 (403,6,'ticket',166919),
	 (404,6,'followup',13319),
	 (405,6,'task',13329),
	 (406,1,'project',0),
	 (407,2,'project',1025),
	 (408,3,'project',1151),
	 (409,6,'planning',1),
	 (410,4,'taskcategory',23);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (411,4,'cable_management',23),
	 (412,6,'statistic',1),
	 (413,6,'password_update',1),
	 (414,6,'show_group_hardware',0),
	 (415,6,'rule_dictionnary_software',0),
	 (416,6,'rule_dictionnary_dropdown',0),
	 (417,6,'budget',96),
	 (418,6,'notification',0),
	 (419,6,'rule_mailcollector',0),
	 (420,4,'state',23);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (421,5,'state',0),
	 (422,6,'calendar',0),
	 (423,6,'slm',1),
	 (424,6,'rule_dictionnary_printer',0),
	 (425,6,'problem',1121),
	 (426,6,'knowbasecategory',0),
	 (427,7,'itilcategory',23),
	 (428,7,'location',23),
	 (429,6,'itiltemplate',1),
	 (430,6,'ticketrecurrent',1);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (431,6,'ticketcost',23),
	 (432,3,'change',1151),
	 (433,4,'change',1151),
	 (434,6,'ticketvalidation',3088),
	 (435,7,'computer',127),
	 (436,7,'monitor',127),
	 (437,7,'software',127),
	 (438,7,'networking',127),
	 (439,7,'internet',31),
	 (440,7,'printer',127);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (441,7,'peripheral',127),
	 (442,7,'cartridge',127),
	 (443,7,'consumable',127),
	 (444,7,'phone',127),
	 (445,1,'queuednotification',0),
	 (446,7,'contact_enterprise',96),
	 (447,7,'document',127),
	 (448,7,'contract',96),
	 (449,7,'infocom',0),
	 (450,7,'knowbase',14359);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (451,7,'reservation',1055),
	 (452,7,'reports',1),
	 (453,7,'dropdown',0),
	 (454,7,'device',0),
	 (455,7,'typedoc',0),
	 (456,7,'link',0),
	 (457,7,'config',0),
	 (458,7,'rule_ticket',1047),
	 (459,7,'rule_import',0),
	 (460,7,'rule_location',0);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (461,7,'rule_ldap',0),
	 (462,7,'rule_softwarecategories',0),
	 (463,7,'search_config',0),
	 (464,1,'domain',0),
	 (465,7,'profile',0),
	 (466,7,'user',1055),
	 (467,7,'group',1),
	 (468,7,'entity',33),
	 (469,7,'transfer',1),
	 (470,7,'logs',1);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (471,7,'reminder_public',23),
	 (472,7,'rssfeed_public',23),
	 (473,7,'bookmark_public',0),
	 (474,7,'backup',0),
	 (475,7,'ticket',261151),
	 (476,7,'followup',31767),
	 (477,7,'task',13329),
	 (478,7,'queuednotification',0),
	 (479,7,'planning',3073),
	 (480,3,'taskcategory',23);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (481,3,'cable_management',23),
	 (482,7,'statistic',1),
	 (483,7,'password_update',1),
	 (484,7,'show_group_hardware',0),
	 (485,7,'rule_dictionnary_software',0),
	 (486,7,'rule_dictionnary_dropdown',0),
	 (487,7,'budget',96),
	 (488,7,'notification',0),
	 (489,7,'rule_mailcollector',23),
	 (490,7,'changevalidation',1044);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (491,3,'state',23),
	 (492,7,'calendar',23),
	 (493,7,'slm',23),
	 (494,7,'rule_dictionnary_printer',0),
	 (495,7,'problem',1151),
	 (496,5,'knowbasecategory',0),
	 (497,6,'itilcategory',0),
	 (498,6,'location',0),
	 (499,7,'itiltemplate',23),
	 (500,7,'ticketrecurrent',1);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (501,7,'ticketcost',23),
	 (502,1,'change',0),
	 (503,2,'change',1057),
	 (504,7,'ticketvalidation',15376),
	 (505,8,'backup',1),
	 (506,8,'bookmark_public',1),
	 (507,8,'budget',33),
	 (508,8,'calendar',1),
	 (509,8,'cartridge',33),
	 (510,8,'change',1057);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (511,8,'changevalidation',0),
	 (512,8,'computer',33),
	 (513,8,'config',1),
	 (514,8,'consumable',33),
	 (515,8,'contact_enterprise',33),
	 (516,8,'contract',33),
	 (517,8,'device',1),
	 (518,8,'document',33),
	 (519,8,'domain',1),
	 (520,8,'dropdown',1);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (521,8,'entity',33),
	 (522,8,'followup',8193),
	 (523,8,'global_validation',0),
	 (524,8,'group',33),
	 (525,8,'infocom',1),
	 (526,8,'internet',1),
	 (527,8,'itilcategory',1),
	 (528,8,'knowbase',10241),
	 (529,8,'knowbasecategory',1),
	 (530,8,'link',1);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (531,8,'location',1),
	 (532,8,'logs',1),
	 (533,8,'monitor',33),
	 (534,8,'cable_management',1),
	 (535,8,'networking',33),
	 (536,8,'notification',1),
	 (537,8,'password_update',0),
	 (538,8,'peripheral',33),
	 (539,8,'phone',33),
	 (540,8,'planning',3073);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (541,8,'printer',33),
	 (542,8,'problem',1057),
	 (543,8,'profile',1),
	 (544,8,'project',1057),
	 (545,8,'projecttask',33),
	 (546,8,'queuednotification',1),
	 (547,8,'reminder_public',1),
	 (548,8,'reports',1),
	 (549,8,'reservation',1),
	 (550,8,'rssfeed_public',1);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (551,8,'rule_dictionnary_dropdown',1),
	 (552,8,'rule_dictionnary_printer',1),
	 (553,8,'rule_dictionnary_software',1),
	 (554,8,'rule_import',1),
	 (555,8,'rule_location',1),
	 (556,8,'rule_ldap',1),
	 (557,8,'rule_mailcollector',1),
	 (558,8,'rule_softwarecategories',1),
	 (559,8,'rule_ticket',1),
	 (560,8,'search_config',0);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (561,8,'show_group_hardware',1),
	 (562,8,'slm',1),
	 (563,8,'software',33),
	 (564,8,'solutiontemplate',1),
	 (565,8,'itilfollowuptemplate',1),
	 (566,8,'state',1),
	 (567,8,'statistic',1),
	 (568,8,'task',8193),
	 (569,8,'taskcategory',1),
	 (570,8,'ticket',138241);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (571,8,'ticketcost',1),
	 (572,8,'ticketrecurrent',1),
	 (573,8,'itiltemplate',1),
	 (574,8,'ticketvalidation',0),
	 (575,8,'transfer',1),
	 (576,8,'typedoc',1),
	 (577,8,'user',1),
	 (578,1,'license',0),
	 (579,2,'license',33),
	 (580,3,'license',127);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (581,4,'license',255),
	 (582,5,'license',0),
	 (583,6,'license',127),
	 (584,7,'license',127),
	 (585,8,'license',33),
	 (586,1,'line',0),
	 (587,2,'line',33),
	 (588,3,'line',127),
	 (589,4,'line',255),
	 (590,5,'line',0);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (591,6,'line',127),
	 (592,7,'line',127),
	 (593,8,'line',33),
	 (594,1,'lineoperator',0),
	 (595,2,'lineoperator',33),
	 (596,3,'lineoperator',23),
	 (597,4,'lineoperator',23),
	 (598,5,'lineoperator',0),
	 (599,6,'lineoperator',0),
	 (600,7,'lineoperator',23);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (601,8,'lineoperator',1),
	 (602,1,'devicesimcard_pinpuk',0),
	 (603,2,'devicesimcard_pinpuk',1),
	 (604,3,'devicesimcard_pinpuk',3),
	 (605,4,'devicesimcard_pinpuk',3),
	 (606,5,'devicesimcard_pinpuk',0),
	 (607,6,'devicesimcard_pinpuk',3),
	 (608,7,'devicesimcard_pinpuk',3),
	 (609,8,'devicesimcard_pinpuk',1),
	 (610,1,'certificate',0);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (611,2,'certificate',33),
	 (612,3,'certificate',127),
	 (613,4,'certificate',255),
	 (614,5,'certificate',0),
	 (615,6,'certificate',127),
	 (616,7,'certificate',127),
	 (617,8,'certificate',33),
	 (618,1,'datacenter',0),
	 (619,2,'datacenter',1),
	 (620,3,'datacenter',31);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (621,4,'datacenter',31),
	 (622,5,'datacenter',0),
	 (623,6,'datacenter',31),
	 (624,7,'datacenter',31),
	 (625,8,'datacenter',1),
	 (626,4,'rule_asset',1047),
	 (627,1,'personalization',3),
	 (628,2,'personalization',3),
	 (629,3,'personalization',3),
	 (630,4,'personalization',3);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (631,5,'personalization',3),
	 (632,6,'personalization',3),
	 (633,7,'personalization',3),
	 (634,8,'personalization',3),
	 (635,1,'rule_asset',0),
	 (636,2,'rule_asset',0),
	 (637,3,'rule_asset',0),
	 (638,5,'rule_asset',0),
	 (639,6,'rule_asset',0),
	 (640,7,'rule_asset',0);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (641,8,'rule_asset',0),
	 (642,1,'global_validation',0),
	 (643,2,'global_validation',0),
	 (644,3,'global_validation',0),
	 (645,4,'global_validation',0),
	 (646,5,'global_validation',0),
	 (647,6,'global_validation',0),
	 (648,7,'global_validation',0),
	 (649,1,'cluster',0),
	 (650,2,'cluster',1);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (651,3,'cluster',31),
	 (652,4,'cluster',31),
	 (653,5,'cluster',0),
	 (654,6,'cluster',31),
	 (655,7,'cluster',31),
	 (656,8,'cluster',1),
	 (657,1,'externalevent',0),
	 (658,2,'externalevent',1),
	 (659,3,'externalevent',1055),
	 (660,4,'externalevent',1055);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (661,5,'externalevent',0),
	 (662,6,'externalevent',1),
	 (663,7,'externalevent',31),
	 (664,8,'externalevent',1),
	 (665,1,'dashboard',0),
	 (666,2,'dashboard',0),
	 (667,3,'dashboard',0),
	 (668,4,'dashboard',23),
	 (669,5,'dashboard',0),
	 (670,6,'dashboard',0);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (671,7,'dashboard',0),
	 (672,8,'dashboard',0),
	 (673,1,'appliance',0),
	 (674,2,'appliance',1),
	 (675,3,'appliance',31),
	 (676,4,'appliance',31),
	 (677,5,'appliance',0),
	 (678,6,'appliance',31),
	 (679,7,'appliance',31),
	 (680,8,'appliance',1);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (681,1,'inventory',0),
	 (682,2,'inventory',0),
	 (683,3,'inventory',3073),
	 (684,4,'inventory',3073),
	 (685,5,'inventory',0),
	 (686,6,'inventory',0),
	 (687,7,'inventory',0),
	 (688,8,'inventory',0),
	 (689,1,'pendingreason',0),
	 (690,2,'pendingreason',0);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (691,3,'pendingreason',31),
	 (692,4,'pendingreason',31),
	 (693,5,'pendingreason',1),
	 (694,6,'pendingreason',1),
	 (695,7,'pendingreason',1),
	 (696,8,'pendingreason',1),
	 (697,1,'database',0),
	 (698,2,'database',1),
	 (699,3,'database',31),
	 (700,4,'database',31);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (701,5,'database',0),
	 (702,6,'database',31),
	 (703,7,'database',31),
	 (704,8,'database',1),
	 (705,1,'recurrentchange',0),
	 (706,2,'recurrentchange',0),
	 (707,3,'recurrentchange',1),
	 (708,4,'recurrentchange',31),
	 (709,5,'recurrentchange',0),
	 (710,6,'recurrentchange',1);
INSERT INTO glpi_dev.glpi_profilerights_bu (id,profiles_id,name,rights) VALUES
	 (711,7,'recurrentchange',1),
	 (712,8,'recurrentchange',1);
INSERT INTO glpi_dev.glpi_profiles (id,name,interface,is_default,helpdesk_hardware,helpdesk_item_type,ticket_status,date_mod,comment,problem_status,create_ticket_on_login,tickettemplates_id,changetemplates_id,problemtemplates_id,change_status,managed_domainrecordtypes,date_creation) VALUES
	 (1,'Self-Service','helpdesk',1,1,'["Computer","Monitor","NetworkEquipment","Peripheral","Phone","Printer","Software", "DCRoom", "Rack", "Enclosure", "Database"]','{"1":{"2":0,"3":0,"4":0,"5":0,"6":0},"2":{"1":0,"3":0,"4":0,"5":0,"6":0},"3":{"1":0,"2":0,"4":0,"5":0,"6":0},"4":{"1":0,"2":0,"3":0,"5":0,"6":0},"5":{"1":0,"2":0,"3":0,"4":0},"6":{"1":0,"2":0,"3":0,"4":0,"5":0}}',NULL,'','[]',0,0,0,0,NULL,'[]',NULL),
	 (2,'Observer','central',0,1,'["Computer","Monitor","NetworkEquipment","Peripheral","Phone","Printer","Software", "DCRoom", "Rack", "Enclosure", "Database"]','[]',NULL,'','[]',0,0,0,0,NULL,'[]',NULL),
	 (3,'Admin','central',0,3,'["Computer","Monitor","NetworkEquipment","Peripheral","Phone","Printer","Software", "DCRoom", "Rack", "Enclosure", "Database"]','[]',NULL,'','[]',0,0,0,0,NULL,'[-1]',NULL),
	 (4,'Super-Admin','central',0,3,'["Computer","Monitor","NetworkEquipment","Peripheral","Phone","Printer","Software", "DCRoom", "Rack", "Enclosure", "Database"]','[]',NULL,'','[]',0,0,0,0,NULL,'[-1]',NULL),
	 (5,'Hotliner','central',0,3,'["Computer","Monitor","NetworkEquipment","Peripheral","Phone","Printer","Software", "DCRoom", "Rack", "Enclosure", "Database"]','[]',NULL,'','[]',1,0,0,0,NULL,'[]',NULL),
	 (6,'Technician','central',0,3,'["Computer","Monitor","NetworkEquipment","Peripheral","Phone","Printer","Software","DCRoom","Rack","Enclosure","Database"]','[]','2022-12-01 07:30:32','','[]',0,0,0,0,NULL,'[]',NULL),
	 (7,'Supervisor','central',0,3,'["Computer","Monitor","NetworkEquipment","Peripheral","Phone","Printer","Software", "DCRoom", "Rack", "Enclosure", "Database"]','[]',NULL,'','[]',0,0,0,0,NULL,'[]',NULL),
	 (8,'Read-Only','central',0,0,'[]','{"1":{"2":0,"3":0,"4":0,"5":0,"6":0},"2":{"1":0,"3":0,"4":0,"5":0,"6":0},"3":{"1":0,"2":0,"4":0,"5":0,"6":0},"4":{"1":0,"2":0,"3":0,"5":0,"6":0},"5":{"1":0,"2":0,"3":0,"4":0,"6":0},"6":{"1":0,"2":0,"3":0,"4":0,"5":0}}',NULL,'This profile defines read-only access. It is used when objects are locked. It can also be used to give to users rights to unlock objects.','{"1":{"7":0,"2":0,"3":0,"4":0,"5":0,"8":0,"6":0},"7":{"1":0,"2":0,"3":0,"4":0,"5":0,"8":0,"6":0},"2":{"1":0,"7":0,"3":0,"4":0,"5":0,"8":0,"6":0},"3":{"1":0,"7":0,"2":0,"4":0,"5":0,"8":0,"6":0},"4":{"1":0,"7":0,"2":0,"3":0,"5":0,"8":0,"6":0},"5":{"1":0,"7":0,"2":0,"3":0,"4":0,"8":0,"6":0},"8":{"1":0,"7":0,"2":0,"3":0,"4":0,"5":0,"6":0},"6":{"1":0,"7":0,"2":0,"3":0,"4":0,"5":0,"8":0}}',0,0,0,0,'{"1":{"9":0,"10":0,"7":0,"4":0,"11":0,"12":0,"5":0,"8":0,"6":0},"9":{"1":0,"10":0,"7":0,"4":0,"11":0,"12":0,"5":0,"8":0,"6":0},"10":{"1":0,"9":0,"7":0,"4":0,"11":0,"12":0,"5":0,"8":0,"6":0},"7":{"1":0,"9":0,"10":0,"4":0,"11":0,"12":0,"5":0,"8":0,"6":0},"4":{"1":0,"9":0,"10":0,"7":0,"11":0,"12":0,"5":0,"8":0,"6":0},"11":{"1":0,"9":0,"10":0,"7":0,"4":0,"12":0,"5":0,"8":0,"6":0},"12":{"1":0,"9":0,"10":0,"7":0,"4":0,"11":0,"5":0,"8":0,"6":0},"5":{"1":0,"9":0,"10":0,"7":0,"4":0,"11":0,"12":0,"8":0,"6":0},"8":{"1":0,"9":0,"10":0,"7":0,"4":0,"11":0,"12":0,"5":0,"6":0},"6":{"1":0,"9":0,"10":0,"7":0,"4":0,"11":0,"12":0,"5":0,"8":0}}','[]',NULL),
	 (9,'kb-manager','central',0,0,NULL,'{"1":{"2":0,"3":0,"4":0,"5":0,"6":0},"2":{"1":0,"3":0,"4":0,"5":0,"6":0},"3":{"1":0,"2":0,"4":0,"5":0,"6":0},"4":{"1":0,"2":0,"3":0,"5":0,"6":0},"5":{"1":0,"2":0,"3":0,"4":0,"6":0},"6":{"1":0,"2":0,"3":0,"4":0,"5":0}}','2022-11-23 03:57:50','','{"1":{"7":0,"2":0,"3":0,"4":0,"5":0,"8":0,"6":0},"7":{"1":0,"2":0,"3":0,"4":0,"5":0,"8":0,"6":0},"2":{"1":0,"7":0,"3":0,"4":0,"5":0,"8":0,"6":0},"3":{"1":0,"7":0,"2":0,"4":0,"5":0,"8":0,"6":0},"4":{"1":0,"7":0,"2":0,"3":0,"5":0,"8":0,"6":0},"5":{"1":0,"7":0,"2":0,"3":0,"4":0,"8":0,"6":0},"8":{"1":0,"7":0,"2":0,"3":0,"4":0,"5":0,"6":0},"6":{"1":0,"7":0,"2":0,"3":0,"4":0,"5":0,"8":0}}',0,0,0,0,'{"1":{"9":0,"10":0,"7":0,"4":0,"11":0,"12":0,"5":0,"8":0,"6":0,"14":0},"9":{"1":0,"10":0,"7":0,"4":0,"11":0,"12":0,"5":0,"8":0,"6":0,"14":0},"10":{"1":0,"9":0,"7":0,"4":0,"11":0,"12":0,"5":0,"8":0,"6":0,"14":0},"7":{"1":0,"9":0,"10":0,"4":0,"11":0,"12":0,"5":0,"8":0,"6":0,"14":0},"4":{"1":0,"9":0,"10":0,"7":0,"11":0,"12":0,"5":0,"8":0,"6":0,"14":0},"11":{"1":0,"9":0,"10":0,"7":0,"4":0,"12":0,"5":0,"8":0,"6":0,"14":0},"12":{"1":0,"9":0,"10":0,"7":0,"4":0,"11":0,"5":0,"8":0,"6":0,"14":0},"5":{"1":0,"9":0,"10":0,"7":0,"4":0,"11":0,"12":0,"8":0,"6":0,"14":0},"8":{"1":0,"9":0,"10":0,"7":0,"4":0,"11":0,"12":0,"5":0,"6":0,"14":0},"6":{"1":0,"9":0,"10":0,"7":0,"4":0,"11":0,"12":0,"5":0,"8":0,"14":0},"14":{"1":0,"9":0,"10":0,"7":0,"4":0,"11":0,"12":0,"5":0,"8":0,"6":0},"13":{"1":0,"9":0,"10":0,"7":0,"4":0,"11":0,"12":0,"5":0,"8":0,"6":0,"14":0}}',NULL,'2022-11-23 03:55:11');
INSERT INTO glpi_dev.glpi_profiles_bu (id,name,interface,is_default,helpdesk_hardware,helpdesk_item_type,ticket_status,date_mod,comment,problem_status,create_ticket_on_login,tickettemplates_id,changetemplates_id,problemtemplates_id,change_status,managed_domainrecordtypes,date_creation) VALUES
	 (1,'Self-Service','helpdesk',1,1,'["Computer","Monitor","NetworkEquipment","Peripheral","Phone","Printer","Software", "DCRoom", "Rack", "Enclosure", "Database"]','{"1":{"2":0,"3":0,"4":0,"5":0,"6":0},"2":{"1":0,"3":0,"4":0,"5":0,"6":0},"3":{"1":0,"2":0,"4":0,"5":0,"6":0},"4":{"1":0,"2":0,"3":0,"5":0,"6":0},"5":{"1":0,"2":0,"3":0,"4":0},"6":{"1":0,"2":0,"3":0,"4":0,"5":0}}',NULL,'','[]',0,0,0,0,NULL,'[]',NULL),
	 (2,'Observer','central',0,1,'["Computer","Monitor","NetworkEquipment","Peripheral","Phone","Printer","Software", "DCRoom", "Rack", "Enclosure", "Database"]','[]',NULL,'','[]',0,0,0,0,NULL,'[]',NULL),
	 (3,'Admin','central',0,3,'["Computer","Monitor","NetworkEquipment","Peripheral","Phone","Printer","Software", "DCRoom", "Rack", "Enclosure", "Database"]','[]',NULL,'','[]',0,0,0,0,NULL,'[-1]',NULL),
	 (4,'Super-Admin','central',0,3,'["Computer","Monitor","NetworkEquipment","Peripheral","Phone","Printer","Software", "DCRoom", "Rack", "Enclosure", "Database"]','[]',NULL,'','[]',0,0,0,0,NULL,'[-1]',NULL),
	 (5,'Hotliner','central',0,3,'["Computer","Monitor","NetworkEquipment","Peripheral","Phone","Printer","Software", "DCRoom", "Rack", "Enclosure", "Database"]','[]',NULL,'','[]',1,0,0,0,NULL,'[]',NULL),
	 (6,'Technician','central',0,3,'["Computer","Monitor","NetworkEquipment","Peripheral","Phone","Printer","Software", "DCRoom", "Rack", "Enclosure", "Database"]','[]',NULL,'','[]',0,0,0,0,NULL,'[]',NULL),
	 (7,'Supervisor','central',0,3,'["Computer","Monitor","NetworkEquipment","Peripheral","Phone","Printer","Software", "DCRoom", "Rack", "Enclosure", "Database"]','[]',NULL,'','[]',0,0,0,0,NULL,'[]',NULL),
	 (8,'Read-Only','central',0,0,'[]','{"1":{"2":0,"3":0,"4":0,"5":0,"6":0},"2":{"1":0,"3":0,"4":0,"5":0,"6":0},"3":{"1":0,"2":0,"4":0,"5":0,"6":0},"4":{"1":0,"2":0,"3":0,"5":0,"6":0},"5":{"1":0,"2":0,"3":0,"4":0,"6":0},"6":{"1":0,"2":0,"3":0,"4":0,"5":0}}',NULL,'This profile defines read-only access. It is used when objects are locked. It can also be used to give to users rights to unlock objects.','{"1":{"7":0,"2":0,"3":0,"4":0,"5":0,"8":0,"6":0},"7":{"1":0,"2":0,"3":0,"4":0,"5":0,"8":0,"6":0},"2":{"1":0,"7":0,"3":0,"4":0,"5":0,"8":0,"6":0},"3":{"1":0,"7":0,"2":0,"4":0,"5":0,"8":0,"6":0},"4":{"1":0,"7":0,"2":0,"3":0,"5":0,"8":0,"6":0},"5":{"1":0,"7":0,"2":0,"3":0,"4":0,"8":0,"6":0},"8":{"1":0,"7":0,"2":0,"3":0,"4":0,"5":0,"6":0},"6":{"1":0,"7":0,"2":0,"3":0,"4":0,"5":0,"8":0}}',0,0,0,0,'{"1":{"9":0,"10":0,"7":0,"4":0,"11":0,"12":0,"5":0,"8":0,"6":0},"9":{"1":0,"10":0,"7":0,"4":0,"11":0,"12":0,"5":0,"8":0,"6":0},"10":{"1":0,"9":0,"7":0,"4":0,"11":0,"12":0,"5":0,"8":0,"6":0},"7":{"1":0,"9":0,"10":0,"4":0,"11":0,"12":0,"5":0,"8":0,"6":0},"4":{"1":0,"9":0,"10":0,"7":0,"11":0,"12":0,"5":0,"8":0,"6":0},"11":{"1":0,"9":0,"10":0,"7":0,"4":0,"12":0,"5":0,"8":0,"6":0},"12":{"1":0,"9":0,"10":0,"7":0,"4":0,"11":0,"5":0,"8":0,"6":0},"5":{"1":0,"9":0,"10":0,"7":0,"4":0,"11":0,"12":0,"8":0,"6":0},"8":{"1":0,"9":0,"10":0,"7":0,"4":0,"11":0,"12":0,"5":0,"6":0},"6":{"1":0,"9":0,"10":0,"7":0,"4":0,"11":0,"12":0,"5":0,"8":0}}','[]',NULL);
INSERT INTO glpi_dev.glpi_profiles_users (id,users_id,profiles_id,entities_id,is_recursive,is_dynamic,is_default_profile) VALUES
	 (2,2,4,0,1,0,0),
	 (3,3,1,0,1,0,0),
	 (4,4,6,0,1,0,0),
	 (5,5,2,0,1,0,0),
	 (6,7,9,0,0,0,0),
	 (7,17,9,0,0,0,0),
	 (8,18,3,0,0,0,0),
	 (9,12,6,0,0,0,0),
	 (10,15,6,0,0,0,0),
	 (11,16,6,0,0,0,0);
INSERT INTO glpi_dev.glpi_profiles_users (id,users_id,profiles_id,entities_id,is_recursive,is_dynamic,is_default_profile) VALUES
	 (12,13,6,0,0,0,0),
	 (13,10,6,0,0,0,0),
	 (14,14,6,0,0,0,0),
	 (15,11,6,0,0,0,0);
INSERT INTO glpi_dev.glpi_projectstates (id,name,comment,color,is_finished,date_mod,date_creation) VALUES
	 (1,'New',NULL,'#06ff00',0,NULL,NULL),
	 (2,'Processing',NULL,'#ffb800',0,NULL,NULL),
	 (3,'Closed',NULL,'#ff0000',1,NULL,NULL);
INSERT INTO glpi_dev.glpi_requesttypes (id,name,is_helpdesk_default,is_followup_default,is_mail_default,is_mailfollowup_default,is_active,is_ticketheader,is_itilfollowup,comment,date_mod,date_creation) VALUES
	 (1,'Helpdesk',1,1,0,0,1,1,1,NULL,NULL,NULL),
	 (2,'E-Mail',0,0,1,1,1,1,1,NULL,NULL,NULL),
	 (3,'Phone',0,0,0,0,1,1,1,NULL,NULL,NULL),
	 (4,'Direct',0,0,0,0,1,1,1,NULL,NULL,NULL),
	 (5,'Written',0,0,0,0,1,1,1,NULL,NULL,NULL),
	 (6,'Other',0,0,0,0,1,1,1,NULL,NULL,NULL);
INSERT INTO glpi_dev.glpi_ruleactions (id,rules_id,action_type,field,value) VALUES
	 (2,2,'assign','entities_id','0'),
	 (3,3,'assign','entities_id','0'),
	 (4,4,'assign','_refuse_email_no_response','1'),
	 (5,5,'assign','_refuse_email_no_response','1'),
	 (6,6,'fromitem','locations_id','1'),
	 (7,7,'fromuser','locations_id','1'),
	 (8,8,'assign','_import_category','1'),
	 (9,9,'regex_result','_affect_user_by_regex','#0'),
	 (10,10,'regex_result','_affect_user_by_regex','#0'),
	 (11,11,'regex_result','_affect_user_by_regex','#0');
INSERT INTO glpi_dev.glpi_ruleactions (id,rules_id,action_type,field,value) VALUES
	 (12,12,'assign','_inventory','2'),
	 (13,13,'assign','_inventory','0'),
	 (14,14,'assign','_inventory','0'),
	 (15,15,'assign','_inventory','0'),
	 (16,16,'assign','_inventory','0'),
	 (17,17,'assign','_inventory','0'),
	 (18,18,'assign','_inventory','0'),
	 (19,19,'assign','_inventory','0'),
	 (20,20,'assign','_inventory','0'),
	 (21,21,'assign','_inventory','2');
INSERT INTO glpi_dev.glpi_ruleactions (id,rules_id,action_type,field,value) VALUES
	 (22,22,'assign','_inventory','0'),
	 (23,23,'assign','_inventory','0'),
	 (24,24,'assign','_inventory','0'),
	 (25,25,'assign','_inventory','0'),
	 (26,26,'assign','_inventory','0'),
	 (27,27,'assign','_inventory','0'),
	 (28,28,'assign','_inventory','0'),
	 (29,29,'assign','_inventory','0'),
	 (30,30,'assign','_inventory','0'),
	 (31,31,'assign','_inventory','0');
INSERT INTO glpi_dev.glpi_ruleactions (id,rules_id,action_type,field,value) VALUES
	 (32,32,'assign','_inventory','0'),
	 (33,33,'assign','_inventory','2'),
	 (34,34,'assign','_inventory','2'),
	 (35,35,'assign','_inventory','0'),
	 (36,36,'assign','_inventory','0'),
	 (37,37,'assign','_inventory','0'),
	 (38,38,'assign','_inventory','0'),
	 (39,39,'assign','_inventory','2'),
	 (40,40,'assign','_inventory','2'),
	 (41,41,'assign','_inventory','0');
INSERT INTO glpi_dev.glpi_ruleactions (id,rules_id,action_type,field,value) VALUES
	 (42,42,'assign','_inventory','0'),
	 (43,43,'assign','_inventory','0'),
	 (44,44,'assign','_inventory','0'),
	 (45,45,'assign','_inventory','2'),
	 (46,46,'assign','_inventory','0'),
	 (47,47,'assign','_inventory','0'),
	 (48,48,'assign','_inventory','2'),
	 (49,49,'assign','_inventory','0'),
	 (50,50,'assign','_inventory','0'),
	 (51,51,'assign','_inventory','2');
INSERT INTO glpi_dev.glpi_ruleactions (id,rules_id,action_type,field,value) VALUES
	 (52,52,'assign','_inventory','2'),
	 (53,53,'assign','_inventory','0'),
	 (54,54,'assign','_inventory','0'),
	 (55,55,'assign','_inventory','2'),
	 (56,56,'assign','_inventory','0'),
	 (57,57,'assign','_inventory','0'),
	 (58,58,'assign','_inventory','2'),
	 (59,59,'assign','_inventory','0'),
	 (60,60,'assign','_inventory','0'),
	 (61,61,'assign','_inventory','2');
INSERT INTO glpi_dev.glpi_ruleactions (id,rules_id,action_type,field,value) VALUES
	 (62,62,'assign','_inventory','2'),
	 (63,63,'assign','_inventory','0'),
	 (64,64,'assign','_inventory','0'),
	 (65,65,'assign','_inventory','0'),
	 (66,66,'assign','_inventory','0'),
	 (67,67,'assign','_inventory','2'),
	 (68,68,'assign','_inventory','0'),
	 (69,69,'assign','_inventory','0'),
	 (70,70,'assign','_inventory','2'),
	 (77,74,'assign','slas_id_tto','6');
INSERT INTO glpi_dev.glpi_ruleactions (id,rules_id,action_type,field,value) VALUES
	 (78,74,'assign','slas_id_ttr','16'),
	 (79,75,'assign','slas_id_ttr','11'),
	 (80,75,'assign','slas_id_tto','6'),
	 (81,76,'assign','slas_id_tto','6'),
	 (82,76,'assign','slas_id_ttr','7'),
	 (83,77,'assign','slas_id_tto','6'),
	 (84,77,'assign','slas_id_ttr','15'),
	 (85,78,'assign','slas_id_tto','6'),
	 (86,78,'assign','slas_id_ttr','13'),
	 (87,80,'assign','slas_id_tto','6');
INSERT INTO glpi_dev.glpi_ruleactions (id,rules_id,action_type,field,value) VALUES
	 (88,80,'assign','slas_id_ttr','14'),
	 (89,79,'assign','slas_id_tto','6'),
	 (90,79,'assign','slas_id_ttr','17'),
	 (91,81,'assign','slas_id_tto','6'),
	 (92,81,'assign','slas_id_ttr','12'),
	 (101,86,'assign','slas_id_ttr','7'),
	 (102,86,'assign','slas_id_tto','6'),
	 (103,87,'assign','slas_id_ttr','8'),
	 (104,87,'assign','slas_id_tto','6'),
	 (105,88,'assign','slas_id_ttr','9');
INSERT INTO glpi_dev.glpi_ruleactions (id,rules_id,action_type,field,value) VALUES
	 (106,88,'assign','slas_id_tto','6'),
	 (107,89,'assign','slas_id_ttr','10'),
	 (108,89,'assign','slas_id_tto','6');
INSERT INTO glpi_dev.glpi_rulecriterias (id,rules_id,criteria,`condition`,pattern) VALUES
	 (2,2,'TYPE',0,'3'),
	 (3,2,'TYPE',0,'2'),
	 (5,3,'subject',6,'/.*/'),
	 (6,4,'x-auto-response-suppress',6,'/\\S+/'),
	 (7,5,'auto-submitted',6,'/^(?!.*no).+$/i'),
	 (9,6,'locations_id',9,'1'),
	 (10,6,'items_locations',8,'1'),
	 (11,7,'locations_id',9,'1'),
	 (12,7,'_locations_id_of_requester',8,'1'),
	 (13,8,'name',0,'*');
INSERT INTO glpi_dev.glpi_rulecriterias (id,rules_id,criteria,`condition`,pattern) VALUES
	 (14,9,'_itemtype',0,'Computer'),
	 (15,9,'_auto',0,'1'),
	 (16,9,'contact',6,'/(.*)@/'),
	 (17,10,'_itemtype',0,'Computer'),
	 (18,10,'_auto',0,'1'),
	 (19,10,'contact',6,'/(.*)[,|\\/]/'),
	 (20,11,'_itemtype',0,'Computer'),
	 (21,11,'_auto',0,'1'),
	 (22,11,'contact',6,'/(.*)/'),
	 (23,12,'partial',0,'1');
INSERT INTO glpi_dev.glpi_rulecriterias (id,rules_id,criteria,`condition`,pattern) VALUES
	 (24,12,'itemtype',9,'1'),
	 (25,13,'itemtype',9,'1'),
	 (26,13,'mac',10,'1'),
	 (27,13,'mac',8,'1'),
	 (28,13,'ifnumber',10,'1'),
	 (29,13,'ifnumber',8,'1'),
	 (30,13,'link_criteria_port',203,'1'),
	 (31,14,'itemtype',9,'1'),
	 (32,14,'mac',10,'1'),
	 (33,14,'mac',8,'1');
INSERT INTO glpi_dev.glpi_rulecriterias (id,rules_id,criteria,`condition`,pattern) VALUES
	 (34,14,'ifnumber',10,'1'),
	 (35,14,'ifnumber',8,'1'),
	 (36,15,'itemtype',9,'1'),
	 (37,15,'mac',8,'1'),
	 (38,15,'ifnumber',8,'1'),
	 (39,16,'itemtype',9,'1'),
	 (40,16,'ip',10,'1'),
	 (41,16,'ip',8,'1'),
	 (42,16,'ifdescr',10,'1'),
	 (43,16,'ifdescr',8,'1');
INSERT INTO glpi_dev.glpi_rulecriterias (id,rules_id,criteria,`condition`,pattern) VALUES
	 (44,16,'link_criteria_port',203,'1'),
	 (45,17,'itemtype',9,'1'),
	 (46,17,'ip',10,'1'),
	 (47,17,'ip',8,'1'),
	 (48,17,'ifdescr',10,'1'),
	 (49,17,'ifdescr',8,'1'),
	 (50,18,'itemtype',9,'1'),
	 (51,18,'ip',8,'1'),
	 (52,18,'ifdescr',8,'1'),
	 (53,19,'itemtype',9,'1');
INSERT INTO glpi_dev.glpi_rulecriterias (id,rules_id,criteria,`condition`,pattern) VALUES
	 (54,19,'mac',10,'1'),
	 (55,19,'mac',8,'1'),
	 (56,19,'only_these_criteria',204,'1'),
	 (57,20,'itemtype',9,'1'),
	 (58,20,'mac',8,'1'),
	 (59,20,'only_these_criteria',204,'1'),
	 (60,21,'itemtype',0,'Computer'),
	 (61,21,'name',9,'1'),
	 (62,22,'itemtype',0,'Computer'),
	 (63,22,'serial',10,'1');
INSERT INTO glpi_dev.glpi_rulecriterias (id,rules_id,criteria,`condition`,pattern) VALUES
	 (64,22,'serial',8,'1'),
	 (65,22,'uuid',10,'1'),
	 (66,22,'uuid',8,'1'),
	 (67,23,'itemtype',0,'Computer'),
	 (68,23,'serial',10,'1'),
	 (69,23,'serial',8,'1'),
	 (70,23,'uuid',30,'1'),
	 (71,24,'itemtype',0,'Computer'),
	 (72,24,'uuid',8,'1'),
	 (73,24,'serial',8,'1');
INSERT INTO glpi_dev.glpi_rulecriterias (id,rules_id,criteria,`condition`,pattern) VALUES
	 (74,25,'itemtype',0,'Computer'),
	 (75,25,'serial',10,'1'),
	 (76,25,'serial',8,'1'),
	 (77,26,'itemtype',0,'Computer'),
	 (78,26,'uuid',10,'1'),
	 (79,26,'uuid',8,'1'),
	 (80,27,'itemtype',0,'Computer'),
	 (81,27,'mac',10,'1'),
	 (82,27,'mac',8,'1'),
	 (83,28,'itemtype',0,'Computer');
INSERT INTO glpi_dev.glpi_rulecriterias (id,rules_id,criteria,`condition`,pattern) VALUES
	 (84,28,'name',10,'1'),
	 (85,28,'name',8,'1'),
	 (86,29,'itemtype',0,'Computer'),
	 (87,29,'serial',8,'1'),
	 (88,30,'itemtype',0,'Computer'),
	 (89,30,'uuid',8,'1'),
	 (90,31,'itemtype',0,'Computer'),
	 (91,31,'mac',8,'1'),
	 (92,32,'itemtype',0,'Computer'),
	 (93,32,'name',8,'1');
INSERT INTO glpi_dev.glpi_rulecriterias (id,rules_id,criteria,`condition`,pattern) VALUES
	 (94,33,'itemtype',0,'Computer'),
	 (95,34,'itemtype',0,'Printer'),
	 (96,34,'name',9,'1'),
	 (97,35,'itemtype',0,'Printer'),
	 (98,35,'serial',8,'1'),
	 (99,35,'serial',10,'1'),
	 (100,36,'itemtype',0,'Printer'),
	 (101,36,'mac',8,'1'),
	 (102,36,'mac',10,'1'),
	 (103,37,'itemtype',0,'Printer');
INSERT INTO glpi_dev.glpi_rulecriterias (id,rules_id,criteria,`condition`,pattern) VALUES
	 (104,37,'serial',8,'1'),
	 (105,38,'itemtype',0,'Printer'),
	 (106,38,'mac',8,'1'),
	 (107,39,'itemtype',0,'Printer'),
	 (108,40,'itemtype',0,'NetworkEquipment'),
	 (109,40,'name',9,'1'),
	 (110,41,'itemtype',0,'NetworkEquipment'),
	 (111,41,'serial',8,'1'),
	 (112,41,'serial',10,'1'),
	 (113,42,'itemtype',0,'NetworkEquipment');
INSERT INTO glpi_dev.glpi_rulecriterias (id,rules_id,criteria,`condition`,pattern) VALUES
	 (114,42,'mac',8,'1'),
	 (115,42,'mac',10,'1'),
	 (116,43,'itemtype',0,'NetworkEquipment'),
	 (117,43,'serial',8,'1'),
	 (118,44,'itemtype',0,'NetworkEquipment'),
	 (119,44,'mac',8,'1'),
	 (120,45,'itemtype',0,'NetworkEquipment'),
	 (121,46,'itemtype',0,'Peripheral'),
	 (122,46,'serial',8,'1'),
	 (123,46,'serial',10,'1');
INSERT INTO glpi_dev.glpi_rulecriterias (id,rules_id,criteria,`condition`,pattern) VALUES
	 (124,47,'itemtype',0,'Peripheral'),
	 (125,47,'serial',8,'1'),
	 (126,48,'itemtype',0,'Peripheral'),
	 (127,49,'itemtype',0,'Monitor'),
	 (128,49,'serial',8,'1'),
	 (129,49,'serial',10,'1'),
	 (130,50,'itemtype',0,'Monitor'),
	 (131,50,'serial',8,'1'),
	 (132,51,'itemtype',0,'Monitor'),
	 (133,52,'itemtype',0,'Phone');
INSERT INTO glpi_dev.glpi_rulecriterias (id,rules_id,criteria,`condition`,pattern) VALUES
	 (134,52,'name',9,'1'),
	 (135,53,'itemtype',0,'Phone'),
	 (136,53,'mac',10,'1'),
	 (137,53,'mac',8,'1'),
	 (138,54,'itemtype',0,'Phone'),
	 (139,54,'mac',8,'1'),
	 (140,55,'itemtype',0,'Phone'),
	 (141,56,'itemtype',0,'Cluster'),
	 (142,56,'uuid',8,'1'),
	 (143,56,'uuid',10,'1');
INSERT INTO glpi_dev.glpi_rulecriterias (id,rules_id,criteria,`condition`,pattern) VALUES
	 (144,57,'itemtype',0,'Cluster'),
	 (145,57,'uuid',8,'1'),
	 (146,58,'itemtype',0,'Cluster'),
	 (147,59,'itemtype',0,'Enclosure'),
	 (148,59,'serial',8,'1'),
	 (149,59,'serial',10,'1'),
	 (150,60,'itemtype',0,'Enclosure'),
	 (151,60,'serial',8,'1'),
	 (152,61,'itemtype',0,'Enclosure'),
	 (153,62,'name',9,'1');
INSERT INTO glpi_dev.glpi_rulecriterias (id,rules_id,criteria,`condition`,pattern) VALUES
	 (154,63,'serial',8,'1'),
	 (155,63,'serial',10,'1'),
	 (156,64,'mac',8,'1'),
	 (157,64,'mac',10,'1'),
	 (158,65,'serial',8,'1'),
	 (159,66,'mac',8,'1'),
	 (160,67,'itemtype',0,''),
	 (161,68,'itemtype',0,'DatabaseInstance'),
	 (162,68,'name',8,'1'),
	 (163,68,'name',10,'1');
INSERT INTO glpi_dev.glpi_rulecriterias (id,rules_id,criteria,`condition`,pattern) VALUES
	 (164,68,'linked_item',10,'1'),
	 (165,69,'itemtype',0,'DatabaseInstance'),
	 (166,69,'name',8,'1'),
	 (167,70,'itemtype',0,'DatabaseInstance'),
	 (175,74,'itilcategories_id',0,'24'),
	 (176,74,'itilcategories_id',0,'25'),
	 (177,74,'itilcategories_id',0,'29'),
	 (178,74,'itilcategories_id',0,'31'),
	 (179,74,'itilcategories_id',0,'32'),
	 (180,74,'itilcategories_id',0,'41');
INSERT INTO glpi_dev.glpi_rulecriterias (id,rules_id,criteria,`condition`,pattern) VALUES
	 (181,74,'itilcategories_id',0,'44'),
	 (182,74,'itilcategories_id',0,'47'),
	 (183,74,'itilcategories_id',0,'50'),
	 (184,74,'itilcategories_id',0,'53'),
	 (185,74,'itilcategories_id',0,'56'),
	 (186,74,'itilcategories_id',0,'59'),
	 (187,74,'itilcategories_id',0,'62'),
	 (188,74,'itilcategories_id',0,'62'),
	 (189,74,'itilcategories_id',0,'68'),
	 (190,74,'itilcategories_id',0,'71');
INSERT INTO glpi_dev.glpi_rulecriterias (id,rules_id,criteria,`condition`,pattern) VALUES
	 (191,74,'itilcategories_id',0,'74'),
	 (192,74,'itilcategories_id',0,'77'),
	 (193,74,'itilcategories_id',0,'80'),
	 (194,74,'itilcategories_id',0,'162'),
	 (195,74,'itilcategories_id',0,'163'),
	 (196,74,'itilcategories_id',0,'164'),
	 (197,74,'itilcategories_id',0,'165'),
	 (198,74,'itilcategories_id',0,'166'),
	 (199,74,'itilcategories_id',0,'167'),
	 (200,74,'itilcategories_id_cn',0,'168');
INSERT INTO glpi_dev.glpi_rulecriterias (id,rules_id,criteria,`condition`,pattern) VALUES
	 (201,74,'itilcategories_id',0,'169'),
	 (202,74,'itilcategories_id',0,'170'),
	 (203,74,'itilcategories_id',0,'171'),
	 (204,74,'itilcategories_id',0,'172'),
	 (205,74,'itilcategories_id',0,'172'),
	 (206,74,'itilcategories_id',0,'173'),
	 (207,74,'itilcategories_id',0,'174'),
	 (208,74,'itilcategories_id',0,'175'),
	 (209,74,'itilcategories_id',0,'176'),
	 (210,74,'itilcategories_id',0,'177');
INSERT INTO glpi_dev.glpi_rulecriterias (id,rules_id,criteria,`condition`,pattern) VALUES
	 (211,74,'itilcategories_id',0,'178'),
	 (212,74,'itilcategories_id',0,'179'),
	 (213,74,'itilcategories_id',0,'180'),
	 (214,74,'itilcategories_id',0,'181'),
	 (216,75,'itilcategories_id',0,'34'),
	 (217,75,'itilcategories_id',0,'37'),
	 (218,75,'itilcategories_id',0,'38'),
	 (219,75,'itilcategories_id',0,'119'),
	 (220,75,'itilcategories_id',0,'120'),
	 (221,75,'itilcategories_id',0,'121');
INSERT INTO glpi_dev.glpi_rulecriterias (id,rules_id,criteria,`condition`,pattern) VALUES
	 (222,75,'itilcategories_id',0,'122'),
	 (223,75,'itilcategories_id',0,'123'),
	 (224,75,'itilcategories_id',0,'124'),
	 (225,75,'itilcategories_id',0,'125'),
	 (226,75,'itilcategories_id',0,'126'),
	 (227,75,'itilcategories_id',0,'127'),
	 (228,75,'itilcategories_id',0,'34'),
	 (229,75,'itilcategories_id',0,'183'),
	 (230,75,'itilcategories_id',0,'184'),
	 (231,75,'itilcategories_id',0,'185');
INSERT INTO glpi_dev.glpi_rulecriterias (id,rules_id,criteria,`condition`,pattern) VALUES
	 (232,75,'itilcategories_id',0,'186'),
	 (233,75,'itilcategories_id',0,'187'),
	 (234,75,'itilcategories_id',0,'188'),
	 (235,75,'itilcategories_id',0,'129'),
	 (236,75,'itilcategories_id',0,'130'),
	 (237,75,'itilcategories_id',0,'131'),
	 (238,75,'itilcategories_id',0,'132'),
	 (240,76,'itilcategories_id',0,'138'),
	 (241,76,'itilcategories_id',0,'159'),
	 (242,76,'itilcategories_id',0,'133');
INSERT INTO glpi_dev.glpi_rulecriterias (id,rules_id,criteria,`condition`,pattern) VALUES
	 (244,77,'itilcategories_id',0,'118'),
	 (245,77,'itilcategories_id',0,'191'),
	 (246,77,'itilcategories_id',0,'128'),
	 (248,78,'itilcategories_id',0,'36'),
	 (249,78,'itilcategories_id',0,'116'),
	 (250,78,'itilcategories_id',0,'117'),
	 (251,78,'itilcategories_id',0,'134'),
	 (252,80,'itilcategories_id',0,'151'),
	 (253,80,'itilcategories_id',0,'153'),
	 (254,80,'itilcategories_id',0,'154');
INSERT INTO glpi_dev.glpi_rulecriterias (id,rules_id,criteria,`condition`,pattern) VALUES
	 (255,80,'itilcategories_id',0,'155'),
	 (256,80,'itilcategories_id',0,'156'),
	 (257,80,'itilcategories_id',0,'157'),
	 (258,81,'itilcategories_id',0,'139'),
	 (259,81,'itilcategories_id',0,'141'),
	 (260,81,'itilcategories_id',0,'142'),
	 (261,81,'itilcategories_id',0,'143'),
	 (262,81,'itilcategories_id',0,'144'),
	 (263,81,'itilcategories_id',0,'145'),
	 (264,81,'itilcategories_id',0,'147');
INSERT INTO glpi_dev.glpi_rulecriterias (id,rules_id,criteria,`condition`,pattern) VALUES
	 (265,81,'itilcategories_id',0,'148'),
	 (266,81,'itilcategories_id',0,'149'),
	 (267,81,'itilcategories_id',0,'189'),
	 (268,81,'itilcategories_id',0,'190'),
	 (269,81,'itilcategories_id',0,'150'),
	 (270,79,'itilcategories_id',0,'158'),
	 (271,79,'itilcategories_id',0,'160'),
	 (652,86,'type',0,'1'),
	 (653,86,'priority',0,'5'),
	 (654,87,'type',0,'1');
INSERT INTO glpi_dev.glpi_rulecriterias (id,rules_id,criteria,`condition`,pattern) VALUES
	 (655,87,'priority',0,'4'),
	 (656,88,'type',0,'1'),
	 (657,88,'priority',0,'3'),
	 (658,89,'type',0,'1'),
	 (659,89,'priority',0,'2'),
	 (660,79,'itilcategories_id',0,'28'),
	 (661,79,'itilcategories_id',0,'30'),
	 (662,79,'itilcategories_id',0,'40'),
	 (663,79,'itilcategories_id',0,'43'),
	 (664,79,'itilcategories_id',0,'46');
INSERT INTO glpi_dev.glpi_rulecriterias (id,rules_id,criteria,`condition`,pattern) VALUES
	 (665,79,'itilcategories_id',0,'49'),
	 (666,79,'itilcategories_id',0,'52'),
	 (667,79,'itilcategories_id',0,'55'),
	 (668,79,'itilcategories_id',0,'58'),
	 (669,79,'itilcategories_id',0,'61'),
	 (670,79,'itilcategories_id',0,'64'),
	 (671,79,'itilcategories_id',0,'67'),
	 (672,79,'itilcategories_id',0,'70'),
	 (673,79,'itilcategories_id',0,'73'),
	 (674,79,'itilcategories_id',0,'76');
INSERT INTO glpi_dev.glpi_rulecriterias (id,rules_id,criteria,`condition`,pattern) VALUES
	 (675,79,'itilcategories_id',0,'79'),
	 (676,75,'itilcategories_id',0,'33');
INSERT INTO glpi_dev.glpi_rulerightparameters (id,name,value,comment,date_mod,date_creation) VALUES
	 (1,'(LDAP)Organization','o',NULL,NULL,NULL),
	 (2,'(LDAP)Common Name','cn',NULL,NULL,NULL),
	 (3,'(LDAP)Department Number','departmentnumber',NULL,NULL,NULL),
	 (4,'(LDAP)Email','mail',NULL,NULL,NULL),
	 (5,'Object Class','objectclass',NULL,NULL,NULL),
	 (6,'(LDAP)User ID','uid',NULL,NULL,NULL),
	 (7,'(LDAP)Telephone Number','phone',NULL,NULL,NULL),
	 (8,'(LDAP)Employee Number','employeenumber',NULL,NULL,NULL),
	 (9,'(LDAP)Manager','manager',NULL,NULL,NULL),
	 (10,'(LDAP)DistinguishedName','dn',NULL,NULL,NULL);
INSERT INTO glpi_dev.glpi_rulerightparameters (id,name,value,comment,date_mod,date_creation) VALUES
	 (12,'(AD)User ID','samaccountname',NULL,NULL,NULL),
	 (13,'(LDAP) Title','title',NULL,NULL,NULL),
	 (14,'(LDAP) MemberOf','memberof',NULL,NULL,NULL);
INSERT INTO glpi_dev.glpi_rules (id,entities_id,sub_type,ranking,name,description,`match`,is_active,comment,date_mod,is_recursive,uuid,`condition`,date_creation) VALUES
	 (2,0,'RuleRight',1,'Root','','OR',1,NULL,NULL,0,'500717c8-2bd6e957-53a12b5fd35745.02608131',0,NULL),
	 (3,0,'RuleMailCollector',3,'Root','','OR',1,NULL,NULL,0,'500717c8-2bd6e957-53a12b5fd36404.54713349',0,NULL),
	 (4,0,'RuleMailCollector',1,'X-Auto-Response-Suppress','Exclude Auto-Reply emails using X-Auto-Response-Suppress header','AND',0,NULL,NULL,1,'500717c8-2bd6e957-53a12b5fd36d97.94503423',0,NULL),
	 (5,0,'RuleMailCollector',2,'Auto-Reply Auto-Submitted','Exclude Auto-Reply emails using Auto-Submitted header','OR',1,NULL,NULL,1,'500717c8-2bd6e957-53a12b5fd376c2.87642651',0,NULL),
	 (6,0,'RuleTicket',1,'Ticket location from item','','AND',0,NULL,NULL,1,'500717c8-2bd6e957-53a12b5fd37f94.10365341',1,NULL),
	 (7,0,'RuleTicket',2,'Ticket location from user','','AND',0,NULL,NULL,1,'500717c8-2bd6e957-53a12b5fd38869.86002585',1,NULL),
	 (8,0,'RuleSoftwareCategory',1,'Import category from inventory tool','','AND',0,NULL,NULL,1,'500717c8-2bd6e957-53a12b5fd38869.86003425',1,NULL),
	 (9,0,'RuleAsset',1,'Domain user assignation','','AND',1,NULL,NULL,1,'fbeb1115-7a37b143-5a3a6fc1afdc17.92779763',3,NULL),
	 (10,0,'RuleAsset',2,'Multiple users: assign to the first','','AND',1,NULL,NULL,1,'fbeb1115-7a37b143-5a3a6fc1b03762.88595154',3,NULL),
	 (11,0,'RuleAsset',3,'One user assignation','','AND',1,NULL,NULL,1,'fbeb1115-7a37b143-5a3a6fc1b073e1.16257440',3,NULL);
INSERT INTO glpi_dev.glpi_rules (id,entities_id,sub_type,ranking,name,description,`match`,is_active,comment,date_mod,is_recursive,uuid,`condition`,date_creation) VALUES
	 (12,0,'RuleImportAsset',0,'No creation on partial import',NULL,'AND',1,NULL,'2022-10-31 05:18:59',0,NULL,0,'2022-10-31 05:18:59'),
	 (13,0,'RuleImportAsset',1,'Global update (by mac+ifnumber restricted port)',NULL,'AND',1,NULL,'2022-10-31 05:18:59',0,NULL,0,'2022-10-31 05:18:59'),
	 (14,0,'RuleImportAsset',2,'Global update (by mac+ifnumber not restricted port)',NULL,'AND',1,NULL,'2022-10-31 05:18:59',0,NULL,0,'2022-10-31 05:18:59'),
	 (15,0,'RuleImportAsset',3,'Global import (by mac+ifnumber)',NULL,'AND',1,NULL,'2022-10-31 05:18:59',0,NULL,0,'2022-10-31 05:18:59'),
	 (16,0,'RuleImportAsset',4,'Global update (by ip+ifdescr restricted port)',NULL,'AND',1,NULL,'2022-10-31 05:18:59',0,NULL,0,'2022-10-31 05:18:59'),
	 (17,0,'RuleImportAsset',5,'Global update (by ip+ifdescr not restricted port)',NULL,'AND',1,NULL,'2022-10-31 05:18:59',0,NULL,0,'2022-10-31 05:18:59'),
	 (18,0,'RuleImportAsset',6,'Global import (by ip+ifdescr)',NULL,'AND',1,NULL,'2022-10-31 05:18:59',0,NULL,0,'2022-10-31 05:18:59'),
	 (19,0,'RuleImportAsset',7,'Update only mac address (mac on switch port)',NULL,'AND',1,NULL,'2022-10-31 05:18:59',0,NULL,0,'2022-10-31 05:18:59'),
	 (20,0,'RuleImportAsset',8,'Import only mac address (mac on switch port)',NULL,'AND',1,NULL,'2022-10-31 05:18:59',0,NULL,0,'2022-10-31 05:18:59'),
	 (21,0,'RuleImportAsset',9,'Computer constraint (name)',NULL,'AND',1,NULL,'2022-10-31 05:18:59',0,NULL,0,'2022-10-31 05:18:59');
INSERT INTO glpi_dev.glpi_rules (id,entities_id,sub_type,ranking,name,description,`match`,is_active,comment,date_mod,is_recursive,uuid,`condition`,date_creation) VALUES
	 (22,0,'RuleImportAsset',10,'Computer update (by serial + uuid)',NULL,'AND',1,NULL,'2022-10-31 05:18:59',0,NULL,0,'2022-10-31 05:18:59'),
	 (23,0,'RuleImportAsset',11,'Computer update (by serial + uuid is empty in GLPI)',NULL,'AND',1,NULL,'2022-10-31 05:18:59',0,NULL,0,'2022-10-31 05:18:59'),
	 (24,0,'RuleImportAsset',12,'Computer import (by serial + uuid)',NULL,'AND',1,NULL,'2022-10-31 05:18:59',0,NULL,0,'2022-10-31 05:18:59'),
	 (25,0,'RuleImportAsset',13,'Computer update (by serial)',NULL,'AND',1,NULL,'2022-10-31 05:18:59',0,NULL,0,'2022-10-31 05:18:59'),
	 (26,0,'RuleImportAsset',14,'Computer update (by uuid)',NULL,'AND',0,NULL,'2022-10-31 05:18:59',0,NULL,0,'2022-10-31 05:18:59'),
	 (27,0,'RuleImportAsset',15,'Computer update (by mac)',NULL,'AND',0,NULL,'2022-10-31 05:18:59',0,NULL,0,'2022-10-31 05:18:59'),
	 (28,0,'RuleImportAsset',16,'Computer update (by name)',NULL,'AND',1,NULL,'2022-10-31 05:18:59',0,NULL,0,'2022-10-31 05:18:59'),
	 (29,0,'RuleImportAsset',17,'Computer import (by serial)',NULL,'AND',1,NULL,'2022-10-31 05:18:59',0,NULL,0,'2022-10-31 05:18:59'),
	 (30,0,'RuleImportAsset',18,'Computer import (by uuid)',NULL,'AND',0,NULL,'2022-10-31 05:18:59',0,NULL,0,'2022-10-31 05:18:59'),
	 (31,0,'RuleImportAsset',19,'Computer import (by mac)',NULL,'AND',0,NULL,'2022-10-31 05:18:59',0,NULL,0,'2022-10-31 05:18:59');
INSERT INTO glpi_dev.glpi_rules (id,entities_id,sub_type,ranking,name,description,`match`,is_active,comment,date_mod,is_recursive,uuid,`condition`,date_creation) VALUES
	 (32,0,'RuleImportAsset',20,'Computer import (by name)',NULL,'AND',1,NULL,'2022-10-31 05:18:59',0,NULL,0,'2022-10-31 05:18:59'),
	 (33,0,'RuleImportAsset',21,'Computer import denied',NULL,'AND',1,NULL,'2022-10-31 05:18:59',0,NULL,0,'2022-10-31 05:18:59'),
	 (34,0,'RuleImportAsset',22,'Printer constraint (name)',NULL,'AND',1,NULL,'2022-10-31 05:18:59',0,NULL,0,'2022-10-31 05:18:59'),
	 (35,0,'RuleImportAsset',23,'Printer update (by serial)',NULL,'AND',1,NULL,'2022-10-31 05:18:59',0,NULL,0,'2022-10-31 05:18:59'),
	 (36,0,'RuleImportAsset',24,'Printer update (by mac)',NULL,'AND',0,NULL,'2022-10-31 05:18:59',0,NULL,0,'2022-10-31 05:18:59'),
	 (37,0,'RuleImportAsset',25,'Printer import (by serial)',NULL,'AND',1,NULL,'2022-10-31 05:18:59',0,NULL,0,'2022-10-31 05:18:59'),
	 (38,0,'RuleImportAsset',26,'Printer import (by mac)',NULL,'AND',0,NULL,'2022-10-31 05:18:59',0,NULL,0,'2022-10-31 05:18:59'),
	 (39,0,'RuleImportAsset',27,'Printer import denied',NULL,'AND',1,NULL,'2022-10-31 05:18:59',0,NULL,0,'2022-10-31 05:18:59'),
	 (40,0,'RuleImportAsset',28,'NetworkEquipment constraint (name)',NULL,'AND',1,NULL,'2022-10-31 05:18:59',0,NULL,0,'2022-10-31 05:18:59'),
	 (41,0,'RuleImportAsset',29,'NetworkEquipment update (by serial)',NULL,'AND',1,NULL,'2022-10-31 05:18:59',0,NULL,0,'2022-10-31 05:18:59');
INSERT INTO glpi_dev.glpi_rules (id,entities_id,sub_type,ranking,name,description,`match`,is_active,comment,date_mod,is_recursive,uuid,`condition`,date_creation) VALUES
	 (42,0,'RuleImportAsset',30,'NetworkEquipment update (by mac)',NULL,'AND',0,NULL,'2022-10-31 05:18:59',0,NULL,0,'2022-10-31 05:18:59'),
	 (43,0,'RuleImportAsset',31,'NetworkEquipment import (by serial)',NULL,'AND',1,NULL,'2022-10-31 05:18:59',0,NULL,0,'2022-10-31 05:18:59'),
	 (44,0,'RuleImportAsset',32,'NetworkEquipment import (by mac)',NULL,'AND',0,NULL,'2022-10-31 05:18:59',0,NULL,0,'2022-10-31 05:18:59'),
	 (45,0,'RuleImportAsset',33,'NetworkEquipment import denied',NULL,'AND',1,NULL,'2022-10-31 05:18:59',0,NULL,0,'2022-10-31 05:18:59'),
	 (46,0,'RuleImportAsset',34,'Device update (by serial)',NULL,'AND',1,NULL,'2022-10-31 05:18:59',0,NULL,0,'2022-10-31 05:18:59'),
	 (47,0,'RuleImportAsset',35,'Device import (by serial)',NULL,'AND',1,NULL,'2022-10-31 05:18:59',0,NULL,0,'2022-10-31 05:18:59'),
	 (48,0,'RuleImportAsset',36,'Device import denied',NULL,'AND',1,NULL,'2022-10-31 05:18:59',0,NULL,0,'2022-10-31 05:18:59'),
	 (49,0,'RuleImportAsset',37,'Monitor update (by serial)',NULL,'AND',1,NULL,'2022-10-31 05:18:59',0,NULL,0,'2022-10-31 05:18:59'),
	 (50,0,'RuleImportAsset',38,'Monitor import (by serial)',NULL,'AND',1,NULL,'2022-10-31 05:18:59',0,NULL,0,'2022-10-31 05:18:59'),
	 (51,0,'RuleImportAsset',39,'Monitor import denied',NULL,'AND',1,NULL,'2022-10-31 05:18:59',0,NULL,0,'2022-10-31 05:18:59');
INSERT INTO glpi_dev.glpi_rules (id,entities_id,sub_type,ranking,name,description,`match`,is_active,comment,date_mod,is_recursive,uuid,`condition`,date_creation) VALUES
	 (52,0,'RuleImportAsset',40,'Phone constraint (name)',NULL,'AND',0,NULL,'2022-10-31 05:18:59',0,NULL,0,'2022-10-31 05:18:59'),
	 (53,0,'RuleImportAsset',41,'Phone update (by mac)',NULL,'AND',0,NULL,'2022-10-31 05:18:59',0,NULL,0,'2022-10-31 05:18:59'),
	 (54,0,'RuleImportAsset',42,'Phone import (by mac)',NULL,'AND',0,NULL,'2022-10-31 05:18:59',0,NULL,0,'2022-10-31 05:18:59'),
	 (55,0,'RuleImportAsset',43,'Phone import denied',NULL,'AND',0,NULL,'2022-10-31 05:18:59',0,NULL,0,'2022-10-31 05:18:59'),
	 (56,0,'RuleImportAsset',44,'Cluster update (by uuid)',NULL,'AND',1,NULL,'2022-10-31 05:18:59',0,NULL,0,'2022-10-31 05:18:59'),
	 (57,0,'RuleImportAsset',45,'Cluster import (by uuid)',NULL,'AND',1,NULL,'2022-10-31 05:18:59',0,NULL,0,'2022-10-31 05:18:59'),
	 (58,0,'RuleImportAsset',46,'Cluster import denied',NULL,'AND',1,NULL,'2022-10-31 05:18:59',0,NULL,0,'2022-10-31 05:18:59'),
	 (59,0,'RuleImportAsset',47,'Enclosure update (by serial)',NULL,'AND',1,NULL,'2022-10-31 05:18:59',0,NULL,0,'2022-10-31 05:18:59'),
	 (60,0,'RuleImportAsset',48,'Enclosure import (by serial)',NULL,'AND',1,NULL,'2022-10-31 05:18:59',0,NULL,0,'2022-10-31 05:18:59'),
	 (61,0,'RuleImportAsset',49,'Enclosure import denied',NULL,'AND',1,NULL,'2022-10-31 05:18:59',0,NULL,0,'2022-10-31 05:18:59');
INSERT INTO glpi_dev.glpi_rules (id,entities_id,sub_type,ranking,name,description,`match`,is_active,comment,date_mod,is_recursive,uuid,`condition`,date_creation) VALUES
	 (62,0,'RuleImportAsset',50,'Global constraint (name)',NULL,'AND',1,NULL,'2022-10-31 05:18:59',0,NULL,0,'2022-10-31 05:18:59'),
	 (63,0,'RuleImportAsset',51,'Global update (by serial)',NULL,'AND',1,NULL,'2022-10-31 05:18:59',0,NULL,0,'2022-10-31 05:18:59'),
	 (64,0,'RuleImportAsset',52,'Global update (by mac)',NULL,'AND',0,NULL,'2022-10-31 05:18:59',0,NULL,0,'2022-10-31 05:18:59'),
	 (65,0,'RuleImportAsset',53,'Global import (by serial)',NULL,'AND',1,NULL,'2022-10-31 05:18:59',0,NULL,0,'2022-10-31 05:18:59'),
	 (66,0,'RuleImportAsset',54,'Global import (by mac)',NULL,'AND',0,NULL,'2022-10-31 05:18:59',0,NULL,0,'2022-10-31 05:18:59'),
	 (67,0,'RuleImportAsset',55,'Global import denied',NULL,'AND',1,NULL,'2022-10-31 05:18:59',0,NULL,0,'2022-10-31 05:18:59'),
	 (68,0,'RuleImportAsset',56,'Database update (by name)',NULL,'AND',1,NULL,'2022-10-31 05:18:59',0,NULL,0,'2022-10-31 05:18:59'),
	 (69,0,'RuleImportAsset',57,'Database import (by name)',NULL,'AND',1,NULL,'2022-10-31 05:18:59',0,NULL,0,'2022-10-31 05:18:59'),
	 (70,0,'RuleImportAsset',58,'Database import denied',NULL,'AND',1,NULL,'2022-10-31 05:18:59',0,NULL,0,'2022-10-31 05:18:59'),
	 (74,0,'RuleTicket',9,'Rule 30 Hari','','OR',1,'','2022-12-01 08:59:50',0,'55f06d1c-ac0c3ae4-6381d4accde1a5.34137904',1,'2022-11-26 01:56:12');
INSERT INTO glpi_dev.glpi_rules (id,entities_id,sub_type,ranking,name,description,`match`,is_active,comment,date_mod,is_recursive,uuid,`condition`,date_creation) VALUES
	 (75,0,'RuleTicket',6,'Rule 7 Hari','','OR',1,'','2022-12-01 09:16:40',0,'1aa83514-7603856b-638200aa6cc008.67273585',1,'2022-11-26 06:03:54'),
	 (76,0,'RuleTicket',3,'Rule 2 Hari','','OR',1,'','2022-11-30 05:38:39',0,'1aa83514-7603856b-63820c3b67a283.74039069',1,'2022-11-26 06:53:15'),
	 (77,0,'RuleTicket',4,'Rule 3 Hari','','OR',1,'','2022-11-30 05:38:15',0,'1aa83514-7603856b-63820ce076e359.71772740',1,'2022-11-26 06:56:00'),
	 (78,0,'RuleTicket',8,'Rule 14 Hari','','OR',1,'','2022-12-01 08:59:50',0,'1aa83514-7603856b-63820d78649a24.78106782',1,'2022-11-26 06:58:32'),
	 (79,0,'RuleTicket',10,'Rule 90 Hari','','OR',1,'','2022-12-01 08:59:50',0,'90947379-7603856b-63842e85259b53.58205583',1,'2022-11-27 21:44:05'),
	 (80,0,'RuleTicket',5,'Rule 5 Hari','','OR',1,'','2022-12-01 08:59:46',0,'90947379-7603856b-63842ebc9d86c4.20823119',1,'2022-11-27 21:45:00'),
	 (81,0,'RuleTicket',7,'Rule 10 Hari','','OR',1,'','2022-12-01 08:59:50',0,'90947379-7603856b-63842edc61ffe6.98665558',1,'2022-11-27 21:45:32'),
	 (86,0,'RuleTicket',15,'Rule Insiden Critical','','AND',1,'','2022-11-30 05:05:40',0,'ac5f8c1e-12b57589-6386d3d2961de3.71485410',1,'2022-11-30 04:53:54'),
	 (87,0,'RuleTicket',16,'Rule Insiden High ','','AND',1,'','2022-11-30 05:05:53',0,'ac5f8c1e-12b57589-6386d44bb7e5a7.46442023',1,'2022-11-30 04:55:55'),
	 (88,0,'RuleTicket',17,'Rule Insiden Medium','','AND',1,'','2022-11-30 05:06:14',0,'ac5f8c1e-12b57589-6386d44bd51a41.77676439',1,'2022-11-30 04:55:55');
INSERT INTO glpi_dev.glpi_rules (id,entities_id,sub_type,ranking,name,description,`match`,is_active,comment,date_mod,is_recursive,uuid,`condition`,date_creation) VALUES
	 (89,0,'RuleTicket',18,'Rule Insiden Low','','AND',1,'','2022-11-30 05:06:30',0,'ac5f8c1e-12b57589-6386d44bdb7f36.64025816',1,'2022-11-30 04:55:55');
INSERT INTO glpi_dev.glpi_slas (id,name,entities_id,is_recursive,`type`,comment,number_time,use_ticket_calendar,calendars_id,date_mod,definition_time,end_of_working_day,date_creation,slms_id) VALUES
	 (6,'TTO Ticket',0,0,1,'',2,0,2,'2022-11-26 07:59:46','hour',0,'2022-11-26 07:59:29',3),
	 (7,'TTR 2 HARI',0,0,0,'',2,0,2,'2022-11-26 08:05:10','day',1,'2022-11-26 08:01:12',3),
	 (8,'TTR 4 HARI',0,0,0,'',4,0,2,'2022-11-26 08:04:53','day',1,'2022-11-26 08:01:38',3),
	 (9,'TTR 8 HARI',0,0,0,'',8,0,2,'2022-11-26 08:05:33','day',1,'2022-11-26 08:04:46',3),
	 (10,'TTR 15 HARI',0,0,0,'',15,0,2,'2022-11-26 08:06:17','day',1,'2022-11-26 08:06:17',3),
	 (11,'TTR 7 HARI',0,0,0,'',7,0,2,'2022-11-26 08:12:18','day',1,'2022-11-26 08:12:18',3),
	 (12,'TTR 10 HARI',0,0,0,'',10,0,2,'2022-11-26 08:12:33','day',1,'2022-11-26 08:12:33',3),
	 (13,'TTR 14 HARI',0,0,0,'',14,0,2,'2022-11-26 08:13:04','day',1,'2022-11-26 08:13:04',3),
	 (14,'TTR 5 HARI',0,0,0,'',4,0,2,'2022-11-26 08:13:26','day',1,'2022-11-26 08:13:26',3),
	 (15,'TTR 3 HARI',0,0,0,'',4,0,2,'2022-11-26 08:13:48','day',1,'2022-11-26 08:13:48',3);
INSERT INTO glpi_dev.glpi_slas (id,name,entities_id,is_recursive,`type`,comment,number_time,use_ticket_calendar,calendars_id,date_mod,definition_time,end_of_working_day,date_creation,slms_id) VALUES
	 (16,'TTR 30 HARI',0,0,0,'',30,0,2,'2022-11-26 08:14:10','day',1,'2022-11-26 08:14:10',3),
	 (17,'SLA 90 HARI',0,0,0,'',90,0,2,'2022-11-26 08:14:35','day',1,'2022-11-26 08:14:35',3);
INSERT INTO glpi_dev.glpi_slms (id,name,entities_id,is_recursive,comment,use_ticket_calendar,calendars_id,date_mod,date_creation) VALUES
	 (3,'SLA HALOBPS',0,0,'',0,2,'2022-11-26 07:54:41','2022-11-26 07:54:41');
INSERT INTO glpi_dev.glpi_snmpcredentials (id,name,snmpversion,community,username,authentication,auth_passphrase,encryption,priv_passphrase,is_deleted) VALUES
	 (1,'Public community v1','1','public',NULL,NULL,NULL,NULL,NULL,0),
	 (2,'Public community v2c','2','public',NULL,NULL,NULL,NULL,NULL,0);
INSERT INTO glpi_dev.glpi_softwarecategories (id,name,comment,softwarecategories_id,completename,`level`,ancestors_cache,sons_cache) VALUES
	 (1,'Inventoried',NULL,0,'Software from inventories',1,NULL,NULL);
INSERT INTO glpi_dev.glpi_softwarelicensetypes (id,name,comment,date_mod,date_creation,softwarelicensetypes_id,`level`,ancestors_cache,sons_cache,entities_id,is_recursive,completename) VALUES
	 (1,'OEM',NULL,NULL,NULL,0,0,NULL,NULL,0,1,'OEM');
INSERT INTO glpi_dev.glpi_ssovariables (id,name,comment,date_mod,date_creation) VALUES
	 (1,'HTTP_AUTH_USER',NULL,NULL,NULL),
	 (2,'REMOTE_USER',NULL,NULL,NULL),
	 (3,'PHP_AUTH_USER',NULL,NULL,NULL),
	 (4,'USERNAME',NULL,NULL,NULL),
	 (5,'REDIRECT_REMOTE_USER',NULL,NULL,NULL),
	 (6,'HTTP_REMOTE_USER',NULL,NULL,NULL);
INSERT INTO glpi_dev.glpi_tickets (id,entities_id,name,`date`,closedate,solvedate,date_mod,users_id_lastupdater,status,users_id_recipient,requesttypes_id,content,urgency,impact,priority,itilcategories_id,`type`,global_validation,slas_id_ttr,slas_id_tto,slalevels_id_ttr,time_to_resolve,time_to_own,begin_waiting_date,sla_waiting_duration,ola_waiting_duration,olas_id_tto,olas_id_ttr,olalevels_id_ttr,ola_ttr_begin_date,internal_time_to_resolve,internal_time_to_own,waiting_duration,close_delay_stat,solve_delay_stat,takeintoaccount_delay_stat,actiontime,is_deleted,locations_id,validation_percent,date_creation) VALUES
	 (1,0,'Ini butuh video','2022-11-27 11:46:55','2022-12-01 08:23:18','2022-12-01 08:22:28','2022-12-01 08:23:18',3,6,3,1,'&#60;p&#62;Bang tolong cepet butuh veideo&#60;/p&#62;',4,3,4,118,2,1,0,0,0,NULL,NULL,'2022-12-01 08:22:28',0,0,0,0,0,NULL,NULL,NULL,49,333334,333284,333209,0,0,0,0,'2022-11-27 11:46:55'),
	 (2,0,'Plis lah Video Converence','2022-11-27 11:49:48','2022-12-01 08:17:32','2022-12-01 07:59:26','2022-12-01 08:17:32',3,6,3,1,'&#60;p&#62;Buruan atuhhhh&#60;/p&#62;',3,3,3,118,2,1,15,6,0,'2022-12-02 16:00:00','2022-11-28 10:00:00','2022-12-01 07:59:26',0,0,0,0,0,NULL,NULL,NULL,0,87452,86400,86400,0,0,0,0,'2022-11-27 11:49:48'),
	 (3,0,'Tolong bikin platform elearning','2022-11-27 12:03:29',NULL,NULL,'2022-12-01 07:39:15',18,2,3,1,'&#60;p&#62;Lagi pengen belajar online nich&#60;/p&#62;',3,3,3,128,2,1,15,6,0,'2022-12-02 16:00:00','2022-11-28 10:00:00',NULL,0,0,0,0,0,NULL,NULL,NULL,0,0,0,86400,0,0,0,0,'2022-11-27 12:03:29'),
	 (4,0,'Mau konsul jaringan Tim IT','2022-11-27 12:04:43',NULL,NULL,'2022-12-01 07:49:32',18,2,3,1,'&#60;p&#62;Tolong sediakan layanan konsultasi jairngan plis&#60;/p&#62;',3,3,3,34,2,1,15,6,0,'2022-12-02 16:00:00','2022-11-28 10:00:00',NULL,0,0,0,0,0,NULL,NULL,NULL,0,0,0,86400,0,0,0,0,'2022-11-27 12:04:43'),
	 (5,0,'Konsul JAringan 2','2022-11-27 12:06:17',NULL,NULL,'2022-12-01 07:15:23',3,1,3,1,'&#60;p&#62;Onegaishimasu&#60;/p&#62;',3,3,3,34,2,1,11,6,0,'2022-12-07 16:00:00','2022-11-28 10:00:00',NULL,0,0,0,0,0,NULL,NULL,NULL,0,0,0,0,0,1,0,0,'2022-11-27 12:06:17');
INSERT INTO glpi_dev.glpi_tickets_users (id,tickets_id,users_id,`type`,use_notification,alternative_email) VALUES
	 (1,1,3,1,1,''),
	 (2,2,3,1,1,''),
	 (3,3,3,1,1,''),
	 (4,4,3,1,1,''),
	 (5,5,3,1,1,''),
	 (6,4,4,2,0,''),
	 (7,3,11,2,0,'');
INSERT INTO glpi_dev.glpi_tickettemplatemandatoryfields (id,tickettemplates_id,num) VALUES
	 (1,1,21);
