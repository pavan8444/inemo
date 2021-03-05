

sqoop import --connect "jdbc:sqlserver://125.62.193.155;databaseName=coldstore" --username sa --password Inemo123 --driver com.microsoft.sqlserver.jdbc.SQLServerDriver --table dbo.TBL_USERS -m 1 --delete-target-dir -target-dir /warehouse/tablespace/external/hive/inemo.db/tbl_users

sqoop import --connect "jdbc:sqlserver://125.62.193.155;databaseName=coldstore" --username sa --password Inemo123 --driver com.microsoft.sqlserver.jdbc.SQLServerDriver --table dbo.MasterDataLog -m 1 --delete-target-dir -target-dir /warehouse/tablespace/external/hive/inemo.db/masterdatalog

sqoop import --connect "jdbc:sqlserver://125.62.193.155;databaseName=coldstore" --username sa --password Inemo123 --driver com.microsoft.sqlserver.jdbc.SQLServerDriver --table dbo.NEK_tblCompanyMast -m 1 --delete-target-dir -target-dir /warehouse/tablespace/external/hive/inemo.db/nek_tblcompanymast

sqoop import --connect "jdbc:sqlserver://125.62.193.155;databaseName=coldstore" --username sa --password Inemo123 --driver com.microsoft.sqlserver.jdbc.SQLServerDriver --table dbo.PackingType_Taxes -m 1 --delete-target-dir -target-dir /warehouse/tablespace/external/hive/inemo.db/packingtype_taxes

sqoop import --connect "jdbc:sqlserver://125.62.193.155;databaseName=coldstore" --username sa --password Inemo123 --driver com.microsoft.sqlserver.jdbc.SQLServerDriver --table dbo.Racknumbers -m 1 --delete-target-dir -target-dir /warehouse/tablespace/external/hive/inemo.db/racknumbers

sqoop import --connect "jdbc:sqlserver://125.62.193.155;databaseName=coldstore" --username sa --password Inemo123 --driver com.microsoft.sqlserver.jdbc.SQLServerDriver --table dbo.RM_Count_Ranges -m 1 --delete-target-dir -target-dir /warehouse/tablespace/external/hive/inemo.db/rm_count_ranges

sqoop import --connect "jdbc:sqlserver://125.62.193.155;databaseName=coldstore" --username sa --password Inemo123 --driver com.microsoft.sqlserver.jdbc.SQLServerDriver --table dbo.tbl_BrandName -m 1 --delete-target-dir -target-dir /warehouse/tablespace/external/hive/inemo.db/tbl_brandname

sqoop import --connect "jdbc:sqlserver://125.62.193.155;databaseName=coldstore" --username sa --password Inemo123 --driver com.microsoft.sqlserver.jdbc.SQLServerDriver --table dbo.TBL_FREEZINGTYPE -m 1 --delete-target-dir -target-dir /warehouse/tablespace/external/hive/inemo.db/tbl_freezingtype

sqoop import --connect "jdbc:sqlserver://125.62.193.155;databaseName=coldstore" --username sa --password Inemo123 --driver com.microsoft.sqlserver.jdbc.SQLServerDriver --table dbo.TBL_GRADES -m 1 --delete-target-dir -target-dir /warehouse/tablespace/external/hive/inemo.db/tbl_grades

sqoop import --connect "jdbc:sqlserver://125.62.193.155;databaseName=coldstore" --username sa --password Inemo123 --driver com.microsoft.sqlserver.jdbc.SQLServerDriver --table dbo.tbl_Location -m 1 --delete-target-dir -target-dir /warehouse/tablespace/external/hive/inemo.db/tbl_location


sqoop import --connect "jdbc:sqlserver://125.62.193.155;databaseName=coldstore" --username sa --password Inemo123 --driver com.microsoft.sqlserver.jdbc.SQLServerDriver --table dbo.TBL_PACKINGSTYLE -m 1 --delete-target-dir -target-dir /warehouse/tablespace/external/hive/inemo.db/tbl_packingstyle



sqoop import --connect "jdbc:sqlserver://125.62.193.155;databaseName=coldstore" --username sa --password Inemo123 --driver com.microsoft.sqlserver.jdbc.SQLServerDriver --table dbo.tbl_Plant -m 1 --delete-target-dir -target-dir /warehouse/tablespace/external/hive/inemo.db/tbl_plant



sqoop import --connect "jdbc:sqlserver://125.62.193.155;databaseName=coldstore" --username sa --password Inemo123 --driver com.microsoft.sqlserver.jdbc.SQLServerDriver --table dbo.TBL_PRODUCTFORM -m 1 --delete-target-dir -target-dir /warehouse/tablespace/external/hive/inemo.db/tbl_productform



sqoop import --connect "jdbc:sqlserver://125.62.193.155;databaseName=coldstore" --username sa --password Inemo123 --driver com.microsoft.sqlserver.jdbc.SQLServerDriver --table dbo.Tbl_Roles -m 1 --delete-target-dir -target-dir /warehouse/tablespace/external/hive/inemo.db/tbl_roles



sqoop import --connect "jdbc:sqlserver://125.62.193.155;databaseName=coldstore" --username sa --password Inemo123 --driver com.microsoft.sqlserver.jdbc.SQLServerDriver --table dbo.Tbl_Roleservices -m 1 --delete-target-dir -target-dir /warehouse/tablespace/external/hive/inemo.db/tbl_roleservices



sqoop import --connect "jdbc:sqlserver://125.62.193.155;databaseName=coldstore" --username sa --password Inemo123 --driver com.microsoft.sqlserver.jdbc.SQLServerDriver --table dbo.Tbl_ServiceUrls -m 1 --delete-target-dir -target-dir /warehouse/tablespace/external/hive/inemo.db/tbl_serviceurls



sqoop import --connect "jdbc:sqlserver://125.62.193.155;databaseName=coldstore" --username sa --password Inemo123 --driver com.microsoft.sqlserver.jdbc.SQLServerDriver --table dbo.Tbl_Soaking -m 1 --delete-target-dir -target-dir /warehouse/tablespace/external/hive/inemo.db/tbl_soaking



sqoop import --connect "jdbc:sqlserver://125.62.193.155;databaseName=coldstore" --username sa --password Inemo123 --driver com.microsoft.sqlserver.jdbc.SQLServerDriver --table dbo.TBL_SPECIE -m 1 --delete-target-dir -target-dir /warehouse/tablespace/external/hive/inemo.db/tbl_specie

sqoop import --connect "jdbc:sqlserver://125.62.193.155;databaseName=coldstore" --username sa --password Inemo123 --driver com.microsoft.sqlserver.jdbc.SQLServerDriver --table dbo.tbl_UserPlants -m 1 --delete-target-dir -target-dir /warehouse/tablespace/external/hive/inemo.db/tbl_userplants


sqoop import --connect "jdbc:sqlserver://125.62.193.155;databaseName=coldstore" --username sa --password Inemo123 --driver com.microsoft.sqlserver.jdbc.SQLServerDriver --table dbo.TBL_VARIETY -m 1 --delete-target-dir -target-dir /warehouse/tablespace/external/hive/inemo.db/tbl_variety

