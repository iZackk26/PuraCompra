USE puracompra;

-- 1. Insert Users
INSERT INTO Users (name, lastname, mail, password, phoneNumber, gender, country, role) VALUES
('Admin', 'Admin', 'admin@admin.com','root', '911', 'male','Costa Rica', 'admin' ),
('Isaac', 'Ramírez', 'izackk26@icloud.com','1234', '1238-8281', 'male','Costa Rica', 'user' ),
('Roosevelt', 'Pérez', 'roperez@yahoo-questions.com','1234', '1234-9785', 'male', 'Costa Rica', 'user'),
('Josué', 'Matamoros', 'jmatamoros@gmail.com','1234', '8745-1708', 'male', 'Costa Rica', 'user'),
('Luis', 'Cubillo', 'luisalonso2005@gmail.com', '1234', '1234-5678', 'male', 'Costa Rica', 'user');

-- 2. Insert Addresses
INSERT INTO Addresses (UsersID, address) VALUES
(2, 'San Ramón, Alajuela'),
(2, 'Santa Clara, San Carlos'),
(3, 'Florencia, San Carlos'),
(4, 'Calle Pechuga, San Ramón'),
(4, 'Santa Clara, San Carlos (Solo Jueves)');

-- 3. Insert Sellers
INSERT INTO Sellers (SellersID, name, url, type) VALUES
(1, 'Apple', 'https://www.apple.com/', 'RETAIL_DISTRIBUTORS'),
(2, 'Razer', 'https://www.razer.com/', 'RETAIL_DISTRIBUTORS'),
(3, 'Gymshark', 'https://www.gymshark.com/', 'PLATFORM_PARTNERS'),
(4, 'Sonos', 'https://www.sonos.com/', 'PLATFORM_PARTNERS'),
(5, 'Yeezy', 'https://www.yeezy.com/', 'PLATFORM_PARTNERS'),
(6, 'Amazon', 'https://www.amazon.com/', 'DIGITAL_RESELLERS');

-- 4. Insert Products
INSERT INTO Products (Sellers, name, stock, description, price, imageUrl) VALUES
(1, 'AirPods Max', 10, 'Apple AirPods Max', 549, '/assets/products/apple/airPodsMax/airPodsMax.png'),
(1, 'Apple Vision', 5, 'Apple Vision Pro', 3499, '/assets/products/apple/appleVision/appleVision.png'),
(1, 'iPad Pro', 20, 'Apple iPad Pro 2021', 1099, '/assets/products/apple/ipadPro/ipadPro.png'),
(1, 'iPhone 15', 15, 'Apple iPhone 15 Pro Max', 1199, '/assets/products/apple/iphone15/iphone15.png'),
(1, 'Mac M3 Air', 10, 'Apple MacBook Air M3', 999, '/assets/products/apple/macM3Air/macM3Air.png'),
(1, 'Mac M3 Pro', 8, 'Apple MacBook Pro M3', 1299, '/assets/products/apple/macM3Pro/macM3Pro.png'),
(2, 'Barracuda', 10, 'Razer Barracuda Headset', 159, '/assets/products/razer/barracuda/barracuda.png'),
(2, 'Blade', 5, 'Razer Blade 15', 2499, '/assets/products/razer/blade/blade.png'),
(2, 'Huntsman Mini', 20, 'Razer Huntsman Mini Keyboard', 129, '/assets/products/razer/huntsmanMini/huntsmanMini.png'),
(2, 'Mercury', 15, 'Razer Mercury Mouse', 69, '/assets/products/razer/mercury/mercury.png'),
(2, 'Viper', 10, 'Razer Viper Mouse', 79, '/assets/products/razer/viper/viper.png'),
(2, 'Viper Ultimate', 8, 'Razer Viper Ultimate Mouse', 149, '/assets/products/razer/viperUltimate/viperUltimate.png'),
(4, 'Arc', 10, 'Sonos Arc Soundbar', 899, '/assets/products/sonos/arc/arc.png'),
(4, 'Era 300', 15, 'Sonos Era 300 Speaker', 449, '/assets/products/sonos/era300/era300.png'),
(4, 'Move 2', 20, 'Sonos Move 2 Speaker', 399, '/assets/products/sonos/move2/move2.png'),
(4, 'Roam', 25, 'Sonos Roam Speaker', 179, '/assets/products/sonos/roam/roam.png'),
(4, 'Sub', 8, 'Sonos Sub Subwoofer', 749, '/assets/products/sonos/sub/sub.png'),
(4, 'Turntable Set', 5, 'Sonos Turntable Set', 849, '/assets/products/sonos/turntableSet/turntableSet.png'),
(5, 'Alien', 10, 'Yeezy Alien Shoes', 220, '/assets/products/yeezy/alien/alien.png'),
(5, 'Ararat', 15, 'Yeezy Ararat Shoes', 200, '/assets/products/yeezy/ararat/ararat.png'),
(5, 'Bone', 20, 'Yeezy Bone Shoes', 250, '/assets/products/yeezy/bone/bone.png'),
(5, 'Stone', 25, 'Yeezy Stone Shoes', 230, '/assets/products/yeezy/stone/stone.png'),
(5, 'Synth', 12, 'Yeezy Synth Shoes', 300, '/assets/products/yeezy/synth/synth.png'),
(5, 'Zebra', 18, 'Yeezy Zebra Shoes', 280, '/assets/products/yeezy/zebra/zebra.png');

-- 5. Insert Promotions
INSERT INTO Promotions (PromotionsID, category, discount, description) VALUES
(1, 'HOLIDAYS', 0.10, '10% off on all products, Thanksgiving Sale'),
(2, 'FREE_SHIPING', 0.05, '5% off on all products'),
(3, 'MEMBERS', 0.15, '15% off on all products'),
(4, 'HOLIDAYS', 0.20, '20% off on all products, Christmas Sale'),
(5, 'FREE_SHIPING', 0.10, '10% off on all products'),
(6, 'HOLIDAYS', 0.15, '15% off, Black Friday');

-- 6. Insert ProductsPromotions
INSERT INTO ProductsPromotions (ProductsID, PromotionsID) VALUES
(1, 1),
(1, 5),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 1),
(8, 2),
(9, 3),
(10, 4),
(11, 5),
(12, 6),
(13, 1),
(14, 2),
(15, 3),
(16, 4),
(17, 5),
(18, 6),
(19, 1),
(20, 2),
(21, 3);

-- 7. Price History
INSERT INTO PriceHistory ( ProductID, price) VALUES
(1, 459.99),
(1, 352.25),
(3, 1000),
(4, 1499.99),
(5, 50),
(6, 50),
(7, 100),
(8, 51.52),
(9, 180),
(10, 2000),
(11, 3500),
(6, 42.99),
(10, 2100);

-- 8. Insert Reviews
INSERT INTO Reviews (UsersID, ProductsID, body, star) VALUES
(2, 6, 'This MacBook Pro is amazing! The performance is top-notch and the battery life is impressive. Highly recommended!', 'FIVE_STAR'),
(3, 6, 'The Mac M3 Pro is incredibly fast and handles all my tasks with ease. The display is stunning too!', 'FIVE_STAR'),
(4, 6, 'I am very satisfied with this MacBook. It is very reliable and has a great build quality. Perfect for professionals.', 'FIVE_STAR'),
(5, 6, 'I love this laptop! The speed and performance are unmatched. It is a bit pricey, but worth every penny.', 'FIVE_STAR'),
(2, 1, 'The AirPods Max are the best headphones I have ever owned. The sound quality is exceptional and the design is beautiful.', 'FIVE_STAR'),
(3, 1, 'These headphones are amazing! The sound quality is superb and the noise cancellation is very effective. Highly recommended!', 'FIVE_STAR'),
(4, 1, 'The AirPods Max are worth every penny. The sound quality is incredible and the build quality is top-notch. Highly recommended!', 'FIVE_STAR'),
(5, 1, 'I am very impressed with the AirPods Max. The sound quality is excellent and the noise cancellation is very effective. Highly recommended!', 'FIVE_STAR'),
(2, 4, 'The iPhone 15 is a fantastic phone. The camera quality is amazing and the performance is top-notch. Highly recommended!', 'FIVE_STAR'),
(3, 4, 'This phone is incredible! The camera quality is outstanding and the performance is unmatched. Highly recommended!', 'FIVE_STAR'),
(4, 4, 'The iPhone 15 is the best phone I have ever owned. The camera quality is superb and the performance is excellent. Highly recommended!', 'FIVE_STAR'),
(5, 4, 'I love this phone! The camera quality is exceptional and the performance is top-notch. Highly recommended!', 'FIVE_STAR'),
(2, 3, 'The iPad Pro is an amazing tablet. The display is stunning and the performance is excellent. Highly recommended!', 'FIVE_STAR'),
(3, 3, 'This tablet is fantastic! The display is beautiful and the performance is top-notch. Highly recommended!', 'FIVE_STAR'),
(4, 3, 'The iPad Pro is worth every penny. The display is incredible and the performance is unmatched. Highly recommended!', 'FIVE_STAR'),
(5, 3, 'I am very impressed with the iPad Pro. The display is stunning and the performance is excellent. Highly recommended!', 'FIVE_STAR'),
(2, 5, 'The Mac M3 Air is a great laptop. The performance is good and the build quality is excellent. Highly recommended!', 'FOUR_STAR'),
(3, 5, 'This laptop is very good! The performance is decent and the build quality is solid. Highly recommended!', 'FOUR_STAR'),
(4, 5, 'The Mac M3 Air is not worth the price. The performance is mediocre and the build quality is poor. Not recommended.', 'TWO_STAR'),
(5, 5, 'I am very disappointed with this laptop. The performance is slow and the build quality is cheap. Not recommended.', 'ONE_STAR'),
(2, 2, 'The Apple Vision is an amazing product. The display is stunning and the performance is top-notch. Highly recommended!', 'FIVE_STAR'),
(3, 2, 'This product is fantastic! The display is beautiful and the performance is excellent. Highly recommended!', 'FIVE_STAR'),
(4, 2, 'The Apple Vision is worth every penny. The display is incredible and the performance is unmatched. Highly recommended!', 'FIVE_STAR'),
(5, 2, 'I am very impressed with the Apple Vision. The display is stunning and the performance is excellent. Highly recommended!', 'FIVE_STAR'),
(2, 7, 'The Barracuda headset is amazing! The sound quality is excellent and the design is comfortable. Highly recommended!', 'FIVE_STAR'),
(3, 7, 'This headset is fantastic! The sound quality is superb and the design is comfortable. Highly recommended!', 'FIVE_STAR'),
(4, 7, 'The Barracuda headset is worth every penny. The sound quality is incredible and the design is comfortable. Highly recommended!', 'FIVE_STAR'),
(5, 7, 'I am very impressed with the Barracuda headset. The sound quality is excellent and the design is comfortable. Highly recommended!', 'FIVE_STAR'),
(2, 8, 'The Razer Blade is an amazing laptop. The performance is top-notch and the build quality is excellent. Highly recommended!', 'FIVE_STAR'),
(3, 8, 'This laptop is fantastic! The performance is excellent and the build quality is top-notch. Highly recommended!', 'FIVE_STAR'),
(4, 8, 'The Razer Blade is worth every penny. The performance is incredible and the build quality is excellent. Highly recommended!', 'FIVE_STAR'),
(5, 8, 'I am very impressed with the Razer Blade. The performance is top-notch and the build quality is excellent. Highly recommended!', 'FIVE_STAR'),
(2, 13, 'The Sonos Arc is an amazing soundbar. The sound quality is excellent and the design is beautiful. Highly recommended!', 'FIVE_STAR'),
(3, 13, 'This soundbar is fantastic! The sound quality is superb and the design is beautiful. Highly recommended!', 'FIVE_STAR'),
(4, 13, 'The Sonos Arc is worth every penny. The sound quality is incredible and the design is beautiful. Highly recommended!', 'FIVE_STAR'),
(5, 13, 'I am very impressed with the Sonos Arc. The sound quality is excellent and the design is beautiful. Highly recommended!', 'FIVE_STAR'),
(2, 15, 'The Sonos Move 2 is an amazing speaker. The sound quality is excellent and the design is beautiful. Highly recommended!', 'FIVE_STAR'),
(3, 15, 'This speaker is fantastic! The sound quality is superb and the design is beautiful. Highly recommended!', 'FIVE_STAR'),
(4, 15, 'The Sonos Move 2 is worth every penny. The sound quality is incredible and the design is beautiful. Highly recommended!', 'FIVE_STAR'),
(5, 15, 'I am very impressed with the Sonos Move 2. The sound quality is excellent and the design is beautiful. Highly recommended!', 'FIVE_STAR'),
(2, 16, 'The Sonos Roam is an amazing speaker. The sound quality is excellent and the design is beautiful. Highly recommended!', 'FIVE_STAR'),
(3, 16, 'This speaker is fantastic! The sound quality is superb and the design is beautiful. Highly recommended!', 'FIVE_STAR'),
(4, 16, 'The Sonos Roam is worth every penny. The sound quality is incredible and the design is beautiful. Highly recommended!', 'FIVE_STAR'),
(5, 16, 'I am very impressed with the Sonos Roam. The sound quality is excellent and the design is beautiful. Highly recommended!', 'FIVE_STAR'),
(2, 17, 'The Sonos Sub is an amazing subwoofer. The sound quality is excellent and the design is beautiful. Highly recommended!', 'FIVE_STAR'),
(3, 17, 'This subwoofer is fantastic! The sound quality is superb and the design is beautiful. Highly recommended!', 'FIVE_STAR'),
(4, 19, 'The Yeezy Alien is an amazing shoe. The design is beautiful and the quality is excellent. Highly recommended!', 'FIVE_STAR'),
(5, 19, 'This shoe is fantastic! The design is superb and the quality is excellent. Highly recommended!', 'FIVE_STAR'),
(4, 19, 'The Yeezy Alien is worth every penny. The design is incredible and the quality is excellent. Highly recommended!', 'FIVE_STAR'),
(5, 19, 'I am very impressed with the Yeezy Alien. The design is beautiful and the quality is excellent. Highly recommended!', 'FIVE_STAR'),
(2, 21, 'The Yeezy Bone is an amazing shoe. The design is beautiful and the quality is excellent. Highly recommended!', 'FIVE_STAR'),
(3, 21, 'This shoe is fantastic! The design is superb and the quality is excellent. Highly recommended!', 'FIVE_STAR'),
(4, 21, 'The Yeezy Bone is worth every penny. The design is incredible and the quality is excellent. Highly recommended!', 'FIVE_STAR'),
(5, 21, 'I am very impressed with the Yeezy Bone. The design is beautiful and the quality is excellent. Highly recommended!', 'FIVE_STAR'),
(2, 23, 'The Yeezy Synth is an amazing shoe. The design is beautiful and the quality is excellent. Highly recommended!', 'FIVE_STAR'),
(3, 23, 'This shoe is fantastic! The design is superb and the quality is excellent. Highly recommended!', 'FIVE_STAR'),
(4, 23, 'The Yeezy Synth is worth every penny. The design is incredible and the quality is excellent. Highly recommended!', 'FIVE_STAR'),
(5, 23, 'I am very impressed with the Yeezy Synth. The design is beautiful and the quality is excellent. Highly recommended!', 'FIVE_STAR'),
(2, 24, 'The Yeezy Zebra is an amazing shoe. The design is beautiful and the quality is excellent. Highly recommended!', 'FIVE_STAR'),
(3, 24, 'This shoe is fantastic! The design is superb and the quality is excellent. Highly recommended!', 'FIVE_STAR');

-- 9. Insert ProductImages
INSERT INTO ProductImages (ProductsID, imageUrl, type, color, colorName) VALUES
(3, '/assets/products/apple/ipadPro/ipadPro.png', false, NULL, NULL),
(3, '/assets/products/apple/ipadPro/ipadProAbove.png', false, NULL, NULL),
(3, '/assets/products/apple/ipadPro/ipadProDiagonal.png', false, NULL, NULL),
(3, '/assets/products/apple/ipadPro/ipadProSide.png', false, NULL, NULL),
(3, '/assets/products/apple/ipadPro/ipadProBlack.png', true, 'Black', 'Black'),
(3, '/assets/products/apple/ipadPro/ipadProWhite.png', true, 'White', 'White'),
(6, '/assets/products/apple/macM3Pro/macM3Pro.png', false, NULL, NULL),
(6, '/assets/products/apple/macM3Pro/macM3ProAbove.png', false, NULL, NULL),
(6, '/assets/products/apple/macM3Pro/macM3ProBack.png', false, NULL, NULL ),
(6, '/assets/products/apple/macM3Pro/macM3ProModels.png', false, NULL, NULL ),
(6, '/assets/products/apple/macM3Pro/macM3ProWhite.png', true, 'White', 'White'),
(6, '/assets/products/apple/macM3Pro/macM3ProBlack.png', true, 'Black', 'Black'),
(14, '/assets/products/sonos/era300/era300.png', false, NULL, NULL),
(14, '/assets/products/sonos/era300/era300BlackAbove.png', false, NULL, NULL),
(14, '/assets/products/sonos/era300/era300Front.png', false, NULL, NULL),
(14, '/assets/products/sonos/era300/era300White.png', true, 'White', 'White'),
(14, '/assets/products/sonos/era300/era300WhiteSpecs.png', false, null, NULL),
(5, '/assets/products/apple/macM3Air/macM3Air.png', false, NULL, NULL),
(5, '/assets/products/apple/macM3Air/macM3AirAbove.png', false, NULL, NULL),
(5, '/assets/products/apple/macM3Air/macM3AirModels.png', false, NULL, NULL),
(5, '/assets/products/apple/macM3Air/macM3AirMidnight.png', true, '#20252f', 'Midnight'),
(5, '/assets/products/apple/macM3Air/macM3AirSilver.png', true, '#848587', 'Silver'),
(5, '/assets/products/apple/macM3Air/macM3AirSpaceGray.png', true, '#515357', 'Space Gray'),
(5, '/assets/products/apple/macM3Air/macM3AirStarlight.png', true, '#938b82', 'Starlight'),
(4, '/assets/products/apple/iphone15/iphone15.png', false, NULL, NULL),
(4, '/assets/products/apple/iphone15/iphone15Side.png', false, NULL, NULL),
(4, '/assets/products/apple/iphone15/iphone15Models.png', false, NULL, NULL),
(4, '/assets/products/apple/iphone15/iphone15BlueTitanium.png', true, '#4b505b', 'Blue Titanium'),
(4, '/assets/products/apple/iphone15/iphone15NaturalTitanium.png', true, '#bcb4aa','Natural Titanium'),
(4, '/assets/products/apple/iphone15/iphone15WhiteTitanium.png', true, '#ebe9e2','White Titanium'),
(1, '/assets/products/apple/airPodsMax/airPodsMax.png', false, NULL, NULL),
(1, '/assets/products/apple/airPodsMax/airPodsMaxSide.png', false, NULL, NULL),
(1, '/assets/products/apple/airPodsMax/airPodsMaxBlack.png', true, 'Black', 'Black'),
(1, '/assets/products/apple/airPodsMax/airPodsMaxSilver.png', true, '#c1c2c3', 'Silver'),
(1, '/assets/products/apple/airPodsMax/airPodsMaxPink.png', true, '#f4d8d3', 'Pink'),
(1, '/assets/products/apple/airPodsMax/airPodsMaxSkyBlue.png', true, '#b8c9dc', 'Sky Blue'),
(2, '/assets/products/apple/appleVision/appleVision.png', false, NULL, NULL),
(2, '/assets/products/apple/appleVision/appleVisionAbove.png', false, NULL, NULL),
(2, '/assets/products/apple/appleVision/appleVisionDiagonal.png', false, NULL, NULL),
(2, '/assets/products/apple/appleVision/appleVisionSide.png', false, NULL, NULL),
(7, '/assets/products/razer/barracuda/barracuda.png', false, 'White', 'White'),
(7, '/assets/products/razer/barracuda/barracudaSideBlack.png', true, 'Black', 'Black'),
(7, '/assets/products/razer/barracuda/barracudaSidePink.png', true, 'Pink', 'Pink'),
(8, '/assets/products/razer/blade/blade.png', false, NULL, NULL),
(8, '/assets/products/razer/blade/bladeAbove.png', false, NULL, NULL),
(8, '/assets/products/razer/blade/bladeFront.png', false, NULL, NULL),
(8, '/assets/products/razer/blade/bladeSide.png', false, NULL, NULL),
(9, '/assets/products/razer/huntsmanMini/huntsmanMini.png', false, NULL, NULL),
(9, '/assets/products/razer/huntsmanMini/huntsmanMiniBlack.png', true, 'Black', 'Black'),
(9, '/assets/products/razer/huntsmanMini/huntsmanMiniFrontWhite.png', true, 'White', 'White'),
(10,'/assets/products/razer/mercury/mercury.png', true, 'White', 'White'),
(10,'/assets/products/razer/mercury/mercurySideBlack.png', false, NULL, NULL),
(10,'/assets/products/razer/mercury/mercuryBackBlack.png', true, 'Black', 'Black'),
(10,'/assets/products/razer/mercury/mercuryDiagonalPink.png', true, 'Pink', 'Pink'),
(11, '/assets/products/razer/viper/viper.png', true, 'White', 'White'),
(11, '/assets/products/razer/viper/viperBlackAbove.png', true, 'Black', 'Black'),
(12, '/assets/products/razer/viperUltimate/viperUltimate.png', true, 'White', 'White'),
(12, '/assets/products/razer/viperUltimate/viperUltimateBlack.png', true, 'Black', 'Black'),
(12, '/assets/products/razer/viperUltimate/viperUltimateGreen.png', true, '#3f5947', 'Green'),
(12, '/assets/products/razer/viperUltimate/viperUltimatePink.png', true, '#ffc5d9', 'Pink'),
(12, '/assets/products/razer/viperUltimate/viperUltimatePinkBase.png', false, NULL, NULL),
(13, '/assets/products/sonos/arc/arc.png', true, 'Black', 'Black'),
(13, '/assets/products/sonos/arc/arcWhite.png', true, 'White', 'White'),
(13, '/assets/products/sonos/arc/arcDiagonal.png', false, NULL, NULL),
(13, '/assets/products/sonos/arc/arcDiagonalWhite.png', false, NULL, NULL),
(15, '/assets/products/sonos/move2/move2.png', true, 'Black', 'Black'),
(15, '/assets/products/sonos/move2/move2White.png', true, 'White', 'White'),
(15, '/assets/products/sonos/move2/move2Green.png', true, '#788472', 'Green'),
(16, '/assets/products/sonos/roam/roam.png', false, NULL, NULL),
(16, '/assets/products/sonos/roam/roamModels.png', false, NULL, NULL),
(16, '/assets/products/sonos/roam/roamBlack.png', true, 'Black', 'Black'),
(16, '/assets/products/sonos/roam/roamBlue.png', true, '#adbdc9', 'Blue'),
(16, '/assets/products/sonos/roam/roamGreen.png', true, '#939a88', 'Green'),
(16, '/assets/products/sonos/roam/roamRed.png', true, '#d45c49', 'Red'),
(16, '/assets/products/sonos/roam/roamWhite.png', true, 'White', 'White'),
(17, '/assets/products/sonos/sub/sub.png', false, Null, NULL),
(17, '/assets/products/sonos/sub/subWhite.png', true, 'White', 'White'),
(17, '/assets/products/sonos/sub/subBlack.png', true, 'Black', 'Black'),
(17, '/assets/products/sonos/sub/subBlackFront.png', false , NULL, NULL),
(17, '/assets/products/sonos/sub/subWhiteAbove.png', false, NULL, NULL),
(18, '/assets/products/sonos/turntableSet/turntableSet.png', true, 'Black', 'Black'),
(18, '/assets/products/sonos/turntableSet/turntableSetWhite.png', true, 'White', 'White'),
(18, '/assets/products/sonos/turntableSet/turntableSetTableBlack.png', false, NULL, NULL),
(18, '/assets/products/sonos/turntableSet/turntableSetTableWhite.png', false, NULL, NULL),
(19, '/assets/products/yeezy/alien/alien.png', false, NULL, NULL),
(19, '/assets/products/yeezy/alien/alienAbove.png', false, NULL, NULL),
(19, '/assets/products/yeezy/alien/alienFront.png', false, NULL, NULL),
(20, '/assets/products/yeezy/ararat/ararat.png', false, NULL, NULL),
(20, '/assets/products/yeezy/ararat/araratSide.png', false, NULL, NULL),
(20, '/assets/products/yeezy/ararat/araratDiagonal.png', false, NULL, NULL),
(20, '/assets/products/yeezy/ararat/araratBack.png', false, NULL, NULL),
(21, '/assets/products/yeezy/bone/bone.png', false, NULL, NULL),
(21, '/assets/products/yeezy/bone/boneBack.png', false, NULL, NULL),
(21, '/assets/products/yeezy/bone/boneDiagonal.png', false, NULL, NULL),
(22, '/assets/products/yeezy/stone/stone.png', false, NULL, NULL),
(22, '/assets/products/yeezy/stone/stoneDiagonal.png', false, NULL, NULL),
(22, '/assets/products/yeezy/stone/stoneFront.png', false, NULL, NULL),
(22, '/assets/products/yeezy/stone/stoneSide.png', false, NULL, NULL),
(23, '/assets/products/yeezy/synth/synth.png', false, NULL, NULL ),
(23, '/assets/products/yeezy/synth/synthSide.png', false, NULL, NULL ),
(23, '/assets/products/yeezy/synth/synthBelow.png', false, NULL, NULL ),
(24, '/assets/products/yeezy/zebra/zebra.png', false, NULL, NULL),
(24, '/assets/products/yeezy/zebra/zebraDiagonal.png', false, NULL, NULL),
(24, '/assets/products/yeezy/zebra/zebraBack.png', false, NULL, NULL),
(24, '/assets/products/yeezy/zebra/zebraBelow.png', false, NULL, NULL);

-- 10. Insert Orders
INSERT INTO Orders (UsersID, address, price, taxes) VALUES
(2, 'San Ramón, Alajuela', 1214.50, 157.89),
(3, 'Florencia, San Carlos', 2340.00, 304.20),
(4, 'Calle Pechuga, San Ramón', 895.00, 116.35);

-- 11. Insert OrderDetails
INSERT INTO OrderDetails (OrdersID, ProductID) VALUES
(1, 1),
(2, 2),
(3, 3),
(1,3),
(2,4),
(3,5);

-- 12. Insert Shipments
INSERT INTO Shipments (OrdersID, tracking, price, totalPrice, state) VALUES
(1, 123456789, 100.00, 1314.50, 'IN_PROCESS'),
(2, NULL, 120.00, 2460.00, 'PENDING'),
(3, 123456789, 75.00, 970.00, 'DELIVERED');

-- 13. Insert TransactionLogs
INSERT INTO TransactionLogs ( UsersID, OrderID, type, quantity) VALUES
(2, 1, 'purchase', 1214.50),
(3, 2, 'purchase', 2340.00),
(4, 3, 'purchase', 895.00);

-- 14. Insert CartItems
INSERT INTO CartItems (UsersID, ProductID) VALUES
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(5, 5),
(5, 6),
(5, 7),
(5, 8),
(5, 9);
