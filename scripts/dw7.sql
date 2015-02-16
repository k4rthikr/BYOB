SELECT ogsk.skill_name, ogsi.site_name, COUNT(*)
FROM d_contact_detail_records dcdr,
     csmetrics_ddl.o_gacd_sites ogsi,
     csmetrics_ddl.o_gacd_skills ogsk
WHERE dcdr.disconnect_date_datetime >= to_date('2013-11-22 00:00:00', 'YYYY-MM-DD HH24:MI:SS') --Date begin
AND dcdr.disconnect_date_datetime < to_date('2013-11-23 00:00:00', 'YYYY-MM-DD HH24:MI:SS') --Date end * 
AND dcdr.joined_date_datetime IS NOT NULL
AND dcdr.skill_id = ogsk.skill_id
AND joined_agent_site_id = ogsi.site_id
AND dcdr.region_id = 1
AND ogsi.region_id = 1
AND ogsk.region_id = 1
GROUP BY ogsk.skill_name, ogsi.site_name