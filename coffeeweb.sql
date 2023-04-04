CREATE DATABASE CoffeeShop
USE CoffeeShop

CREATE TABLE tblMenu
(MN_ID int primary key identity(1,1),
MN_Name nvarchar(50),
MN_Level int,
MN_Parent int,
MN_Link nvarchar(50),
MN_Order nvarchar(50),
MN_Status nvarchar(50),
MN_Note nvarchar(50))


alter table tblMenu 
alter column MN_Link nvarchar(250)

CREATE TABLE tblFooter
(FO_IDFooter int primary key identity(1,1),
FO_Describe nvarchar(250) ,
FO_Address nvarchar(50) ,
FO_Mail nvarchar(50) ,
FO_Phone nvarchar(50) ,
FO_Img1 nvarchar(50) ,
FO_Img2 nvarchar(50) ,	
FO_Title1 nvarchar(50) ,
FO_Title2 nvarchar(50) ,
FO_Status int ,
FO_Note nchar(10) )

CREATE TABLE tblProduct
(PR_IDProduct int primary key identity(1,1),
PR_NameProduct nvarchar(50) ,
PR_Type nvarchar(50) ,
PR_Img nvarchar(50) ,
PR_Price float ,
PR_Status int ,
PR_Note nvarchar(50))


CREATE TABLE tblProductBar
(PB_IDProductBar int primary key identity(1,1),
PB_Type nvarchar(50) ,
PB_NameType nvarchar(50) ,
PB_Status int ,
PB_Note nvarchar(50))

CREATE TABLE tblCart
(CA_IDCart int primary key identity(1,1) ,
PR_IDProduct int foreign key references tblProduct(PR_IDProduct),
US_UserID int foreign key references tblUsers(US_UserID))


CREATE TABLE tblNewsBlog
(NB_IDNewsBlog int primary key identity(1,1),
NB_Title nvarchar(50) ,
NB_Describe nvarchar(250) ,
NB_Img nvarchar(50) ,
NB_Writer nvarchar(50) ,
NB_Like int ,
NB_Comment int ,
NB_Status int ,
NB_Note nvarchar(50))

CREATE TABLE tblShopDetail
(SD_IDShopDetails int primary key identity(1,1),
PR_IDPRroduct int foreign key references tblProduct(PR_IDProduct),
SD_Describe nvarchar(250) ,
SD_StatusProduct nvarchar(250) ,
SD_Quantity int ,
SD_Link nvarchar(50) ,
SD_Status int ,
SD_Note nchar(10) )

CREATE TABLE tblShopSpecial
(SS_IDShopSpecail int primary key identity(1,1),
PR_IDProduct int foreign key references tblProduct(PR_IDProduct),
SS_Descibe nvarchar(250) ,
SS_Img nvarchar(50) ,
SS_Type nvarchar(50) ,
SS_Price float ,
SS_Status int ,
SS_NameProduct nvarchar(50) )

CREATE TABLE tblUsers
(US_UserID INT IDENTITY(1,1) PRIMARY KEY,
US_FullName NVARCHAR(50),
US_UserName NVARCHAR(50),
US_Password NVARCHAR(50),
US_Phone CHAR(11),
US_Email NVARCHAR(50),
US_Status NVARCHAR(10),
US_Note nchar(10))


CREATE TABLE tblContact
(CT_IDContact INT IDENTITY(1,1) PRIMARY KEY,
CT_FullName NVARCHAR(50),
CT_Email NVARCHAR(50),
CT_Topic NVARCHAR(50),
CT_Idea CHAR(250))


CREATE TABLE tblCheckOut
(CO_IDCheckOut INT IDENTITY(1,1) PRIMARY KEY,
CO_FullName NVARCHAR(50),
CO_MethodOfPayment NVARCHAR(50),
CO_Phone NVARCHAR(50),
CO_AccountNumber CHAR(50),
CO_AdditionalInformation CHAR(50),
CO_Totals Nvarchar(50),
CO_Status NVARCHAR(50),
US_UserID int foreign key references tblUsers(US_UserID),
DeliveryAddress Nvarchar(250),
CO_Time NVARCHAR(50),
CO_Time1 datetime not null DEFAULT getdate())
Select GETDATE() as Date from tblCheckOut


CREATE TABLE tblBookATable
(BT_IDBook INT IDENTITY(1,1) PRIMARY KEY,
BT_Name NVARCHAR(50),
BT_Phone NVARCHAR(50),
BT_Quantity int,
BT_DateBook datetime,
BT_Status nvarchar(50))

  ALTER TABLE tblBookATable
ALTER COLUMN BT_DateBook NVARCHAR(50);

insert into tblProduct (PR_NameProduct, PR_Type, PR_Img, PR_Price, PR_Status, PR_Note)  values
(  'Black Coffee', 'blackcoffee', 'assets/images/shop/img_01.png', 1.5, 1, null),
(  'Package Coffee ISLand', 'packagecoffee', 'assets/images/shop/img_02.png', 4.0, 1, null),
(  'Package Coffee Daklak', 'packagecoffee', 'assets/images/shop/img_03.png', 5.0, 1, null),
(  'Package Coffee Oli', 'packagecoffee', 'assets/images/shop/img_04.png', 6.0, 1, null),
(  'Package Coffee Arabica', 'packagecoffee', 'assets/images/shop/img_05.png',  7.0, 1, null),
(  'Package Coffee Amecino', 'packagecoffee', 'assets/images/shop/img_06.png',  8.0, 1, null),
(  'Black Stone', 'blackcoffee', 'assets/images/shop/img_07.png', 2.0, 1, null),
( 'Milk Coffee', 'milkcoffee', 'assets/images/shop/img_08.png',  2.0, 1, null),
(  'cream coffee', 'milkcoffee', 'assets/images/shop/img_09.png', 3.0, 1, null),
(  'Milk Coffee', 'milkcoffee', 'assets/images/shop/img_10.png',  1.5, 1, null),
(  'Black Coffee', 'blackcoffee', 'assets/images/shop/img_11.png', 2.0, 1, null),
(  'Milk Coffee', 'milkcoffee', 'assets/images/shop/img_12.png',  3.0, 1, null),
(  'cream coffee', 'milkcoffee', 'assets/images/shop/img_13.png',  2.0, 1, null),
( 'Black Coffee', 'blackcoffee', 'assets/images/shop/img_14.png',  1.0, 1, null),
( 'Black Coffee', 'blackcoffee', 'assets/images/shop/img_15.png',  1.5, 1, null)
select * from tblFooter
insert into tblFooter(FO_Describe ,FO_Address ,FO_Mail ,FO_Phone,FO_Img1 ,FO_Img2,	FO_Title1 ,FO_Title2 ,FO_Status ,FO_Note) values
('CLC Coffe will bring you to enjoy beautiful cups of coffee in terms of form and taste with a quiet space. All of the above create a perfect harmony. Why dont you try the experience and cups of coffee at CLC Coffe?', 
'197 - Le Duan street - Vinh city', 'dinhanh0977@gmail.com', '+84097196 096',
'assets/images/recent_post/img_01.png', 'assets/images/recent_post/img_02.png',
'Best Americano Coffee Trials', 'Reviews of CLC-Coffee products', 1, null)

insert into tblShopDetail (PR_IDPRroduct, SD_Describe, SD_StatusProduct ,SD_Quantity,SD_Link ,SD_Status,SD_Note )values
(1, 'We use the manual roasting method, with all the senses and the artists breakdown to preserve the full spirit and flavor of each coffee plant.', 'In stock', 1, '#', 1, null),
(2, 'We use the manual roasting method, with all the senses and the artists breakdown to preserve the full spirit and flavor of each coffee plant.', 'In stock', 1, '#', 1, null),
(3, 'We use the manual roasting method, with all the senses and the artists breakdown to preserve the full spirit and flavor of each coffee plant.', 'Out of stock', 1, '#', 1, null),
(4, 'Coffee is made by first roasting green coffee beans over hot coals in a brewing pot.', 'In stock', 1, '#', 1, null),
(5, 'We use the manual roasting method, with all the senses and the artists breakdown to preserve the full spirit and flavor of each coffee plant.', 'In stock', 1, '#', 1, null),
(6, 'We use the manual roasting method, with all the senses and the artists breakdown to preserve the full spirit and flavor of each coffee plant.', 'In stock', 1, '#', 1, null),
(7, 'We use the manual roasting method, with all the senses and the artists breakdown to preserve the full spirit and flavor of each coffee plant.', 'In stock', 1, '#', 1, null),
(8, 'We use the manual roasting method, with all the senses and the artists breakdown to preserve the full spirit and flavor of each coffee plant.', 'In stock', 1, '#', 1, null),
(9, 'We use the manual roasting method, with all the senses and the artists breakdown to preserve the full spirit and flavor of each coffee plant.', 'Out of stock', 1, '#', 1, null),
(10, 'We use the manual roasting method, with all the senses and the artists breakdown to preserve the full spirit and flavor of each coffee plant.', 'In stock', 1, '#', 1, null),
(11, 'We use the manual roasting method, with all the senses and the artists breakdown to preserve the full spirit and flavor of each coffee plant.', 'Out of stock', 1, '#', 1, null),
(12, 'We use the manual roasting method, with all the senses and the artists breakdown to preserve the full spirit and flavor of each coffee plant.', 'In stock', 1, '#', 1, null),
(13, 'We use the manual roasting method, with all the senses and the artists breakdown to preserve the full spirit and flavor of each coffee plant.', 'In stock', 1, '#', 1, null),
(14, 'We use the manual roasting method, with all the senses and the artists breakdown to preserve the full spirit and flavor of each coffee plant.', 'Out of stock', 1, '#', 1, null),
(15, 'We use the manual roasting method, with all the senses and the artists breakdown to preserve the full spirit and flavor of each coffee plant.', 'Out of stock', 1, '#', 1, null)

insert into tblShopSpecial
(PR_IDProduct ,SS_Descibe  ,SS_Img  ,SS_Type  ,SS_Price  ,SS_Status,SS_NameProduct) values
(2,'Indeed, when enjoying black coffee, you will immediately feel the characteristic bitter taste with a bit of sourness, the strong aroma of coffee beans.','assets/images/menu/img_01.png','blackcoffee',2.0,1,'Black Coffee'),
(7,'Coffee is brewed with a traditional filter combined with condensed milk to create a rich flavor, a harmony between the sweetness on the tip of the tongue and the elegant bitterness in the aftertaste.','assets/images/menu/img_02.png','milkcoffee',2.0,1,'Milk Coffee'),
(8,'Coffee is a choice exclusively for those who like to enjoy the taste of coffee but are afraid of being drunk or prefer the sweet taste more than the bitter taste.','assets/images/menu/img_03.png','milkcoffee',3.0,1,'AMERICANO'),
(9,'Coffee fresh milk will be a great choice for us to both have enough energy and spirit to be always refreshed and awake for a long working day.','assets/images/menu/img_04.png','blackcoffee',2.0,1,'Coffee Fresh'),
(10,'The combination of chocolate and sesame brings a taste that is both sweet and fatty, creating a delight for customers','assets/images/menu/img_05.png','milkcoffee',2.0,1,'Milk Coffee'),
(11,'Coffee flavor combined with caramel creates an unstoppable attraction at CLC Coffee','assets/images/menu/img_06.png','blackcoffee',2.0,1,'Coffee flavor')

insert into tblMenu (MN_Name,MN_Level,MN_Parent ,MN_Link ,MN_Order ,MN_Status,MN_Note) values
('Home',1,0,'',1,1,null),
('Shop',1,0,'',1,1,null),
('Shop',2,2,'',1,1,null),
('Shop Detail',2,2,'',2,1,null),
('Function',1,0,'',1,1,null),
('Cart',1,5,'',1,1,null),
('CheckOut',2,5,'',2,1,null),
('Book A Table',5,0,'',3,1,null),
('Contact us',1,0,'',1,1,null)

insert into tblProductBar(PB_Type ,PB_NameType  ,PB_Status ,PB_Note) values
('blackcoffee','Black Coffee',1,null),
('milkcoffee','Milk Coffee',1,null),
('packagecoffee','Package Coffee',1,null)

insert into tblNewsBlog(NB_Title,NB_Describe ,NB_Img,NB_Writer ,NB_Like ,NB_Comment  ,NB_Status  ,NB_Note ) values
('AMERICANO SPECIAL FLAVOR','Coffee is made by first roasting green coffee beans over hot coals in a grinder. After the beans are roasted, each participant will receive...','assets/images/blog/img_01.png','DinhAnh',68,79,1,null),
('PROCESS OF COFFEE COFFEE','Coffee is made by first roasting green coffee beans over hot coals in a grinder. After the beans are roasted, each participant will receive...','assets/images/blog/img_02.png','DinhAnh',68,79,1,null),
('IDEAL RELEASE PLACE','Coffee is made by first roasting green coffee beans over hot coals in a grinder. After the beans are roasted, each participant will receive...','assets/images/blog/img_03.png','DinhAnh',68,79,1,null)



select tblCart.CA_IDCart, tblProduct.PR_NameProduct, tblProduct.PR_Img, tblProduct.PR_Price  from tblCart join tblProduct on tblProduct.PR_IDProduct = tblCart.PR_IDProduct where tblCart.US_UserID= 1005  group by  tblProduct.PR_NameProduct, tblProduct.PR_Img, tblProduct.PR_Price, tblCart.CA_IDCart order by tblCart.CA_IDCart
 select sum(PR_Price) as Totals  from tblProduct join tblCart on tblProduct.PR_IDProduct = tblCart.PR_IDProduct 
 select tblProduct.PR_NameProduct, tblProduct.PR_Img, tblProduct.PR_Price from tblProduct join tblCart on tblProduct.PR_IDProduct = tblCart.PR_IDProduct group by tblProduct.PR_NameProduct, tblProduct.PR_Img, tblProduct.PR_Price