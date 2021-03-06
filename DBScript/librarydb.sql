//amal_salh2006@yahoo.com
create database library
use library
CREATE TABLE [dbo].[countries](
	[country_id] [int] NOT NULL primary key,
	[name] [varchar](50) NULL)
	//fill table countries
	INSERT INTO countries (country_id,name) VALUES

(1, 'Afghanistan'),
(2, 'Albania'),
(3, 'Algeria'),
(4, 'American Samoa'),
(5, 'Andorra'),
(6, 'Angola'),
(7, 'Anguilla'),
(8, 'Antarctica'),
(9, 'Antigua and Barbuda'),
(10, 'Argentina'),
(11, 'Armenia'),
(12, 'Armenia'),
(13, 'Aruba'),
(14, 'Australia'),
(15, 'Austria'),
(16, 'Azerbaijan'),
(17, 'Azerbaijan'),
(18, 'Bahamas'),
(19, 'Bahrain'),
(20, 'Bangladesh'),
(21, 'Barbados'),
(22, 'Belarus'),
(23, 'Belgium'),
(24, 'Belize'),
(25, 'Benin'),
(26, 'Bermuda'),
(27, 'Bhutan'),
(28, 'Bolivia'),
(29, 'Bosnia and Herzegovina'),
(30, 'Botswana'),
(31, 'Bouvet Island'),
(32, 'Brazil'),
(33, 'British Indian Ocean Territory'),
(34, 'Brunei Darussalam'),
(35, 'Bulgaria'),
(36, 'Burkina Faso'),
(37, 'Burundi'),
(38, 'Cambodia'),
(39, 'Cameroon'),
(40, 'Canada'),
(41, 'Cape Verde'),
(42, 'Cayman Islands'),
(43, 'Central African Republic'),
(44, 'Chad'),
(45, 'Chile'),
(46, 'China'),
(47, 'Christmas Island'),
(48, 'Cocos (Keeling) Islands'),
(49, 'Colombia'),
(50, 'Comoros'),
(51, 'Congo'),
(52, 'Congo, The Democratic Republic of The'),
(53, 'Cook Islands'),
(54, 'Costa Rica'),
(55, 'Cote D''ivoire'),
(56, 'Croatia'),
(57, 'Cuba'),
(58, 'Cyprus'),
(60, 'Czech Republic'),
(61, 'Denmark'),
(62, 'Djibouti'),
(63, 'Dominica'),
(64, 'Dominican Republic'),
(65, 'Easter Island'),
(66, 'Ecuador'),
(67, 'Egypt'),
(68, 'El Salvador'),
(69, 'Equatorial Guinea'),
(70, 'Eritrea'),
(71, 'Estonia'),
(72, 'Ethiopia'),
(73, 'Falkland Islands (Malvinas)'),
(74, 'Faroe Islands'),
(75, 'Fiji'),
(76, 'Finland'),
(77, 'France'),
(78, 'French Guiana'),
(79, 'French Polynesia'),
(80, 'French Southern Territories'),
(81, 'Gabon'),
(82, 'Gambia'),
(83, 'Georgia'),
(85, 'Germany'),
(86, 'Ghana'),
(87, 'Gibraltar'),
(88, 'Greece'),
(89, 'Greenland'),
(91, 'Grenada'),
(92, 'Guadeloupe'),
(93, 'Guam'),
(94, 'Guatemala'),
(95, 'Guinea'),
(96, 'Guinea-bissau'),
(97, 'Guyana'),
(98, 'Haiti'),
(99, 'Heard Island and Mcdonald Islands'),
(100, 'Honduras'),
(101, 'Hong Kong'),
(102, 'Hungary'),
(103, 'Iceland'),
(104, 'India'),
(105, 'Indonesia'),
(106, 'Indonesia'),
(107, 'Iran'),
(108, 'Iraq'),
(109, 'Ireland'),
(110, 'Israel'),
(111, 'Italy'),
(112, 'Jamaica'),
(113, 'Japan'),
(114, 'Jordan'),
(115, 'Kazakhstan'),
(116, 'Kazakhstan'),
(117, 'Kenya'),
(118, 'Kiribati'),
(119, 'Korea, North'),
(120, 'Korea, South'),
(121, 'Kosovo'),
(122, 'Kuwait'),
(123, 'Kyrgyzstan'),
(124, 'Laos'),
(125, 'Latvia'),
(126, 'Lebanon'),
(127, 'Lesotho'),
(128, 'Liberia'),
(129, 'Libyan Arab Jamahiriya'),
(130, 'Liechtenstein'),
(131, 'Lithuania'),
(132, 'Luxembourg'),
(133, 'Macau'),
(134, 'Macedonia'),
(135, 'Madagascar'),
(136, 'Malawi'),
(137, 'Malaysia'),
(138, 'Maldives'),
(139, 'Mali'),
(140, 'Malta'),
(141, 'Marshall Islands'),
(142, 'Martinique'),
(143, 'Mauritania'),
(144, 'Mauritius'),
(145, 'Mayotte'),
(146, 'Mexico'),
(147, 'Micronesia, Federated States of'),
(148, 'Moldova, Republic of'),
(149, 'Monaco'),
(150, 'Mongolia'),
(151, 'Montenegro'),
(152, 'Montserrat'),
(153, 'Morocco'),
(154, 'Mozambique'),
(155, 'Myanmar'),
(156, 'Namibia'),
(157, 'Nauru'),
(158, 'Nepal'),
(159, 'Netherlands'),
(160, 'Netherlands Antilles'),
(161, 'New Caledonia'),
(162, 'New Zealand'),
(163, 'Nicaragua'),
(164, 'Niger'),
(165, 'Nigeria'),
(166, 'Niue'),
(167, 'Norfolk Island'),
(168, 'Northern Mariana Islands'),
(169, 'Norway'),
(170, 'Oman'),
(171, 'Pakistan'),
(172, 'Palau'),
(173, 'Palestinian Territory'),
(174, 'Panama'),
(175, 'Papua New Guinea'),
(176, 'Paraguay'),
(177, 'Peru'),
(178, 'Philippines'),
(179, 'Pitcairn'),
(180, 'Poland'),
(181, 'Portugal'),
(182, 'Puerto Rico'),
(183, 'Qatar'),
(184, 'Reunion'),
(185, 'Romania'),
(186, 'Russia'),
(187, 'Russia'),
(188, 'Rwanda'),
(189, 'Saint Helena'),
(190, 'Saint Kitts and Nevis'),
(191, 'Saint Lucia'),
(192, 'Saint Pierre and Miquelon'),
(193, 'Saint Vincent and The Grenadines'),
(194, 'Samoa'),
(195, 'San Marino'),
(196, 'Sao Tome and Principe'),
(197, 'Saudi Arabia'),
(198, 'Senegal'),
(199, 'Serbia and Montenegro'),
(200, 'Seychelles'),
(201, 'Sierra Leone'),
(202, 'Singapore'),
(203, 'Slovakia'),
(204, 'Slovenia'),
(205, 'Solomon Islands'),
(206, 'Somalia'),
(207, 'South Africa'),
(208, 'South Georgia and The South Sandwich Islands'),
(209, 'Spain'),
(210, 'Sri Lanka'),
(211, 'Sudan'),
(212, 'Suriname'),
(213, 'Svalbard and Jan Mayen'),
(214, 'Swaziland'),
(215, 'Sweden'),
(216, 'Switzerland'),
(217, 'Syria'),
(218, 'Taiwan'),
(219, 'Tajikistan'),
(220, 'Tanzania, United Republic of'),
(221, 'Thailand'),
(222, 'Timor-leste'),
(223, 'Togo'),
(224, 'Tokelau'),
(225, 'Tonga'),
(226, 'Trinidad and Tobago'),
(227, 'Tunisia'),
(228, 'Turkey'),
(229, 'Turkey'),
(230, 'Turkmenistan'),
(231, 'Turks and Caicos Islands'),
(232, 'Tuvalu'),
(233, 'Uganda'),
(234, 'Ukraine'),
(235, 'United Arab Emirates'),
(236, 'United Kingdom'),
(237, 'United States'),
(238, 'United States Minor Outlying Islands'),
(239, 'Uruguay'),
(240, 'Uzbekistan'),
(241, 'Vanuatu'),
(242, 'Vatican City'),
(243, 'Venezuela'),
(244, 'Vietnam'),
(245, 'Virgin Islands, British'),
(246, 'Virgin Islands, U.S.'),
(247, 'Wallis and Futuna'),
(248, 'Western Sahara'),
(249, 'Yemen'),
(250, 'Yemen'),
(251, 'Zambia'),
(252, 'Zimbabwe');

//table for users
CREATE TABLE [dbo].[u_user](
	[userno] [int] IDENTITY(1,1) NOT NULL primary key,
	[email] [nvarchar](50) NOT NULL unique,
	[dob] [date] ,
	[joindate] [date]  DEFAULT (getdate()),
	[upassword] [nvarchar](50),
	[lastlogin] [date] ,
	[ustatus] [nvarchar](50)  DEFAULT ('active'),
	[urole] [nvarchar](50)  DEFAULT ('user'),
	[fname] [nvarchar](50) not NULL,
	[lname] [nvarchar](50) NULL,
	[username] [nvarchar](50) not null unique,
	[country] [int]FOREIGN KEY REFERENCES [countries] (country_id),
  CONSTRAINT [chc_ststus] CHECK  (([ustatus]='Active' OR [ustatus]='block'))
 )
// insert admin user
insert into u_user(email,upassword,urole,fname,lname,username,country)
values('adminnn@myweb.com','zz0123456X','admin','judi','kale','judi1995',240)

//table of authors
CREATE TABLE [dbo].[author](
	[suth_no] [int] IDENTITY(1,1) primary key,
	[fname] [nvarchar](50) not null,
	[lname] [nvarchar](50) not null,
	[dob] [date] ,
	[brief] [nvarchar](250) ,
	[country] [int] FOREIGN KEY REFERENCES[countries] (country_id)
	)
	//table of cateogries
	CREATE TABLE [dbo].[dept](
	[dept_id] [int] IDENTITY(1,1) primary key,
	[descrip] [nvarchar](100) ,
	[dept_name] [nvarchar](50) not NULL)
	
	//table of books
	
	CREATE TABLE [dbo].[book](
	[b_id] [int] IDENTITY(1,1) primary key,
	[bookname] [nvarchar](50) not null,
	[bookdesc] [nvarchar](100) NULL,
	[dept_id] [int] FOREIGN KEY REFERENCES [dept] (dept_id) ,
	[link] [nvarchar](50) not null,
	[author_id] [int] FOREIGN KEY REFERENCES [author] (suth_no),
	[img] [nvarchar](50) ,
	[downloadtimes] [int] NOT NULL DEFAULT ((0)),
	[addeddate] [date] NULL DEFAULT (getdate())
	)
	//table of rating of books
	CREATE TABLE [dbo].[UserRatings](
	[Id] [int] IDENTITY(1,1) primary key,
	[Rating] [smallint] NOT NULL,
	[bookid] [int] FOREIGN KEY REFERENCES[book] (b_id),
	[userid] [int] FOREIGN KEY REFERENCES[u_user] (userno)
	)
	
	//proc to insert user
	CREATE PROCEDURE [dbo].[Insert_User]
      @email NVARCHAR(20),
      @country NVARCHAR(20),
      @dob NVARCHAR(30),
	    @pass nvarchar(25),
	  @status nvarchar(10),
	  @rl nvarchar(12),
	  @fn nvarchar(25),@ln nvarchar(25),@uname nvarchar(50)
	
AS
BEGIN
      SET NOCOUNT ON;
      IF EXISTS(SELECT userno FROM u_user WHERE email = @email)
      BEGIN
            SELECT -1 -- email exists.
      END
     else if exists(select userno from u_user where username=@uname)
          begin
		  select 2 -----username exists  
     end
      ELSE
      BEGIN
            INSERT INTO u_user
                    (email,country,dob,joindate,upassword,ustatus,urole,fname,lname,username)
            VALUES
                    (@email,@country,@dob,getdate(),@pass,@status,@rl,@fn,@ln,@uname)
           
            SELECT SCOPE_IDENTITY() -- UserId                 
     END
END



GO
//proc to insert category
create procedure [dbo].[insertdept]
@name nvarchar(50),
@desc nvarchar(50)
as
begin
if exists(select * from dept where dept_name=@name)
begin
select 1; --dept name exists before
end
else
begin
insert into dept values(@name,@desc)
select 2; --inserted
end

end

GO
//
proc to insert rating
CREATE PROCEDURE [dbo].[insrtrating]
(@rating smallint,@bookid int,@userid int)
as
 
begin
if exists(select Rating from userratings where bookid=@bookid and userid=@userid)
begin
update UserRatings
set rating=@rating where userid=@userid and bookid=@bookid
end
else
begin
insert into UserRatings(Rating,bookid,userid)values(@rating,@bookid,@userid)
end
end
GO


//
proc to get number of login and register users for current day
CREATE procedure [dbo].[numuser]

@regist int output,
@login int output
as
begin
select @login=count(*) from u_user where lastlogin=cast(getdate() as date) 
select @regist= count(*) from u_user where joindate=cast(getdate() as date)
END



GO
//proc to validate user
CREATE PROCEDURE [dbo].[Validate_User]
      @Umail NVARCHAR(20),
      @Password NVARCHAR(20)
 ,@usename nvarchar(50) output,@case int output,@userid int output
AS
BEGIN
      
 IF @umail IS NOT NULL and @Password is not null
BEGIN
 IF  EXISTS(SELECT username FROM u_user WHERE email=@umail and upassword  = @Password and ustatus='active' and urole='admin')
    BEGIN
	select @usename =username,@userid=userno from u_user where email=@umail
	set @case=-4 --admin
			end
else IF  EXISTS(SELECT username FROM u_user WHERE email=@umail and upassword  = @Password and ustatus='active' and urole='user')
 BEGIN
   UPDATE u_user
 SET LastLogin = GETDATE()
 WHERE email = @Umail
 SET @case= -1  -- User Valid
	select @usename =username,@userid=userno from u_user where email=@umail
            END
            ELSE 
		
			 
			
			begin
			set @case= -3 --user invaild
			end
      END
      
END



GO
