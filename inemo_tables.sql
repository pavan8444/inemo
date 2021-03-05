DROP TABLE IF EXISTS brands;
CREATE EXTERNAL TABLE IF NOT EXISTS brands (
brandname string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


DROP TABLE IF EXISTS masterdatalog;
CREATE EXTERNAL TABLE IF NOT EXISTS masterdatalog (
id int,
tablename string, 
createddate timestamp,
refno int, 
status int, 
remarks string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


DROP TABLE IF EXISTS NEK_tblCompanyMast;
CREATE EXTERNAL TABLE IF NOT EXISTS NEK_tblCompanyMast (
companyID int, 
CompanyCode int, 
CompanyName string, 
Address1 string, 
Address2 string, 
Address3string, 
City string, 
Country string ,
ZipCode string, 
Phone string, 
FAX string, 
PAN string, 
GSTIN string, 
CINNO string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


DROP TABLE IF EXISTS PackingType_Taxes;
CREATE EXTERNAL TABLE IF NOT EXISTS PackingType_Taxes (
ID int, 
Packing_Type_Id int,
SGST double, 
CGST double,
IGST double, 
Affect_Fromtimestamp, 
Affected_To timestamp, 
Created_Date timestamp
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


DROP TABLE IF EXISTS Pallet_Barcodes;
CREATE EXTERNAL TABLE IF NOT EXISTS Pallet_Barcodes (
id int,
Pallet_Barcode string, 
Mastercase_barcode string,
Mc_quantity int,
Rack_Serial int, 
Pallet_Serial_Number int, 
Scan_Datetime timestamp, 
IsINScan string, 
InScan_Quantity double, 
Consu_Quantity double, 
Pallet_Quantity double,
Old_Pallet_Barcode string, 
Createddate timestamp, 
CreatedBy timestamp,
Webupload string, 
UploadId int,
Production_Code int
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


DROP TABLE IF EXISTS racknumbers;
CREATE EXTERNAL TABLE IF NOT EXISTS racknumbers (
id int,
rackno string,
Rack_Capacityfloat,
Weight_inKgs float,
Plantid int,
Created_Date timestamp,
Location_Id int
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


DROP TABLE IF EXISTS racknumbers2;
CREATE EXTERNAL TABLE IF NOT EXISTS racknumbers2 (
id int,
rackno string,
Rack_Capacityfloat,
Weight_inKgs float,
Plantid int,
Created_Date timestamp
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


DROP TABLE IF EXISTS racks;
CREATE EXTERNAL TABLE IF NOT EXISTS racks (
 LINES string
RACK string,
PLANT string,
LOCATIONstring,
CAPACITY string
WEIGHT bigint
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


DROP TABLE IF EXISTS rack2;
CREATE EXTERNAL TABLE IF NOT EXISTS rack2 (
LINE string
RACK string,
PLANT string,
LOCATIONstring,
CAPACITY string,
WEIGHT bigint
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


DROP TABLE IF EXISTS RM_Count_Ranges;
CREATE EXTERNAL TABLE IF NOT EXISTS RM_Count_Ranges (
Id int,
From_Count float,
To_Count float,
Created_Date timestamp
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


DROP TABLE IF EXISTS ShipmentRackAssign;
CREATE EXTERNAL TABLE IF NOT EXISTS ShipmentRackAssign (
id int,
Order_Number string,
Ordprod_id string,
Shipment_RackAssign string,
Created_Date timestamp
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


DROP TABLE IF EXISTS STANDARDPACKINGSTYLE;
CREATE EXTERNAL TABLE IF NOT EXISTS STANDARDPACKINGSTYLE (
ID int,
BRAND string,
VARIETYNT string,
PFORM string,
GRADE string,
CONTAINERS string,
PACKINGSTYLE string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;




DROP TABLE IF EXISTS States;
CREATE EXTERNAL TABLE IF NOT EXISTS States (
 Sereial_NO bigint,
State_Name string,
State_Code string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;




DROP TABLE IF EXISTS system_name;
CREATE EXTERNAL TABLE IF NOT EXISTS system_name (
id int,
Track_name string,
system_name string,
Plant_id int
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;




DROP TABLE IF EXISTS tbl_AgentVendors;
CREATE EXTERNAL TABLE IF NOT EXISTS tbl_AgentVendors (
AgentId int,
AgentBusinessName string,
AgentName string,
AgentAddress string,
AgentEmailAddress string,
AgentMobileNumber bigint,
AgentBrandName string,
createdby string,
createddate timestamp,
modifiedby string,
modifieddate timestamp,
isactive string,
PlantId string,
ExpDays string,
CoreitemType string,
GST_Number string,
Sac_Code string,
State_Code string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;



DROP TABLE IF EXISTS tbl_BrandName;
CREATE EXTERNAL TABLE IF NOT EXISTS tbl_BrandName (
 BRAND_ID int,
Vendor_Id string,
BRANDNAME string,
DESCRIPTION string,
CREATEDBY string,
CREATEDDATE timestamp,
MODIFIEDBY string
MODIFIEDDATE timestamp,
Dummy_barcode string,
Doc_BrandId int,
Doc_BrandName string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;



DROP TABLE IF EXISTS tbl_Buyer;
CREATE EXTERNAL TABLE IF NOT EXISTS tbl_Buyer (
BuyerId int,
BuyerName string,
BuyerDestination string,
IsActive string,
CreatedBy string,
CreatedDate timestamp,
ModifiedBy string,
ModifiedDate timestamp
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;



DROP TABLE IF EXISTS Tbl_DailyBalanceStock;
CREATE EXTERNAL TABLE IF NOT EXISTS Tbl_DailyBalanceStock (
Id int,
Hon_Qty_Kgs float,
Qty_in_Kgs float,
Hon_Count bigint,
Date timestamp,
Specie string,
Variety string,
Pform string,
Grade string,
Soaked string,
Soaked_Status string,
Balance_Type string,
Created_Date timestamp,
Modified_Date timestamp,
Created_By string,
Plant_Id int
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;



DROP TABLE IF EXISTS TBL_DAILYPRODUCTIONSHIPMENT;
CREATE EXTERNAL TABLE IF NOT EXISTS TBL_DAILYPRODUCTIONSHIPMENT (
STORE_ID string,
Product_Id string,
Product_Barcode_Id string,
Palletno int,
SPECIE string,
BRAND string,
VAREITY string,
CONTAINERS string,
PACKINGTYPE string,
GRADE string,
FREEZINGTYPE string,
FROZENCOL string,
ISSOAKED string,
PFORM string,
GLAZE string,
SoakedWith string,
GlazeStatus string,
QUANTITY bigint,
BALANCE_QTY bigint,
DOT string,
TRANSTYPE string,
CREATEDBY string,
CREATEDDATE timestamp,
MODIFIEDBY string,
MODIFIEDDATE timestamp,
ORDERNUMBER string,
ACTION string,
WEIGHT string
ORDERPRODID string,
Plantid string,
Noofworkers bigint,
comments string,
Track_name string,
Track string,
Reference_no string,
PalletSerial string,
Tot string,
Code string,
ID_NO int,
From_Count string,
Shifted_Date timestamp,
Shifted_To string,
Parrent_Id string,
Created_Datetime timestamp,
Shift_Received_Plant string,
Production_Code string,
Cold_Store_Location_Idstring,
GatePass_Number string,
Vehicle_Number string,
Driver_Name string,
Remarks string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;



DROP TABLE IF EXISTS TBL_DAILYPRODUCTIONSHIPMENTDelTrans;
CREATE EXTERNAL TABLE IF NOT EXISTS TBL_DAILYPRODUCTIONSHIPMENTDelTrans (
 STORE_ID string,
Product_Id string,
Product_Barcode_Id string,
Palletno int,
SPECIE string,
BRAND string,
VAREITY string,
CONTAINERS string,
PACKINGTYPE string,
GRADE string,
FREEZINGTYPE string,
FROZENCOL string,
ISSOAKED string,
PFORM string,
GLAZE string,
SoakedWith string,
GlazeStatus string,
QUANTITY bigint,
BALANCE_QTY bigint,
DOT string,
TRANSTYPE string,
CREATEDBY string,
CREATEDDATE timestamp,
MODIFIEDBY string,
MODIFIEDDATE timestamp,
ORDERNUMBER string,
ACTION string,
WEIGHT string,
ORDERPRODID string,
Plantid string,
Noofworkers bigint,
comments string,
Track_name string,
Track string,
Reference_no string,
PalletSerial string,
Tot string,
Code string,
ID_NO int,
From_Count string,
Shifted_Date timestamp,
Shifted_to string,
Parrent_Id string,
Created_Datetime timestamp,
Shift_Received_Plant string,
Production_Code string, 
Cold_Store_Location_Id string,
GatePass_Number string,
Vehicle_Number string,
Driver_Name string,
Remarks string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;



DROP TABLE IF EXISTS tbl_deltracking;
CREATE EXTERNAL TABLE IF NOT EXISTS tbl_deltracking (
id int,
userid int,
deleted_tab string,
deleted_id int,
deleted_val int,
deleted_date timestamp
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;



DROP TABLE IF EXISTS TBL_FREEZINGTYPE;
CREATE EXTERNAL TABLE IF NOT EXISTS TBL_FREEZINGTYPE (
 FZING_ID int,
FZING_NAME string,
DESCRIPTION string,
CREATEDBY string,
CREATEDDATE timestamp,
MODIFIEDBY string,
MODIFIEDDATE timestamp,
Doc_FreezeId int,
Doc_FreezeName string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;



DROP TABLE IF EXISTS TBL_GRADES;
CREATE EXTERNAL TABLE IF NOT EXISTS TBL_GRADES (
 GRADE_ID int,
GRADENAME string,
Serial string,
DESCRIPTION string,
CREATEDBY string,
CREATEDDATE timestamp,
MODIFIEDBY string,
MODIFIEDDATE timestamp,
GRADEORDER string,
Doc_GradeId int,
Doc_GradeName string,
Raw_HLCount string,
Cooked_HLCount string,
Blanched_HLCount string,
Glaze_HLCount string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;



DROP TABLE IF EXISTS TBL_HEADQTYPERCENTAGE;
CREATE EXTERNAL TABLE IF NOT EXISTS TBL_HEADQTYPERCENTAGE (
id int,
PFORM string,
SPECIE string,
VAREITY string,
PERCENTAGE string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;




DROP TABLE IF EXISTS TBL_HONCOUNT;
CREATE EXTERNAL TABLE IF NOT EXISTS TBL_HONCOUNT (
id int,
VARIETY string,
PFORM string,
PERCENTAGE string,
ISSOAKED string,
SPECIE string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;



DROP TABLE IF EXISTS tbl_Location;
CREATE EXTERNAL TABLE IF NOT EXISTS tbl_Location (
id int,
LocationName string,
isActive string,
Createdby string,
CreatedDate timestamp,
Modifiedby string,
ModifiedDate timestamp,
PlantId int
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;



DROP TABLE IF EXISTS TBL_MAINORDER;
CREATE EXTERNAL TABLE IF NOT EXISTS TBL_MAINORDER (
 ORDER_ID int,
ORDER_Number string,
BUYER string,
SHIPMENTDATE timestamp,
DESTINATION string,
ORDERSTATUS string,
CREATEDBY string,
CREATEDDATE timestamp,
MODIFIEDBY string,
MODIFIEDDATE timestamp,
Plantid string,
ManualEntry string,
Priority_Sequence string,
Company_Id string,
Packingmaterial_Status string,
Invoice_Number string,
Ref_PID string,
PORTOFDIS string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


DROP TABLE IF EXISTS TBL_MAINORDERDelTrans;
CREATE EXTERNAL TABLE IF NOT EXISTS TBL_MAINORDERDelTrans (
ORDER_ID int,
ORDER_Number string,
BUYER string,
SHIPMENTDATE timestamp,
DESTINATION string,
ORDERSTATUS string,
CREATEDBY string,
CREATEDDATE timestamp,
MODIFIEDBY string,
MODIFIEDDATE timestamp,
Plantid string,
ManualEntry string,
Priority_Sequence string,
Company_Id string,
Packingmaterial_Status string,
Invoice_Number string,
Ref_PID string,
PORTOFDIS string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;



DROP TABLE IF EXISTS tbl_MainProducts;
CREATE EXTERNAL TABLE IF NOT EXISTS tbl_MainProducts (
 ProductID int,
SPECIES string,
VARIETY string,
PForm string,
IsSoaked string,
FreezingType string,
GLAZE string,
FrozenCol string,
PackingStyle string,
Containers string,
GRADE string,
SoakedWith string,
GlazeStatus string,
Search_Description string,
Created_Date timestamp,
By_Userid string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;



DROP TABLE IF EXISTS tbl_MainProductsDeltrans;
CREATE EXTERNAL TABLE IF NOT EXISTS tbl_MainProductsDeltrans (
 ProductID int,
SPECIES string,
VARIETY string,
PForm string,
IsSoaked string,
FreezingType string,
GLAZE string,
FrozenCol string,
PackingStyle string,
Containers string,
GRADE string,
SoakedWith string,
GlazeStatus string,
Search_Description string,
Created_Date timestamp,
By_Userid string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;



DROP TABLE IF EXISTS tbl_NCCategory;
CREATE EXTERNAL TABLE IF NOT EXISTS tbl_NCCategory (
NCCategoryId int,
NCCategoryName string,
Description string,
isActive string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;



DROP TABLE IF EXISTS tbl_Notifications;
CREATE EXTERNAL TABLE IF NOT EXISTS tbl_Notifications (
NotificationId int,
NotificationFrom string,
NotificationTo string,
Notification string,
CreatedBy string,
CreatedDate timestamp,
ModifiedBy string,
ModifiedDate timestamp,
NotificationDate timestamp
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;



DROP TABLE IF EXISTS Tbl_OrderProduct_Plant_Breakup;
CREATE EXTERNAL TABLE IF NOT EXISTS Tbl_OrderProduct_Plant_Breakup (
Id int,
Order_Id string,
Product_Id string,
Plant_Id string,
MC_Quantity string,
Created_Date timestamp,
Created_By string,
Modified_Date timestamp,
Modified_By string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


DROP TABLE IF EXISTS TBL_ORDERPRODUCTS;
CREATE EXTERNAL TABLE IF NOT EXISTS TBL_ORDERPRODUCTS (
ORDPROD_ID string,
ORDER_ID string,
BRAND string,
VARIETY string,
PACKINGSTYLE string,
GRADE string,
CONTAINERS string,
SPECIE string,
FZTYPE string,
PFORM string,
GLAZE string,
FROZENCOL string,
WEIGHT string,
QUANTITY string,
SHIPQUANTITY string,
ISSOAKED string,
createdby string,
createddate timestamp,
modifiedby string,
modifieddate timestamp,
Plantid string,
Glaze_Status string,
Soaking_Status string,
Price string,
Packingmaterial_status string,
Soaktime string,
Ref_TransPID string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


DROP TABLE IF EXISTS TBL_ORDERPRODUCTSDelTrans;
CREATE EXTERNAL TABLE IF NOT EXISTS TBL_ORDERPRODUCTSDelTrans (
 ORDPROD_ID string,
ORDER_ID string,
BRAND string,
VARIETY string,
PACKINGSTYLE string,
GRADE string,
CONTAINERS string,
SPECIE string,
FZTYPE string,
PFORM string,
GLAZE string,
FROZENCOL string,
WEIGHT string,
QUANTITY string,
SHIPQUANTITY string,
ISSOAKED string,
createdby string,
createddate timestamp,
modifiedby string,
modifieddate timestamp,
Plantid string,
Glaze_Status string,
Soaking_Status string,
Price string,
Packingmaterial_status string,
Soaktime string,
Ref_TransPID string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


DROP TABLE IF EXISTS tbl_ordprodbarcodes;
CREATE EXTERNAL TABLE IF NOT EXISTS tbl_ordprodbarcodes (
id int,
OrderId string,
OrderProdId string,
ProdId string,
Barcode string,
PlantId string,
quantity string,
Created_date timestamp
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


DROP TABLE IF EXISTS tbl_ordprodbarcodesDeleted;
CREATE EXTERNAL TABLE IF NOT EXISTS tbl_ordprodbarcodesDeleted (
id int,
OrderId string,
OrderProdId string,
ProdId string,
Barcode string,
PlantId string,
quantity string,
Created_date timestamp
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


DROP TABLE IF EXISTS TBL_PACKINGSTYLE;
CREATE EXTERNAL TABLE IF NOT EXISTS TBL_PACKINGSTYLE (
PACKING_ID int,
PACKINGSTYLE string,
DESCRIPTION string,
CREATEDBY string,
CREATEDDATE timestamp,
MODIFIEDBY string,
MODIFIEDDATE timestamp,
Doc_PackingId string,
Doc_PackingStyle string,
Minimum string,
Medium string,
Maximum string,
Extreme string,
Required_in_Slabs_forSumreport string,
Reqiured_In_Packstyle_forSumReport string,
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


DROP TABLE IF EXISTS tbl_PackingType;
CREATE EXTERNAL TABLE IF NOT EXISTS tbl_PackingType (
id int,
packingtype string,
Description string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


DROP TABLE IF EXISTS tbl_Pallet_Barcode_Register;
CREATE EXTERNAL TABLE IF NOT EXISTS tbl_Pallet_Barcode_Register (
Pallet_Serial_Id int,
Dot string,
Pallet_Barcode_Number bigint,
Product_barcodeId int,
Barcode_Number bigint,
Qty int,
Created_Date timestamp,
Created_By string,
Modified_Date timestamp,
Modified_By string,
Remarks string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


DROP TABLE IF EXISTS tbl_Plant;
CREATE EXTERNAL TABLE IF NOT EXISTS tbl_Plant (
plntid int,
plntname string,
plant_Fullname string,
Shortcode_For_Report string,
plntlocation string,
plntaddress string,
Phones bigint,
Scan_system string,
Pallet_Starting_Letter string,
EmailId string,
Locationtype string,
Processor_Code string,
Pincode bigint,
Company_Code string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


DROP TABLE IF EXISTS tbl_plantordprods;
CREATE EXTERNAL TABLE IF NOT EXISTS tbl_plantordprods (
id int,
ordprodid string,
quantity string,
plantid string,
ShipQuantity string,
ShipmentMethod string,
ShippedDate timestamp
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


DROP TABLE IF EXISTS TBL_POORDERPRODUCTS;
CREATE EXTERNAL TABLE IF NOT EXISTS TBL_POORDERPRODUCTS (
ORDPROD_ID int,
Product_Code string,
ORDER_ID string,
BRAND string,
VARIETY string,
PACKINGSTYLE string,
GRADEstring,
CONTAINERS string,
SPECIE string,
FZTYPE string,
PFORM string,
GLAZE string,
FROZENCOL string,
WEIGHT string,
QUANTITY string,
SHIPQUANTITY string,
ISSOAKED string,
createdby string,
createddate timestamp,
modifiedby string,
modifieddate timestamp,
Plantid string,
Glaze_Status string,
Soaking_Status string,
Price string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


DROP TABLE IF EXISTS TBL_POORDERPRODUCTS_Deltrans;
CREATE EXTERNAL TABLE IF NOT EXISTS TBL_POORDERPRODUCTS_Deltrans (
 ORDPROD_ID int,
Product_Code string,
ORDER_ID string,
BRAND string,
VARIETY string,
PACKINGSTYLE string,
GRADEstring,
CONTAINERS string,
SPECIE string,
FZTYPE string,
PFORM string,
GLAZE string,
FROZENCOL string,
WEIGHT string,
QUANTITY string,
SHIPQUANTITY string,
ISSOAKED string,
createdby string,
createddate timestamp,
modifiedby string,
modifieddate timestamp,
Plantid string,
Glaze_Status string,
Soaking_Status string,
Price string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


DROP TABLE IF EXISTS tbl_Prod_Barcode_Plant;
CREATE EXTERNAL TABLE IF NOT EXISTS tbl_Prod_Barcode_Plant (
BarCode_Id int,
ProductId string,
BarCode string,
Brand string,
CreatedBy string,
CreatedDate timestamp,
Avail_Qty_MC string,
Plant_id string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;



DROP TABLE IF EXISTS tbl_Product;
CREATE EXTERNAL TABLE IF NOT EXISTS tbl_Product (
 ProductId int,
BrandName string,
Variety string,
PForm string,
specie string,
Freezingtype string,
PackingStyle string,
Containers string,
ProductType string,
size string,
Netweight string,
ProdPly string,
ProdTop string,
ProdPrint string,
ProdImage string,
Thresholdlimit string,
Quantity bigint,
OrderQuantity int,
Balance string,
Description string,
createdby string,
createddate timestamp,
modifiedby string,
modifieddate timestamp,
isActive string,
Productsize string,
CoreItemType string,
NoncoreItemName string,
PlantId string,
ApprovalNumber int,
GradeId string,
Soaked string,
NoncoreItemCategory string,
NCDescription string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


DROP TABLE IF EXISTS tbl_ProductBarcode;
CREATE EXTERNAL TABLE IF NOT EXISTS tbl_ProductBarcode (
BarCode_Id int,
ProductId string,
BarCode string,
Brand string,
IsActive string,
CreatedBy string,
CreatedDate timestamp,
Modifiedby string,
ModifiedDate timestamp,
Avail_Qty_MC string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


DROP TABLE IF EXISTS tbl_ProductBarcodeDeltrans;
CREATE EXTERNAL TABLE IF NOT EXISTS tbl_ProductBarcodeDeltrans (
 BarCode_Id int,
ProductId string,
BarCode string,
Brand string,
IsActive string,
CreatedBy string,
CreatedDate timestamp,
Modifiedby string,
ModifiedDate timestamp,
Avail_Qty_MC string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


DROP TABLE IF EXISTS TBL_PRODUCTFORM;
CREATE EXTERNAL TABLE IF NOT EXISTS TBL_PRODUCTFORM (
PFORM_ID int,
PFORM_NAME string,
CREATEDBY string,
CREATEDDATE DATE,
MODIFIEDBY string,
MODIFIEDDATE DATE,
Doc_PformId string,
Doc_PformName string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


DROP TABLE IF EXISTS tbl_Production_Codes;
CREATE EXTERNAL TABLE IF NOT EXISTS tbl_Production_Codes (
Id int,
Production_Code string,
Created_date timestamp,
Plantid string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


DROP TABLE IF EXISTS tbl_purcharorderproducts;
CREATE EXTERNAL TABLE IF NOT EXISTS tbl_purcharorderproducts (
poprodid int,
productid int,
quantity int,
poid string,
createdby string,
createddate timestamp,
modifiedby string,
modifieddate timestamp,
NoncoreProduct string,
Ply string,
ProdPrint string,
Prodtop string,
UnitPrice string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


DROP TABLE IF EXISTS tbl_purchaseorder;
CREATE EXTERNAL TABLE IF NOT EXISTS tbl_purchaseorder (
POID int,
PONumber bigint,
PODate timestamp,
ExpDate timestamp,
Vendor string,
isActive string,
Status string,
Description string,
createdby string,
createddate timestamp,
modifiedby string,
modifieddate timestamp,
PaymentStatus string,
AprovedStatus string,
IsCoreType string,
ApprovedDate timestamp,
ApprovedBy string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


DROP TABLE IF EXISTS Tbl_Ratemaster;
CREATE EXTERNAL TABLE IF NOT EXISTS Tbl_Ratemaster (
id int,
Vendor_Id string,
Rate_type string,
Containers string,
Packing_Style_Id string,
Rate string,
Created_Date timestamp,
Effect_Fromstring,
Effect_To string,
Modified_Date timestamp,
Created_by string,
CGST string,
SGST string,
IGST string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


DROP TABLE IF EXISTS Tbl_RateType;
CREATE EXTERNAL TABLE IF NOT EXISTS Tbl_RateType (
Id int,
Rate_type string,
Created_Date timestamp,
Created_by string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


DROP TABLE IF EXISTS Tbl_RawMaterial_Purchase;
CREATE EXTERNAL TABLE IF NOT EXISTS Tbl_RawMaterial_Purchase (
id int,
Entry_Date timestamp,
ID_Number int,
Place string,
Vendor_id string,
Specie string,
Grade string,
Hon_Count string,
Hon_Quantity string,
Rate string,
Agent_Id string,
Shed_Name_id string,
Created_Date timestamp,
Created_by string,
Modifed_Date timestamp,
Modified_by string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


DROP TABLE IF EXISTS TBL_RECEIVEQUANTITYCONFIRM;
CREATE EXTERNAL TABLE IF NOT EXISTS TBL_RECEIVEQUANTITYCONFIRM (
STORE_ID int,
Parent_Id string,
VAREITY string,
PACKINGTYPE string,
BRAND string,
GRADE string,
QUANTITY bigint,
DOT string,
TRANSTYPE string,
CREATEDBY string,
CREATEDDATEtimestamp,
MODIFIEDBY string,
MODIFIEDDATE timestamp,
CONTAINERS string,
ACTION string,
SPECIE string,
FREEZINGTYPE string,
PFORM string,
GLAZE string,
FROZENCOL string,
WEIGHT string,
ISSOAKED string,
Plantid string,
PlantIdFrom string,
IsConfirmed string,
Comments string,
ReceivedId string,
IsRejected string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


DROP TABLE IF EXISTS TBL_ReportConversion;
CREATE EXTERNAL TABLE IF NOT EXISTS TBL_ReportConversion (
ID int,
Freeze_Type string,
VarietyName string,
InnerBags string,
PackingStyleName string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


DROP TABLE IF EXISTS Tbl_RmHonYeilds;
CREATE EXTERNAL TABLE IF NOT EXISTS Tbl_RmHonYeilds (
Id int,
Specie_Id string,
Variety_id string,
Product_form_Id string,
Freeze_Type_Id string,
Soaking_Type string,
Soaking_With string,
Grade_Id string,
Yeild string,
Effect_From timestamp,
To_Date timestamp,
Created_by string,
Created_Date timestamp,
HON_Count string,
Fromvariety string,
Soaktime string,
Count string,
frozencol string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;



DROP TABLE IF EXISTS TBL_RMQUANTITY;
CREATE EXTERNAL TABLE IF NOT EXISTS TBL_RMQUANTITY (
RMQ_ID int,
SPECIE string,
PURPOSE string,
COUNT string,
QUANTITY bigint,
VARIETYstring,
ORGVARIETY string,
Plantid string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


DROP TABLE IF EXISTS Tbl_Roles;
CREATE EXTERNAL TABLE IF NOT EXISTS Tbl_Roles (
Id int,
Role_name string,
Status string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;



DROP TABLE IF EXISTS Tbl_Roleservices;
CREATE EXTERNAL TABLE IF NOT EXISTS Tbl_Roleservices (
RoleId int,
ServiceId string,
Createddate timestamp,
Createdby string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


DROP TABLE IF EXISTS Tbl_ServiceUrls;
CREATE EXTERNAL TABLE IF NOT EXISTS Tbl_ServiceUrls (
Id int,
ServiceName string,
Url string,
CSSClass string,
ParentId string,
Priority string,
Login string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


DROP TABLE IF EXISTS tbl_ShedNames;
CREATE EXTERNAL TABLE IF NOT EXISTS tbl_ShedNames (
Id int,
Shed_name string,
Plant_id string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


DROP TABLE IF EXISTS Tbl_Soaking;
CREATE EXTERNAL TABLE IF NOT EXISTS Tbl_Soaking (
Id int,
Soaking_Code string,
Soaking_name string,
Created_date timestamp,
Created_By string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;



DROP TABLE IF EXISTS TBL_SPECIE;
CREATE EXTERNAL TABLE IF NOT EXISTS TBL_SPECIE (
SPECIE_ID int,
SPECIE_NAME string,
DESCRIPTION string,
CREATEDBY string,
CREATEDDATE timestamp,
MODIFIEDBY string,
MODIFIEDDATE timestamp,
Doc_SpecieId string,
Doc_SpecieName string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;



DROP TABLE IF EXISTS tbl_store;
CREATE EXTERNAL TABLE IF NOT EXISTS tbl_store (
id int,
ProductId string,
quantity string,
lasttrandate timestamp,
trantype string,
ponumber string,
dcnumber string,
MIRnumber string,
MiRDate timestamp,
DCDate timestamp,
createdby string,
createddate timestamp,
issuedplace string,
Modifiedby string,
ModifiedDate timestamp
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


DROP TABLE IF EXISTS tbl_trackdata;
CREATE EXTERNAL TABLE IF NOT EXISTS tbl_trackdata (
id int,
BarCode string,
TrackName string,
PlantId string,
Quantity string,
TransactionType string,
createdate timestamp,
orderid string,
orderprodid string,
Track string,
Palletno string,
Reference_no string,
PalletSerial string,
Production_Code string,
Shift_Received_Plant string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


DROP TABLE IF EXISTS tbl_trackmissingdata;
CREATE EXTERNAL TABLE IF NOT EXISTS tbl_trackmissingdata (
id int,
BarCode string,
TrackName string,
PlantId string,
Quantity string,
TransactionType string,
createdate timestamp,
orderid string,
orderprodid string,
track string,
Palletno string,
Reference_no string,
PalletSerial string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


DROP TABLE IF EXISTS tbl_UserPlants;
CREATE EXTERNAL TABLE IF NOT EXISTS tbl_UserPlants (
ID int,
UserId string,
PlantId string,
CreatedDate timestamp,
CreatedBy string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


DROP TABLE IF EXISTS TBL_USERS;
CREATE EXTERNAL TABLE IF NOT EXISTS TBL_USERS (
UserId int,
USERNAME string,
MOBILENUMBER string,
EMAIL string,
ADDRESS string,
USER_ID string,
FIRSTNAME string,
LASTNAME string,
CREATEDBY string,
CREATEDDATE timestamp,
MODIFIEDBY string,
MODIFIEDDATE timestamp,
PASSWORD string,
USER_ROLE string,
Role_id string,
User_Plant string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


DROP TABLE IF EXISTS TBL_VARIETY;
CREATE EXTERNAL TABLE IF NOT EXISTS TBL_VARIETY (
 VAREITY_ID int,
VARIETYNAME string,
DESCRIPTION string,
CREATEDBY string,
CREATEDDATE timestamp,
MODIFIEDBY string,
MODIFIEDDATE timestamp,
Doc_VarietyId string,
Doc_VarietyName string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


DROP TABLE IF EXISTS tbl_vendor;
CREATE EXTERNAL TABLE IF NOT EXISTS tbl_vendor (
 VendorId int,
VendorBusinessName string,
VendorName string,
VendorAddress string,
VendorEmailAddress string,
VendorMobileNumber string,
VendorBrandName string,
createdby string,
createddate timestamp,
modifiedby string,
modifieddate timestamp,
isactive string,
PlantId string,
ExpDays string,
CoreitemType string,
GST_Number string,
Sac_Code string,
State_Code string,
IsMerchant string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


DROP TABLE IF EXISTS tbl_VendorProduct;
CREATE EXTERNAL TABLE IF NOT EXISTS tbl_VendorProduct (
id int,
vendorid string,
productid string,
price string,
oldprice string,
createddate timestamp,
createdby string,
modifiedby string,
modifieddate timestamp,
ExpDays string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


DROP TABLE IF EXISTS Tbl_WarehouseStock;
CREATE EXTERNAL TABLE IF NOT EXISTS Tbl_WarehouseStock (
 STORE_ID int,
SPECIE string,
BRAND string,
VAREITY string,
CONTAINERS string,
PACKINGTYPE string,
GRADE string,
FREEZINGTYPE string,
FROZENCOL string,
ISSOAKED string,
PFORM string,
GLAZE string,
QUANTITY string,
BALANCE_QTY string,
DOT string,
TRANSTYPE string,
CREATEDBY string,
CREATEDDATE timestamp,
MODIFIEDBY string,
MODIFIEDDATE timestamp,
ORDERNUMBER string,
ACTION string,
WEIGHT string,
ORDERPRODID string,
Plantid string,
Noofworkers string,
comments string,
Track_name string,
Track string,
Palletno string,
Reference_no string,
PalletSerial string,
Tot string,
Code string,
ID_NO string,
From_Count string,
Shifted_Date timestamp,
Shifted_To string,
Parrent_Id string,
Created_Datetime timestamp,
Shift_Received_Plant string,
Production_Code string,
SoakedWith string,
GlazeStatus string,
Cold_Store_Location_Id string,
Vendor_Id string,
Rent_PerPallet string,
Labour_Charge_PerProduct string,
Rent_Bill_Generated string,
Lab_ChargeBill_Generated string,
GatePass_Number string,
Vehicle_Number string,
Driver_Name string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;


DROP TABLE IF EXISTS Tbl_WarehouseStock_Deleted;
CREATE EXTERNAL TABLE IF NOT EXISTS Tbl_WarehouseStock_Deleted (
STORE_ID int,
SPECIE string,
BRAND string,
VAREITY string,
CONTAINERS string,
PACKINGTYPE string,
GRADE string,
FREEZINGTYPE string,
FROZENCOL string,
ISSOAKED string,
PFORM string,
GLAZE string,
QUANTITY string,
BALANCE_QTY string,
DOT string,
TRANSTYPE string,
CREATEDBY string,
CREATEDDATE timestamp,
MODIFIEDBY string,
MODIFIEDDATE timestamp,
ORDERNUMBER string,
ACTION string,
WEIGHT string,
ORDERPRODID string,
Plantid string,
Noofworkers string,
comments string,
Track_name string,
Track string,
Palletno string,
Reference_no string,
PalletSerial string,
Tot string,
Code string,
ID_NO string,
From_Count string,
Shifted_Date timestamp,
Shifted_To string,
Parrent_Id string,
Created_Datetime timestamp,
Shift_Received_Plant string,
Production_Code string,
SoakedWith string,
GlazeStatus string,
Cold_Store_Location_Idstring,
Vendor_Id string,
Rent_PerPallet string,
Labour_Charge_PerProduct string,
Rent_Bill_Generated string,
Lab_ChargeBill_Generated string,
GatePass_Number string,
Vehicle_Number string,
Driver_Name string
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
STORED AS TEXTFILE;
