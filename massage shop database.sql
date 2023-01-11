CREATE DATABASE `massage_app` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

CREATE TABLE `customer` (
  `Customer_ID` int(11) NOT NULL,
  `Customer_firstName` varchar(45) DEFAULT NULL,
  `Customer_LastName` varchar(45) DEFAULT NULL,
  `Customer_PhoneNumber` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Customer_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `massage_app`.`customer`
(`Customer_ID`,
`Customer_firstName`,
`Customer_LastName`,
`Customer_PhoneNumber`)
VALUES
(110235,"Amada","Adams",088-965-6246),
(110257,"Cara","Alexander",099-149-6554),
(110260,"Elle","Anderson",082-654-2624),
(110265,"Felicity","Baker",098-996-5156),
(110266,"Karishma","Carter",094-992-9289),
(110270,"Orianna","Gonzalez",094-639-6282);

CREATE TABLE `order_detail` (
  `Order_No` int(11) NOT NULL,
  `Massage_Time` datetime DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `Total` int(11) DEFAULT NULL,
  PRIMARY KEY (`Order_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `massage_app`.`order_detail`
(`Order_No`,
`Massage_Time`,
`Price`,
`Total`)
VALUES
(1190,"2021-06-01 09:00:00","300,300",600),
(1195,"2021-06-01 09:00:00","1200",1200),
(1198,"2021-06-01 09:00:00","800",800),
(1203,"2021-06-01 09:00:00","600",600),
(1205,"2021-06-01 09:00:00","400,400",800),
(1210,"2021-06-01 09:00:00","400,400,500",1300);

CREATE TABLE `orderline` (
  `Customer_ID` int(11) NOT NULL,
  `Order_Date` datetime DEFAULT NULL,
  `CreditCard` varchar(45) DEFAULT NULL,
  `TotalAmount` int(11) DEFAULT NULL,
  `OrderStatus` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Customer_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `massage_app`.`orderline`
(`Customer_ID`,
`Order_Date`,
`CreditCard`,
`TotalAmount`,
`OrderStatus`)
VALUES
(110235,"2021-06-01 09:00:00","Bangkok Bank","paid"),
(110257,"2021-06-01 09:00:00","Kasikorn","paid"),
(110260,"2021-06-01 09:00:00","Krung Thai","overdue"),
(110265,"2021-06-01 09:00:00","Krung Thai","paid"),
(110266,"2021-06-01 09:00:00","TMB","overdue"),
(110270,"2021-06-01 09:00:00","Kasikorn","paid");

CREATE TABLE `product` (
  `MassageType` char(50) NOT NULL,
  `Massage_No` int(11) DEFAULT NULL,
  `Massage_Time` datetime DEFAULT NULL,
  PRIMARY KEY (`MassageType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `massage_app`.`product`
(`MassageType`,
`Massage_No`,
`Massage_Time`)
VALUES
("Aromatherapy",1190,"2021-06-01 09:00:00"),
("Deep tissue massage",1195,"2021-06-01 09:00:00"),
("Hot stone massage",1198,"2021-06-01 09:00:00"),
("Normal massage",1203,"2021-06-01 09:00:00"),
("Shiatsu massage",1210,"2021-06-01 09:00:00"),
("Sports massage",1205,"2021-06-01 09:00:00");
