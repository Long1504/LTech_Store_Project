-- === CATEGORY: Điện thoại ===
SET @cid = UUID();
INSERT INTO category (category_id, category_name) VALUES (@cid, 'Điện thoại');

-- BRAND: Apple
SET @bid_Apple = UUID();
INSERT INTO brand (brand_id, brand_name) VALUES (@bid_Apple, 'Apple');

-- PRODUCT: iPhone 16
SET @pid_1 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_1, @cid, @bid_Apple, 'iPhone 16', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_1, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-16-1.png', TRUE),
  (UUID(), @pid_1, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-16-2.png', FALSE),
  (UUID(), @pid_1, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-16-3.png', FALSE),
  (UUID(), @pid_1, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-16-4.png', FALSE),
  (UUID(), @pid_1, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-16-5.png', FALSE),
  (UUID(), @pid_1, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-16-6.png', FALSE),
  (UUID(), @pid_1, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-16-9.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_1, 'Đen', 22990000.0, 21190000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2556 x 1179 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A18'),
  (UUID(), @vid, 'GPU', 'GPU 6 lõi mới'),
  (UUID(), @vid, 'SIM', 'Sim kép (nano-Sim và e-Sim) - Hỗ trợ 2 e-Sim'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 18'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '147,6 x 71,6 x 7,80 mm'),
  (UUID(), @vid, 'Trọng lượng', '170 gram'),
  (UUID(), @vid, 'Pin', '3561 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_1, 'Đen', 25990000.0, 22990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2556 x 1179 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A18'),
  (UUID(), @vid, 'GPU', 'GPU 6 lõi mới'),
  (UUID(), @vid, 'SIM', 'Sim kép (nano-Sim và e-Sim) - Hỗ trợ 2 e-Sim'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '256GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 18'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '147,6 x 71,6 x 7,80 mm'),
  (UUID(), @vid, 'Trọng lượng', '170 gram'),
  (UUID(), @vid, 'Pin', '3561 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_1, 'Đen', 31990000.0, 27990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2556 x 1179 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A18'),
  (UUID(), @vid, 'GPU', 'GPU 6 lõi mới'),
  (UUID(), @vid, 'SIM', 'Sim kép (nano-Sim và e-Sim) - Hỗ trợ 2 e-Sim'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '512GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 18'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '147,6 x 71,6 x 7,80 mm'),
  (UUID(), @vid, 'Trọng lượng', '170 gram'),
  (UUID(), @vid, 'Pin', '3561 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_1, 'Trắng', 22990000.0, 21190000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2556 x 1179 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A18'),
  (UUID(), @vid, 'GPU', 'GPU 6 lõi mới'),
  (UUID(), @vid, 'SIM', 'Sim kép (nano-Sim và e-Sim) - Hỗ trợ 2 e-Sim'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 18'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '147,6 x 71,6 x 7,80 mm'),
  (UUID(), @vid, 'Trọng lượng', '170 gram'),
  (UUID(), @vid, 'Pin', '3561 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_1, 'Trắng', 25990000.0, 22990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2556 x 1179 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A18'),
  (UUID(), @vid, 'GPU', 'GPU 6 lõi mới'),
  (UUID(), @vid, 'SIM', 'Sim kép (nano-Sim và e-Sim) - Hỗ trợ 2 e-Sim'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '256GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 18'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '147,6 x 71,6 x 7,80 mm'),
  (UUID(), @vid, 'Trọng lượng', '170 gram'),
  (UUID(), @vid, 'Pin', '3561 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_1, 'Trắng', 31990000.0, 27990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2556 x 1179 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A18'),
  (UUID(), @vid, 'GPU', 'GPU 6 lõi mới'),
  (UUID(), @vid, 'SIM', 'Sim kép (nano-Sim và e-Sim) - Hỗ trợ 2 e-Sim'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '512GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 18'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '147,6 x 71,6 x 7,80 mm'),
  (UUID(), @vid, 'Trọng lượng', '170 gram'),
  (UUID(), @vid, 'Pin', '3561 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_1, 'Hồng', 22990000.0, 21190000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2556 x 1179 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A18'),
  (UUID(), @vid, 'GPU', 'GPU 6 lõi mới'),
  (UUID(), @vid, 'SIM', 'Sim kép (nano-Sim và e-Sim) - Hỗ trợ 2 e-Sim'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 18'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '147,6 x 71,6 x 7,80 mm'),
  (UUID(), @vid, 'Trọng lượng', '170 gram'),
  (UUID(), @vid, 'Pin', '3561 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_1, 'Hồng', 25990000.0, 22990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2556 x 1179 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A18'),
  (UUID(), @vid, 'GPU', 'GPU 6 lõi mới'),
  (UUID(), @vid, 'SIM', 'Sim kép (nano-Sim và e-Sim) - Hỗ trợ 2 e-Sim'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '256GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 18'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '147,6 x 71,6 x 7,80 mm'),
  (UUID(), @vid, 'Trọng lượng', '170 gram'),
  (UUID(), @vid, 'Pin', '3561 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_1, 'Hồng', 31990000.0, 27990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2556 x 1179 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A18'),
  (UUID(), @vid, 'GPU', 'GPU 6 lõi mới'),
  (UUID(), @vid, 'SIM', 'Sim kép (nano-Sim và e-Sim) - Hỗ trợ 2 e-Sim'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '512GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 18'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '147,6 x 71,6 x 7,80 mm'),
  (UUID(), @vid, 'Trọng lượng', '170 gram'),
  (UUID(), @vid, 'Pin', '3561 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_1, 'Xanh Mòng Két', 22990000.0, 21190000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2556 x 1179 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A18'),
  (UUID(), @vid, 'GPU', 'GPU 6 lõi mới'),
  (UUID(), @vid, 'SIM', 'Sim kép (nano-Sim và e-Sim) - Hỗ trợ 2 e-Sim'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 18'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '147,6 x 71,6 x 7,80 mm'),
  (UUID(), @vid, 'Trọng lượng', '170 gram'),
  (UUID(), @vid, 'Pin', '3561 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_1, 'Xanh Mòng Két', 25990000.0, 22990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2556 x 1179 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A18'),
  (UUID(), @vid, 'GPU', 'GPU 6 lõi mới'),
  (UUID(), @vid, 'SIM', 'Sim kép (nano-Sim và e-Sim) - Hỗ trợ 2 e-Sim'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '256GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 18'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '147,6 x 71,6 x 7,80 mm'),
  (UUID(), @vid, 'Trọng lượng', '170 gram'),
  (UUID(), @vid, 'Pin', '3561 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_1, 'Xanh Mòng Két', 31990000.0, 27990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2556 x 1179 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A18'),
  (UUID(), @vid, 'GPU', 'GPU 6 lõi mới'),
  (UUID(), @vid, 'SIM', 'Sim kép (nano-Sim và e-Sim) - Hỗ trợ 2 e-Sim'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '512GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 18'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '147,6 x 71,6 x 7,80 mm'),
  (UUID(), @vid, 'Trọng lượng', '170 gram'),
  (UUID(), @vid, 'Pin', '3561 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_1, 'Xanh Lưu Ly', 22990000.0, 21190000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2556 x 1179 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A18'),
  (UUID(), @vid, 'GPU', 'GPU 6 lõi mới'),
  (UUID(), @vid, 'SIM', 'Sim kép (nano-Sim và e-Sim) - Hỗ trợ 2 e-Sim'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 18'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '147,6 x 71,6 x 7,80 mm'),
  (UUID(), @vid, 'Trọng lượng', '170 gram'),
  (UUID(), @vid, 'Pin', '3561 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_1, 'Xanh Lưu Ly', 25990000.0, 22990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2556 x 1179 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A18'),
  (UUID(), @vid, 'GPU', 'GPU 6 lõi mới'),
  (UUID(), @vid, 'SIM', 'Sim kép (nano-Sim và e-Sim) - Hỗ trợ 2 e-Sim'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '256GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 18'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '147,6 x 71,6 x 7,80 mm'),
  (UUID(), @vid, 'Trọng lượng', '170 gram'),
  (UUID(), @vid, 'Pin', '3561 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_1, 'Xanh Lưu Ly', 31990000.0, 27990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2556 x 1179 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A18'),
  (UUID(), @vid, 'GPU', 'GPU 6 lõi mới'),
  (UUID(), @vid, 'SIM', 'Sim kép (nano-Sim và e-Sim) - Hỗ trợ 2 e-Sim'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '512GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 18'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '147,6 x 71,6 x 7,80 mm'),
  (UUID(), @vid, 'Trọng lượng', '170 gram'),
  (UUID(), @vid, 'Pin', '3561 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- PRODUCT: iPhone 16 Pro
SET @pid_2 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_2, @cid, @bid_Apple, 'iPhone 16 Pro', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_2, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-16-pro_1.png', TRUE),
  (UUID(), @pid_2, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-16-pro-2.png', FALSE),
  (UUID(), @pid_2, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-16-pro-3.png', FALSE),
  (UUID(), @pid_2, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-16-pro-4.png', FALSE),
  (UUID(), @pid_2, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-16-pro-5.png', FALSE),
  (UUID(), @pid_2, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-16-pro-6.png', FALSE),
  (UUID(), @pid_2, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-16-pro-9.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_2, 'Titan Đen', 28990000.0, 25790000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.3 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2622 x 1206 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A18 Pro'),
  (UUID(), @vid, 'GPU', 'GPU 6 lõi mới'),
  (UUID(), @vid, 'SIM', 'Sim kép (nano-Sim và e-Sim) - Hỗ trợ 2 e-Sim'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 18'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '149,6 x 71,5 x 8,25 mm'),
  (UUID(), @vid, 'Trọng lượng', '199 gram'),
  (UUID(), @vid, 'Pin', '3582 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_2, 'Titan Đen', 31990000.0, 28990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.3 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2622 x 1206 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A18 Pro'),
  (UUID(), @vid, 'GPU', 'GPU 6 lõi mới'),
  (UUID(), @vid, 'SIM', 'Sim kép (nano-Sim và e-Sim) - Hỗ trợ 2 e-Sim'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '256GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 18'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '149,6 x 71,5 x 8,25 mm'),
  (UUID(), @vid, 'Trọng lượng', '199 gram'),
  (UUID(), @vid, 'Pin', '3582 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_2, 'Titan Đen', 37990000.0, 34690000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.3 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2622 x 1206 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A18 Pro'),
  (UUID(), @vid, 'GPU', 'GPU 6 lõi mới'),
  (UUID(), @vid, 'SIM', 'Sim kép (nano-Sim và e-Sim) - Hỗ trợ 2 e-Sim'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '512GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 18'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '149,6 x 71,5 x 8,25 mm'),
  (UUID(), @vid, 'Trọng lượng', '199 gram'),
  (UUID(), @vid, 'Pin', '3582 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_2, 'Titan Đen', 37990000.0, 34690000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.3 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2622 x 1206 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A18 Pro'),
  (UUID(), @vid, 'GPU', 'GPU 6 lõi mới'),
  (UUID(), @vid, 'SIM', 'Sim kép (nano-Sim và e-Sim) - Hỗ trợ 2 e-Sim'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '1TB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 18'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '149,6 x 71,5 x 8,25 mm'),
  (UUID(), @vid, 'Trọng lượng', '199 gram'),
  (UUID(), @vid, 'Pin', '3582 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_2, 'Titan Trắng', 28990000.0, 25790000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.3 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2622 x 1206 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A18 Pro'),
  (UUID(), @vid, 'GPU', 'GPU 6 lõi mới'),
  (UUID(), @vid, 'SIM', 'Sim kép (nano-Sim và e-Sim) - Hỗ trợ 2 e-Sim'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 18'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '149,6 x 71,5 x 8,25 mm'),
  (UUID(), @vid, 'Trọng lượng', '199 gram'),
  (UUID(), @vid, 'Pin', '3582 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_2, 'Titan Trắng', 31990000.0, 28990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.3 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2622 x 1206 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A18 Pro'),
  (UUID(), @vid, 'GPU', 'GPU 6 lõi mới'),
  (UUID(), @vid, 'SIM', 'Sim kép (nano-Sim và e-Sim) - Hỗ trợ 2 e-Sim'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '256GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 18'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '149,6 x 71,5 x 8,25 mm'),
  (UUID(), @vid, 'Trọng lượng', '199 gram'),
  (UUID(), @vid, 'Pin', '3582 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_2, 'Titan Trắng', 37990000.0, 34690000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.3 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2622 x 1206 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A18 Pro'),
  (UUID(), @vid, 'GPU', 'GPU 6 lõi mới'),
  (UUID(), @vid, 'SIM', 'Sim kép (nano-Sim và e-Sim) - Hỗ trợ 2 e-Sim'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '512GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 18'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '149,6 x 71,5 x 8,25 mm'),
  (UUID(), @vid, 'Trọng lượng', '199 gram'),
  (UUID(), @vid, 'Pin', '3582 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_2, 'Titan Trắng', 37990000.0, 34690000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.3 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2622 x 1206 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A18 Pro'),
  (UUID(), @vid, 'GPU', 'GPU 6 lõi mới'),
  (UUID(), @vid, 'SIM', 'Sim kép (nano-Sim và e-Sim) - Hỗ trợ 2 e-Sim'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '1TB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 18'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '149,6 x 71,5 x 8,25 mm'),
  (UUID(), @vid, 'Trọng lượng', '199 gram'),
  (UUID(), @vid, 'Pin', '3582 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_2, 'Titan Tự Nhiên', 28990000.0, 25790000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.3 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2622 x 1206 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A18 Pro'),
  (UUID(), @vid, 'GPU', 'GPU 6 lõi mới'),
  (UUID(), @vid, 'SIM', 'Sim kép (nano-Sim và e-Sim) - Hỗ trợ 2 e-Sim'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 18'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '149,6 x 71,5 x 8,25 mm'),
  (UUID(), @vid, 'Trọng lượng', '199 gram'),
  (UUID(), @vid, 'Pin', '3582 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_2, 'Titan Tự Nhiên', 31990000.0, 28990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.3 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2622 x 1206 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A18 Pro'),
  (UUID(), @vid, 'GPU', 'GPU 6 lõi mới'),
  (UUID(), @vid, 'SIM', 'Sim kép (nano-Sim và e-Sim) - Hỗ trợ 2 e-Sim'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '256GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 18'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '149,6 x 71,5 x 8,25 mm'),
  (UUID(), @vid, 'Trọng lượng', '199 gram'),
  (UUID(), @vid, 'Pin', '3582 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_2, 'Titan Tự Nhiên', 37990000.0, 34690000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.3 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2622 x 1206 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A18 Pro'),
  (UUID(), @vid, 'GPU', 'GPU 6 lõi mới'),
  (UUID(), @vid, 'SIM', 'Sim kép (nano-Sim và e-Sim) - Hỗ trợ 2 e-Sim'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '512GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 18'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '149,6 x 71,5 x 8,25 mm'),
  (UUID(), @vid, 'Trọng lượng', '199 gram'),
  (UUID(), @vid, 'Pin', '3582 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_2, 'Titan Tự Nhiên', 37990000.0, 34690000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.3 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2622 x 1206 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A18 Pro'),
  (UUID(), @vid, 'GPU', 'GPU 6 lõi mới'),
  (UUID(), @vid, 'SIM', 'Sim kép (nano-Sim và e-Sim) - Hỗ trợ 2 e-Sim'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '1TB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 18'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '149,6 x 71,5 x 8,25 mm'),
  (UUID(), @vid, 'Trọng lượng', '199 gram'),
  (UUID(), @vid, 'Pin', '3582 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_2, 'Titan Sa Mạc', 28990000.0, 25790000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.3 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2622 x 1206 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A18 Pro'),
  (UUID(), @vid, 'GPU', 'GPU 6 lõi mới'),
  (UUID(), @vid, 'SIM', 'Sim kép (nano-Sim và e-Sim) - Hỗ trợ 2 e-Sim'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 18'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '149,6 x 71,5 x 8,25 mm'),
  (UUID(), @vid, 'Trọng lượng', '199 gram'),
  (UUID(), @vid, 'Pin', '3582 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_2, 'Titan Sa Mạc', 31990000.0, 28990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.3 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2622 x 1206 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A18 Pro'),
  (UUID(), @vid, 'GPU', 'GPU 6 lõi mới'),
  (UUID(), @vid, 'SIM', 'Sim kép (nano-Sim và e-Sim) - Hỗ trợ 2 e-Sim'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '256GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 18'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '149,6 x 71,5 x 8,25 mm'),
  (UUID(), @vid, 'Trọng lượng', '199 gram'),
  (UUID(), @vid, 'Pin', '3582 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_2, 'Titan Sa Mạc', 37990000.0, 34690000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.3 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2622 x 1206 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A18 Pro'),
  (UUID(), @vid, 'GPU', 'GPU 6 lõi mới'),
  (UUID(), @vid, 'SIM', 'Sim kép (nano-Sim và e-Sim) - Hỗ trợ 2 e-Sim'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '512GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 18'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '149,6 x 71,5 x 8,25 mm'),
  (UUID(), @vid, 'Trọng lượng', '199 gram'),
  (UUID(), @vid, 'Pin', '3582 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_2, 'Titan Sa Mạc', 37990000.0, 34690000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.3 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2622 x 1206 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A18 Pro'),
  (UUID(), @vid, 'GPU', 'GPU 6 lõi mới'),
  (UUID(), @vid, 'SIM', 'Sim kép (nano-Sim và e-Sim) - Hỗ trợ 2 e-Sim'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '1TB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 18'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '149,6 x 71,5 x 8,25 mm'),
  (UUID(), @vid, 'Trọng lượng', '199 gram'),
  (UUID(), @vid, 'Pin', '3582 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- PRODUCT: iPhone 16 Pro Max
SET @pid_3 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_3, @cid, @bid_Apple, 'iPhone 16 Pro Max', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_3, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-16-pro-max.png', TRUE),
  (UUID(), @pid_3, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-16-pro-max-2.png', FALSE),
  (UUID(), @pid_3, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-16-pro-max-3.png', FALSE),
  (UUID(), @pid_3, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-16-pro-max-4.png', FALSE),
  (UUID(), @pid_3, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-16-pro-max-5.png', FALSE),
  (UUID(), @pid_3, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-16-pro-max-6.png', FALSE),
  (UUID(), @pid_3, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-16-pro-max-9.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_3, 'Titan Đen', 34990000.0, 30790000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.9 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2868 x 1320 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A18 Pro'),
  (UUID(), @vid, 'GPU', 'GPU 6 lõi mới'),
  (UUID(), @vid, 'SIM', 'Sim kép (nano-Sim và e-Sim) - Hỗ trợ 2 e-Sim'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '256GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 18'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '163 x 77,6 x 8,25 mm'),
  (UUID(), @vid, 'Trọng lượng', '227 gram'),
  (UUID(), @vid, 'Pin', '4676 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_3, 'Titan Đen', 40990000.0, 36990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.9 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2868 x 1320 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A18 Pro'),
  (UUID(), @vid, 'GPU', 'GPU 6 lõi mới'),
  (UUID(), @vid, 'SIM', 'Sim kép (nano-Sim và e-Sim) - Hỗ trợ 2 e-Sim'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '512GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 18'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '163 x 77,6 x 8,25 mm'),
  (UUID(), @vid, 'Trọng lượng', '227 gram'),
  (UUID(), @vid, 'Pin', '4677 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_3, 'Titan Đen', 46990000.0, 42990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.9 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2868 x 1320 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A18 Pro'),
  (UUID(), @vid, 'GPU', 'GPU 6 lõi mới'),
  (UUID(), @vid, 'SIM', 'Sim kép (nano-Sim và e-Sim) - Hỗ trợ 2 e-Sim'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '1TB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 18'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '163 x 77,6 x 8,25 mm'),
  (UUID(), @vid, 'Trọng lượng', '227 gram'),
  (UUID(), @vid, 'Pin', '4678 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_3, 'Titan Trắng', 34990000.0, 30790000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.9 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2868 x 1320 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A18 Pro'),
  (UUID(), @vid, 'GPU', 'GPU 6 lõi mới'),
  (UUID(), @vid, 'SIM', 'Sim kép (nano-Sim và e-Sim) - Hỗ trợ 2 e-Sim'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '256GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 18'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '163 x 77,6 x 8,25 mm'),
  (UUID(), @vid, 'Trọng lượng', '227 gram'),
  (UUID(), @vid, 'Pin', '4676 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_3, 'Titan Trắng', 40990000.0, 36990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.9 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2868 x 1320 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A18 Pro'),
  (UUID(), @vid, 'GPU', 'GPU 6 lõi mới'),
  (UUID(), @vid, 'SIM', 'Sim kép (nano-Sim và e-Sim) - Hỗ trợ 2 e-Sim'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '512GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 18'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '163 x 77,6 x 8,25 mm'),
  (UUID(), @vid, 'Trọng lượng', '227 gram'),
  (UUID(), @vid, 'Pin', '4677 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_3, 'Titan Trắng', 46990000.0, 42990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.9 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2868 x 1320 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A18 Pro'),
  (UUID(), @vid, 'GPU', 'GPU 6 lõi mới'),
  (UUID(), @vid, 'SIM', 'Sim kép (nano-Sim và e-Sim) - Hỗ trợ 2 e-Sim'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '1TB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 18'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '163 x 77,6 x 8,25 mm'),
  (UUID(), @vid, 'Trọng lượng', '227 gram'),
  (UUID(), @vid, 'Pin', '4678 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_3, 'Titan Tự Nhiên', 34990000.0, 30790000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.9 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2868 x 1320 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A18 Pro'),
  (UUID(), @vid, 'GPU', 'GPU 6 lõi mới'),
  (UUID(), @vid, 'SIM', 'Sim kép (nano-Sim và e-Sim) - Hỗ trợ 2 e-Sim'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '256GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 18'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '163 x 77,6 x 8,25 mm'),
  (UUID(), @vid, 'Trọng lượng', '227 gram'),
  (UUID(), @vid, 'Pin', '4676 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_3, 'Titan Tự Nhiên', 40990000.0, 36990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.9 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2868 x 1320 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A18 Pro'),
  (UUID(), @vid, 'GPU', 'GPU 6 lõi mới'),
  (UUID(), @vid, 'SIM', 'Sim kép (nano-Sim và e-Sim) - Hỗ trợ 2 e-Sim'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '512GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 18'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '163 x 77,6 x 8,25 mm'),
  (UUID(), @vid, 'Trọng lượng', '227 gram'),
  (UUID(), @vid, 'Pin', '4677 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_3, 'Titan Tự Nhiên', 46990000.0, 42990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.9 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2868 x 1320 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A18 Pro'),
  (UUID(), @vid, 'GPU', 'GPU 6 lõi mới'),
  (UUID(), @vid, 'SIM', 'Sim kép (nano-Sim và e-Sim) - Hỗ trợ 2 e-Sim'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '1TB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 18'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '163 x 77,6 x 8,25 mm'),
  (UUID(), @vid, 'Trọng lượng', '227 gram'),
  (UUID(), @vid, 'Pin', '4678 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_3, 'Titan Sa Mạc', 34990000.0, 30790000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.9 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2868 x 1320 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A18 Pro'),
  (UUID(), @vid, 'GPU', 'GPU 6 lõi mới'),
  (UUID(), @vid, 'SIM', 'Sim kép (nano-Sim và e-Sim) - Hỗ trợ 2 e-Sim'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '256GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 18'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '163 x 77,6 x 8,25 mm'),
  (UUID(), @vid, 'Trọng lượng', '227 gram'),
  (UUID(), @vid, 'Pin', '4676 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_3, 'Titan Sa Mạc', 40990000.0, 36990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.9 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2868 x 1320 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A18 Pro'),
  (UUID(), @vid, 'GPU', 'GPU 6 lõi mới'),
  (UUID(), @vid, 'SIM', 'Sim kép (nano-Sim và e-Sim) - Hỗ trợ 2 e-Sim'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '512GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 18'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '163 x 77,6 x 8,25 mm'),
  (UUID(), @vid, 'Trọng lượng', '227 gram'),
  (UUID(), @vid, 'Pin', '4677 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_3, 'Titan Sa Mạc', 46990000.0, 42990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.9 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2868 x 1320 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A18 Pro'),
  (UUID(), @vid, 'GPU', 'GPU 6 lõi mới'),
  (UUID(), @vid, 'SIM', 'Sim kép (nano-Sim và e-Sim) - Hỗ trợ 2 e-Sim'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '1TB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 18'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '163 x 77,6 x 8,25 mm'),
  (UUID(), @vid, 'Trọng lượng', '227 gram'),
  (UUID(), @vid, 'Pin', '4678 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- PRODUCT: iPhone 15
SET @pid_4 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_4, @cid, @bid_Apple, 'iPhone 15', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_4, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-15-plus_1__1.png', TRUE),
  (UUID(), @pid_4, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/v/n/vn_iphone_15_pink_pdp_image_position-2_design_2.jpg', FALSE),
  (UUID(), @pid_4, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/v/n/vn_iphone_15_pink_pdp_image_position-3_design_detail_2.jpg', FALSE),
  (UUID(), @pid_4, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/v/n/vn1b93_1_2.jpg', FALSE),
  (UUID(), @pid_4, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/v/n/vn_iphone_15_pink_pdp_image_position-5_colors_2.jpg', FALSE),
  (UUID(), @pid_4, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/v/n/vn_iphone_15_pink_pdp_image_position-6_dynamic_island_2.jpg', FALSE),
  (UUID(), @pid_4, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/v/n/vn_iphone_15_pink_pdp_image_position-8_usb-c_charge_cable_2.jpg', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_4, 'Đen', 19990000.0, 17290000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2556 x 1179 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera phụ: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A16 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', '5‑core GPU'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 17'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '147,6 x 71,6 x 7,80 mm'),
  (UUID(), @vid, 'Trọng lượng', '171 gram'),
  (UUID(), @vid, 'Pin', '3349 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_4, 'Đen', 22990000.0, 20890000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2556 x 1179 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera phụ: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A16 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', '5‑core GPU'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '256GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 17'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '147,6 x 71,6 x 7,80 mm'),
  (UUID(), @vid, 'Trọng lượng', '171 gram'),
  (UUID(), @vid, 'Pin', '3349 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_4, 'Hồng', 19990000.0, 17290000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2556 x 1179 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera phụ: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A16 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', '5‑core GPU'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 17'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '147,6 x 71,6 x 7,80 mm'),
  (UUID(), @vid, 'Trọng lượng', '171 gram'),
  (UUID(), @vid, 'Pin', '3349 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_4, 'Hồng', 22990000.0, 20890000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2556 x 1179 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera phụ: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A16 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', '5‑core GPU'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '256GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 17'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '147,6 x 71,6 x 7,80 mm'),
  (UUID(), @vid, 'Trọng lượng', '171 gram'),
  (UUID(), @vid, 'Pin', '3349 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_4, 'Xanh dương', 19990000.0, 17290000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2556 x 1179 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera phụ: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A16 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', '5‑core GPU'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 17'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '147,6 x 71,6 x 7,80 mm'),
  (UUID(), @vid, 'Trọng lượng', '171 gram'),
  (UUID(), @vid, 'Pin', '3349 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_4, 'Xanh dương', 22990000.0, 20890000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2556 x 1179 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera phụ: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A16 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', '5‑core GPU'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '256GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 17'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '147,6 x 71,6 x 7,80 mm'),
  (UUID(), @vid, 'Trọng lượng', '171 gram'),
  (UUID(), @vid, 'Pin', '3349 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_4, 'Xanh lá', 19990000.0, 17290000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2556 x 1179 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera phụ: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A16 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', '5‑core GPU'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 17'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '147,6 x 71,6 x 7,80 mm'),
  (UUID(), @vid, 'Trọng lượng', '171 gram'),
  (UUID(), @vid, 'Pin', '3349 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_4, 'Xanh lá', 22990000.0, 20890000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2556 x 1179 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera phụ: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A16 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', '5‑core GPU'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '256GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 17'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '147,6 x 71,6 x 7,80 mm'),
  (UUID(), @vid, 'Trọng lượng', '171 gram'),
  (UUID(), @vid, 'Pin', '3349 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_4, 'Vàng', 19990000.0, 17290000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2556 x 1179 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera phụ: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A16 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', '5‑core GPU'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 17'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '147,6 x 71,6 x 7,80 mm'),
  (UUID(), @vid, 'Trọng lượng', '171 gram'),
  (UUID(), @vid, 'Pin', '3349 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_4, 'Vàng', 22990000.0, 20890000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2556 x 1179 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera phụ: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A16 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', '5‑core GPU'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '256GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 17'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '147,6 x 71,6 x 7,80 mm'),
  (UUID(), @vid, 'Trọng lượng', '171 gram'),
  (UUID(), @vid, 'Pin', '3349 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- PRODUCT: iPhone 15 Pro
SET @pid_5 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_5, @cid, @bid_Apple, 'iPhone 15 Pro', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_5, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-15-pro-max_4.png', TRUE),
  (UUID(), @pid_5, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-15-pro_5__2.jpg', FALSE),
  (UUID(), @pid_5, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-15-pro_6__2.jpg', FALSE),
  (UUID(), @pid_5, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-15-pro_7__2.jpg', FALSE),
  (UUID(), @pid_5, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-15-pro_8__2.jpg', FALSE),
  (UUID(), @pid_5, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-15-pro_1__2.jpg', FALSE),
  (UUID(), @pid_5, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-15-pro_2__2.jpg', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_5, 'Titan Đen', 28990000.0, 23990000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2556 x 1179 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A16 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 6 nhân mới'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 17'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '146,6 x 70,6 x 8,25 mm'),
  (UUID(), @vid, 'Trọng lượng', '187 gram'),
  (UUID(), @vid, 'Pin', '3274 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_5, 'Titan Đen', 31990000.0, 26290000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2556 x 1179 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A16 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 6 nhân mới'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '256GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 17'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '146,6 x 70,6 x 8,25 mm'),
  (UUID(), @vid, 'Trọng lượng', '187 gram'),
  (UUID(), @vid, 'Pin', '3274 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_5, 'Titan Trắng', 28990000.0, 23990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2556 x 1179 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A16 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 6 nhân mới'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 17'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '146,6 x 70,6 x 8,25 mm'),
  (UUID(), @vid, 'Trọng lượng', '187 gram'),
  (UUID(), @vid, 'Pin', '3274 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_5, 'Titan Trắng', 31990000.0, 26290000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2556 x 1179 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A16 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 6 nhân mới'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '256GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 17'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '146,6 x 70,6 x 8,25 mm'),
  (UUID(), @vid, 'Trọng lượng', '187 gram'),
  (UUID(), @vid, 'Pin', '3274 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_5, 'Titan Tự Nhiên', 28990000.0, 23990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2556 x 1179 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A16 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 6 nhân mới'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 17'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '146,6 x 70,6 x 8,25 mm'),
  (UUID(), @vid, 'Trọng lượng', '187 gram'),
  (UUID(), @vid, 'Pin', '3274 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_5, 'Titan Tự Nhiên', 31990000.0, 26290000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2556 x 1179 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A16 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 6 nhân mới'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '256GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 17'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '146,6 x 70,6 x 8,25 mm'),
  (UUID(), @vid, 'Trọng lượng', '187 gram'),
  (UUID(), @vid, 'Pin', '3274 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_5, 'Titan Xanh', 28990000.0, 23990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2556 x 1179 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A16 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 6 nhân mới'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 17'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '146,6 x 70,6 x 8,25 mm'),
  (UUID(), @vid, 'Trọng lượng', '187 gram'),
  (UUID(), @vid, 'Pin', '3274 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_5, 'Titan Xanh', 31990000.0, 26290000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2556 x 1179 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A16 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 6 nhân mới'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '256GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 17'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '146,6 x 70,6 x 8,25 mm'),
  (UUID(), @vid, 'Trọng lượng', '187 gram'),
  (UUID(), @vid, 'Pin', '3274 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- PRODUCT: iPhone 15 Pro Max
SET @pid_6 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_6, @cid, @bid_Apple, 'iPhone 15 Pro Max', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_6, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-15-pro-max_3.png', TRUE),
  (UUID(), @pid_6, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-15-pro-max_4__1.jpg', FALSE),
  (UUID(), @pid_6, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-15-pro-max_5__1.jpg', FALSE),
  (UUID(), @pid_6, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-15-pro-max_6__1.jpg', FALSE),
  (UUID(), @pid_6, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-15-pro-max_7__1.jpg', FALSE),
  (UUID(), @pid_6, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-15-pro-max_8__1.jpg', FALSE),
  (UUID(), @pid_6, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-15-pro-max_10__1.jpg', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_6, 'Titan Đen', 34990000.0, 26490000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2796 x 1290 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A17 Pro 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 6 nhân mới'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '256GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 17'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '159,9 x 76,7 x 8,25 mm'),
  (UUID(), @vid, 'Trọng lượng', '221 gram'),
  (UUID(), @vid, 'Pin', '4422 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_6, 'Titan Đen', 40990000.0, 28990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2796 x 1290 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A17 Pro 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 6 nhân mới'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '512GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 17'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '159,9 x 76,7 x 8,25 mm'),
  (UUID(), @vid, 'Trọng lượng', '221 gram'),
  (UUID(), @vid, 'Pin', '4422 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_6, 'Titan Đen', 46990000.0, 32990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2796 x 1290 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A17 Pro 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 6 nhân mới'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '1TB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 17'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '159,9 x 76,7 x 8,25 mm'),
  (UUID(), @vid, 'Trọng lượng', '221 gram'),
  (UUID(), @vid, 'Pin', '4422 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_6, 'Titan Trắng', 34990000.0, 26490000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2796 x 1290 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A17 Pro 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 6 nhân mới'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '256GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 17'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '159,9 x 76,7 x 8,25 mm'),
  (UUID(), @vid, 'Trọng lượng', '221 gram'),
  (UUID(), @vid, 'Pin', '4422 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_6, 'Titan Trắng', 40990000.0, 28990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2796 x 1290 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A17 Pro 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 6 nhân mới'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '512GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 17'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '159,9 x 76,7 x 8,25 mm'),
  (UUID(), @vid, 'Trọng lượng', '221 gram'),
  (UUID(), @vid, 'Pin', '4422 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_6, 'Titan Trắng', 46990000.0, 32990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2796 x 1290 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A17 Pro 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 6 nhân mới'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '1TB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 17'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '159,9 x 76,7 x 8,25 mm'),
  (UUID(), @vid, 'Trọng lượng', '221 gram'),
  (UUID(), @vid, 'Pin', '4422 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_6, 'Titan Tự Nhiên', 34990000.0, 26490000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2796 x 1290 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A17 Pro 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 6 nhân mới'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '256GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 17'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '159,9 x 76,7 x 8,25 mm'),
  (UUID(), @vid, 'Trọng lượng', '221 gram'),
  (UUID(), @vid, 'Pin', '4422 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_6, 'Titan Tự Nhiên', 40990000.0, 28990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2796 x 1290 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A17 Pro 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 6 nhân mới'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '512GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 17'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '159,9 x 76,7 x 8,25 mm'),
  (UUID(), @vid, 'Trọng lượng', '221 gram'),
  (UUID(), @vid, 'Pin', '4422 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_6, 'Titan Tự Nhiên', 46990000.0, 32990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2796 x 1290 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A17 Pro 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 6 nhân mới'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '1TB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 17'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '159,9 x 76,7 x 8,25 mm'),
  (UUID(), @vid, 'Trọng lượng', '221 gram'),
  (UUID(), @vid, 'Pin', '4422 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_6, 'Titan Xanh', 34990000.0, 26490000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2796 x 1290 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A17 Pro 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 6 nhân mới'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '256GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 17'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '159,9 x 76,7 x 8,25 mm'),
  (UUID(), @vid, 'Trọng lượng', '221 gram'),
  (UUID(), @vid, 'Pin', '4422 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_6, 'Titan Xanh', 40990000.0, 28990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2796 x 1290 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A17 Pro 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 6 nhân mới'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '512GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 17'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '159,9 x 76,7 x 8,25 mm'),
  (UUID(), @vid, 'Trọng lượng', '221 gram'),
  (UUID(), @vid, 'Pin', '4422 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_6, 'Titan Xanh', 46990000.0, 32990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2796 x 1290 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A17 Pro 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 6 nhân mới'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '1TB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 17'),
  (UUID(), @vid, 'CPU', 'CPU 6 lõi mới với 2 lõi hiệu năng và 4 lõi tiết kiệm điện'),
  (UUID(), @vid, 'Kích thước', '159,9 x 76,7 x 8,25 mm'),
  (UUID(), @vid, 'Trọng lượng', '221 gram'),
  (UUID(), @vid, 'Pin', '4422 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- PRODUCT: iPhone 14
SET @pid_7 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_7, @cid, @bid_Apple, 'iPhone 14', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_7, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-14_2_1.jpg', TRUE),
  (UUID(), @pid_7, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone_14_blue_pdp_image_position-1b_blue_color_vn.png', FALSE),
  (UUID(), @pid_7, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone_14_blue_pdp_image_position-2_design_vn.png', FALSE),
  (UUID(), @pid_7, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone_14_blue_pdp_image_position-3_camera_vn.png', FALSE),
  (UUID(), @pid_7, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone_14_blue_pdp_image_position-4_lineup_vn.png', FALSE),
  (UUID(), @pid_7, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone_14_blue_pdp_image_position-5_colors__vn.png', FALSE),
  (UUID(), @pid_7, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone_14_blue_pdp_image_position-6_size_comparison__vn.png', FALSE),
  (UUID(), @pid_7, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone_14_blue_pdp_image_position-7_features_specs__vn.png', FALSE),
  (UUID(), @pid_7, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone_14_blue_pdp_image_position-9_typec_lightning_cable_vn.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_7, 'Đen', 14990000.0, 13690000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2532 x 1170 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Tai thỏ'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera góc rộng: 12MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A15 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 16'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '146,7 x 71,5 x 7,8 mm'),
  (UUID(), @vid, 'Trọng lượng', '172 gram'),
  (UUID(), @vid, 'Pin', '3279 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_7, 'Đen', 18990000.0, 16490000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2532 x 1170 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Tai thỏ'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera góc rộng: 12MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A15 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 16'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '146,7 x 71,5 x 7,8 mm'),
  (UUID(), @vid, 'Trọng lượng', '172 gram'),
  (UUID(), @vid, 'Pin', '3279 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_7, 'Trắng', 14990000.0, 13690000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2532 x 1170 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Tai thỏ'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera góc rộng: 12MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A15 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 16'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '146,7 x 71,5 x 7,8 mm'),
  (UUID(), @vid, 'Trọng lượng', '172 gram'),
  (UUID(), @vid, 'Pin', '3279 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_7, 'Trắng', 18990000.0, 16490000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2532 x 1170 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Tai thỏ'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera góc rộng: 12MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A15 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 16'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '146,7 x 71,5 x 7,8 mm'),
  (UUID(), @vid, 'Trọng lượng', '172 gram'),
  (UUID(), @vid, 'Pin', '3279 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_7, 'Xanh', 14990000.0, 13690000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2532 x 1170 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Tai thỏ'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera góc rộng: 12MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A15 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 16'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '146,7 x 71,5 x 7,8 mm'),
  (UUID(), @vid, 'Trọng lượng', '172 gram'),
  (UUID(), @vid, 'Pin', '3279 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_7, 'Xanh', 18990000.0, 16490000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2532 x 1170 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Tai thỏ'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera góc rộng: 12MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A15 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 16'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '146,7 x 71,5 x 7,8 mm'),
  (UUID(), @vid, 'Trọng lượng', '172 gram'),
  (UUID(), @vid, 'Pin', '3279 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_7, 'Vàng', 14990000.0, 13690000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2532 x 1170 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Tai thỏ'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera góc rộng: 12MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A15 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 16'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '146,7 x 71,5 x 7,8 mm'),
  (UUID(), @vid, 'Trọng lượng', '172 gram'),
  (UUID(), @vid, 'Pin', '3279 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_7, 'Vàng', 18990000.0, 16490000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2532 x 1170 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Tai thỏ'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera góc rộng: 12MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A15 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 16'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '146,7 x 71,5 x 7,8 mm'),
  (UUID(), @vid, 'Trọng lượng', '172 gram'),
  (UUID(), @vid, 'Pin', '3279 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_7, 'Tím', 14990000.0, 13690000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2532 x 1170 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Tai thỏ'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera góc rộng: 12MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A15 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 16'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '146,7 x 71,5 x 7,8 mm'),
  (UUID(), @vid, 'Trọng lượng', '172 gram'),
  (UUID(), @vid, 'Pin', '3279 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_7, 'Tím', 18990000.0, 16490000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2532 x 1170 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Tai thỏ'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera góc rộng: 12MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A15 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 16'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '146,7 x 71,5 x 7,8 mm'),
  (UUID(), @vid, 'Trọng lượng', '172 gram'),
  (UUID(), @vid, 'Pin', '3279 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_7, 'Đỏ', 14990000.0, 13690000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2532 x 1170 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Tai thỏ'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera góc rộng: 12MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A15 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 16'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '146,7 x 71,5 x 7,8 mm'),
  (UUID(), @vid, 'Trọng lượng', '172 gram'),
  (UUID(), @vid, 'Pin', '3279 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_7, 'Đỏ', 18990000.0, 16490000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2532 x 1170 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Tai thỏ'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera góc rộng: 12MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A15 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 16'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '146,7 x 71,5 x 7,8 mm'),
  (UUID(), @vid, 'Trọng lượng', '172 gram'),
  (UUID(), @vid, 'Pin', '3279 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- PRODUCT: iPhone 14 Pro
SET @pid_8 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_8, @cid, @bid_Apple, 'iPhone 14 Pro', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_8, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/2/1/21_1_.png', TRUE),
  (UUID(), @pid_8, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/2/1/21.1_1.png', FALSE),
  (UUID(), @pid_8, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/2/1/21.7.png', FALSE),
  (UUID(), @pid_8, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/v/_/v_ng_12.png', FALSE),
  (UUID(), @pid_8, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/x/_/x_m_16.png', FALSE),
  (UUID(), @pid_8, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/b/_/b_c_1_1.png', FALSE),
  (UUID(), @pid_8, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-14-pro_2__4.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_8, 'Đen', 27990000.0, 22990000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2556 x 1179 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A16 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 16'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '174,5 x 71,5 x 7,85 mm'),
  (UUID(), @vid, 'Trọng lượng', '206 gram'),
  (UUID(), @vid, 'Pin', '3200 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_8, 'Đen', 29990000.0, 24990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2556 x 1179 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A16 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '256GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 16'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '174,5 x 71,5 x 7,85 mm'),
  (UUID(), @vid, 'Trọng lượng', '206 gram'),
  (UUID(), @vid, 'Pin', '3200 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_8, 'Đen', 35990000.0, 32990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2556 x 1179 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A16 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '512GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 16'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '174,5 x 71,5 x 7,85 mm'),
  (UUID(), @vid, 'Trọng lượng', '206 gram'),
  (UUID(), @vid, 'Pin', '3200 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_8, 'Đen', 39990000.0, 33990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2556 x 1179 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A16 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '1TB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 16'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '174,5 x 71,5 x 7,85 mm'),
  (UUID(), @vid, 'Trọng lượng', '206 gram'),
  (UUID(), @vid, 'Pin', '3200 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_8, 'Bạc', 27990000.0, 22990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2556 x 1179 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A16 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 16'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '174,5 x 71,5 x 7,85 mm'),
  (UUID(), @vid, 'Trọng lượng', '206 gram'),
  (UUID(), @vid, 'Pin', '3200 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_8, 'Bạc', 29990000.0, 24990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2556 x 1179 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A16 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '256GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 16'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '174,5 x 71,5 x 7,85 mm'),
  (UUID(), @vid, 'Trọng lượng', '206 gram'),
  (UUID(), @vid, 'Pin', '3200 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_8, 'Bạc', 35990000.0, 32990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2556 x 1179 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A16 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '512GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 16'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '174,5 x 71,5 x 7,85 mm'),
  (UUID(), @vid, 'Trọng lượng', '206 gram'),
  (UUID(), @vid, 'Pin', '3200 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_8, 'Bạc', 39990000.0, 33990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2556 x 1179 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A16 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '1TB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 16'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '174,5 x 71,5 x 7,85 mm'),
  (UUID(), @vid, 'Trọng lượng', '206 gram'),
  (UUID(), @vid, 'Pin', '3200 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_8, 'Tím', 27990000.0, 22990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2556 x 1179 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A16 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 16'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '174,5 x 71,5 x 7,85 mm'),
  (UUID(), @vid, 'Trọng lượng', '206 gram'),
  (UUID(), @vid, 'Pin', '3200 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_8, 'Tím', 29990000.0, 24990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2556 x 1179 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A16 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '256GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 16'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '174,5 x 71,5 x 7,85 mm'),
  (UUID(), @vid, 'Trọng lượng', '206 gram'),
  (UUID(), @vid, 'Pin', '3200 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_8, 'Tím', 35990000.0, 32990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2556 x 1179 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A16 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '512GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 16'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '174,5 x 71,5 x 7,85 mm'),
  (UUID(), @vid, 'Trọng lượng', '206 gram'),
  (UUID(), @vid, 'Pin', '3200 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_8, 'Tím', 39990000.0, 33990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2556 x 1179 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A16 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '1TB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 16'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '174,5 x 71,5 x 7,85 mm'),
  (UUID(), @vid, 'Trọng lượng', '206 gram'),
  (UUID(), @vid, 'Pin', '3200 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_8, 'Vàng', 27990000.0, 22990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2556 x 1179 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A16 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 16'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '174,5 x 71,5 x 7,85 mm'),
  (UUID(), @vid, 'Trọng lượng', '206 gram'),
  (UUID(), @vid, 'Pin', '3200 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_8, 'Vàng', 29990000.0, 24990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2556 x 1179 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A16 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '256GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 16'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '174,5 x 71,5 x 7,85 mm'),
  (UUID(), @vid, 'Trọng lượng', '206 gram'),
  (UUID(), @vid, 'Pin', '3200 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_8, 'Vàng', 35990000.0, 32990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2556 x 1179 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A16 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '512GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 16'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '174,5 x 71,5 x 7,85 mm'),
  (UUID(), @vid, 'Trọng lượng', '206 gram'),
  (UUID(), @vid, 'Pin', '3200 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_8, 'Vàng', 39990000.0, 33990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2556 x 1179 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A16 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '1TB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 16'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '174,5 x 71,5 x 7,85 mm'),
  (UUID(), @vid, 'Trọng lượng', '206 gram'),
  (UUID(), @vid, 'Pin', '3200 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- PRODUCT: iPhone 14 Pro Max
SET @pid_9 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_9, @cid, @bid_Apple, 'iPhone 14 Pro Max', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_9, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/b/_/b_c_1_9.png', TRUE),
  (UUID(), @pid_9, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/x/_/x_m_24.png', FALSE),
  (UUID(), @pid_9, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/v/_/v_ng_18.png', FALSE),
  (UUID(), @pid_9, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-14-pro_2__5.png', FALSE),
  (UUID(), @pid_9, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/2/5/2522.png', FALSE),
  (UUID(), @pid_9, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/2/5/25.7_5.png', FALSE),
  (UUID(), @pid_9, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/8/9/896_2.png', FALSE),
  (UUID(), @pid_9, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/2/5/25.9_2.png', FALSE),
  (UUID(), @pid_9, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/2/5/25.2_5.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_9, 'Đen', 29990000.0, 25590000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2793 x 1290 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A16 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 16'),
  (UUID(), @vid, 'CPU', '3.46 GHz'),
  (UUID(), @vid, 'Kích thước', '160,7 x 77,6 x 7,9 mm'),
  (UUID(), @vid, 'Trọng lượng', '240 gram'),
  (UUID(), @vid, 'Pin', '4323 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_9, 'Đen', 32990000.0, 27990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2793 x 1290 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A16 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '256GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 16'),
  (UUID(), @vid, 'CPU', '3.46 GHz'),
  (UUID(), @vid, 'Kích thước', '160,7 x 77,6 x 7,9 mm'),
  (UUID(), @vid, 'Trọng lượng', '240 gram'),
  (UUID(), @vid, 'Pin', '4323 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_9, 'Đen', 38990000.0, 35390000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2793 x 1290 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A16 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '512GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 16'),
  (UUID(), @vid, 'CPU', '3.46 GHz'),
  (UUID(), @vid, 'Kích thước', '160,7 x 77,6 x 7,9 mm'),
  (UUID(), @vid, 'Trọng lượng', '240 gram'),
  (UUID(), @vid, 'Pin', '4323 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_9, 'Đen', 45990000.0, 41790000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2793 x 1290 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A16 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '1TB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 16'),
  (UUID(), @vid, 'CPU', '3.46 GHz'),
  (UUID(), @vid, 'Kích thước', '160,7 x 77,6 x 7,9 mm'),
  (UUID(), @vid, 'Trọng lượng', '240 gram'),
  (UUID(), @vid, 'Pin', '4323 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_9, 'Bạc', 29990000.0, 25590000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2793 x 1290 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A16 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 16'),
  (UUID(), @vid, 'CPU', '3.46 GHz'),
  (UUID(), @vid, 'Kích thước', '160,7 x 77,6 x 7,9 mm'),
  (UUID(), @vid, 'Trọng lượng', '240 gram'),
  (UUID(), @vid, 'Pin', '4323 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_9, 'Bạc', 32990000.0, 27990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2793 x 1290 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A16 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '256GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 16'),
  (UUID(), @vid, 'CPU', '3.46 GHz'),
  (UUID(), @vid, 'Kích thước', '160,7 x 77,6 x 7,9 mm'),
  (UUID(), @vid, 'Trọng lượng', '240 gram'),
  (UUID(), @vid, 'Pin', '4323 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_9, 'Bạc', 38990000.0, 35390000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2793 x 1290 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A16 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '512GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 16'),
  (UUID(), @vid, 'CPU', '3.46 GHz'),
  (UUID(), @vid, 'Kích thước', '160,7 x 77,6 x 7,9 mm'),
  (UUID(), @vid, 'Trọng lượng', '240 gram'),
  (UUID(), @vid, 'Pin', '4323 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_9, 'Bạc', 45990000.0, 41790000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2793 x 1290 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A16 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '1TB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 16'),
  (UUID(), @vid, 'CPU', '3.46 GHz'),
  (UUID(), @vid, 'Kích thước', '160,7 x 77,6 x 7,9 mm'),
  (UUID(), @vid, 'Trọng lượng', '240 gram'),
  (UUID(), @vid, 'Pin', '4323 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_9, 'Tím', 29990000.0, 25590000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2793 x 1290 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A16 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 16'),
  (UUID(), @vid, 'CPU', '3.46 GHz'),
  (UUID(), @vid, 'Kích thước', '160,7 x 77,6 x 7,9 mm'),
  (UUID(), @vid, 'Trọng lượng', '240 gram'),
  (UUID(), @vid, 'Pin', '4323 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_9, 'Tím', 32990000.0, 27990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2793 x 1290 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A16 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '256GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 16'),
  (UUID(), @vid, 'CPU', '3.46 GHz'),
  (UUID(), @vid, 'Kích thước', '160,7 x 77,6 x 7,9 mm'),
  (UUID(), @vid, 'Trọng lượng', '240 gram'),
  (UUID(), @vid, 'Pin', '4323 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_9, 'Tím', 38990000.0, 35390000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2793 x 1290 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A16 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '512GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 16'),
  (UUID(), @vid, 'CPU', '3.46 GHz'),
  (UUID(), @vid, 'Kích thước', '160,7 x 77,6 x 7,9 mm'),
  (UUID(), @vid, 'Trọng lượng', '240 gram'),
  (UUID(), @vid, 'Pin', '4323 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_9, 'Tím', 45990000.0, 41790000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2793 x 1290 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A16 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '1TB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 16'),
  (UUID(), @vid, 'CPU', '3.46 GHz'),
  (UUID(), @vid, 'Kích thước', '160,7 x 77,6 x 7,9 mm'),
  (UUID(), @vid, 'Trọng lượng', '240 gram'),
  (UUID(), @vid, 'Pin', '4323 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_9, 'Vàng', 29990000.0, 25590000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2793 x 1290 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A16 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 16'),
  (UUID(), @vid, 'CPU', '3.46 GHz'),
  (UUID(), @vid, 'Kích thước', '160,7 x 77,6 x 7,9 mm'),
  (UUID(), @vid, 'Trọng lượng', '240 gram'),
  (UUID(), @vid, 'Pin', '4323 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_9, 'Vàng', 32990000.0, 27990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2793 x 1290 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A16 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '256GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 16'),
  (UUID(), @vid, 'CPU', '3.46 GHz'),
  (UUID(), @vid, 'Kích thước', '160,7 x 77,6 x 7,9 mm'),
  (UUID(), @vid, 'Trọng lượng', '240 gram'),
  (UUID(), @vid, 'Pin', '4323 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_9, 'Vàng', 38990000.0, 35390000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2793 x 1290 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A16 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '512GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 16'),
  (UUID(), @vid, 'CPU', '3.46 GHz'),
  (UUID(), @vid, 'Kích thước', '160,7 x 77,6 x 7,9 mm'),
  (UUID(), @vid, 'Trọng lượng', '240 gram'),
  (UUID(), @vid, 'Pin', '4323 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_9, 'Vàng', 45990000.0, 41790000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2793 x 1290 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Dynamic Island'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera chính: 48MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A16 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '1TB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 16'),
  (UUID(), @vid, 'CPU', '3.46 GHz'),
  (UUID(), @vid, 'Kích thước', '160,7 x 77,6 x 7,9 mm'),
  (UUID(), @vid, 'Trọng lượng', '240 gram'),
  (UUID(), @vid, 'Pin', '4323 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- PRODUCT: iPhone 13
SET @pid_10 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_10, @cid, @bid_Apple, 'iPhone 13', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_10, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:58:58/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-13_2_2.jpg', TRUE),
  (UUID(), @pid_10, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone_13_pdp_position-1b_color_midnight__vn.png', FALSE),
  (UUID(), @pid_10, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone_13_pdp_position-2_size_comparison__vn.png', FALSE),
  (UUID(), @pid_10, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone_13_pdp_position-3_camera__vn.png', FALSE),
  (UUID(), @pid_10, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone_13_pdp_position-4_design__vn.png', FALSE),
  (UUID(), @pid_10, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone_13_pdp_position-5_colors__vn.png', FALSE),
  (UUID(), @pid_10, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone_13_pdp_position-6_cinematic_mode__vn.png', FALSE),
  (UUID(), @pid_10, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone_13_pdp_position-9_typec_lightning_cable__vn.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_10, 'Đen', 13990000.0, 12190000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2532 x 1170 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Tai thỏ'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera góc rộng: 12MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A15'),
  (UUID(), @vid, 'GPU', 'GPU 4 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '4GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 15'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '146,7 x 71,5 x 7,65 mm'),
  (UUID(), @vid, 'Trọng lượng', '173 gram'),
  (UUID(), @vid, 'Pin', '3240 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_10, 'Đen', 20290000.0, 14990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2532 x 1170 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Tai thỏ'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera góc rộng: 12MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A15'),
  (UUID(), @vid, 'GPU', 'GPU 4 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '4GB'),
  (UUID(), @vid, 'Bộ nhớ', '256GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 15'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '146,7 x 71,5 x 7,65 mm'),
  (UUID(), @vid, 'Trọng lượng', '173 gram'),
  (UUID(), @vid, 'Pin', '3240 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_10, 'Trắng', 13990000.0, 12190000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2532 x 1170 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Tai thỏ'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera góc rộng: 12MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A15'),
  (UUID(), @vid, 'GPU', 'GPU 4 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '4GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 15'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '146,7 x 71,5 x 7,65 mm'),
  (UUID(), @vid, 'Trọng lượng', '173 gram'),
  (UUID(), @vid, 'Pin', '3240 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_10, 'Trắng', 20290000.0, 14990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2532 x 1170 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Tai thỏ'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera góc rộng: 12MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A15'),
  (UUID(), @vid, 'GPU', 'GPU 4 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '4GB'),
  (UUID(), @vid, 'Bộ nhớ', '256GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 15'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '146,7 x 71,5 x 7,65 mm'),
  (UUID(), @vid, 'Trọng lượng', '173 gram'),
  (UUID(), @vid, 'Pin', '3240 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_10, 'Hồng', 13990000.0, 12190000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2532 x 1170 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Tai thỏ'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera góc rộng: 12MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A15'),
  (UUID(), @vid, 'GPU', 'GPU 4 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '4GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 15'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '146,7 x 71,5 x 7,65 mm'),
  (UUID(), @vid, 'Trọng lượng', '173 gram'),
  (UUID(), @vid, 'Pin', '3240 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_10, 'Hồng', 20290000.0, 14990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2532 x 1170 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Tai thỏ'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera góc rộng: 12MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A15'),
  (UUID(), @vid, 'GPU', 'GPU 4 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '4GB'),
  (UUID(), @vid, 'Bộ nhớ', '256GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 15'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '146,7 x 71,5 x 7,65 mm'),
  (UUID(), @vid, 'Trọng lượng', '173 gram'),
  (UUID(), @vid, 'Pin', '3240 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_10, 'Đỏ', 13990000.0, 12190000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2532 x 1170 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Tai thỏ'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera góc rộng: 12MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A15'),
  (UUID(), @vid, 'GPU', 'GPU 4 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '4GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 15'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '146,7 x 71,5 x 7,65 mm'),
  (UUID(), @vid, 'Trọng lượng', '173 gram'),
  (UUID(), @vid, 'Pin', '3240 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_10, 'Đỏ', 20290000.0, 14990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2532 x 1170 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Tai thỏ'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera góc rộng: 12MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A15'),
  (UUID(), @vid, 'GPU', 'GPU 4 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '4GB'),
  (UUID(), @vid, 'Bộ nhớ', '256GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 15'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '146,7 x 71,5 x 7,65 mm'),
  (UUID(), @vid, 'Trọng lượng', '173 gram'),
  (UUID(), @vid, 'Pin', '3240 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_10, 'Xanh lá', 13990000.0, 12190000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2532 x 1170 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Tai thỏ'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera góc rộng: 12MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A15'),
  (UUID(), @vid, 'GPU', 'GPU 4 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '4GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 15'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '146,7 x 71,5 x 7,65 mm'),
  (UUID(), @vid, 'Trọng lượng', '173 gram'),
  (UUID(), @vid, 'Pin', '3240 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_10, 'Xanh lá', 20290000.0, 14990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2532 x 1170 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Tai thỏ'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera góc rộng: 12MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A15'),
  (UUID(), @vid, 'GPU', 'GPU 4 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '4GB'),
  (UUID(), @vid, 'Bộ nhớ', '256GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 15'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '146,7 x 71,5 x 7,65 mm'),
  (UUID(), @vid, 'Trọng lượng', '173 gram'),
  (UUID(), @vid, 'Pin', '3240 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_10, 'Xanh dương', 13990000.0, 12190000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2532 x 1170 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Tai thỏ'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera góc rộng: 12MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A15'),
  (UUID(), @vid, 'GPU', 'GPU 4 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '4GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 15'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '146,7 x 71,5 x 7,65 mm'),
  (UUID(), @vid, 'Trọng lượng', '173 gram'),
  (UUID(), @vid, 'Pin', '3240 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_10, 'Xanh dương', 20290000.0, 14990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2532 x 1170 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Tai thỏ'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera góc rộng: 12MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A15'),
  (UUID(), @vid, 'GPU', 'GPU 4 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '4GB'),
  (UUID(), @vid, 'Bộ nhớ', '256GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 15'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '146,7 x 71,5 x 7,65 mm'),
  (UUID(), @vid, 'Trọng lượng', '173 gram'),
  (UUID(), @vid, 'Pin', '3240 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- PRODUCT: iPhone 13 Pro Max
SET @pid_11 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_11, @cid, @bid_Apple, 'iPhone 13 Pro Max', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_11, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-13-pro-max-8_1.jpg', TRUE),
  (UUID(), @pid_11, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-13-pro-max-10_1.png', FALSE),
  (UUID(), @pid_11, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-13-pro-max-9_1.jpg', FALSE),
  (UUID(), @pid_11, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/i/p/iphone-13-pro-max.png', FALSE),
  (UUID(), @pid_11, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/4/_/4_36_3_2_1_9.jpg', FALSE),
  (UUID(), @pid_11, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/2/_/2_61_8_2_1_12.jpg', FALSE),
  (UUID(), @pid_11, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/1/_/1_66_6_2_1_11.jpg', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_11, 'Xanh dương', 28990000.0, 22990000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2778 x 1284 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Tai thỏ'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera góc rộng: 12MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A15 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 15'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '160,8 x 78,1 x 7,65 mm'),
  (UUID(), @vid, 'Trọng lượng', '240 gram'),
  (UUID(), @vid, 'Pin', '4352 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_11, 'Xanh dương', 31990000.0, 23990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2778 x 1284 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Tai thỏ'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera góc rộng: 12MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A15 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '256GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 15'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '160,8 x 78,1 x 7,65 mm'),
  (UUID(), @vid, 'Trọng lượng', '240 gram'),
  (UUID(), @vid, 'Pin', '4352 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_11, 'Xanh dương', 33990000.0, 25990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2778 x 1284 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Tai thỏ'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera góc rộng: 12MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A15 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '512GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 15'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '160,8 x 78,1 x 7,65 mm'),
  (UUID(), @vid, 'Trọng lượng', '240 gram'),
  (UUID(), @vid, 'Pin', '4352 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_11, 'Xanh dương', 35990000.0, 27990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2778 x 1284 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Tai thỏ'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera góc rộng: 12MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A15 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '1TB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 15'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '160,8 x 78,1 x 7,65 mm'),
  (UUID(), @vid, 'Trọng lượng', '240 gram'),
  (UUID(), @vid, 'Pin', '4352 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_11, 'Xám', 28990000.0, 22990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2778 x 1284 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Tai thỏ'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera góc rộng: 12MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A15 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 15'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '160,8 x 78,1 x 7,65 mm'),
  (UUID(), @vid, 'Trọng lượng', '240 gram'),
  (UUID(), @vid, 'Pin', '4352 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_11, 'Xám', 31990000.0, 23990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2778 x 1284 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Tai thỏ'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera góc rộng: 12MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A15 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '256GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 15'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '160,8 x 78,1 x 7,65 mm'),
  (UUID(), @vid, 'Trọng lượng', '240 gram'),
  (UUID(), @vid, 'Pin', '4352 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_11, 'Xám', 33990000.0, 25990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2778 x 1284 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Tai thỏ'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera góc rộng: 12MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A15 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '512GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 15'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '160,8 x 78,1 x 7,65 mm'),
  (UUID(), @vid, 'Trọng lượng', '240 gram'),
  (UUID(), @vid, 'Pin', '4352 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_11, 'Xám', 35990000.0, 27990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2778 x 1284 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Tai thỏ'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera góc rộng: 12MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A15 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '1TB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 15'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '160,8 x 78,1 x 7,65 mm'),
  (UUID(), @vid, 'Trọng lượng', '240 gram'),
  (UUID(), @vid, 'Pin', '4352 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_11, 'Bạc', 28990000.0, 22990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2778 x 1284 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Tai thỏ'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera góc rộng: 12MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A15 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 15'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '160,8 x 78,1 x 7,65 mm'),
  (UUID(), @vid, 'Trọng lượng', '240 gram'),
  (UUID(), @vid, 'Pin', '4352 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_11, 'Bạc', 31990000.0, 23990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2778 x 1284 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Tai thỏ'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera góc rộng: 12MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A15 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '256GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 15'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '160,8 x 78,1 x 7,65 mm'),
  (UUID(), @vid, 'Trọng lượng', '240 gram'),
  (UUID(), @vid, 'Pin', '4352 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_11, 'Bạc', 33990000.0, 25990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2778 x 1284 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Tai thỏ'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera góc rộng: 12MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A15 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '512GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 15'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '160,8 x 78,1 x 7,65 mm'),
  (UUID(), @vid, 'Trọng lượng', '240 gram'),
  (UUID(), @vid, 'Pin', '4352 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_11, 'Bạc', 35990000.0, 27990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2778 x 1284 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Tai thỏ'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera góc rộng: 12MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A15 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '1TB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 15'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '160,8 x 78,1 x 7,65 mm'),
  (UUID(), @vid, 'Trọng lượng', '240 gram'),
  (UUID(), @vid, 'Pin', '4352 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_11, 'Vàng', 28990000.0, 22990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2778 x 1284 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Tai thỏ'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera góc rộng: 12MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A15 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 15'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '160,8 x 78,1 x 7,65 mm'),
  (UUID(), @vid, 'Trọng lượng', '240 gram'),
  (UUID(), @vid, 'Pin', '4352 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_11, 'Vàng', 31990000.0, 23990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2778 x 1284 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Tai thỏ'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera góc rộng: 12MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A15 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '256GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 15'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '160,8 x 78,1 x 7,65 mm'),
  (UUID(), @vid, 'Trọng lượng', '240 gram'),
  (UUID(), @vid, 'Pin', '4352 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_11, 'Vàng', 33990000.0, 25990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2778 x 1284 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Tai thỏ'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera góc rộng: 12MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A15 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '512GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 15'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '160,8 x 78,1 x 7,65 mm'),
  (UUID(), @vid, 'Trọng lượng', '240 gram'),
  (UUID(), @vid, 'Pin', '4352 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_11, 'Vàng', 35990000.0, 27990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2778 x 1284 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Tai thỏ'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera góc rộng: 12MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A15 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '1TB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 15'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '160,8 x 78,1 x 7,65 mm'),
  (UUID(), @vid, 'Trọng lượng', '240 gram'),
  (UUID(), @vid, 'Pin', '4352 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_11, 'Xanh lá', 28990000.0, 22990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2778 x 1284 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Tai thỏ'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera góc rộng: 12MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A15 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 15'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '160,8 x 78,1 x 7,65 mm'),
  (UUID(), @vid, 'Trọng lượng', '240 gram'),
  (UUID(), @vid, 'Pin', '4352 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_11, 'Xanh lá', 31990000.0, 23990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2778 x 1284 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Tai thỏ'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera góc rộng: 12MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A15 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '256GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 15'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '160,8 x 78,1 x 7,65 mm'),
  (UUID(), @vid, 'Trọng lượng', '240 gram'),
  (UUID(), @vid, 'Pin', '4352 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_11, 'Xanh lá', 33990000.0, 25990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2778 x 1284 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Tai thỏ'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera góc rộng: 12MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A15 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '512GB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 15'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '160,8 x 78,1 x 7,65 mm'),
  (UUID(), @vid, 'Trọng lượng', '240 gram'),
  (UUID(), @vid, 'Pin', '4352 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_11, 'Xanh lá', 35990000.0, 27990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super Retina XDR OLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2778 x 1284 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Tai thỏ'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', 'Camera góc rộng: 12MP. Camera góc siêu rộng: 12MP'),
  (UUID(), @vid, 'Chip', 'Apple A15 Bionic 6 nhân'),
  (UUID(), @vid, 'GPU', 'GPU 5 nhân'),
  (UUID(), @vid, 'SIM', '2 SIM (nano‑SIM và eSIM)'),
  (UUID(), @vid, 'RAM', '6GB'),
  (UUID(), @vid, 'Bộ nhớ', '1TB'),
  (UUID(), @vid, 'Hệ điều hành', 'iOS 15'),
  (UUID(), @vid, 'CPU', '3.22 GHz'),
  (UUID(), @vid, 'Kích thước', '160,8 x 78,1 x 7,65 mm'),
  (UUID(), @vid, 'Trọng lượng', '240 gram'),
  (UUID(), @vid, 'Pin', '4352 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'Lightning'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- BRAND: Samsung
SET @bid_Samsung = UUID();
INSERT INTO brand (brand_id, brand_name) VALUES (@bid_Samsung, 'Samsung');

-- PRODUCT: Samsung Galaxy A06
SET @pid_12 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_12, @cid, @bid_Samsung, 'Samsung Galaxy A06', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_12, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/d/i/dien-thoai-samsung-galaxy-a06_2__3.png', TRUE),
  (UUID(), @pid_12, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/d/i/dien-thoai-samsung-galaxy-a06_3.png', FALSE),
  (UUID(), @pid_12, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/d/i/dien-thoai-samsung-galaxy-a06_1__3.png', FALSE),
  (UUID(), @pid_12, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/d/i/dien-thoai-samsung-galaxy-a06_7_.png', FALSE),
  (UUID(), @pid_12, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/d/i/dien-thoai-samsung-galaxy-a06_8_.png', FALSE),
  (UUID(), @pid_12, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/d/i/dien-thoai-samsung-galaxy-a06_10_.png', FALSE),
  (UUID(), @pid_12, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/d/i/dien-thoai-samsung-galaxy-a06_5_.png', FALSE),
  (UUID(), @pid_12, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/d/i/dien-thoai-samsung-galaxy-a06_4_.png', FALSE),
  (UUID(), @pid_12, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/d/i/dien-thoai-samsung-galaxy-a06_6_.png', FALSE),
  (UUID(), @pid_12, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/d/i/dien-thoai-samsung-galaxy-a06_11_.png', FALSE),
  (UUID(), @pid_12, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/d/i/dien-thoai-samsung-galaxy-a06_13_.png', FALSE),
  (UUID(), @pid_12, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/d/i/dien-thoai-samsung-galaxy-a06_12_.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_12, 'Xanh dương', 3430000.0, 3090000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'PLS LCD'),
  (UUID(), @vid, 'Độ phân giải màn hình', '720 x 1600 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Giọt nước'),
  (UUID(), @vid, 'Camera trước', '8MP'),
  (UUID(), @vid, 'Camera sau', '50MP, 2MP'),
  (UUID(), @vid, 'Chip', 'MediaTek Helio G85'),
  (UUID(), @vid, 'SIM', '2 SIM (Nano-SIM)'),
  (UUID(), @vid, 'RAM', '4GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'Android'),
  (UUID(), @vid, 'CPU', '8 nhân 2 GHz'),
  (UUID(), @vid, 'Kích thước', '167,3 x 77,3 x 8,0 mm'),
  (UUID(), @vid, 'Trọng lượng', '189 gram'),
  (UUID(), @vid, 'Pin', '5000 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Bảo mật vân tay, Nhận diện khuôn mặt');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_12, 'Xanh lá', 3430000.0, 3090000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'PLS LCD'),
  (UUID(), @vid, 'Độ phân giải màn hình', '720 x 1600 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Giọt nước'),
  (UUID(), @vid, 'Camera trước', '8MP'),
  (UUID(), @vid, 'Camera sau', '50MP, 2MP'),
  (UUID(), @vid, 'Chip', 'MediaTek Helio G85'),
  (UUID(), @vid, 'SIM', '2 SIM (Nano-SIM)'),
  (UUID(), @vid, 'RAM', '4GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'Android'),
  (UUID(), @vid, 'CPU', '8 nhân 2 GHz'),
  (UUID(), @vid, 'Kích thước', '167,3 x 77,3 x 8,0 mm'),
  (UUID(), @vid, 'Trọng lượng', '189 gram'),
  (UUID(), @vid, 'Pin', '5000 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Bảo mật vân tay, Nhận diện khuôn mặt');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_12, 'Đen', 3430000.0, 3090000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'PLS LCD'),
  (UUID(), @vid, 'Độ phân giải màn hình', '720 x 1600 pixels'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Giọt nước'),
  (UUID(), @vid, 'Camera trước', '8MP'),
  (UUID(), @vid, 'Camera sau', '50MP, 2MP'),
  (UUID(), @vid, 'Chip', 'MediaTek Helio G85'),
  (UUID(), @vid, 'SIM', '2 SIM (Nano-SIM)'),
  (UUID(), @vid, 'RAM', '4GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'Android'),
  (UUID(), @vid, 'CPU', '8 nhân 2 GHz'),
  (UUID(), @vid, 'Kích thước', '167,3 x 77,3 x 8,0 mm'),
  (UUID(), @vid, 'Trọng lượng', '189 gram'),
  (UUID(), @vid, 'Pin', '5000 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Bảo mật vân tay, Nhận diện khuôn mặt');

-- ===============================

-- PRODUCT: Samsung Galaxy A07
SET @pid_13 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_13, @cid, @bid_Samsung, 'Samsung Galaxy A07', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_13, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/s/a/samsung-galaxy-a07-black.jpg', TRUE),
  (UUID(), @pid_13, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/s/a/samsung-galaxy-a07-black-1.jpg', FALSE),
  (UUID(), @pid_13, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/s/a/samsung-galaxy-a07-black-2.jpg', FALSE),
  (UUID(), @pid_13, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/s/a/samsung-galaxy-a07-black-3.jpg', FALSE),
  (UUID(), @pid_13, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/s/a/samsung-galaxy-a07-black-4.jpg', FALSE),
  (UUID(), @pid_13, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/s/a/samsung-galaxy-a07-black-5.jpg', FALSE),
  (UUID(), @pid_13, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/s/a/samsung-galaxy-a07-black-6.jpg', FALSE),
  (UUID(), @pid_13, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/s/a/samsung-galaxy-a07-black-8.jpg', FALSE),
  (UUID(), @pid_13, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/s/a/samsung-galaxy-a07-green.jpg', FALSE),
  (UUID(), @pid_13, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/s/a/samsung-galaxy-a07-green-4.jpg', FALSE),
  (UUID(), @pid_13, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/s/a/samsung-galaxy-a07-violet.jpg', FALSE),
  (UUID(), @pid_13, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/s/a/samsung-galaxy-a07-violet-4.jpg', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_13, 'Đen huyền', 3390000.0, 3190000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'IPS LCD'),
  (UUID(), @vid, 'Độ phân giải màn hình', '720 x 1600 pixels'),
  (UUID(), @vid, 'Tần số quét', '90Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Giọt nước'),
  (UUID(), @vid, 'Camera trước', '8MP'),
  (UUID(), @vid, 'Camera sau', '50MP, 2MP'),
  (UUID(), @vid, 'Chip', 'MediaTek Helio G99'),
  (UUID(), @vid, 'GPU', 'Mali-G57'),
  (UUID(), @vid, 'SIM', '2 Nano-SIM'),
  (UUID(), @vid, 'RAM', '4GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'Android 15'),
  (UUID(), @vid, 'CPU', '8 nhân (2 nhân 2.2 GHz & 6 nhân 2.0 GHz)'),
  (UUID(), @vid, 'Kích thước', '167.4 x 77.4 x 7.6 mm'),
  (UUID(), @vid, 'Trọng lượng', '184 gram'),
  (UUID(), @vid, 'Pin', '5000 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Bảo mật vân tay, Nhận diện khuôn mặt, Kháng nước, Kháng bụi');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_13, 'Tím bạc', 3390000.0, 3190000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'IPS LCD'),
  (UUID(), @vid, 'Độ phân giải màn hình', '720 x 1600 pixels'),
  (UUID(), @vid, 'Tần số quét', '90Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Giọt nước'),
  (UUID(), @vid, 'Camera trước', '8MP'),
  (UUID(), @vid, 'Camera sau', '50MP, 2MP'),
  (UUID(), @vid, 'Chip', 'MediaTek Helio G99'),
  (UUID(), @vid, 'GPU', 'Mali-G57'),
  (UUID(), @vid, 'SIM', '2 Nano-SIM'),
  (UUID(), @vid, 'RAM', '4GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'Android 15'),
  (UUID(), @vid, 'CPU', '8 nhân (2 nhân 2.2 GHz & 6 nhân 2.0 GHz)'),
  (UUID(), @vid, 'Kích thước', '167.4 x 77.4 x 7.6 mm'),
  (UUID(), @vid, 'Trọng lượng', '184 gram'),
  (UUID(), @vid, 'Pin', '5000 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Bảo mật vân tay, Nhận diện khuôn mặt, Kháng nước, Kháng bụi');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_13, 'Xanh lục bảo', 3390000.0, 3190000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'IPS LCD'),
  (UUID(), @vid, 'Độ phân giải màn hình', '720 x 1600 pixels'),
  (UUID(), @vid, 'Tần số quét', '90Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Giọt nước'),
  (UUID(), @vid, 'Camera trước', '8MP'),
  (UUID(), @vid, 'Camera sau', '50MP, 2MP'),
  (UUID(), @vid, 'Chip', 'MediaTek Helio G99'),
  (UUID(), @vid, 'GPU', 'Mali-G57'),
  (UUID(), @vid, 'SIM', '2 Nano-SIM'),
  (UUID(), @vid, 'RAM', '4GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'Android 15'),
  (UUID(), @vid, 'CPU', '8 nhân (2 nhân 2.2 GHz & 6 nhân 2.0 GHz)'),
  (UUID(), @vid, 'Kích thước', '167.4 x 77.4 x 7.6 mm'),
  (UUID(), @vid, 'Trọng lượng', '184 gram'),
  (UUID(), @vid, 'Pin', '5000 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Bảo mật vân tay, Nhận diện khuôn mặt, Kháng nước, Kháng bụi');

-- ===============================

-- PRODUCT: Samsung Galaxy A17
SET @pid_14 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_14, @cid, @bid_Samsung, 'Samsung Galaxy A17', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_14, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/d/i/dien-thoai-samsung-galaxy-a17-17_1.jpg', TRUE),
  (UUID(), @pid_14, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/d/i/dien-thoai-samsung-galaxy-a17-11_1.jpg', FALSE),
  (UUID(), @pid_14, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/d/i/dien-thoai-samsung-galaxy-a17-15_1.jpg', FALSE),
  (UUID(), @pid_14, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/d/i/dien-thoai-samsung-galaxy-a17-8.jpg', FALSE),
  (UUID(), @pid_14, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/d/i/dien-thoai-samsung-galaxy-a17-26.jpg', FALSE),
  (UUID(), @pid_14, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/d/i/dien-thoai-samsung-galaxy-a17-23.jpg', FALSE),
  (UUID(), @pid_14, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/d/i/dien-thoai-samsung-galaxy-a17-21.jpg', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_14, 'Xám', 5190000.0, 4990000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super AMOLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '1080 x 2340 pixels (FullHD+)'),
  (UUID(), @vid, 'Tần số quét', '90Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Giọt nước'),
  (UUID(), @vid, 'Camera trước', '13MP'),
  (UUID(), @vid, 'Camera sau', 'Chính: 50MP. Phụ: 5MP, 2MP'),
  (UUID(), @vid, 'Chip', 'MediaTek Helio G99'),
  (UUID(), @vid, 'GPU', 'Mali-G57'),
  (UUID(), @vid, 'SIM', '2 Nano SIM (Sim 2 chung khe với thẻ nhớ)'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'Android 15'),
  (UUID(), @vid, 'CPU', '8 nhân (2 nhân 2.2 GHz & 6 nhân 2.0 GHz)'),
  (UUID(), @vid, 'Kích thước', '164.4 × 77.9 × 7.5 mm'),
  (UUID(), @vid, 'Trọng lượng', '190 gram'),
  (UUID(), @vid, 'Pin', '5000 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Bảo mật vân tay, Nhận diện khuôn mặt, Kháng nước, Kháng bụi');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_14, 'Xanh', 5190000.0, 4990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super AMOLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '1080 x 2340 pixels (FullHD+)'),
  (UUID(), @vid, 'Tần số quét', '90Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Giọt nước'),
  (UUID(), @vid, 'Camera trước', '13MP'),
  (UUID(), @vid, 'Camera sau', 'Chính: 50MP. Phụ: 5MP, 2MP'),
  (UUID(), @vid, 'Chip', 'MediaTek Helio G99'),
  (UUID(), @vid, 'GPU', 'Mali-G57'),
  (UUID(), @vid, 'SIM', '2 Nano SIM (Sim 2 chung khe với thẻ nhớ)'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'Android 15'),
  (UUID(), @vid, 'CPU', '8 nhân (2 nhân 2.2 GHz & 6 nhân 2.0 GHz)'),
  (UUID(), @vid, 'Kích thước', '164.4 × 77.9 × 7.5 mm'),
  (UUID(), @vid, 'Trọng lượng', '190 gram'),
  (UUID(), @vid, 'Pin', '5000 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Bảo mật vân tay, Nhận diện khuôn mặt, Kháng nước, Kháng bụi');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_14, 'Đen', 5190000.0, 4990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super AMOLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '1080 x 2340 pixels (FullHD+)'),
  (UUID(), @vid, 'Tần số quét', '90Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Giọt nước'),
  (UUID(), @vid, 'Camera trước', '13MP'),
  (UUID(), @vid, 'Camera sau', 'Chính: 50MP. Phụ: 5MP, 2MP'),
  (UUID(), @vid, 'Chip', 'MediaTek Helio G99'),
  (UUID(), @vid, 'GPU', 'Mali-G57'),
  (UUID(), @vid, 'SIM', '2 Nano SIM (Sim 2 chung khe với thẻ nhớ)'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'Android 15'),
  (UUID(), @vid, 'CPU', '8 nhân (2 nhân 2.2 GHz & 6 nhân 2.0 GHz)'),
  (UUID(), @vid, 'Kích thước', '164.4 × 77.9 × 7.5 mm'),
  (UUID(), @vid, 'Trọng lượng', '190 gram'),
  (UUID(), @vid, 'Pin', '5000 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Bảo mật vân tay, Nhận diện khuôn mặt, Kháng nước, Kháng bụi');

-- ===============================

-- PRODUCT: Samsung Galaxy A26 5G 8GB 128GB
SET @pid_15 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_15, @cid, @bid_Samsung, 'Samsung Galaxy A26 5G 8GB 128GB', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_15, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/d/i/dien-thoai-samsung-galaxy-a26_6__1.png', TRUE),
  (UUID(), @pid_15, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/d/i/dien-thoai-samsung-galaxy-a26_10__1.png', FALSE),
  (UUID(), @pid_15, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/d/i/dien-thoai-samsung-galaxy-a26_2.png', FALSE),
  (UUID(), @pid_15, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/d/i/dien-thoai-samsung-galaxy-a26_8__1.png', FALSE),
  (UUID(), @pid_15, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/d/i/dien-thoai-samsung-galaxy-a26_12__1.png', FALSE),
  (UUID(), @pid_15, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/d/i/dien-thoai-samsung-galaxy-a26_3__1.png', FALSE),
  (UUID(), @pid_15, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/d/i/dien-thoai-samsung-galaxy-a26_5__1.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_15, 'Hồng', 6870000.0, 6370000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super AMOLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '1080 x 2340 pixels (FullHD+)'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Giọt nước'),
  (UUID(), @vid, 'Camera trước', '13MP'),
  (UUID(), @vid, 'Camera sau', '50MP + 8MP + 2MP'),
  (UUID(), @vid, 'Chip', 'Exynos 1380 (Quartz)'),
  (UUID(), @vid, 'GPU', 'Mali-G68'),
  (UUID(), @vid, 'SIM', '2 Nano-SIM'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'Android 15'),
  (UUID(), @vid, 'CPU', '2.4GHz, 2GHz, Octa-Core'),
  (UUID(), @vid, 'Kích thước', '164.0 x 77.5 x 7.7 mm'),
  (UUID(), @vid, 'Trọng lượng', '200 gram'),
  (UUID(), @vid, 'Pin', '5000 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Bảo mật vân tay, Nhận diện khuôn mặt, Kháng nước, Kháng bụi');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_15, 'Xanh', 6870000.0, 6370000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super AMOLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '1080 x 2340 pixels (FullHD+)'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Giọt nước'),
  (UUID(), @vid, 'Camera trước', '13MP'),
  (UUID(), @vid, 'Camera sau', '50MP + 8MP + 2MP'),
  (UUID(), @vid, 'Chip', 'Exynos 1380 (Quartz)'),
  (UUID(), @vid, 'GPU', 'Mali-G68'),
  (UUID(), @vid, 'SIM', '2 Nano-SIM'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'Android 15'),
  (UUID(), @vid, 'CPU', '2.4GHz, 2GHz, Octa-Core'),
  (UUID(), @vid, 'Kích thước', '164.0 x 77.5 x 7.7 mm'),
  (UUID(), @vid, 'Trọng lượng', '200 gram'),
  (UUID(), @vid, 'Pin', '5000 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Bảo mật vân tay, Nhận diện khuôn mặt, Kháng nước, Kháng bụi');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_15, 'Đen', 6870000.0, 6370000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Super AMOLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '1080 x 2340 pixels (FullHD+)'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Giọt nước'),
  (UUID(), @vid, 'Camera trước', '13MP'),
  (UUID(), @vid, 'Camera sau', '50MP + 8MP + 2MP'),
  (UUID(), @vid, 'Chip', 'Exynos 1380 (Quartz)'),
  (UUID(), @vid, 'GPU', 'Mali-G68'),
  (UUID(), @vid, 'SIM', '2 Nano-SIM'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'Android 15'),
  (UUID(), @vid, 'CPU', '2.4GHz, 2GHz, Octa-Core'),
  (UUID(), @vid, 'Kích thước', '164.0 x 77.5 x 7.7 mm'),
  (UUID(), @vid, 'Trọng lượng', '200 gram'),
  (UUID(), @vid, 'Pin', '5000 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Bảo mật vân tay, Nhận diện khuôn mặt, Kháng nước, Kháng bụi');

-- ===============================

-- PRODUCT: Samsung Galaxy S24 FE 5G 8GB 128GB
SET @pid_16 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_16, @cid, @bid_Samsung, 'Samsung Galaxy S24 FE 5G 8GB 128GB', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_16, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/d/i/dien-thoai-samsung-galaxy-s24-fe_3_.png', TRUE),
  (UUID(), @pid_16, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/d/i/dien-thoai-samsung-galaxy-s24-fe_3__4.png', FALSE),
  (UUID(), @pid_16, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/d/i/dien-thoai-samsung-galaxy-s24-fe_2__4.png', FALSE),
  (UUID(), @pid_16, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/d/i/dien-thoai-samsung-galaxy-s24-fe_1__4.png', FALSE),
  (UUID(), @pid_16, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/d/i/dien-thoai-samsung-galaxy-s24-fe_4.png', FALSE),
  (UUID(), @pid_16, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/d/i/dien-thoai-samsung-galaxy-s24-fe_13_.png', FALSE),
  (UUID(), @pid_16, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/2/_/2_2__1_2.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_16, 'Xanh lá', 16690000.0, 11490000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Dynamic AMOLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '1080 x 2400 pixels (FullHD+)'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Đục lỗ'),
  (UUID(), @vid, 'Camera trước', '10MP'),
  (UUID(), @vid, 'Camera sau', '50MP + 12MP + 8MP'),
  (UUID(), @vid, 'Chip', 'Chipset Exynos 2400e (4nm)'),
  (UUID(), @vid, 'GPU', 'Mali-G68'),
  (UUID(), @vid, 'SIM', '2 Nano-SIM'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'Android 14'),
  (UUID(), @vid, 'CPU', '2.4GHz, 2GHz, Octa-Core'),
  (UUID(), @vid, 'Kích thước', '164.0 x 77.5 x 7.7 mm'),
  (UUID(), @vid, 'Trọng lượng', '200 gram'),
  (UUID(), @vid, 'Pin', '4700 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Bảo mật vân tay, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_16, 'Đen', 16690000.0, 11490000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Dynamic AMOLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '1080 x 2400 pixels (FullHD+)'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Đục lỗ'),
  (UUID(), @vid, 'Camera trước', '10MP'),
  (UUID(), @vid, 'Camera sau', '50MP + 12MP + 8MP'),
  (UUID(), @vid, 'Chip', 'Chipset Exynos 2400e (4nm)'),
  (UUID(), @vid, 'GPU', 'Mali-G68'),
  (UUID(), @vid, 'SIM', '2 Nano-SIM'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'Android 14'),
  (UUID(), @vid, 'CPU', '2.4GHz, 2GHz, Octa-Core'),
  (UUID(), @vid, 'Kích thước', '164.0 x 77.5 x 7.7 mm'),
  (UUID(), @vid, 'Trọng lượng', '200 gram'),
  (UUID(), @vid, 'Pin', '4700 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Bảo mật vân tay, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_16, 'Xanh dương', 16690000.0, 11490000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Dynamic AMOLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '1080 x 2400 pixels (FullHD+)'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Đục lỗ'),
  (UUID(), @vid, 'Camera trước', '10MP'),
  (UUID(), @vid, 'Camera sau', '50MP + 12MP + 8MP'),
  (UUID(), @vid, 'Chip', 'Chipset Exynos 2400e (4nm)'),
  (UUID(), @vid, 'GPU', 'Mali-G68'),
  (UUID(), @vid, 'SIM', '2 Nano-SIM'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'Android 14'),
  (UUID(), @vid, 'CPU', '2.4GHz, 2GHz, Octa-Core'),
  (UUID(), @vid, 'Kích thước', '164.0 x 77.5 x 7.7 mm'),
  (UUID(), @vid, 'Trọng lượng', '200 gram'),
  (UUID(), @vid, 'Pin', '4700 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Bảo mật vân tay, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_16, 'Xám', 16690000.0, 11490000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Dynamic AMOLED'),
  (UUID(), @vid, 'Độ phân giải màn hình', '1080 x 2400 pixels (FullHD+)'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Đục lỗ'),
  (UUID(), @vid, 'Camera trước', '10MP'),
  (UUID(), @vid, 'Camera sau', '50MP + 12MP + 8MP'),
  (UUID(), @vid, 'Chip', 'Chipset Exynos 2400e (4nm)'),
  (UUID(), @vid, 'GPU', 'Mali-G68'),
  (UUID(), @vid, 'SIM', '2 Nano-SIM'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'Android 14'),
  (UUID(), @vid, 'CPU', '2.4GHz, 2GHz, Octa-Core'),
  (UUID(), @vid, 'Kích thước', '164.0 x 77.5 x 7.7 mm'),
  (UUID(), @vid, 'Trọng lượng', '200 gram'),
  (UUID(), @vid, 'Pin', '4700 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Bảo mật vân tay, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- PRODUCT: Samsung Galaxy S25 FE 8GB 128GB
SET @pid_17 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_17, @cid, @bid_Samsung, 'Samsung Galaxy S25 FE 8GB 128GB', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_17, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/s/a/samsung-galaxy-s25-fe-2.jpg', TRUE),
  (UUID(), @pid_17, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/s/a/samsung-galaxy-s25-fe-3.jpg', FALSE),
  (UUID(), @pid_17, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/s/a/samsung-galaxy-s25-fe-1.jpg', FALSE),
  (UUID(), @pid_17, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/s/a/samsung-galaxy-s25-fe.jpg', FALSE),
  (UUID(), @pid_17, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/s/a/samsung-galaxy-s25-fe-navy-1.jpg', FALSE),
  (UUID(), @pid_17, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/s/a/samsung-galaxy-s25-fe-navy-8.jpg', FALSE),
  (UUID(), @pid_17, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/s/a/samsung-galaxy-s25-fe-icyblue-4.jpg', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_17, 'Đen', 16690000.0, 14390000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Dynamic AMOLED 2X'),
  (UUID(), @vid, 'Độ phân giải màn hình', '1080 x 2340 pixels (FullHD+)'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Đục lỗ'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', '50MP + 12MP + 8MP'),
  (UUID(), @vid, 'Chip', 'Exynos 2400'),
  (UUID(), @vid, 'GPU', 'Mali-G68'),
  (UUID(), @vid, 'SIM', '2 Nano-SIM + eSIM'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'Android 16, One UI 8'),
  (UUID(), @vid, 'CPU', '10 nhân (3.2 GHz, 2.9 GHz, 2.6 GHz, 1.95 GHz)'),
  (UUID(), @vid, 'Kích thước', '161.3 × 76.6 × 7.4 mm'),
  (UUID(), @vid, 'Trọng lượng', '190 gram'),
  (UUID(), @vid, 'Pin', '4900 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Bảo mật vân tay, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_17, 'Xanh dương', 16690000.0, 14390000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Dynamic AMOLED 2X'),
  (UUID(), @vid, 'Độ phân giải màn hình', '1080 x 2340 pixels (FullHD+)'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Đục lỗ'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', '50MP + 12MP + 8MP'),
  (UUID(), @vid, 'Chip', 'Exynos 2400'),
  (UUID(), @vid, 'GPU', 'Mali-G68'),
  (UUID(), @vid, 'SIM', '2 Nano-SIM + eSIM'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'Android 16, One UI 8'),
  (UUID(), @vid, 'CPU', '10 nhân (3.2 GHz, 2.9 GHz, 2.6 GHz, 1.95 GHz)'),
  (UUID(), @vid, 'Kích thước', '161.3 × 76.6 × 7.4 mm'),
  (UUID(), @vid, 'Trọng lượng', '190 gram'),
  (UUID(), @vid, 'Pin', '4900 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Bảo mật vân tay, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_17, 'Trắng', 16690000.0, 14390000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Dynamic AMOLED 2X'),
  (UUID(), @vid, 'Độ phân giải màn hình', '1080 x 2340 pixels (FullHD+)'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Đục lỗ'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', '50MP + 12MP + 8MP'),
  (UUID(), @vid, 'Chip', 'Exynos 2400'),
  (UUID(), @vid, 'GPU', 'Mali-G68'),
  (UUID(), @vid, 'SIM', '2 Nano-SIM + eSIM'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'Android 16, One UI 8'),
  (UUID(), @vid, 'CPU', '10 nhân (3.2 GHz, 2.9 GHz, 2.6 GHz, 1.95 GHz)'),
  (UUID(), @vid, 'Kích thước', '161.3 × 76.6 × 7.4 mm'),
  (UUID(), @vid, 'Trọng lượng', '190 gram'),
  (UUID(), @vid, 'Pin', '4900 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Bảo mật vân tay, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_17, 'Xanh navy', 16690000.0, 14390000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Dynamic AMOLED 2X'),
  (UUID(), @vid, 'Độ phân giải màn hình', '1080 x 2340 pixels (FullHD+)'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Đục lỗ'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', '50MP + 12MP + 8MP'),
  (UUID(), @vid, 'Chip', 'Exynos 2400'),
  (UUID(), @vid, 'GPU', 'Mali-G68'),
  (UUID(), @vid, 'SIM', '2 Nano-SIM + eSIM'),
  (UUID(), @vid, 'RAM', '8GB'),
  (UUID(), @vid, 'Bộ nhớ', '128GB'),
  (UUID(), @vid, 'Hệ điều hành', 'Android 16, One UI 8'),
  (UUID(), @vid, 'CPU', '10 nhân (3.2 GHz, 2.9 GHz, 2.6 GHz, 1.95 GHz)'),
  (UUID(), @vid, 'Kích thước', '161.3 × 76.6 × 7.4 mm'),
  (UUID(), @vid, 'Trọng lượng', '190 gram'),
  (UUID(), @vid, 'Pin', '4900 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Sạc không dây, Bảo mật vân tay, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- PRODUCT: Samsung Galaxy S24 Plus 12GB
SET @pid_18 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_18, @cid, @bid_Samsung, 'Samsung Galaxy S24 Plus 12GB', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_18, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/g/a/galaxy-s24-plus-den.png', TRUE),
  (UUID(), @pid_18, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/g/a/galaxy-s24-plus-vang.png', FALSE),
  (UUID(), @pid_18, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/g/a/galaxy-s24-plus-tim.png', FALSE),
  (UUID(), @pid_18, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/g/a/galaxy-s24-plus-xam.png', FALSE),
  (UUID(), @pid_18, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/s/a/samsung-galaxy-s24_19__2.png', FALSE),
  (UUID(), @pid_18, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/s/a/samsung-galaxy-s24_15__2.png', FALSE),
  (UUID(), @pid_18, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/s/a/samsung-galaxy-s24_12__1_2.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_18, 'Đen', 18650000.0, 16390000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Dynamic AMOLED 2X'),
  (UUID(), @vid, 'Độ phân giải màn hình', '3120 x 1440 pixels (Quad HD+)'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Đục lỗ'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', '50MP + 12MP + 10MP'),
  (UUID(), @vid, 'Chip', 'Exynos 2400'),
  (UUID(), @vid, 'GPU', 'Adreno 750'),
  (UUID(), @vid, 'SIM', 'SIM 1 + SIM 2 / SIM 1 + eSIM / 2 eSIM'),
  (UUID(), @vid, 'RAM', '12GB'),
  (UUID(), @vid, 'Bộ nhớ', '256GB'),
  (UUID(), @vid, 'Hệ điều hành', 'Android 14, One UI 6.1'),
  (UUID(), @vid, 'CPU', '10 nhân (3.2 GHz, 2.9 GHz, 2.6 GHz, 1.95 GHz)'),
  (UUID(), @vid, 'Kích thước', '158.5 x 75.9 x 7.75mm'),
  (UUID(), @vid, 'Trọng lượng', '196 gram'),
  (UUID(), @vid, 'Pin', '4900 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Bảo mật vân tay, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_18, 'Đen', 29940000.0, 21190000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Dynamic AMOLED 2X'),
  (UUID(), @vid, 'Độ phân giải màn hình', '3120 x 1440 pixels (Quad HD+)'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Đục lỗ'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', '50MP + 12MP + 10MP'),
  (UUID(), @vid, 'Chip', 'Exynos 2400'),
  (UUID(), @vid, 'GPU', 'Adreno 750'),
  (UUID(), @vid, 'SIM', 'SIM 1 + SIM 2 / SIM 1 + eSIM / 2 eSIM'),
  (UUID(), @vid, 'RAM', '12GB'),
  (UUID(), @vid, 'Bộ nhớ', '512GB'),
  (UUID(), @vid, 'Hệ điều hành', 'Android 14, One UI 6.1'),
  (UUID(), @vid, 'CPU', '10 nhân (3.2 GHz, 2.9 GHz, 2.6 GHz, 1.95 GHz)'),
  (UUID(), @vid, 'Kích thước', '158.5 x 75.9 x 7.75mm'),
  (UUID(), @vid, 'Trọng lượng', '196 gram'),
  (UUID(), @vid, 'Pin', '4900 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Bảo mật vân tay, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_18, 'Vàng', 18650000.0, 16390000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Dynamic AMOLED 2X'),
  (UUID(), @vid, 'Độ phân giải màn hình', '3120 x 1440 pixels (Quad HD+)'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Đục lỗ'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', '50MP + 12MP + 10MP'),
  (UUID(), @vid, 'Chip', 'Exynos 2400'),
  (UUID(), @vid, 'GPU', 'Adreno 750'),
  (UUID(), @vid, 'SIM', 'SIM 1 + SIM 2 / SIM 1 + eSIM / 2 eSIM'),
  (UUID(), @vid, 'RAM', '12GB'),
  (UUID(), @vid, 'Bộ nhớ', '256GB'),
  (UUID(), @vid, 'Hệ điều hành', 'Android 14, One UI 6.1'),
  (UUID(), @vid, 'CPU', '10 nhân (3.2 GHz, 2.9 GHz, 2.6 GHz, 1.95 GHz)'),
  (UUID(), @vid, 'Kích thước', '158.5 x 75.9 x 7.75mm'),
  (UUID(), @vid, 'Trọng lượng', '196 gram'),
  (UUID(), @vid, 'Pin', '4900 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Bảo mật vân tay, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_18, 'Vàng', 29940000.0, 21190000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Dynamic AMOLED 2X'),
  (UUID(), @vid, 'Độ phân giải màn hình', '3120 x 1440 pixels (Quad HD+)'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Đục lỗ'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', '50MP + 12MP + 10MP'),
  (UUID(), @vid, 'Chip', 'Exynos 2400'),
  (UUID(), @vid, 'GPU', 'Adreno 750'),
  (UUID(), @vid, 'SIM', 'SIM 1 + SIM 2 / SIM 1 + eSIM / 2 eSIM'),
  (UUID(), @vid, 'RAM', '12GB'),
  (UUID(), @vid, 'Bộ nhớ', '512GB'),
  (UUID(), @vid, 'Hệ điều hành', 'Android 14, One UI 6.1'),
  (UUID(), @vid, 'CPU', '10 nhân (3.2 GHz, 2.9 GHz, 2.6 GHz, 1.95 GHz)'),
  (UUID(), @vid, 'Kích thước', '158.5 x 75.9 x 7.75mm'),
  (UUID(), @vid, 'Trọng lượng', '196 gram'),
  (UUID(), @vid, 'Pin', '4900 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Bảo mật vân tay, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_18, 'Tím', 18650000.0, 16390000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Dynamic AMOLED 2X'),
  (UUID(), @vid, 'Độ phân giải màn hình', '3120 x 1440 pixels (Quad HD+)'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Đục lỗ'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', '50MP + 12MP + 10MP'),
  (UUID(), @vid, 'Chip', 'Exynos 2400'),
  (UUID(), @vid, 'GPU', 'Adreno 750'),
  (UUID(), @vid, 'SIM', 'SIM 1 + SIM 2 / SIM 1 + eSIM / 2 eSIM'),
  (UUID(), @vid, 'RAM', '12GB'),
  (UUID(), @vid, 'Bộ nhớ', '256GB'),
  (UUID(), @vid, 'Hệ điều hành', 'Android 14, One UI 6.1'),
  (UUID(), @vid, 'CPU', '10 nhân (3.2 GHz, 2.9 GHz, 2.6 GHz, 1.95 GHz)'),
  (UUID(), @vid, 'Kích thước', '158.5 x 75.9 x 7.75mm'),
  (UUID(), @vid, 'Trọng lượng', '196 gram'),
  (UUID(), @vid, 'Pin', '4900 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Bảo mật vân tay, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_18, 'Tím', 29940000.0, 21190000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Dynamic AMOLED 2X'),
  (UUID(), @vid, 'Độ phân giải màn hình', '3120 x 1440 pixels (Quad HD+)'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Đục lỗ'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', '50MP + 12MP + 10MP'),
  (UUID(), @vid, 'Chip', 'Exynos 2400'),
  (UUID(), @vid, 'GPU', 'Adreno 750'),
  (UUID(), @vid, 'SIM', 'SIM 1 + SIM 2 / SIM 1 + eSIM / 2 eSIM'),
  (UUID(), @vid, 'RAM', '12GB'),
  (UUID(), @vid, 'Bộ nhớ', '512GB'),
  (UUID(), @vid, 'Hệ điều hành', 'Android 14, One UI 6.1'),
  (UUID(), @vid, 'CPU', '10 nhân (3.2 GHz, 2.9 GHz, 2.6 GHz, 1.95 GHz)'),
  (UUID(), @vid, 'Kích thước', '158.5 x 75.9 x 7.75mm'),
  (UUID(), @vid, 'Trọng lượng', '196 gram'),
  (UUID(), @vid, 'Pin', '4900 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Bảo mật vân tay, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_18, 'Xám', 18650000.0, 16390000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Dynamic AMOLED 2X'),
  (UUID(), @vid, 'Độ phân giải màn hình', '3120 x 1440 pixels (Quad HD+)'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Đục lỗ'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', '50MP + 12MP + 10MP'),
  (UUID(), @vid, 'Chip', 'Exynos 2400'),
  (UUID(), @vid, 'GPU', 'Adreno 750'),
  (UUID(), @vid, 'SIM', 'SIM 1 + SIM 2 / SIM 1 + eSIM / 2 eSIM'),
  (UUID(), @vid, 'RAM', '12GB'),
  (UUID(), @vid, 'Bộ nhớ', '256GB'),
  (UUID(), @vid, 'Hệ điều hành', 'Android 14, One UI 6.1'),
  (UUID(), @vid, 'CPU', '10 nhân (3.2 GHz, 2.9 GHz, 2.6 GHz, 1.95 GHz)'),
  (UUID(), @vid, 'Kích thước', '158.5 x 75.9 x 7.75mm'),
  (UUID(), @vid, 'Trọng lượng', '196 gram'),
  (UUID(), @vid, 'Pin', '4900 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Bảo mật vân tay, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_18, 'Xám', 29940000.0, 21190000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Dynamic AMOLED 2X'),
  (UUID(), @vid, 'Độ phân giải màn hình', '3120 x 1440 pixels (Quad HD+)'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Đục lỗ'),
  (UUID(), @vid, 'Camera trước', '12MP'),
  (UUID(), @vid, 'Camera sau', '50MP + 12MP + 10MP'),
  (UUID(), @vid, 'Chip', 'Exynos 2400'),
  (UUID(), @vid, 'GPU', 'Adreno 750'),
  (UUID(), @vid, 'SIM', 'SIM 1 + SIM 2 / SIM 1 + eSIM / 2 eSIM'),
  (UUID(), @vid, 'RAM', '12GB'),
  (UUID(), @vid, 'Bộ nhớ', '512GB'),
  (UUID(), @vid, 'Hệ điều hành', 'Android 14, One UI 6.1'),
  (UUID(), @vid, 'CPU', '10 nhân (3.2 GHz, 2.9 GHz, 2.6 GHz, 1.95 GHz)'),
  (UUID(), @vid, 'Kích thước', '158.5 x 75.9 x 7.75mm'),
  (UUID(), @vid, 'Trọng lượng', '196 gram'),
  (UUID(), @vid, 'Pin', '4900 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Bảo mật vân tay, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- PRODUCT: Samsung Galaxy Z Flip6 12GB
SET @pid_19 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_19, @cid, @bid_Samsung, 'Samsung Galaxy Z Flip6 12GB', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_19, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/s/a/samsung-galaxy-z-flip-6-xanh-duong-1_2.png', TRUE),
  (UUID(), @pid_19, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/s/a/samsung-galaxy-z-flip-6-xanh-duong-6_2.png', FALSE),
  (UUID(), @pid_19, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/s/a/samsung-galaxy-z-flip-6-xanh-la-6_2.png', FALSE),
  (UUID(), @pid_19, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/s/a/samsung-galaxy-z-flip-6-xanh-la-4_2.png', FALSE),
  (UUID(), @pid_19, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/s/a/samsung-galaxy-z-flip-6-xanh-vang-6_2.png', FALSE),
  (UUID(), @pid_19, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/s/a/samsung-galaxy-z-flip-6-xanh-vang-3_2.png', FALSE),
  (UUID(), @pid_19, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/s/a/samsung-galaxy-z-flip-6-xanh-xam-6_2.png', FALSE),
  (UUID(), @pid_19, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/s/a/samsung-galaxy-z-flip-6-xanh-xam-2_2.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_19, 'Xanh lá', 28470000.0, 21590000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Dynamic AMOLED 2X'),
  (UUID(), @vid, 'Độ phân giải màn hình', '1080 x 2640 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Màn hình gập'),
  (UUID(), @vid, 'Camera trước', '10MP'),
  (UUID(), @vid, 'Camera sau', '50MP + 12MP'),
  (UUID(), @vid, 'Chip', 'Snapdragon 8 Gen 3'),
  (UUID(), @vid, 'GPU', 'Adreno 750'),
  (UUID(), @vid, 'SIM', '1 Nano SIM + 1 eSIM hoặc 2 eSIM'),
  (UUID(), @vid, 'RAM', '12GB'),
  (UUID(), @vid, 'Bộ nhớ', '256GB'),
  (UUID(), @vid, 'Hệ điều hành', 'Android'),
  (UUID(), @vid, 'CPU', '8 nhân 3.39 GHz, 3.1GHz, 2.9GHz, 2.2GHz'),
  (UUID(), @vid, 'Kích thước', '165.1 x 71.9 x 6.9 mm - 85.1 x 71.9 x 14.9 mm'),
  (UUID(), @vid, 'Trọng lượng', '187 gram'),
  (UUID(), @vid, 'Pin', '4000 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Bảo mật vân tay, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_19, 'Xanh lá', 32400000.0, 21990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Dynamic AMOLED 2X'),
  (UUID(), @vid, 'Độ phân giải màn hình', '1080 x 2640 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Màn hình gập'),
  (UUID(), @vid, 'Camera trước', '10MP'),
  (UUID(), @vid, 'Camera sau', '50MP + 12MP'),
  (UUID(), @vid, 'Chip', 'Snapdragon 8 Gen 3'),
  (UUID(), @vid, 'GPU', 'Adreno 750'),
  (UUID(), @vid, 'SIM', '1 Nano SIM + 1 eSIM hoặc 2 eSIM'),
  (UUID(), @vid, 'RAM', '12GB'),
  (UUID(), @vid, 'Bộ nhớ', '512GB'),
  (UUID(), @vid, 'Hệ điều hành', 'Android'),
  (UUID(), @vid, 'CPU', '8 nhân 3.39 GHz, 3.1GHz, 2.9GHz, 2.2GHz'),
  (UUID(), @vid, 'Kích thước', '165.1 x 71.9 x 6.9 mm - 85.1 x 71.9 x 14.9 mm'),
  (UUID(), @vid, 'Trọng lượng', '187 gram'),
  (UUID(), @vid, 'Pin', '4000 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Bảo mật vân tay, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_19, 'Vàng', 28470000.0, 21590000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Dynamic AMOLED 2X'),
  (UUID(), @vid, 'Độ phân giải màn hình', '1080 x 2640 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Màn hình gập'),
  (UUID(), @vid, 'Camera trước', '10MP'),
  (UUID(), @vid, 'Camera sau', '50MP + 12MP'),
  (UUID(), @vid, 'Chip', 'Snapdragon 8 Gen 3'),
  (UUID(), @vid, 'GPU', 'Adreno 750'),
  (UUID(), @vid, 'SIM', '1 Nano SIM + 1 eSIM hoặc 2 eSIM'),
  (UUID(), @vid, 'RAM', '12GB'),
  (UUID(), @vid, 'Bộ nhớ', '256GB'),
  (UUID(), @vid, 'Hệ điều hành', 'Android'),
  (UUID(), @vid, 'CPU', '8 nhân 3.39 GHz, 3.1GHz, 2.9GHz, 2.2GHz'),
  (UUID(), @vid, 'Kích thước', '165.1 x 71.9 x 6.9 mm - 85.1 x 71.9 x 14.9 mm'),
  (UUID(), @vid, 'Trọng lượng', '187 gram'),
  (UUID(), @vid, 'Pin', '4000 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Bảo mật vân tay, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_19, 'Vàng', 32400000.0, 21990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Dynamic AMOLED 2X'),
  (UUID(), @vid, 'Độ phân giải màn hình', '1080 x 2640 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Màn hình gập'),
  (UUID(), @vid, 'Camera trước', '10MP'),
  (UUID(), @vid, 'Camera sau', '50MP + 12MP'),
  (UUID(), @vid, 'Chip', 'Snapdragon 8 Gen 3'),
  (UUID(), @vid, 'GPU', 'Adreno 750'),
  (UUID(), @vid, 'SIM', '1 Nano SIM + 1 eSIM hoặc 2 eSIM'),
  (UUID(), @vid, 'RAM', '12GB'),
  (UUID(), @vid, 'Bộ nhớ', '512GB'),
  (UUID(), @vid, 'Hệ điều hành', 'Android'),
  (UUID(), @vid, 'CPU', '8 nhân 3.39 GHz, 3.1GHz, 2.9GHz, 2.2GHz'),
  (UUID(), @vid, 'Kích thước', '165.1 x 71.9 x 6.9 mm - 85.1 x 71.9 x 14.9 mm'),
  (UUID(), @vid, 'Trọng lượng', '187 gram'),
  (UUID(), @vid, 'Pin', '4000 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Bảo mật vân tay, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_19, 'Xanh dương', 28470000.0, 21590000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Dynamic AMOLED 2X'),
  (UUID(), @vid, 'Độ phân giải màn hình', '1080 x 2640 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Màn hình gập'),
  (UUID(), @vid, 'Camera trước', '10MP'),
  (UUID(), @vid, 'Camera sau', '50MP + 12MP'),
  (UUID(), @vid, 'Chip', 'Snapdragon 8 Gen 3'),
  (UUID(), @vid, 'GPU', 'Adreno 750'),
  (UUID(), @vid, 'SIM', '1 Nano SIM + 1 eSIM hoặc 2 eSIM'),
  (UUID(), @vid, 'RAM', '12GB'),
  (UUID(), @vid, 'Bộ nhớ', '256GB'),
  (UUID(), @vid, 'Hệ điều hành', 'Android'),
  (UUID(), @vid, 'CPU', '8 nhân 3.39 GHz, 3.1GHz, 2.9GHz, 2.2GHz'),
  (UUID(), @vid, 'Kích thước', '165.1 x 71.9 x 6.9 mm - 85.1 x 71.9 x 14.9 mm'),
  (UUID(), @vid, 'Trọng lượng', '187 gram'),
  (UUID(), @vid, 'Pin', '4000 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Bảo mật vân tay, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_19, 'Xanh dương', 32400000.0, 21990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Dynamic AMOLED 2X'),
  (UUID(), @vid, 'Độ phân giải màn hình', '1080 x 2640 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Màn hình gập'),
  (UUID(), @vid, 'Camera trước', '10MP'),
  (UUID(), @vid, 'Camera sau', '50MP + 12MP'),
  (UUID(), @vid, 'Chip', 'Snapdragon 8 Gen 3'),
  (UUID(), @vid, 'GPU', 'Adreno 750'),
  (UUID(), @vid, 'SIM', '1 Nano SIM + 1 eSIM hoặc 2 eSIM'),
  (UUID(), @vid, 'RAM', '12GB'),
  (UUID(), @vid, 'Bộ nhớ', '512GB'),
  (UUID(), @vid, 'Hệ điều hành', 'Android'),
  (UUID(), @vid, 'CPU', '8 nhân 3.39 GHz, 3.1GHz, 2.9GHz, 2.2GHz'),
  (UUID(), @vid, 'Kích thước', '165.1 x 71.9 x 6.9 mm - 85.1 x 71.9 x 14.9 mm'),
  (UUID(), @vid, 'Trọng lượng', '187 gram'),
  (UUID(), @vid, 'Pin', '4000 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Bảo mật vân tay, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_19, 'Xám', 28470000.0, 21590000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Dynamic AMOLED 2X'),
  (UUID(), @vid, 'Độ phân giải màn hình', '1080 x 2640 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Màn hình gập'),
  (UUID(), @vid, 'Camera trước', '10MP'),
  (UUID(), @vid, 'Camera sau', '50MP + 12MP'),
  (UUID(), @vid, 'Chip', 'Snapdragon 8 Gen 3'),
  (UUID(), @vid, 'GPU', 'Adreno 750'),
  (UUID(), @vid, 'SIM', '1 Nano SIM + 1 eSIM hoặc 2 eSIM'),
  (UUID(), @vid, 'RAM', '12GB'),
  (UUID(), @vid, 'Bộ nhớ', '256GB'),
  (UUID(), @vid, 'Hệ điều hành', 'Android'),
  (UUID(), @vid, 'CPU', '8 nhân 3.39 GHz, 3.1GHz, 2.9GHz, 2.2GHz'),
  (UUID(), @vid, 'Kích thước', '165.1 x 71.9 x 6.9 mm - 85.1 x 71.9 x 14.9 mm'),
  (UUID(), @vid, 'Trọng lượng', '187 gram'),
  (UUID(), @vid, 'Pin', '4000 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Bảo mật vân tay, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_19, 'Xám', 32400000.0, 21990000.0, 20, FALSE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Kích thước màn hình', '6.7 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Dynamic AMOLED 2X'),
  (UUID(), @vid, 'Độ phân giải màn hình', '1080 x 2640 pixels'),
  (UUID(), @vid, 'Tần số quét', '120Hz'),
  (UUID(), @vid, 'Kiểu màn hình', 'Màn hình gập'),
  (UUID(), @vid, 'Camera trước', '10MP'),
  (UUID(), @vid, 'Camera sau', '50MP + 12MP'),
  (UUID(), @vid, 'Chip', 'Snapdragon 8 Gen 3'),
  (UUID(), @vid, 'GPU', 'Adreno 750'),
  (UUID(), @vid, 'SIM', '1 Nano SIM + 1 eSIM hoặc 2 eSIM'),
  (UUID(), @vid, 'RAM', '12GB'),
  (UUID(), @vid, 'Bộ nhớ', '512GB'),
  (UUID(), @vid, 'Hệ điều hành', 'Android'),
  (UUID(), @vid, 'CPU', '8 nhân 3.39 GHz, 3.1GHz, 2.9GHz, 2.2GHz'),
  (UUID(), @vid, 'Kích thước', '165.1 x 71.9 x 6.9 mm - 85.1 x 71.9 x 14.9 mm'),
  (UUID(), @vid, 'Trọng lượng', '187 gram'),
  (UUID(), @vid, 'Pin', '4000 mAh'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type-C'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Hỗ trợ 5G, Bảo mật vân tay, Nhận diện khuôn mặt, Kháng nước, Kháng bụi, Điện thoại AI');

-- ===============================

-- === CATEGORY: Laptop ===
SET @cid = UUID();
INSERT INTO category (category_id, category_name) VALUES (@cid, 'Laptop');

-- BRAND: Asus
SET @bid_Asus = UUID();
INSERT INTO brand (brand_id, brand_name) VALUES (@bid_Asus, 'Asus');

-- PRODUCT: Laptop ASUS Vivobook Go 15 E1504GA-BQ1141W
SET @pid_20 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_20, @cid, @bid_Asus, 'Laptop ASUS Vivobook Go 15 E1504GA-BQ1141W', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_20, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/g/r/group_744_1_16.png', TRUE),
  (UUID(), @pid_20, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_6__4_174.png', FALSE),
  (UUID(), @pid_20, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_10__5_161.png', FALSE),
  (UUID(), @pid_20, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_7__4_155.png', FALSE),
  (UUID(), @pid_20, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_2__9_154.png', FALSE),
  (UUID(), @pid_20, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_1__9_115.png', FALSE),
  (UUID(), @pid_20, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_8__6_159.png', FALSE),
  (UUID(), @pid_20, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_11__7_107.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_20, 'Bạc', 10190000.0, 9290000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Loại card đồ họa', 'Intel UHD Graphics'),
  (UUID(), @vid, 'Loại CPU', 'Intel Core i3-N305 1.8 GHz (6MB Cache, up to 3.8 GHz, 8 lõi, 8 luồng)'),
  (UUID(), @vid, 'Dung lượng RAM', '8GB'),
  (UUID(), @vid, 'Loại RAM', 'DDR4 Onboard'),
  (UUID(), @vid, 'Ổ cứng', '256GB SSD'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Chất liệu tấm nền', 'Tấm nền IPS'),
  (UUID(), @vid, 'Kích thước màn hình', '15.6 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Màn hình chống chói'),
  (UUID(), @vid, 'Độ phân giải màn hình', '1920 x 1080 pixels (FullHD)'),
  (UUID(), @vid, 'Chất liệu', 'Vỏ nhựa'),
  (UUID(), @vid, 'Kích thước', '36.03 x 23.25 x 1.79 cm'),
  (UUID(), @vid, 'Trọng lượng', '1.63 kg'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Wi-Fi 6'),
  (UUID(), @vid, 'Bảo mật', 'Mô-đun nền tảng đáng tin cậy (Phần mềm TPM)'),
  (UUID(), @vid, 'Webcam', '720p HD với màn trập camera'),
  (UUID(), @vid, 'Hệ điều hành', 'Windows 11 Home'),
  (UUID(), @vid, 'Pin', '42WHrs, 3S1P, 3-cell Li-ion'),
  (UUID(), @vid, 'Wifi', 'Wi-Fi 6E(802.11ax) (Dual band) 1*1'),
  (UUID(), @vid, 'Bluetooth', 'Bluetooth 5.3');

-- ===============================

-- PRODUCT: Laptop ASUS Vivobook 14 X1404VA-NK394W
SET @pid_21 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_21, @cid, @bid_Asus, 'Laptop ASUS Vivobook 14 X1404VA-NK394W', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_21, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/g/r/group_659_1.png', TRUE),
  (UUID(), @pid_21, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_12__5_135.png', FALSE),
  (UUID(), @pid_21, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_10__4_138.png', FALSE),
  (UUID(), @pid_21, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_8__4_169.png', FALSE),
  (UUID(), @pid_21, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_7__2_170.png', FALSE),
  (UUID(), @pid_21, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_7__2_170.png', FALSE),
  (UUID(), @pid_21, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_7__2_170.png', FALSE),
  (UUID(), @pid_21, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/l/a/laptop_asus_vivobook_14_x1404va-nk394w_-_3.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_21, 'Bạc', 12690000.0, 10490000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Loại card đồ họa', 'Intel UHD Graphics'),
  (UUID(), @vid, 'Loại CPU', 'Intel Core i3-1315U 1.2 GHz (10MB Cache, up to 4.5 GHz, 6 lõi, 8 luồng)'),
  (UUID(), @vid, 'Dung lượng RAM', '8GB'),
  (UUID(), @vid, 'Loại RAM', 'DDR4'),
  (UUID(), @vid, 'Ổ cứng', '512GB SSD'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Chất liệu tấm nền', 'Tấm nền IPS'),
  (UUID(), @vid, 'Kích thước màn hình', '14 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Màn hình chống chói'),
  (UUID(), @vid, 'Độ phân giải màn hình', '1920 x 1080 pixels (FullHD)'),
  (UUID(), @vid, 'Chất liệu', 'Vỏ nhựa'),
  (UUID(), @vid, 'Kích thước', '32.49 x 21.39 x 1.79 cm'),
  (UUID(), @vid, 'Trọng lượng', '1.40 kg'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Wi-Fi 6, Bảo mật vân tay'),
  (UUID(), @vid, 'Bảo mật', 'Cảm biến vân tay tích hợp với Touchpad'),
  (UUID(), @vid, 'Webcam', '720p HD với màn trập camera'),
  (UUID(), @vid, 'Hệ điều hành', 'Windows 11 Home'),
  (UUID(), @vid, 'Pin', '42WHrs, 3S1P, 3-cell Li-ion'),
  (UUID(), @vid, 'Wifi', 'Wi-Fi 6E(802.11ax) (Dual band) 1*1'),
  (UUID(), @vid, 'Bluetooth', 'Bluetooth 5.3');

-- ===============================

-- PRODUCT: Laptop ASUS VivoBook Go 14 E1404FA-NK177W
SET @pid_22 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_22, @cid, @bid_Asus, 'Laptop ASUS VivoBook Go 14 E1404FA-NK177W', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_22, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_-_2023-06-08t005130.908.png', TRUE),
  (UUID(), @pid_22, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_-_2023-06-08t001431.312_2.png', FALSE),
  (UUID(), @pid_22, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_-_2023-06-08t005213.228.png', FALSE),
  (UUID(), @pid_22, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_-_2023-06-08t005150.492.png', FALSE),
  (UUID(), @pid_22, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_-_2023-06-08t001503.144_1.png', FALSE),
  (UUID(), @pid_22, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_-_2023-06-08t001516.526_1.png', FALSE),
  (UUID(), @pid_22, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_-_2023-06-08t001451.417_1.png', FALSE),
  (UUID(), @pid_22, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_-_2023-06-08t001554.905_1.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_22, 'Bạc', 14490000.0, 11890000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Loại card đồ họa', 'AMD Radeon Graphics'),
  (UUID(), @vid, 'Loại CPU', 'AMD Ryzen 5 7520U (4MB cache, up to 4.3 GHz, 4 lõi/8 luồng)'),
  (UUID(), @vid, 'Dung lượng RAM', '16GB'),
  (UUID(), @vid, 'Loại RAM', 'LPDDR5 onboard'),
  (UUID(), @vid, 'Ổ cứng', '512GB SSD'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Chất liệu tấm nền', 'Tấm nền TN'),
  (UUID(), @vid, 'Kích thước màn hình', '14 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Màn hình chống chói'),
  (UUID(), @vid, 'Độ phân giải màn hình', '1920 x 1080 pixels (FullHD)'),
  (UUID(), @vid, 'Chất liệu', 'Vỏ nhựa'),
  (UUID(), @vid, 'Kích thước', '32.45 x 21.39 x 1.79 cm'),
  (UUID(), @vid, 'Trọng lượng', '1.30 kg'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Wi-Fi 6, Bảo mật vân tay'),
  (UUID(), @vid, 'Bảo mật', 'Cảm biến vân tay tích hợp với Touchpad'),
  (UUID(), @vid, 'Webcam', '720p HD với màn trập camera'),
  (UUID(), @vid, 'Hệ điều hành', 'Windows 11 Home'),
  (UUID(), @vid, 'Pin', '42WHrs, 3S1P, Li-ion 3 cell'),
  (UUID(), @vid, 'Wifi', 'Wi-Fi 6E(802.11ax)'),
  (UUID(), @vid, 'Bluetooth', 'Bluetooth 5');

-- ===============================

-- PRODUCT: Laptop ASUS Vivobook GO 15 E1504FA-NJ454W
SET @pid_23 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_23, @cid, @bid_Asus, 'Laptop ASUS Vivobook GO 15 E1504FA-NJ454W', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_23, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_d_i_3_5.png', TRUE),
  (UUID(), @pid_23, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_5__4_17.png', FALSE),
  (UUID(), @pid_23, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_4__4_16.png', FALSE),
  (UUID(), @pid_23, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_7__1_14.png', FALSE),
  (UUID(), @pid_23, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_1__3_22.png', FALSE),
  (UUID(), @pid_23, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_2__4_17.png', FALSE),
  (UUID(), @pid_23, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_6__1_16.png', FALSE),
  (UUID(), @pid_23, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_10__3_16.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_23, 'Bạc', 14490000.0, 11990000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Loại card đồ họa', 'AMD Radeon Graphics'),
  (UUID(), @vid, 'Loại CPU', 'AMD Ryzen 5 7520U (4 lõi / 8 luồng, 4MB cache, up to 4.3 GHz max boost)'),
  (UUID(), @vid, 'Dung lượng RAM', '16GB'),
  (UUID(), @vid, 'Loại RAM', 'LPDDR5 onboard'),
  (UUID(), @vid, 'Ổ cứng', '512GB SSD'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Chất liệu tấm nền', 'Tấm nền TN'),
  (UUID(), @vid, 'Kích thước màn hình', '15.6 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Màn hình chống chói'),
  (UUID(), @vid, 'Độ phân giải màn hình', '1920 x 1080 pixels (FullHD)'),
  (UUID(), @vid, 'Chất liệu', 'Vỏ nhựa'),
  (UUID(), @vid, 'Kích thước', '36.03 x 23.25 x 1.79 cm'),
  (UUID(), @vid, 'Trọng lượng', '1.80 kg'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Wi-Fi 6, Bảo mật vân tay'),
  (UUID(), @vid, 'Bảo mật', 'Khởi động BIOS Bảo vệ mật khẩu người dùng'),
  (UUID(), @vid, 'Webcam', '720p HD với màn trập camera'),
  (UUID(), @vid, 'Hệ điều hành', 'Windows 11 Home'),
  (UUID(), @vid, 'Pin', '42WHrs, 3S1P, 3-cell Li-ion'),
  (UUID(), @vid, 'Wifi', 'Wi-Fi 6E(802.11ax) (Dual band) 1*1'),
  (UUID(), @vid, 'Bluetooth', 'Bluetooth 5');

-- ===============================

-- PRODUCT: Laptop ASUS Vivobook 14 X1405VA-LY623W
SET @pid_24 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_24, @cid, @bid_Asus, 'Laptop ASUS Vivobook 14 X1405VA-LY623W', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_24, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/g/r/group_808.png', TRUE),
  (UUID(), @pid_24, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_7__4_47.png', FALSE),
  (UUID(), @pid_24, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_6__4_50.png', FALSE),
  (UUID(), @pid_24, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_10__5_71.png', FALSE),
  (UUID(), @pid_24, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_8__6_48.png', FALSE),
  (UUID(), @pid_24, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_9__9_44.png', FALSE),
  (UUID(), @pid_24, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_11__7_20.png', FALSE),
  (UUID(), @pid_24, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_12__8_16.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_24, 'Bạc', 16490000.0, 14890000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Loại card đồ họa', 'Intel UHD Graphics'),
  (UUID(), @vid, 'Loại CPU', 'Intel Core i5-13420H 2.1 GHz (12MB Cache, up to 4.6 GHz, 8 lõi, 12 luồng)'),
  (UUID(), @vid, 'Dung lượng RAM', '16GB'),
  (UUID(), @vid, 'Loại RAM', 'DDR4'),
  (UUID(), @vid, 'Ổ cứng', '512GB SSD'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Chất liệu tấm nền', 'Tấm nền IPS'),
  (UUID(), @vid, 'Kích thước màn hình', '14 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Màn hình chống chói'),
  (UUID(), @vid, 'Độ phân giải màn hình', '1920 x 1200 pixels (WUXGA)'),
  (UUID(), @vid, 'Chất liệu', 'Vỏ nhựa'),
  (UUID(), @vid, 'Kích thước', '31.71 x 22.20 x 1.99 cm'),
  (UUID(), @vid, 'Trọng lượng', '1.60 kg'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Wi-Fi 6, Bảo mật vân tay'),
  (UUID(), @vid, 'Bảo mật', 'Cảm biến vân tay tích hợp với Touchpad'),
  (UUID(), @vid, 'Webcam', '720p HD với màn trập camera'),
  (UUID(), @vid, 'Hệ điều hành', 'Windows 11 Home'),
  (UUID(), @vid, 'Pin', '42WHrs, 3S1P, 3-cell Li-ion'),
  (UUID(), @vid, 'Wifi', 'Wi-Fi 6E(802.11ax) (Dual band) 1*1'),
  (UUID(), @vid, 'Bluetooth', 'Bluetooth 5.3');

-- ===============================

-- PRODUCT: Laptop ASUS Vivobook 16 A1607QA-MB067WS
SET @pid_25 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_25, @cid, @bid_Asus, 'Laptop ASUS Vivobook 16 A1607QA-MB067WS', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_25, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_d_i_6_49.png', TRUE),
  (UUID(), @pid_25, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_5__8_69.png', FALSE),
  (UUID(), @pid_25, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_6__2_251.png', FALSE),
  (UUID(), @pid_25, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_1__9_10.png', FALSE),
  (UUID(), @pid_25, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_7__2_231.png', FALSE),
  (UUID(), @pid_25, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_2__8_14.png', FALSE),
  (UUID(), @pid_25, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_3__7_10.png', FALSE),
  (UUID(), @pid_25, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_5__8_69.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_25, 'Bạc', 20990000.0, 15990000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Loại card đồ họa', 'Qualcomm Adreno GPU'),
  (UUID(), @vid, 'Loại CPU', 'Snapdragon X X1 26 100 (30MB Cache, up to 2.97GHz, 8 lõi, 8 luồng)'),
  (UUID(), @vid, 'Dung lượng RAM', '16GB'),
  (UUID(), @vid, 'Loại RAM', 'LPDDR5X Onboard'),
  (UUID(), @vid, 'Ổ cứng', '512GB SSD'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Chất liệu tấm nền', 'Tấm nền IPS'),
  (UUID(), @vid, 'Kích thước màn hình', '16 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Màn hình chống chói'),
  (UUID(), @vid, 'Độ phân giải màn hình', '1920 x 1200 pixels (WUXGA)'),
  (UUID(), @vid, 'Chất liệu', 'Vỏ nhựa'),
  (UUID(), @vid, 'Kích thước', '35.70 x 25.06 x 1.79 cm'),
  (UUID(), @vid, 'Trọng lượng', '1.88 kg'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Wi-Fi 6, Bảo mật vân tay'),
  (UUID(), @vid, 'Bảo mật', 'Webcam IR hỗ trợ Windows Hello'),
  (UUID(), @vid, 'Webcam', 'Camera FHD có chức năng IR hỗ trợ Windows Hello, có màn trập camera'),
  (UUID(), @vid, 'Hệ điều hành', 'Windows 11 Home'),
  (UUID(), @vid, 'Pin', '50WHrs, 3S1P, 3-cell Li-ion'),
  (UUID(), @vid, 'Wifi', 'Wi-Fi 6E(802.11ax) (Triple band) 2*2'),
  (UUID(), @vid, 'Bluetooth', 'Bluetooth 5.3');

-- ===============================

-- PRODUCT: Laptop ASUS Vivobook S14 S3407VA-LY046W
SET @pid_26 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_26, @cid, @bid_Asus, 'Laptop ASUS Vivobook S14 S3407VA-LY046W', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_26, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/g/r/group_744_2__4.png', TRUE),
  (UUID(), @pid_26, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_9__9_95.png', FALSE),
  (UUID(), @pid_26, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_12__8_55.png', FALSE),
  (UUID(), @pid_26, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_10__5_121.png', FALSE),
  (UUID(), @pid_26, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_14__9_51.png', FALSE),
  (UUID(), @pid_26, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_13__8_48.png', FALSE),
  (UUID(), @pid_26, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_17__8_137.png', FALSE),
  (UUID(), @pid_26, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_15__7_234.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_26, 'Bạc', 18990000.0, 17290000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Loại card đồ họa', 'Intel UHD Graphics'),
  (UUID(), @vid, 'Loại CPU', 'Intel Core i5-13420H 2.1 GHz (12MB Cache, up to 4.6 GHz, 8 lõi, 12 luồng)'),
  (UUID(), @vid, 'Dung lượng RAM', '16GB'),
  (UUID(), @vid, 'Loại RAM', 'DDR5'),
  (UUID(), @vid, 'Ổ cứng', '512GB SSD'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Chất liệu tấm nền', 'Tấm nền IPS'),
  (UUID(), @vid, 'Kích thước màn hình', '14 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Màn hình chống chói'),
  (UUID(), @vid, 'Độ phân giải màn hình', '1920 x 1200 pixels (WUXGA)'),
  (UUID(), @vid, 'Chất liệu', 'Vỏ nhựa - nắp lưng kim loại'),
  (UUID(), @vid, 'Kích thước', '31.52 x 22.34 x 1.59 cm'),
  (UUID(), @vid, 'Trọng lượng', '1.39 kg'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Wi-Fi 6, Bảo mật vân tay'),
  (UUID(), @vid, 'Bảo mật', 'Webcam IR hỗ trợ Windows Hello'),
  (UUID(), @vid, 'Webcam', 'Camera FHD có chức năng IR hỗ trợ Windows Hello, có màn trập camera'),
  (UUID(), @vid, 'Hệ điều hành', 'Windows 11 Home'),
  (UUID(), @vid, 'Pin', '70WHrs, 4S1P, 4-cell Li-ion'),
  (UUID(), @vid, 'Wifi', 'Wi-Fi 6E(802.11ax) (Triple band) 2*2'),
  (UUID(), @vid, 'Bluetooth', 'Bluetooth 5.3');

-- ===============================

-- PRODUCT: Laptop ASUS Vivobook S 14 FLIP TP3402VA-LZ632W
SET @pid_27 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_27, @cid, @bid_Asus, 'Laptop ASUS Vivobook S 14 FLIP TP3402VA-LZ632W', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_27, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/g/r/group_789.png', TRUE),
  (UUID(), @pid_27, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_15__7_173.png', FALSE),
  (UUID(), @pid_27, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_26__6_49.png', FALSE),
  (UUID(), @pid_27, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_23__3_53.png', FALSE),
  (UUID(), @pid_27, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_21__4_60.png', FALSE),
  (UUID(), @pid_27, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_16__6_132.png', FALSE),
  (UUID(), @pid_27, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_18__6_64.png', FALSE),
  (UUID(), @pid_27, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_12__7_18.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_27, 'Bạc', 20990000.0, 17690000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Loại card đồ họa', 'Intel UHD Graphics'),
  (UUID(), @vid, 'Loại CPU', 'Intel Core i5-13420H 2.1 GHz (12MB Cache, up to 4.6 GHz, 8 lõi, 12 luồng)'),
  (UUID(), @vid, 'Dung lượng RAM', '16GB'),
  (UUID(), @vid, 'Loại RAM', 'DDR4'),
  (UUID(), @vid, 'Ổ cứng', '512GB SSD'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Chất liệu tấm nền', 'Tấm nền IPS'),
  (UUID(), @vid, 'Kích thước màn hình', '14 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Độ phủ màu 45% NTSC'),
  (UUID(), @vid, 'Độ phân giải màn hình', '1920 x 1200 pixels (WUXGA)'),
  (UUID(), @vid, 'Chất liệu', 'Nhựa, nhôm'),
  (UUID(), @vid, 'Kích thước', '31.32 x 22.76 x 1.89 cm'),
  (UUID(), @vid, 'Trọng lượng', '1.50 kg'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Màn hình cảm ứng'),
  (UUID(), @vid, 'Bảo mật', 'Mô-đun nền tảng đáng tin cậy (Phần mềm TPM)'),
  (UUID(), @vid, 'Webcam', '1080p FHD với màn trập camera'),
  (UUID(), @vid, 'Hệ điều hành', 'Windows 11 Home'),
  (UUID(), @vid, 'Pin', '50WHrs, 3S1P, 3-cell Li-ion'),
  (UUID(), @vid, 'Wifi', 'Wi-Fi 6E(802.11ax) (Triple band) 2*2'),
  (UUID(), @vid, 'Bluetooth', 'Bluetooth 5.3');

-- ===============================

-- PRODUCT: Laptop ASUS Vivobook S16 S3607VA-RP056W
SET @pid_28 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_28, @cid, @bid_Asus, 'Laptop ASUS Vivobook S16 S3607VA-RP056W', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_28, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/g/r/group_744_1_46_1.png', TRUE),
  (UUID(), @pid_28, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_4__8_50_1.png', FALSE),
  (UUID(), @pid_28, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_7__5_39_1.png', FALSE),
  (UUID(), @pid_28, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_2__10_64_1.png', FALSE),
  (UUID(), @pid_28, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_9__9_258_1.png', FALSE),
  (UUID(), @pid_28, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_8__8_39_1.png', FALSE),
  (UUID(), @pid_28, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_10__5_254_1.png', FALSE),
  (UUID(), @pid_28, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_11__7_176_1.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_28, 'Bạc', 20490000.0, 18990000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Loại card đồ họa', 'Intel UHD Graphics'),
  (UUID(), @vid, 'Loại CPU', 'Intel Core i7-13620H 2.4 GHz (24MB Cache, up to 4.9 GHz, 10 lõi, 16 luồng)'),
  (UUID(), @vid, 'Dung lượng RAM', '16GB'),
  (UUID(), @vid, 'Loại RAM', 'DDR5'),
  (UUID(), @vid, 'Ổ cứng', '512GB SSD'),
  (UUID(), @vid, 'Tần số quét', '144Hz'),
  (UUID(), @vid, 'Chất liệu tấm nền', 'Tấm nền IPS'),
  (UUID(), @vid, 'Kích thước màn hình', '16 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Màn hình chống chói'),
  (UUID(), @vid, 'Độ phân giải màn hình', '1920 x 1200 pixels (WUXGA)'),
  (UUID(), @vid, 'Chất liệu', 'Vỏ nhựa - nắp lưng kim loại'),
  (UUID(), @vid, 'Kích thước', '35.70 x 25.06 x 1.59 cm'),
  (UUID(), @vid, 'Trọng lượng', '1.70 kg'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Wi-Fi 6, Nhận diện khuôn mặt'),
  (UUID(), @vid, 'Bảo mật', 'Webcam hồng ngoại hỗ trợ Windows Hello'),
  (UUID(), @vid, 'Webcam', 'Camera FHD có chức năng IR hỗ trợ Windows Hello; Có màn trập riêng tư'),
  (UUID(), @vid, 'Hệ điều hành', 'Windows 11 Home'),
  (UUID(), @vid, 'Pin', '70WHrs, 4S1P, 4-cell Li-ion'),
  (UUID(), @vid, 'Wifi', 'Wi-Fi 6E(802.11ax) (Triple band) 2*2'),
  (UUID(), @vid, 'Bluetooth', 'Bluetooth 5.3');

-- ===============================

-- PRODUCT: Laptop ASUS Vivobook S14 S3407QA-SF043WS
SET @pid_29 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_29, @cid, @bid_Asus, 'Laptop ASUS Vivobook S14 S3407QA-SF043WS', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_29, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/g/r/group_863.png', TRUE),
  (UUID(), @pid_29, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_5__9_286.png', FALSE),
  (UUID(), @pid_29, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_7__4_227.png', FALSE),
  (UUID(), @pid_29, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_6__4_255.png', FALSE),
  (UUID(), @pid_29, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_3__7_242.png', FALSE),
  (UUID(), @pid_29, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_8__6_222.png', FALSE),
  (UUID(), @pid_29, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_10__5_202.png', FALSE),
  (UUID(), @pid_29, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_9__9_197.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_29, 'Xám', 22990000.0, 18990000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Loại card đồ họa', 'Qualcomm Adreno GPU'),
  (UUID(), @vid, 'Loại CPU', 'Snapdragon X X1 26 100 (30MB Cache, up to 2.97GHz, 8 lõi, 8 luồng)'),
  (UUID(), @vid, 'Dung lượng RAM', '16GB'),
  (UUID(), @vid, 'Loại RAM', 'LPDDR5X Onboard'),
  (UUID(), @vid, 'Ổ cứng', '512GB SSD'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Chất liệu tấm nền', 'Tấm nền Oled'),
  (UUID(), @vid, 'Kích thước màn hình', '14 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Màn hình chống chói'),
  (UUID(), @vid, 'Độ phân giải màn hình', '1920 x 1200 pixels'),
  (UUID(), @vid, 'Chất liệu', 'Vỏ nhựa - nắp lưng kim loại'),
  (UUID(), @vid, 'Kích thước', '31.52 x 22.34 x 1.59 cm'),
  (UUID(), @vid, 'Trọng lượng', '1.35 kg'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Wi-Fi 6, Nhận diện khuôn mặt'),
  (UUID(), @vid, 'Bảo mật', 'Webcam hồng ngoại hỗ trợ Windows Hello'),
  (UUID(), @vid, 'Webcam', 'Camera FHD có chức năng IR hỗ trợ Windows Hello; Có màn trập riêng tư'),
  (UUID(), @vid, 'Hệ điều hành', 'Windows 11 Home'),
  (UUID(), @vid, 'Pin', '70WHrs, 3S1P, 3-cell Li-ion'),
  (UUID(), @vid, 'Wifi', 'Wi-Fi 6E(802.11ax) (Triple band) 2*2'),
  (UUID(), @vid, 'Bluetooth', 'Bluetooth 5.3');

-- ===============================

-- BRAND: HP
SET @bid_HP = UUID();
INSERT INTO brand (brand_id, brand_name) VALUES (@bid_HP, 'HP');

-- PRODUCT: Laptop HP 15-FD0306TU A2NL7PA
SET @pid_30 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_30, @cid, @bid_HP, 'Laptop HP 15-FD0306TU A2NL7PA', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_30, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/g/r/group_744_1_43.png', TRUE),
  (UUID(), @pid_30, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_8__8_17.png', FALSE),
  (UUID(), @pid_30, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_9__9_235.png', FALSE),
  (UUID(), @pid_30, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_10__5_241.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_30, 'Bạc', 12490000.0, 9990000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Loại card đồ họa', 'Intel UHD Graphics'),
  (UUID(), @vid, 'Loại CPU', 'Intel Core i3-1315U (6 lõi / 8 luồng, 1.2 GHz, Up to 4.5 GHz, 10Mb Cache)'),
  (UUID(), @vid, 'Dung lượng RAM', '8GB'),
  (UUID(), @vid, 'Loại RAM', 'DDR4 3200Mhz'),
  (UUID(), @vid, 'Ổ cứng', '256GB SSD'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Chất liệu tấm nền', 'Tấm nền IPS'),
  (UUID(), @vid, 'Kích thước màn hình', '15.6 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Màn hình chống chói'),
  (UUID(), @vid, 'Độ phân giải màn hình', '1920 x 1080 pixels (FullHD)'),
  (UUID(), @vid, 'Chất liệu', 'Vỏ nhựa'),
  (UUID(), @vid, 'Kích thước', '35.98 x 23.6 x 1.86 cm'),
  (UUID(), @vid, 'Trọng lượng', '1.59 kg'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Wi-Fi 6'),
  (UUID(), @vid, 'Bảo mật', 'Mô-đun nền tảng đáng tin cậy (Phần mềm TPM)'),
  (UUID(), @vid, 'Webcam', 'Camera HP True Vision 720p HD có chức năng giảm nhiễu tạm thời và micrô kỹ thuật số mảng kép tích hợp'),
  (UUID(), @vid, 'Hệ điều hành', 'Windows 11 Home'),
  (UUID(), @vid, 'Pin', '3-cell, 41 Wh Li-ion'),
  (UUID(), @vid, 'Wifi', 'Wi-Fi 6 (802.11ax)'),
  (UUID(), @vid, 'Bluetooth', 'Bluetooth 5.3');

-- ===============================

-- PRODUCT: Laptop HP 14-DQ2055WM 39K15UA
SET @pid_31 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_31, @cid, @bid_HP, 'Laptop HP 14-DQ2055WM 39K15UA', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_31, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_4_.png', TRUE),
  (UUID(), @pid_31, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/l/a/laptop-hp-pavilion-14-dq2055wm-39k15ua-3_1.jpg', FALSE),
  (UUID(), @pid_31, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/l/a/laptop-hp-pavilion-14-dq2055wm-39k15ua-2_1.jpg', FALSE),
  (UUID(), @pid_31, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/l/a/laptop-hp-pavilion-14-dq2055wm-39k15ua-1_2.jpg', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_31, 'Bạc', 13990000.0, 10490000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Loại card đồ họa', 'Intel UHD Graphics'),
  (UUID(), @vid, 'Loại CPU', 'Intel Core i3-1115G4'),
  (UUID(), @vid, 'Dung lượng RAM', '4GB'),
  (UUID(), @vid, 'Loại RAM', 'DDR4 2666 MHz'),
  (UUID(), @vid, 'Ổ cứng', '256GB SSD'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Chất liệu tấm nền', 'Tấm nền IPS'),
  (UUID(), @vid, 'Kích thước màn hình', '14 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Màn hình chống chói'),
  (UUID(), @vid, 'Độ phân giải màn hình', '1920 x 1080 pixels (FullHD)'),
  (UUID(), @vid, 'Chất liệu', 'Vỏ nhựa'),
  (UUID(), @vid, 'Kích thước', '32.4 x 22.5 x 1.79 cm'),
  (UUID(), @vid, 'Trọng lượng', '1.46 kg'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Wi-Fi 6'),
  (UUID(), @vid, 'Bảo mật', 'Mô-đun nền tảng đáng tin cậy (Phần mềm TPM)'),
  (UUID(), @vid, 'Webcam', 'HP True Vision 720p HD camera'),
  (UUID(), @vid, 'Hệ điều hành', 'Windows 10 Home SL'),
  (UUID(), @vid, 'Pin', '3-cell, 41 Wh Li-ion'),
  (UUID(), @vid, 'Wifi', 'Realtek RTL8821CE-M 802.11a/b/g/n/ac (1x1)'),
  (UUID(), @vid, 'Bluetooth', 'Bluetooth 4.2');

-- ===============================

-- PRODUCT: Laptop HP 250 G9 AG2K7AT
SET @pid_32 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_32, @cid, @bid_HP, 'Laptop HP 250 G9 AG2K7AT', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_32, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/p/h/photo_2025-02-18_11-36-08.jpg', TRUE),
  (UUID(), @pid_32, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/p/h/photo_2025-02-18_11-36-08_4_.jpg', FALSE),
  (UUID(), @pid_32, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/p/h/photo_2025-02-18_11-36-08_6_.jpg', FALSE),
  (UUID(), @pid_32, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/p/h/photo_2025-02-18_11-36-08_5_.jpg', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_32, 'Bạc', 19190000.0, 13990000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Loại card đồ họa', 'Intel UHD Graphics'),
  (UUID(), @vid, 'Loại CPU', 'Intel CoreTM i5-1235U (10 lõi) - Max Turbo Frequency: 4.40 GHz'),
  (UUID(), @vid, 'Dung lượng RAM', '16GB'),
  (UUID(), @vid, 'Loại RAM', 'DDR4 3200Mhz'),
  (UUID(), @vid, 'Ổ cứng', '512GB SSD'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Chất liệu tấm nền', 'Tấm nền IPS'),
  (UUID(), @vid, 'Kích thước màn hình', '15.6 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Màn hình chống chói'),
  (UUID(), @vid, 'Độ phân giải màn hình', '1920 x 1080 pixels (FullHD)'),
  (UUID(), @vid, 'Chất liệu', 'Vỏ nhựa'),
  (UUID(), @vid, 'Kích thước', '35.8 x 24.2 x 1.99 cm'),
  (UUID(), @vid, 'Trọng lượng', '1.696 kg'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Viền màn hình siêu mỏng'),
  (UUID(), @vid, 'Bảo mật', 'Administrator Password, Power-On Password, TPM'),
  (UUID(), @vid, 'Webcam', 'Camera HP TrueVision HD có micrô mảng'),
  (UUID(), @vid, 'Hệ điều hành', 'Windows 11 Home Single Language 64-bit'),
  (UUID(), @vid, 'Pin', '3 Cell Int (41.04Wh)'),
  (UUID(), @vid, 'Wifi', '802.11 ax'),
  (UUID(), @vid, 'Bluetooth', 'Bluetooth 5.2');

-- ===============================

-- PRODUCT: Laptop HP 240 G9 AG2J7AT
SET @pid_33 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_33, @cid, @bid_HP, 'Laptop HP 240 G9 AG2J7AT', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_33, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/g/r/group_659_2__2.png', TRUE),
  (UUID(), @pid_33, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_12__5_151.png', FALSE),
  (UUID(), @pid_33, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_13__6_141.png', FALSE),
  (UUID(), @pid_33, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_14__6_99.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_33, 'Bạc', 19790000.0, 14290000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Loại card đồ họa', 'Intel UHD Graphics'),
  (UUID(), @vid, 'Loại CPU', 'Intel Core i5-1235U (10 lõi) - Max Turbo Frequency: 4.40 GHz'),
  (UUID(), @vid, 'Dung lượng RAM', '16GB'),
  (UUID(), @vid, 'Loại RAM', 'DDR4 3200Mhz'),
  (UUID(), @vid, 'Ổ cứng', '512GB SSD'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Chất liệu tấm nền', 'Tấm nền IPS'),
  (UUID(), @vid, 'Kích thước màn hình', '14 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Màn hình chống chói'),
  (UUID(), @vid, 'Độ phân giải màn hình', '1920 x 1080 pixels (FullHD)'),
  (UUID(), @vid, 'Chất liệu', 'Vỏ nhựa'),
  (UUID(), @vid, 'Kích thước', '32.4 x 22.59 x 1.99 cm'),
  (UUID(), @vid, 'Trọng lượng', '1.42 kg'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Wi-Fi 6'),
  (UUID(), @vid, 'Bảo mật', 'Mật khẩu bật nguồn'),
  (UUID(), @vid, 'Webcam', 'Camera HP TrueVision HD có micrô mảng'),
  (UUID(), @vid, 'Hệ điều hành', 'Windows 11 Home Single Language 64-bit'),
  (UUID(), @vid, 'Pin', '3 Cell Int (41.04Wh)'),
  (UUID(), @vid, 'Wifi', '802.11 ax'),
  (UUID(), @vid, 'Bluetooth', 'Bluetooth 5.3');

-- ===============================

-- PRODUCT: Laptop HP Pavilion 15-EG3111TU 8U6L8PA
SET @pid_34 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_34, @cid, @bid_HP, 'Laptop HP Pavilion 15-EG3111TU 8U6L8PA', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_34, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_10__4_41.png', TRUE),
  (UUID(), @pid_34, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_5__7_36.png', FALSE),
  (UUID(), @pid_34, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_7__2_68.png', FALSE),
  (UUID(), @pid_34, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_8__4_67.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_34, 'Bạc', 21290000.0, 16390000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Loại card đồ họa', 'Intel Iris Xe Graphics'),
  (UUID(), @vid, 'Loại CPU', 'Intel Core i5-1335U (up to 4.6 GHz with Intel Turbo Boost Technology,12 MB L3 cache,10 lõi,12 luồng)'),
  (UUID(), @vid, 'Dung lượng RAM', '16GB'),
  (UUID(), @vid, 'Loại RAM', 'DDR4-3200 MHz'),
  (UUID(), @vid, 'Ổ cứng', '512GB SSD'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Chất liệu tấm nền', 'Tấm nền IPS'),
  (UUID(), @vid, 'Kích thước màn hình', '15.6 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Màn hình chống chói'),
  (UUID(), @vid, 'Độ phân giải màn hình', '1920 x 1080 pixels (FullHD)'),
  (UUID(), @vid, 'Chất liệu', 'Vỏ nhựa'),
  (UUID(), @vid, 'Kích thước', '36.02 x 23.4 x 1.8 cm'),
  (UUID(), @vid, 'Trọng lượng', '1.6 kg'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Wi-Fi 6'),
  (UUID(), @vid, 'Bảo mật', 'Mô-đun nền tảng đáng tin cậy (Phần mềm TPM)'),
  (UUID(), @vid, 'Webcam', 'HP Wide Vision 720p HD camera'),
  (UUID(), @vid, 'Hệ điều hành', 'Windows 11 Home Single Language'),
  (UUID(), @vid, 'Pin', '3-cell, 41 Wh Li-ion'),
  (UUID(), @vid, 'Wifi', '802.11 ax'),
  (UUID(), @vid, 'Bluetooth', 'Bluetooth 5.3');

-- ===============================

-- PRODUCT: Laptop HP 15-FD0083TU 8D736PA
SET @pid_35 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_35, @cid, @bid_HP, 'Laptop HP 15-FD0083TU 8D736PA', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_35, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/g/r/group_744_1_3.png', TRUE),
  (UUID(), @pid_35, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_5__9_124.png', FALSE),
  (UUID(), @pid_35, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_6__4_110.png', FALSE),
  (UUID(), @pid_35, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_8__6_98.png', FALSE),
  (UUID(), @pid_35, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_9__9_91.png', FALSE),
  (UUID(), @pid_35, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_10__5_116.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_35, 'Bạc', 22490000.0, 18290000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Loại card đồ họa', 'Intel Iris Xe Graphics'),
  (UUID(), @vid, 'Loại CPU', 'Intel Core i7-1355U (lên đến 5,0 GHz với Công nghệ Intel Turbo Boost, bộ nhớ đệm L3 12 MB, 10 lõi, 12 luồng)'),
  (UUID(), @vid, 'Dung lượng RAM', '16GB'),
  (UUID(), @vid, 'Loại RAM', 'DDR4-3200 MHz'),
  (UUID(), @vid, 'Ổ cứng', '512GB SSD'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Chất liệu tấm nền', 'Tấm nền IPS'),
  (UUID(), @vid, 'Kích thước màn hình', '15.6 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Màn hình chống chói'),
  (UUID(), @vid, 'Độ phân giải màn hình', '1920 x 1080 pixels (FullHD)'),
  (UUID(), @vid, 'Chất liệu', 'Vỏ nhựa'),
  (UUID(), @vid, 'Kích thước', '35.98 x 23.6 x 1.86 cm'),
  (UUID(), @vid, 'Trọng lượng', '1.59 kg'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Wi-Fi 6'),
  (UUID(), @vid, 'Bảo mật', 'Mô-đun nền tảng đáng tin cậy (Phần mềm TPM)'),
  (UUID(), @vid, 'Webcam', 'Camera HP True Vision 720p HD có chức năng giảm nhiễu tạm thời và micrô kỹ thuật số mảng kép tích hợp'),
  (UUID(), @vid, 'Hệ điều hành', 'Windows 11 Home Single Language'),
  (UUID(), @vid, 'Pin', '3-cell, 41 Wh Li-ion polymer'),
  (UUID(), @vid, 'Wifi', 'Realtek Wi-Fi 6 (2x2)'),
  (UUID(), @vid, 'Bluetooth', 'Bluetooth 5.3');

-- ===============================

-- PRODUCT: Laptop HP Victus 16-R0374TX AY8Y7PA
SET @pid_36 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_36, @cid, @bid_HP, 'Laptop HP Victus 16-R0374TX AY8Y7PA', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_36, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_d_i_7_79.png', TRUE),
  (UUID(), @pid_36, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_2__10_23.png', FALSE),
  (UUID(), @pid_36, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_4__8_19.png', FALSE),
  (UUID(), @pid_36, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_3__8_19.png', FALSE),
  (UUID(), @pid_36, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_5__10_17.png', FALSE),
  (UUID(), @pid_36, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_6__5_21.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_36, 'Đen', 30990000.0, 23490000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Loại card đồ họa', 'NVIDIA GeForce RTX 4050 (6GB of GDDR6 SDRAM, Bus Width: 96bit)'),
  (UUID(), @vid, 'Loại CPU', 'Intel Core i5-13500HX (14 lõi) - Max Turbo Frequency: 4.70 GHz'),
  (UUID(), @vid, 'Dung lượng RAM', '16GB'),
  (UUID(), @vid, 'Loại RAM', 'DDR5 4800MHz'),
  (UUID(), @vid, 'Ổ cứng', '512GB SSD'),
  (UUID(), @vid, 'Tần số quét', '165Hz'),
  (UUID(), @vid, 'Chất liệu tấm nền', 'Tấm nền IPS'),
  (UUID(), @vid, 'Kích thước màn hình', '16.1 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Màn hình chống chói'),
  (UUID(), @vid, 'Độ phân giải màn hình', '1920 x 1080 pixels (FullHD)'),
  (UUID(), @vid, 'Chất liệu', 'Vỏ nhựa'),
  (UUID(), @vid, 'Kích thước', '36.9 x 25.94 x 2.39 cm'),
  (UUID(), @vid, 'Trọng lượng', '2.334 kg'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Viền màn hình siêu mỏng, Wi-Fi 6'),
  (UUID(), @vid, 'Bảo mật', 'Mật khẩu quản trị viên, Mật khẩu bật nguồn, TPM'),
  (UUID(), @vid, 'Webcam', 'Camera HP TrueVision FHD (màn trập riêng tư) với micrô mảng'),
  (UUID(), @vid, 'Hệ điều hành', 'Windows 11 Home Single Language 64-bit'),
  (UUID(), @vid, 'Pin', '4 Cell Int (70.07Wh)'),
  (UUID(), @vid, 'Wifi', '802.11 ax'),
  (UUID(), @vid, 'Bluetooth', 'Bluetooth 5.3');

-- ===============================

-- PRODUCT: Laptop HP Envy X360 14-FA0096AU AY8U6PA
SET @pid_37 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_37, @cid, @bid_HP, 'Laptop HP Envy X360 14-FA0096AU AY8U6PA', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_37, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/g/r/group_659_37.png', TRUE),
  (UUID(), @pid_37, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_11__6_26.png', FALSE),
  (UUID(), @pid_37, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_6__4_7.png', FALSE),
  (UUID(), @pid_37, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_9__9_7.png', FALSE),
  (UUID(), @pid_37, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_5__9_9.png', FALSE),
  (UUID(), @pid_37, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_7__4_7.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_37, 'Bạc', 30390000.0, 25890000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Loại card đồ họa', 'AMD Radeon'),
  (UUID(), @vid, 'Loại CPU', 'AMD Ryzen 5 8640HS (tốc độ xung nhịp tăng tối đa lên đến 4,9 GHz, bộ nhớ đệm L3 16 MB, 6 lõi,12 luồng)'),
  (UUID(), @vid, 'Dung lượng RAM', '16GB'),
  (UUID(), @vid, 'Loại RAM', 'LPDDR5-6400 MT/s (tích hợp)'),
  (UUID(), @vid, 'Ổ cứng', '512GB SSD'),
  (UUID(), @vid, 'Tần số quét', '48 - 120 Hz'),
  (UUID(), @vid, 'Chất liệu tấm nền', 'Tấm nền Oled'),
  (UUID(), @vid, 'Kích thước màn hình', '14 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Corning Gorilla Glass NBTTM'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2880 x 1800 pixels'),
  (UUID(), @vid, 'Chất liệu', 'Nhựa, kim loại'),
  (UUID(), @vid, 'Kích thước', '31.33 x 21.89 x 1.69 cm'),
  (UUID(), @vid, 'Trọng lượng', '1.39 kg'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Viền màn hình siêu mỏng, Wi-Fi 6, Màn hình cảm ứng, Xoay gập 360 độ (2 in 1), Màn hình Oled'),
  (UUID(), @vid, 'Bảo mật', 'Hỗ trợ Trusted Platform Module (Phần mềm điều khiển TPM)'),
  (UUID(), @vid, 'Webcam', 'Camera hồng ngoại 5MP có khả năng giảm nhiễu tạm thời và tích hợp micrô kỹ thuật số mảng kép'),
  (UUID(), @vid, 'Hệ điều hành', 'Windows 11 Home Single Language'),
  (UUID(), @vid, 'Pin', 'Li-ion polymer 3 lõi, 59 Wh'),
  (UUID(), @vid, 'Wifi', 'MediaTek Wi-Fi 6E MT7922 (2x2)'),
  (UUID(), @vid, 'Bluetooth', 'Bluetooth 5.3');

-- ===============================

-- PRODUCT: Laptop HP Envy X360 14-FA0045AU A19BMPA
SET @pid_38 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_38, @cid, @bid_HP, 'Laptop HP Envy X360 14-FA0045AU A19BMPA', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_38, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/g/r/group_823_1_.png', TRUE),
  (UUID(), @pid_38, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_4__8_22.png', FALSE),
  (UUID(), @pid_38, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_2__10_29.png', FALSE),
  (UUID(), @pid_38, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_5__10_20.png', FALSE),
  (UUID(), @pid_38, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_6__5_24.png', FALSE),
  (UUID(), @pid_38, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_7__5_18.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_38, 'Bạc', 35090000.0, 30990000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Loại card đồ họa', 'AMD Radeon Graphics'),
  (UUID(), @vid, 'Loại CPU', 'AMD Ryzen 7 8840HS (up to 5.1 GHz max boost clock, 16 MB L3 cache, 8 lõi, 16 luồng)'),
  (UUID(), @vid, 'Dung lượng RAM', '32GB'),
  (UUID(), @vid, 'Loại RAM', 'LPDDR5-6400 MHz Onboard'),
  (UUID(), @vid, 'Ổ cứng', '1TB SSD'),
  (UUID(), @vid, 'Tần số quét', '60Hz'),
  (UUID(), @vid, 'Chất liệu tấm nền', 'Tấm nền Oled'),
  (UUID(), @vid, 'Kích thước màn hình', '14 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Corning Gorilla Glass NBTTM'),
  (UUID(), @vid, 'Độ phân giải màn hình', '2880 x 1800 pixels'),
  (UUID(), @vid, 'Chất liệu', 'Nhựa, kim loại'),
  (UUID(), @vid, 'Kích thước', '31.33 x 21.89 x 1.69 cm'),
  (UUID(), @vid, 'Trọng lượng', '1.39 kg'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Viền màn hình siêu mỏng, Wi-Fi 6, Màn hình cảm ứng, Màn hình Oled'),
  (UUID(), @vid, 'Bảo mật', 'Phím tắt tiếng micrô; Màn trập riêng tư của camera; Hỗ trợ Mô-đun nền tảng đáng tin cậy (Phần mềm TPM)'),
  (UUID(), @vid, 'Webcam', 'Camera hồng ngoại 5MP có chức năng giảm nhiễu tạm thời và micrô kỹ thuật số mảng kép tích hợp'),
  (UUID(), @vid, 'Hệ điều hành', 'Windows 11 Home Single Language'),
  (UUID(), @vid, 'Pin', '3-cell, 59 Wh Li-ion polymer'),
  (UUID(), @vid, 'Wifi', 'Realtek Wi-Fi 6 (2x2)'),
  (UUID(), @vid, 'Bluetooth', 'Bluetooth 5.3');

-- ===============================

-- PRODUCT: Laptop HP Gaming OMEN 16-AM0129TX BX9D1PA
SET @pid_39 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_39, @cid, @bid_HP, 'Laptop HP Gaming OMEN 16-AM0129TX BX9D1PA', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_39, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_d_i_2__2_37.png', TRUE),
  (UUID(), @pid_39, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_10__5_210.png', FALSE),
  (UUID(), @pid_39, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_6__4_262_1.png', FALSE),
  (UUID(), @pid_39, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_3__7_251_1.png', FALSE),
  (UUID(), @pid_39, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_8__6_229_1.png', FALSE),
  (UUID(), @pid_39, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/e/text_ng_n_4__7_303_1.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_39, 'Đen', 48890000.0, 43990000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Loại card đồ họa', 'NVIDIA GeForce RTX 5070 (8 GB GDDR7 chuyên dụng)'),
  (UUID(), @vid, 'Loại CPU', 'Intel Core Ultra 7 255H (up to 5.1 GHz with Intel Turbo Boost Technology, 24 MB L3 cache, 16 lõi, 16 luồng)'),
  (UUID(), @vid, 'Dung lượng RAM', '32GB'),
  (UUID(), @vid, 'Loại RAM', 'DDR5-5600 MT/s'),
  (UUID(), @vid, 'Ổ cứng', '512GB SSD'),
  (UUID(), @vid, 'Tần số quét', '165Hz'),
  (UUID(), @vid, 'Chất liệu tấm nền', 'Tấm nền IPS'),
  (UUID(), @vid, 'Kích thước màn hình', '16 inches'),
  (UUID(), @vid, 'Công nghệ màn hình', 'Màn hình chống chói'),
  (UUID(), @vid, 'Độ phân giải màn hình', '1920 x 1200 pixels (WUXGA)'),
  (UUID(), @vid, 'Chất liệu', 'Nhựa, kim loại'),
  (UUID(), @vid, 'Kích thước', '35.75 x 26.9 x 2.37 cm'),
  (UUID(), @vid, 'Trọng lượng', '2.43 kg'),
  (UUID(), @vid, 'Tính năng đặc biệt', 'Viền màn hình siêu mỏng, Wi-Fi 6'),
  (UUID(), @vid, 'Bảo mật', 'Hỗ trợ Mô-đun nền tảng đáng tin cậy (Phần mềm TPM)'),
  (UUID(), @vid, 'Webcam', 'Camera HP True Vision 1080p FHD với chức năng giảm nhiễu theo thời gian và micrô kỹ thuật số mảng kép tích hợp'),
  (UUID(), @vid, 'Hệ điều hành', 'Windows 11 Home Single Language'),
  (UUID(), @vid, 'Pin', '6-cell, 83 Wh Li-ion polymer'),
  (UUID(), @vid, 'Wifi', 'Intel Wi-Fi 6E AX211 (2x2)'),
  (UUID(), @vid, 'Bluetooth', 'Bluetooth 5.3');

-- ===============================

-- === CATEGORY: Chuột ===
SET @cid = UUID();
INSERT INTO category (category_id, category_name) VALUES (@cid, 'Chuột');

-- PRODUCT: Chuột không dây Asus MW103 Silent
SET @pid_40 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_40, @cid, @bid_Asus, 'Chuột không dây Asus MW103 Silent', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_40, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/f/r/frame_517.png', TRUE),
  (UUID(), @pid_40, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/g/r/group_565_4.png', FALSE),
  (UUID(), @pid_40, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/g/r/group_565_2__3.png', FALSE),
  (UUID(), @pid_40, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/g/r/group_565_3__2.png', FALSE),
  (UUID(), @pid_40, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/g/r/group_565_1__4.png', FALSE),
  (UUID(), @pid_40, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/g/r/group_565_4__3.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_40, 'Đen', 390000.0, 290000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Tương thích', 'Windows, MacOS, ChromeOS'),
  (UUID(), @vid, 'Độ phân giải', '800/1200/1600 DPI'),
  (UUID(), @vid, 'Cảm biến', 'Quang học'),
  (UUID(), @vid, 'Nút nhấn', '3 nút (Nhấp trái/phải, Nhấp chuột giữa)'),
  (UUID(), @vid, 'Kết nối', '2.4GHz'),
  (UUID(), @vid, 'Khoảng cách kết nối', 'Lên đến 10m'),
  (UUID(), @vid, 'Đèn LED', 'Không'),
  (UUID(), @vid, 'Pin', 'Pin AA / AAA'),
  (UUID(), @vid, 'Tiện ích', 'Giảm thiếu tiếng ồn khi nhấp chuột'),
  (UUID(), @vid, 'Kích thước', '10.59 x 6.07 x 3.29 cm'),
  (UUID(), @vid, 'Khối lượng', '45g');

-- ===============================

-- PRODUCT: Chuột Gaming có dây Asus TUF M3 Gen 2
SET @pid_41 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_41, @cid, @bid_Asus, 'Chuột Gaming có dây Asus TUF M3 Gen 2', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_41, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-gaming-co-day-asus-tuf-m3-gen-2_1_1.png', TRUE),
  (UUID(), @pid_41, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/u/tuf-m3-gen-2-4.png', FALSE),
  (UUID(), @pid_41, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/u/tuf-m3-gen-2-3.png', FALSE),
  (UUID(), @pid_41, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/u/tuf-m3-gen-2-2.png', FALSE),
  (UUID(), @pid_41, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/u/tuf-m3-gen-2-6.png', FALSE),
  (UUID(), @pid_41, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/u/tuf-m3-gen-2-5.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_41, 'Đen', 590000.0, 420000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Tương thích', 'Windows, MacOS, ChromeOS'),
  (UUID(), @vid, 'Độ phân giải', '8000 DPI'),
  (UUID(), @vid, 'Cảm biến', 'PAW3318'),
  (UUID(), @vid, 'Nút nhấn', '6 nút'),
  (UUID(), @vid, 'Kết nối', 'USB 2.0 (TypeC sang TypeA)'),
  (UUID(), @vid, 'Khoảng cách kết nối', 'Lên đến 10m'),
  (UUID(), @vid, 'Đèn LED', 'Đèn RGB'),
  (UUID(), @vid, 'Pin', 'Không'),
  (UUID(), @vid, 'Tiện ích', 'ASUS Antibacterial Guard ngăn chặn sự phát triển của vi khuẩn'),
  (UUID(), @vid, 'Kích thước', '11.82 x 6.8 x 4 cm'),
  (UUID(), @vid, 'Khối lượng', '59g');

-- ===============================

-- PRODUCT: Chuột không dây Asus Marshmallow MD100 Lite
SET @pid_42 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_42, @cid, @bid_Asus, 'Chuột không dây Asus Marshmallow MD100 Lite', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_42, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-khong-day-asus-marshmallow-md100-lite_1_.png', TRUE),
  (UUID(), @pid_42, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-khong-day-asus-marshmallow-md100-lite_2_.png', FALSE),
  (UUID(), @pid_42, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-khong-day-asus-marshmallow-md100-lite_3_.png', FALSE),
  (UUID(), @pid_42, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-khong-day-asus-marshmallow-md100-lite_4_.png', FALSE),
  (UUID(), @pid_42, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-khong-day-asus-marshmallow-md100-lite_5_.png', FALSE),
  (UUID(), @pid_42, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-khong-day-asus-marshmallow-md100-lite_6_.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_42, 'Xám', 699000.0, 490000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Tương thích', 'Windows, MacOS, ChromeOS'),
  (UUID(), @vid, 'Độ phân giải', '1600 DPI'),
  (UUID(), @vid, 'Cảm biến', 'Quang học'),
  (UUID(), @vid, 'Nút nhấn', '3 nút (Nhấp trái/phải, Nhấp chuột giữa)'),
  (UUID(), @vid, 'Kết nối', '2.4GHz'),
  (UUID(), @vid, 'Khoảng cách kết nối', 'Lên đến 10m'),
  (UUID(), @vid, 'Đèn LED', 'Không'),
  (UUID(), @vid, 'Pin', '1 Pin AA (sử dụng lên đến 12 tháng)'),
  (UUID(), @vid, 'Tiện ích', 'Giảm thiếu tiếng ồn khi nhấp chuột'),
  (UUID(), @vid, 'Kích thước', '107 x 60 x 27.8 mm'),
  (UUID(), @vid, 'Khối lượng', '56g');

-- ===============================

-- PRODUCT: Chuột không dây Asus Marshmallow MD100
SET @pid_43 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_43, @cid, @bid_Asus, 'Chuột không dây Asus Marshmallow MD100', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_43, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-khong-day-asus-marshmallow-md100.png', TRUE),
  (UUID(), @pid_43, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-khong-day-asus-marshmallow-md100_2_.png', FALSE),
  (UUID(), @pid_43, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-khong-day-asus-marshmallow-md100_7_.png', FALSE),
  (UUID(), @pid_43, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-khong-day-asus-marshmallow-md100_6_.png', FALSE),
  (UUID(), @pid_43, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-khong-day-asus-marshmallow-md100_5_.png', FALSE),
  (UUID(), @pid_43, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-khong-day-asus-marshmallow-md100_8_.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_43, 'Be', 990000.0, 590000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Tương thích', 'Windows 10/11, Chrome OS, macOS 12'),
  (UUID(), @vid, 'Độ phân giải', '800/1000/1600 DPI'),
  (UUID(), @vid, 'Cảm biến', 'Quang học'),
  (UUID(), @vid, 'Nút nhấn', '3 nút (Nhấp trái/phải, Nhấp chuột giữa)'),
  (UUID(), @vid, 'Kết nối', 'RF 2,4GHz, Bluetooth'),
  (UUID(), @vid, 'Khoảng cách kết nối', 'Lên đến 10m'),
  (UUID(), @vid, 'Đèn LED', 'Không'),
  (UUID(), @vid, 'Pin', '1 Pin AA (sử dụng lên đến 12 tháng)'),
  (UUID(), @vid, 'Tiện ích', 'Lớp phủ Antimicrobial Guard ức chế sự phát triển của vi khuẩn tới hơn 99% trong khoảng thời gian 24 giờ'),
  (UUID(), @vid, 'Kích thước', '10.7 x 6 x 2.78 cm'),
  (UUID(), @vid, 'Khối lượng', '56g');

-- ===============================

-- PRODUCT: Chuột Gaming không dây Asus TUF M4
SET @pid_44 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_44, @cid, @bid_Asus, 'Chuột Gaming không dây Asus TUF M4', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_44, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-gaming-asus-tuf-m4_1.png', TRUE),
  (UUID(), @pid_44, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/_/0/_0003_64816_chuot_game_khong_day_asus.jpg', FALSE),
  (UUID(), @pid_44, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/_/0/_0001_64816_chuot_game_khong_day_asus_2_.jpg', FALSE),
  (UUID(), @pid_44, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/_/0/_0002_64816_chuot_game_khong_day_asus_3_.jpg', FALSE),
  (UUID(), @pid_44, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/_/0/_0000_64816_chuot_game_khong_day_asus_1_.jpg', FALSE),
  (UUID(), @pid_44, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-gaming-asus-tuf-m4_1_1.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_44, 'Đen', 1190000.0, 790000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Tương thích', 'Windows 10/11'),
  (UUID(), @vid, 'Độ phân giải', '12000 DPI'),
  (UUID(), @vid, 'Cảm biến', 'Quang học'),
  (UUID(), @vid, 'Nút nhấn', '6 nút bấm lập trình được'),
  (UUID(), @vid, 'Kết nối', 'Bluetooth 5.1, RF 2.4GHz'),
  (UUID(), @vid, 'Khoảng cách kết nối', 'Lên đến 10m'),
  (UUID(), @vid, 'Đèn LED', 'Không'),
  (UUID(), @vid, 'Pin', 'Pin AA / AAA'),
  (UUID(), @vid, 'Tiện ích', 'Tần suất gửi tín hiệu 1000Hz'),
  (UUID(), @vid, 'Kích thước', '12.6 x 6.35 x 3.96 cm'),
  (UUID(), @vid, 'Khối lượng', '86g');

-- ===============================

-- PRODUCT: Chuột gaming không dây Asus ROG Strix Impact III WL
SET @pid_45 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_45, @cid, @bid_Asus, 'Chuột gaming không dây Asus ROG Strix Impact III WL', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_45, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-gaming-khong-day-asus-rog-strix-impact-iii-wl.png', TRUE),
  (UUID(), @pid_45, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-gaming-khong-day-asus-rog-strix-impact-iii-wl_4_.png', FALSE),
  (UUID(), @pid_45, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-gaming-khong-day-asus-rog-strix-impact-iii-wl_5_.png', FALSE),
  (UUID(), @pid_45, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-gaming-khong-day-asus-rog-strix-impact-iii-wl_6_.png', FALSE),
  (UUID(), @pid_45, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-gaming-khong-day-asus-rog-strix-impact-iii-wl_7_.png', FALSE),
  (UUID(), @pid_45, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-gaming-khong-day-asus-rog-strix-impact-iii-wl_8_.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_45, 'Đen', 1590000.0, 1090000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Tương thích', 'Windows 10/11'),
  (UUID(), @vid, 'Độ phân giải', '36000 DPI'),
  (UUID(), @vid, 'Cảm biến', 'Quang học ROG AimPoint'),
  (UUID(), @vid, 'Nút nhấn', '5 nút'),
  (UUID(), @vid, 'Kết nối', 'Bluetooth 5.1, Tần số vô tuyến 2,4 GHz'),
  (UUID(), @vid, 'Khoảng cách kết nối', 'Lên đến 10m'),
  (UUID(), @vid, 'Đèn LED', 'LED RGB'),
  (UUID(), @vid, 'Pin', 'Pin AA / AAA'),
  (UUID(), @vid, 'Tiện ích', 'Công nghệ không dây ROG SpeedNova'),
  (UUID(), @vid, 'Kích thước', '12 x 6.2 x 3.9 cm'),
  (UUID(), @vid, 'Khối lượng', '57g');

-- ===============================

-- PRODUCT: Chuột Gaming ASUS ROG Keris Aimpoint
SET @pid_46 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_46, @cid, @bid_Asus, 'Chuột Gaming ASUS ROG Keris Aimpoint', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_46, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-gaming-asus-rog-keris-aimpoint-usb-wl-rgb_1.png', TRUE),
  (UUID(), @pid_46, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/g/r/group_400_7_.png', FALSE),
  (UUID(), @pid_46, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/g/r/group_400_8_.png', FALSE),
  (UUID(), @pid_46, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/f/r/frame_1_32_.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_46, 'Trắng', 2690000.0, 1990000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Tương thích', 'Windows 10/11'),
  (UUID(), @vid, 'Độ phân giải', '36000 DPI'),
  (UUID(), @vid, 'Cảm biến', 'ROG AimPoint'),
  (UUID(), @vid, 'Nút nhấn', '5 nút'),
  (UUID(), @vid, 'Kết nối', 'Bluetooth, 2.4 GHz, Dây USB'),
  (UUID(), @vid, 'Khoảng cách kết nối', '2m'),
  (UUID(), @vid, 'Đèn LED', 'RGB'),
  (UUID(), @vid, 'Pin', '370 mAh (119 giờ không bật đèn, 86 giờ với đèn mặc định (chế độ nhịp thở))'),
  (UUID(), @vid, 'Tiện ích', 'Switch Cơ ROG 70 triệu lần click'),
  (UUID(), @vid, 'Kích thước', '11.8 x 6.2 x 3.9 cm'),
  (UUID(), @vid, 'Khối lượng', '75g');

-- ===============================

-- BRAND: Logitech
SET @bid_Logitech = UUID();
INSERT INTO brand (brand_id, brand_name) VALUES (@bid_Logitech, 'Logitech');

-- PRODUCT: Chuột có dây Logitech B100
SET @pid_47 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_47, @cid, @bid_Logitech, 'Chuột có dây Logitech B100', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_47, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-co-day-logitech-b100.png', TRUE),
  (UUID(), @pid_47, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/a/3/a381858ebee2f346359ecd46cf16f6b6.jpg', FALSE),
  (UUID(), @pid_47, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/d/0/d065d841680659e84af6b13f0b8954fc.jpg', FALSE),
  (UUID(), @pid_47, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/a/9/a9c21fbe61ce96d66c06582a49791381.jpg', FALSE),
  (UUID(), @pid_47, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-co-day-logitech-b100_1_.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_47, 'Đen', 89000.0, 85000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Tương thích', 'Windows 10/11'),
  (UUID(), @vid, 'Độ phân giải', '1000 DPI'),
  (UUID(), @vid, 'Cảm biến', 'Quang học'),
  (UUID(), @vid, 'Nút nhấn', '3 nút (Nhấp trái/phải, Nhấp chuột giữa)'),
  (UUID(), @vid, 'Kết nối', 'Có dây USB Type-A'),
  (UUID(), @vid, 'Khoảng cách kết nối', '1.8m'),
  (UUID(), @vid, 'Đèn LED', 'Không'),
  (UUID(), @vid, 'Pin', 'Không'),
  (UUID(), @vid, 'Tiện ích', 'Plug and Play'),
  (UUID(), @vid, 'Kích thước', '11.3 x 6.2 x 3.8 cm'),
  (UUID(), @vid, 'Khối lượng', '90g');

-- ===============================

-- PRODUCT: Chuột không dây Logitech B175
SET @pid_48 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_48, @cid, @bid_Logitech, 'Chuột không dây Logitech B175', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_48, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-khong-day-logitech-b175_1.png', TRUE),
  (UUID(), @pid_48, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-khong-day-logitech-b175_1_.png', FALSE),
  (UUID(), @pid_48, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-khong-day-logitech-b175_2_.png', FALSE),
  (UUID(), @pid_48, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-khong-day-logitech-b175_3_.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_48, 'Đen', 200000.0, 190000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Tương thích', 'Windows, macOS, ChromeOS và Linux'),
  (UUID(), @vid, 'Độ phân giải', '1000 DPI'),
  (UUID(), @vid, 'Cảm biến', 'Quang học'),
  (UUID(), @vid, 'Nút nhấn', '3 nút (Nhấp trái/phải, Nhấp chuột giữa)'),
  (UUID(), @vid, 'Kết nối', 'USB Receiver'),
  (UUID(), @vid, 'Khoảng cách kết nối', 'Lên đến 10m'),
  (UUID(), @vid, 'Đèn LED', 'Không'),
  (UUID(), @vid, 'Pin', '1 viên pin AA'),
  (UUID(), @vid, 'Tiện ích', 'Plug and Play'),
  (UUID(), @vid, 'Kích thước', '13.4 x 8.8 x 4.2 cm'),
  (UUID(), @vid, 'Khối lượng', '100g');

-- ===============================

-- PRODUCT: Chuột Bluetooth Logitech M196
SET @pid_49 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_49, @cid, @bid_Logitech, 'Chuột Bluetooth Logitech M196', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_49, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-khong-day-bluetooth-logitech-m196.png', TRUE),
  (UUID(), @pid_49, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-khong-day-bluetooth-logitech-m196_2_.png', FALSE),
  (UUID(), @pid_49, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-khong-day-bluetooth-logitech-m196_6_.png', FALSE),
  (UUID(), @pid_49, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-khong-day-bluetooth-logitech-m196_7_.png', FALSE),
  (UUID(), @pid_49, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-khong-day-bluetooth-logitech-m196_8_.png', FALSE),
  (UUID(), @pid_49, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-khong-day-bluetooth-logitech-m196_5_.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_49, 'Đen', 349000.0, 279000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Tương thích', 'Windows, macOS, ChromeOS và Linux'),
  (UUID(), @vid, 'Độ phân giải', '1000 DPI'),
  (UUID(), @vid, 'Cảm biến', 'Quang học'),
  (UUID(), @vid, 'Nút nhấn', '3 nút (Nhấp trái/phải, Nhấp chuột giữa)'),
  (UUID(), @vid, 'Kết nối', 'Bluetooth'),
  (UUID(), @vid, 'Khoảng cách kết nối', 'Lên đến 10m'),
  (UUID(), @vid, 'Đèn LED', 'Không'),
  (UUID(), @vid, 'Pin', '1 viên pin AA'),
  (UUID(), @vid, 'Tiện ích', 'Plug and Play'),
  (UUID(), @vid, 'Kích thước', '10 x 3.8 x 6 cm'),
  (UUID(), @vid, 'Khối lượng', '76g');

-- ===============================

-- PRODUCT: Chuột không dây Logitech M331
SET @pid_50 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_50, @cid, @bid_Logitech, 'Chuột không dây Logitech M331', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_50, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-khong-day-logitech-m331_2.png', TRUE),
  (UUID(), @pid_50, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-khong-day-logitech-m331-den.jpg', FALSE),
  (UUID(), @pid_50, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-khong-day-logitech-m331_2_.png', FALSE),
  (UUID(), @pid_50, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-khong-day-logitech-m331_1_.png', FALSE),
  (UUID(), @pid_50, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-khong-day-logitech-m331_3_.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_50, 'Đen', 390000.0, 330000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Tương thích', 'Windows 10/11 trở lên, macOS 11 trở lên, ChromeOS, Linux'),
  (UUID(), @vid, 'Độ phân giải', '1000 DPI'),
  (UUID(), @vid, 'Cảm biến', 'Quang học'),
  (UUID(), @vid, 'Nút nhấn', '3 nút (Nhấp trái/phải, Nhấp chuột giữa)'),
  (UUID(), @vid, 'Kết nối', 'USB Receiver'),
  (UUID(), @vid, 'Khoảng cách kết nối', 'Lên đến 10m'),
  (UUID(), @vid, 'Đèn LED', 'Không'),
  (UUID(), @vid, 'Pin', '1 viên pin AA'),
  (UUID(), @vid, 'Tiện ích', 'Công nghệ SilentTouch'),
  (UUID(), @vid, 'Kích thước', '10.54 x 6.79 x 3.84 cm'),
  (UUID(), @vid, 'Khối lượng', '78g');

-- ===============================

-- PRODUCT: Chuột có dây Gaming Logitech G102 LightSync Gen 2
SET @pid_51 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_51, @cid, @bid_Logitech, 'Chuột có dây Gaming Logitech G102 LightSync Gen 2', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_51, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-choi-game-co-day-logitech-g102-lightsync-8000dpi_1__2.png', TRUE),
  (UUID(), @pid_51, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-choi-game-co-day-logitech-g102-lightsync-8000dpi-1_1_2.png', FALSE),
  (UUID(), @pid_51, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-choi-game-co-day-logitech-g102-lightsync-8000dpi-3.png', FALSE),
  (UUID(), @pid_51, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-choi-game-co-day-logitech-g102-lightsync-8000dpi-4.png', FALSE),
  (UUID(), @pid_51, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-choi-game-co-day-logitech-g102-lightsync-8000dpi-2.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_51, 'Đen', 599000.0, 399000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Tương thích', 'Windows 7 trở lên, macOS 10.13 trở lên, ChromeOS'),
  (UUID(), @vid, 'Độ phân giải', '200 - 8000 DPI'),
  (UUID(), @vid, 'Cảm biến', 'Quang học'),
  (UUID(), @vid, 'Nút nhấn', '6 nút có thể lập trình'),
  (UUID(), @vid, 'Kết nối', 'Dây kết nối USB'),
  (UUID(), @vid, 'Khoảng cách kết nối', '2.1 m'),
  (UUID(), @vid, 'Đèn LED', 'RGB LIGHTSYNC'),
  (UUID(), @vid, 'Pin', 'Không'),
  (UUID(), @vid, 'Tiện ích', 'Tùy chỉnh độ nhạy và các lệnh trên nút'),
  (UUID(), @vid, 'Kích thước', '11.66 x 6.215 x 3.82 cm'),
  (UUID(), @vid, 'Khối lượng', '85g');

-- ===============================

-- PRODUCT: Chuột không dây Bluetooth Logitech Pebble M350S
SET @pid_52 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_52, @cid, @bid_Logitech, 'Chuột không dây Bluetooth Logitech Pebble M350S', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_52, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-khong-day-bluetooth-logitech-pebble-m350s_4.png', TRUE),
  (UUID(), @pid_52, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-khong-day-bluetooth-logitech-pebble-m350s-4.png', FALSE),
  (UUID(), @pid_52, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-khong-day-bluetooth-logitech-pebble-m350s-5.png', FALSE),
  (UUID(), @pid_52, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-khong-day-bluetooth-logitech-pebble-m350s-6.png', FALSE),
  (UUID(), @pid_52, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-khong-day-bluetooth-logitech-pebble-m350s-7.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_52, 'Hồng', 699000.0, 490000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Tương thích', 'Windows 10/11 trở lên, macOS 11 trở lên, iPadOS 14 trở lên, Android 9.0 trở lên, ChromeOS, Linux, Chromebook'),
  (UUID(), @vid, 'Độ phân giải', '400 - 4000 DPI'),
  (UUID(), @vid, 'Cảm biến', 'Quang học'),
  (UUID(), @vid, 'Nút nhấn', '3 nút (Nhấp trái/phải, Nút cuộn với nút nhấp chuột giữa)'),
  (UUID(), @vid, 'Kết nối', 'Bluetooth'),
  (UUID(), @vid, 'Khoảng cách kết nối', 'Lên đến 10m'),
  (UUID(), @vid, 'Đèn LED', 'Không'),
  (UUID(), @vid, 'Pin', '1 viên pin AA'),
  (UUID(), @vid, 'Tiện ích', 'Nút có thể tùy chỉnh với Logi Options + Ứng dụng (nút cuộn với nút nhấp chuột giữa)'),
  (UUID(), @vid, 'Kích thước', '2.662 x 5.87 x 10.67 cm'),
  (UUID(), @vid, 'Khối lượng', '76g');

-- ===============================

-- PRODUCT: Chuột không dây Logitech Pop Mouse With Emoji
SET @pid_53 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_53, @cid, @bid_Logitech, 'Chuột không dây Logitech Pop Mouse With Emoji', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_53, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/f/r/frame_1_-_2025-05-01t183705.692.png', TRUE),
  (UUID(), @pid_53, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-khong-day-logitech-pop-mouse-with-emoji_2_.png', FALSE),
  (UUID(), @pid_53, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-khong-day-logitech-pop-mouse-with-emoji_6_.png', FALSE),
  (UUID(), @pid_53, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-khong-day-logitech-pop-mouse-with-emoji_7_.png', FALSE),
  (UUID(), @pid_53, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-khong-day-logitech-pop-mouse-with-emoji_8_.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_53, 'Đen', 849000.0, 650000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Tương thích', 'Windows 10/11 trở lên, macOS 10.15 trở lên, ChromeOS 5 trở lên, iPadOS 13.4 trở lên'),
  (UUID(), @vid, 'Độ phân giải', '1000 - 4000 DPI'),
  (UUID(), @vid, 'Cảm biến', 'Quang học'),
  (UUID(), @vid, 'Nút nhấn', '4 nút (Nhấp trái/phải, Nút cuộn với nút nhấp chuột giữa, Nút trên cùng)'),
  (UUID(), @vid, 'Kết nối', 'Bluetooth'),
  (UUID(), @vid, 'Khoảng cách kết nối', 'Lên đến 10m'),
  (UUID(), @vid, 'Đèn LED', 'Không'),
  (UUID(), @vid, 'Pin', '1 viên pin AA'),
  (UUID(), @vid, 'Tiện ích', 'Công nghệ SilentTouch khiến cho mọi cú nhấp đều trở nên yên tĩnh'),
  (UUID(), @vid, 'Kích thước', '10.48 x 5.94 x 3.52 cm'),
  (UUID(), @vid, 'Khối lượng', '82g');

-- ===============================

-- PRODUCT: Chuột có dây Gaming Logitech G402 Hyperion Fury Ultra
SET @pid_54 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_54, @cid, @bid_Logitech, 'Chuột có dây Gaming Logitech G402 Hyperion Fury Ultra', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_54, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-choi-game-co-day-logitech-g402-hyperion-fury-ultra.png', TRUE),
  (UUID(), @pid_54, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-choi-game-co-day-logitech-g402-hyperion-fury-ultra-2.jpg', FALSE),
  (UUID(), @pid_54, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-choi-game-co-day-logitech-g402-hyperion-fury-ultra-3.jpg', FALSE),
  (UUID(), @pid_54, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-choi-game-co-day-logitech-g402-hyperion-fury-ultra-4.jpg', FALSE),
  (UUID(), @pid_54, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-choi-game-co-day-logitech-g402-hyperion-fury-ultra_2_.png', FALSE),
  (UUID(), @pid_54, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-choi-game-co-day-logitech-g402-hyperion-fury-ultra_1_.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_54, 'Đen', 799000.0, 690000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Tương thích', 'Windows 10/11 trở lên, macOS 10.15 trở lên, ChromeOS 5 trở lên, iPadOS 13.4 trở lên'),
  (UUID(), @vid, 'Độ phân giải', '240 - 4000 DPI'),
  (UUID(), @vid, 'Cảm biến', 'Quang học'),
  (UUID(), @vid, 'Nút nhấn', '8 nút có thể lập trình'),
  (UUID(), @vid, 'Kết nối', 'USB 2.0'),
  (UUID(), @vid, 'Khoảng cách kết nối', '2.1 m'),
  (UUID(), @vid, 'Đèn LED', 'Đèn LED Xanh'),
  (UUID(), @vid, 'Pin', 'Không'),
  (UUID(), @vid, 'Tiện ích', 'Theo dõi tốc độ cao với Fushion Engine theo dõi vượt trội với tốc độ lên đến 500 IPS'),
  (UUID(), @vid, 'Kích thước', '13.6 x 7.2 x 4.1 cm'),
  (UUID(), @vid, 'Khối lượng', '144g');

-- ===============================

-- PRODUCT: Chuột Gaming không dây Logitech G304 Lightspeed
SET @pid_55 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_55, @cid, @bid_Logitech, 'Chuột Gaming không dây Logitech G304 Lightspeed', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_55, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-gaming-khong-day-logitech-g304-lightspeed_1_1.png', TRUE),
  (UUID(), @pid_55, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/_/t_i_xu_ng_37_.png', FALSE),
  (UUID(), @pid_55, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/_/t_i_xu_ng_38__3.png', FALSE),
  (UUID(), @pid_55, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/_/t_i_xu_ng_39_.png', FALSE),
  (UUID(), @pid_55, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/_/t_i_xu_ng_40_.png', FALSE),
  (UUID(), @pid_55, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/_/t_i_xu_ng_41__4.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_55, 'Đen', 949000.0, 725000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Tương thích', 'Windows 7 trở lên, macOS 10.13 trở lên, ChromeOS'),
  (UUID(), @vid, 'Độ phân giải', '200 - 12000 DPI'),
  (UUID(), @vid, 'Cảm biến', 'Quang học HERO'),
  (UUID(), @vid, 'Nút nhấn', '6 nút có thể lập trình'),
  (UUID(), @vid, 'Kết nối', 'LIGHTSPEED không dây'),
  (UUID(), @vid, 'Khoảng cách kết nối', 'Lên đến 10m'),
  (UUID(), @vid, 'Đèn LED', 'Không'),
  (UUID(), @vid, 'Pin', 'Pin AA'),
  (UUID(), @vid, 'Tiện ích', 'Tần suất gửi tín hiệu không dây 1000Hz (1ms)'),
  (UUID(), @vid, 'Kích thước', '11.66 x 6.215 x 3.82 cm'),
  (UUID(), @vid, 'Khối lượng', '99g');

-- ===============================

-- PRODUCT: Chuột Gaming Logitech G502 Hero
SET @pid_56 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_56, @cid, @bid_Logitech, 'Chuột Gaming Logitech G502 Hero', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_56, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-choi-game-co-day-logitech-g502-hero.png', TRUE),
  (UUID(), @pid_56, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/f/a/fab763309ba5fd53478e9dda2268c79a.jpg', FALSE),
  (UUID(), @pid_56, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/3/c/3c42e4219bbaa920c07c54784edd6269.jpg', FALSE),
  (UUID(), @pid_56, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/d/d/dd9879f963254dd903ce0429bfd445fd.jpg', FALSE),
  (UUID(), @pid_56, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot502den.jpg', FALSE),
  (UUID(), @pid_56, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot502.jpg', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_56, 'Đen', 1390000.0, 920000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Tương thích', 'Windows 7 trở lên, macOS 10.11 trở lên, ChromeOS'),
  (UUID(), @vid, 'Độ phân giải', '100 - 25600 DPI'),
  (UUID(), @vid, 'Cảm biến', 'Quang học HERO 25K'),
  (UUID(), @vid, 'Nút nhấn', '11 nút lập trình được'),
  (UUID(), @vid, 'Kết nối', 'Dây USB'),
  (UUID(), @vid, 'Khoảng cách kết nối', '2.1 m'),
  (UUID(), @vid, 'Đèn LED', 'LIGHTSYNC RGB'),
  (UUID(), @vid, 'Pin', 'Không'),
  (UUID(), @vid, 'Tiện ích', 'Tần suất gửi tín hiệu USB 1000Hz (1ms)'),
  (UUID(), @vid, 'Kích thước', '29 x 7.5 x 4 cm'),
  (UUID(), @vid, 'Khối lượng', '121g');

-- ===============================

-- PRODUCT: Chuột không dây Logitech Lift Vertical
SET @pid_57 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_57, @cid, @bid_Logitech, 'Chuột không dây Logitech Lift Vertical', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_57, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-khong-day-cong-thai-hoc-logitech-lift-vertical_1_.png', TRUE),
  (UUID(), @pid_57, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/1/1/11_6_33.jpg', FALSE),
  (UUID(), @pid_57, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/1/3/13_5_84.jpg', FALSE),
  (UUID(), @pid_57, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/1/0/10_9_61.jpg', FALSE),
  (UUID(), @pid_57, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/1/4/14_2_89.jpg', FALSE),
  (UUID(), @pid_57, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/1/2/12_5_85.jpg', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_57, 'Đen', 1490000.0, 1290000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Tương thích', 'Windows 10/11 trở lên, macOS 10.15 trở lên, iPadOS 14 trở lên, ChromeOS, Linux, Android 8 trở lên'),
  (UUID(), @vid, 'Độ phân giải', '400 - 4000 DPI'),
  (UUID(), @vid, 'Cảm biến', 'Quang học'),
  (UUID(), @vid, 'Nút nhấn', '6 nút (Nhấp trái/phải, Quay lại/Tiếp tục, Nút giữa, Nút cuộn với nút nhấp chuột giữa)'),
  (UUID(), @vid, 'Kết nối', 'Bluetooth, USB Receiver'),
  (UUID(), @vid, 'Khoảng cách kết nối', 'Lên đến 10m'),
  (UUID(), @vid, 'Đèn LED', 'Không'),
  (UUID(), @vid, 'Pin', '1 pin AA (đi kèm)'),
  (UUID(), @vid, 'Tiện ích', 'Công nghệ SmartWheel giúp cuộn trôi chảy và yên tĩnh. Có thể chuyển dễ dàng giữa tối đa 3 thiết bị bằng nút Easy-Switch'),
  (UUID(), @vid, 'Kích thước', '7.1 x 7 x 10.8 cm (Cao x Rộng x Dày)'),
  (UUID(), @vid, 'Khối lượng', '125g');

-- ===============================

-- PRODUCT: Chuột gaming không dây Logitech Lightspeed G705
SET @pid_58 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_58, @cid, @bid_Logitech, 'Chuột gaming không dây Logitech Lightspeed G705', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_58, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-gaming-khong-day-logitech-lightspeed-g705_1.png', TRUE),
  (UUID(), @pid_58, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/2/5/25_1_3.png', FALSE),
  (UUID(), @pid_58, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/2/4/24_2_1.png', FALSE),
  (UUID(), @pid_58, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/2/3/23_1_2.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_58, 'Trắng', 2499000.0, 2090000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Tương thích', 'Windows 10 trở lên, Mac 10.15 trở lên, iPadOS 13.4 trở lên, iOS 14 trở lên'),
  (UUID(), @vid, 'Độ phân giải', '100 - 8200 DPI'),
  (UUID(), @vid, 'Cảm biến', 'Quang học'),
  (UUID(), @vid, 'Nút nhấn', '6 nút có thể lập trình'),
  (UUID(), @vid, 'Kết nối', 'Bluetooth, USB Receiver'),
  (UUID(), @vid, 'Khoảng cách kết nối', 'Lên đến 10m'),
  (UUID(), @vid, 'Đèn LED', 'RGB LIGHTSYNC'),
  (UUID(), @vid, 'Pin', '40 giờ (khi bật đèn)'),
  (UUID(), @vid, 'Tiện ích', 'Theo dõi tốc độ cao với Fushion Engine theo dõi vượt trội với tốc độ lên đến 500 IPS'),
  (UUID(), @vid, 'Kích thước', '3.94 x 6.81 x 10.58 cm'),
  (UUID(), @vid, 'Khối lượng', '85g');

-- ===============================

-- PRODUCT: Chuột không dây Logitech MX Master 4 for Mac
SET @pid_59 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_59, @cid, @bid_Logitech, 'Chuột không dây Logitech MX Master 4 for Mac', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_59, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-khong-day-logitech-mx-master-4-for-mac_1_.png', TRUE),
  (UUID(), @pid_59, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-khong-day-logitech-mx-master-4-for-mac_6_.png', FALSE),
  (UUID(), @pid_59, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-khong-day-logitech-mx-master-4-for-mac_7_.png', FALSE),
  (UUID(), @pid_59, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-khong-day-logitech-mx-master-4-for-mac_5_.png', FALSE),
  (UUID(), @pid_59, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-khong-day-logitech-mx-master-4-for-mac_3_.png', FALSE),
  (UUID(), @pid_59, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-khong-day-logitech-mx-master-4-for-mac_8_.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_59, 'Bạc', 3399000.0, 2890000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Tương thích', 'MacOS 13 trở lên, iPadOS 15 trở lên'),
  (UUID(), @vid, 'Độ phân giải', '200 - 8000 DPI'),
  (UUID(), @vid, 'Cảm biến', 'Darkfield'),
  (UUID(), @vid, 'Nút nhấn', '8 nút'),
  (UUID(), @vid, 'Kết nối', 'Bluetooth, USB Receiver, Dây USB-C to A'),
  (UUID(), @vid, 'Khoảng cách kết nối', 'Lên đến 10m'),
  (UUID(), @vid, 'Đèn LED', 'Không'),
  (UUID(), @vid, 'Pin', '650 mAh'),
  (UUID(), @vid, 'Tiện ích', 'Cải thiện khả năng chống bám bẩn'),
  (UUID(), @vid, 'Kích thước', '128.15 x 88.35 x 50.8 mm'),
  (UUID(), @vid, 'Khối lượng', '150g');

-- ===============================

-- PRODUCT: Chuột Gaming không dây Logitech G502 X Plus Lightspeed
SET @pid_60 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_60, @cid, @bid_Logitech, 'Chuột Gaming không dây Logitech G502 X Plus Lightspeed', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_60, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-gaming-khong-day-logitech-g502-x-plus-lightspeed_1.png', TRUE),
  (UUID(), @pid_60, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-gaming-khong-day-logitech-g502-x-plus-lightspeed-1.png', FALSE),
  (UUID(), @pid_60, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-gaming-khong-day-logitech-g502-x-plus-lightspeed-4.png', FALSE),
  (UUID(), @pid_60, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-gaming-khong-day-logitech-g502-x-plus-lightspeed-2.png', FALSE),
  (UUID(), @pid_60, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-gaming-khong-day-logitech-g502-x-plus-lightspeed-3.png', FALSE),
  (UUID(), @pid_60, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-gaming-khong-day-logitech-g502-x-plus-lightspeed-5.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_60, 'Đen', 3490000.0, 3115000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Tương thích', 'Windows 10 trở lên, Mac 10.15 trở lên, iPadOS 13.4 trở lên, iOS 14 trở lên'),
  (UUID(), @vid, 'Độ phân giải', '100 - 25600 DPI'),
  (UUID(), @vid, 'Cảm biến', 'HERO 25K'),
  (UUID(), @vid, 'Nút nhấn', '13 nút có thể lập trình'),
  (UUID(), @vid, 'Kết nối', 'Bluetooth, USB Receiver'),
  (UUID(), @vid, 'Khoảng cách kết nối', 'Lên đến 10m'),
  (UUID(), @vid, 'Đèn LED', 'LED RGB'),
  (UUID(), @vid, 'Pin', 'Pin dùng đến 130 giờ'),
  (UUID(), @vid, 'Tiện ích', 'Pin có thể sạc lại bằng cáp USB-C'),
  (UUID(), @vid, 'Kích thước', '131 x 41 x 79 mm (Cao x Rộng x Dày)'),
  (UUID(), @vid, 'Khối lượng', '106g');

-- ===============================

-- PRODUCT: Chuột gaming Logitech Pro X Superlight 2 Lightspeed
SET @pid_61 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_61, @cid, @bid_Logitech, 'Chuột gaming Logitech Pro X Superlight 2 Lightspeed', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_61, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-gaming-logitech-pro-x-superlight-2-lightspeed.png', TRUE),
  (UUID(), @pid_61, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-gaming-logitech-pro-x-superlight-2-lightspeed.png', FALSE),
  (UUID(), @pid_61, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-gaming-logitech-pro-x-superlight-2-lightspeed-4.png', FALSE),
  (UUID(), @pid_61, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-gaming-logitech-pro-x-superlight-2-lightspeed-3.png', FALSE),
  (UUID(), @pid_61, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-gaming-logitech-pro-x-superlight-2-lightspeed-5.png', FALSE),
  (UUID(), @pid_61, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/h/chuot-gaming-logitech-pro-x-superlight-2-lightspeed-6.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_61, 'Hồng', 3890000.0, 3175000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Tương thích', 'Windows 10 trở lên và cổng USB 2.0'),
  (UUID(), @vid, 'Độ phân giải', '100 - 44000 DPI'),
  (UUID(), @vid, 'Cảm biến', 'HERO 2 Optical Sensor'),
  (UUID(), @vid, 'Nút nhấn', '5 nút'),
  (UUID(), @vid, 'Kết nối', 'USB receiver'),
  (UUID(), @vid, 'Khoảng cách kết nối', 'Lên đến 10m'),
  (UUID(), @vid, 'Đèn LED', 'Không'),
  (UUID(), @vid, 'Pin', 'Tuổi thọ pin 95 giờ'),
  (UUID(), @vid, 'Tiện ích', 'Công nghệ không dây LIGHTSPEED'),
  (UUID(), @vid, 'Kích thước', '12.5 x 6.35 x 4 cm'),
  (UUID(), @vid, 'Khối lượng', '60g');

-- ===============================

-- === CATEGORY: Bàn phím ===
SET @cid = UUID();
INSERT INTO category (category_id, category_name) VALUES (@cid, 'Bàn phím');

-- PRODUCT: Bàn phím Gaming Asus ROG Falchion RX Low Profile
SET @pid_62 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_62, @cid, @bid_Asus, 'Bàn phím Gaming Asus ROG Falchion RX Low Profile', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_62, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/g/a/gaming_8_48__1.png', TRUE),
  (UUID(), @pid_62, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/f/r/frame_379_-_2025-05-26t222545.449.png', FALSE),
  (UUID(), @pid_62, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/f/r/frame_379_-_2025-05-26t222615.690.png', FALSE),
  (UUID(), @pid_62, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/f/r/frame_379_-_2025-05-26t222556.704.png', FALSE),
  (UUID(), @pid_62, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/f/r/frame_379_-_2025-05-26t222653.686.png', FALSE),
  (UUID(), @pid_62, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/f/r/frame_379_-_2025-05-26t222707.126.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_62, 'Trắng', 4490000.0, 3790000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Loại bàn phím', 'Mini-size 65%'),
  (UUID(), @vid, 'Số phím', '68 phím'),
  (UUID(), @vid, 'Tương thích', 'macOS, Windows'),
  (UUID(), @vid, 'Kết nối', 'USB 2.0 (TypeC to TypeA), Bluetooth 5.1, RF 2.4GHz'),
  (UUID(), @vid, 'Khoảng cách kết nối', 'Lên đến 10m'),
  (UUID(), @vid, 'Đèn LED', 'LED RGB trên mỗi phím'),
  (UUID(), @vid, 'Tiện ích', 'Tất cả các phím có thể lập trình'),
  (UUID(), @vid, 'Pin', 'Không'),
  (UUID(), @vid, 'Cổng sạc', 'Cáp bện USB loại A đến C'),
  (UUID(), @vid, 'Kích thước', '30.6 x 11 x 2.65 cm'),
  (UUID(), @vid, 'Khối lượng', '595g');

-- ===============================

-- PRODUCT: Bàn phím cơ Asus Rog Azoth
SET @pid_63 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_63, @cid, @bid_Asus, 'Bàn phím cơ Asus Rog Azoth', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_63, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/g/a/gaming_8_-_2025-05-26t170656.127.png', TRUE),
  (UUID(), @pid_63, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/b/a/ban-phim-gaming-asus-rog-azoth-den_5_.png', FALSE),
  (UUID(), @pid_63, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/b/a/ban-phim-gaming-asus-rog-azoth-den_2_.png', FALSE),
  (UUID(), @pid_63, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/b/a/ban-phim-gaming-asus-rog-azoth-den_4_.png', FALSE),
  (UUID(), @pid_63, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/f/r/frame_379_-_2025-05-26t170413.161.png', FALSE),
  (UUID(), @pid_63, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/f/r/frame_379_-_2025-05-26t170423.579.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_63, 'Đen', 6990000.0, 5990000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Loại bàn phím', 'Tenkeyless'),
  (UUID(), @vid, 'Số phím', '75 phím'),
  (UUID(), @vid, 'Tương thích', 'macOS, Windows'),
  (UUID(), @vid, 'Kết nối', 'USB 2.0 (TypeC to TypeA), Bluetooth 5.1, USB Receiver'),
  (UUID(), @vid, 'Khoảng cách kết nối', 'Lên đến 10m'),
  (UUID(), @vid, 'Đèn LED', 'LED RGB trên mỗi phím'),
  (UUID(), @vid, 'Tiện ích', 'Tất cả các phím có thể lập trình'),
  (UUID(), @vid, 'Pin', 'Không'),
  (UUID(), @vid, 'Cổng sạc', 'USB Type A to C'),
  (UUID(), @vid, 'Kích thước', '32.6 x 13.6 x 4 cm'),
  (UUID(), @vid, 'Khối lượng', '1186g');

-- ===============================

-- PRODUCT: Bàn phím có dây Logitech K120
SET @pid_64 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_64, @cid, @bid_Logitech, 'Bàn phím có dây Logitech K120', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_64, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/g/a/gaming_8_11__1.png', TRUE),
  (UUID(), @pid_64, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/k/1/k120-refresh-gallery-images.u3059.d20170508.t165045.733325.jpg', FALSE),
  (UUID(), @pid_64, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/4/c/4c92a02dbf8def20c13076cbf2d1c28f.jpg', FALSE),
  (UUID(), @pid_64, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/k/1/k120-refresh-gallery-images--2-.u3059.d20170508.t165045.665973.jpg', FALSE),
  (UUID(), @pid_64, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/k/1/k120-refresh-gallery-images--3-.u3059.d20170508.t165045.699849.jpg', FALSE),
  (UUID(), @pid_64, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/f/r/frame_379_22__1.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_64, 'Đen', 190000.0, 165000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Loại bàn phím', 'Full-size'),
  (UUID(), @vid, 'Số phím', '104 phím'),
  (UUID(), @vid, 'Tương thích', 'Windows 10,11 trở lên'),
  (UUID(), @vid, 'Kết nối', 'Dây cắm USB'),
  (UUID(), @vid, 'Khoảng cách kết nối', '2m'),
  (UUID(), @vid, 'Đèn LED', 'Không'),
  (UUID(), @vid, 'Tiện ích', 'Thiết kế chống nước đổ tràn'),
  (UUID(), @vid, 'Pin', 'Không'),
  (UUID(), @vid, 'Cổng sạc', 'Không'),
  (UUID(), @vid, 'Kích thước', '28 x 14 x 2 cm'),
  (UUID(), @vid, 'Khối lượng', '550g');

-- ===============================

-- PRODUCT: Bàn phím Bluetooth Logitech K250
SET @pid_65 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_65, @cid, @bid_Logitech, 'Bàn phím Bluetooth Logitech K250', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_65, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/g/a/gaming_8_-_2025-06-16t162636.887.png', TRUE),
  (UUID(), @pid_65, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/f/r/frame_379_-_2025-06-16t162650.878.png', FALSE),
  (UUID(), @pid_65, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/f/r/frame_379_-_2025-06-16t162740.130.png', FALSE),
  (UUID(), @pid_65, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/f/r/frame_379_-_2025-06-16t162841.916.png', FALSE),
  (UUID(), @pid_65, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/f/r/frame_379_-_2025-06-16t162800.729.png', FALSE),
  (UUID(), @pid_65, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/f/r/frame_379_-_2025-06-16t162952.921.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_65, 'Xám', 449000.0, 399000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Loại bàn phím', 'Full-size'),
  (UUID(), @vid, 'Số phím', '99 phím'),
  (UUID(), @vid, 'Tương thích', 'Windows 10, 11 trở lên; macOS 12 trở lên; ChromeOS; Linux; iPadOS 15 trở lên; iOS 15 trở lên; Android 12 trở lên'),
  (UUID(), @vid, 'Kết nối', 'Bluetooth'),
  (UUID(), @vid, 'Khoảng cách kết nối', 'Lên đến 10m'),
  (UUID(), @vid, 'Đèn LED', 'Không'),
  (UUID(), @vid, 'Tiện ích', 'Chân nghiêng (cho góc gõ 7 độ)'),
  (UUID(), @vid, 'Pin', '2 x AAA (Pin kiềm)'),
  (UUID(), @vid, 'Cổng sạc', 'Không'),
  (UUID(), @vid, 'Kích thước', '13.69 x 36.99 x 2.28 cm'),
  (UUID(), @vid, 'Khối lượng', '380g');

-- ===============================

-- PRODUCT: Bàn phím Bluetooth Logitech Pebble Key 2 K380S
SET @pid_66 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_66, @cid, @bid_Logitech, 'Bàn phím Bluetooth Logitech Pebble Key 2 K380S', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_66, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/g/a/gaming_8_74_.png', TRUE),
  (UUID(), @pid_66, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/b/a/ban-phim-bluetooth-logitech-pebble-k380s-8.png', FALSE),
  (UUID(), @pid_66, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/b/a/ban-phim-bluetooth-logitech-pebble-k380s-8.png', FALSE),
  (UUID(), @pid_66, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/b/a/ban-phim-bluetooth-logitech-pebble-k380s-10.png', FALSE),
  (UUID(), @pid_66, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/b/a/ban-phim-bluetooth-logitech-pebble-k380s-11.png', FALSE),
  (UUID(), @pid_66, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/f/r/frame_379_-_2025-05-16t155840.665.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_66, 'Đen', 1129000.0, 730000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Loại bàn phím', 'Mini-size'),
  (UUID(), @vid, 'Số phím', '79 phím'),
  (UUID(), @vid, 'Tương thích', 'Windows 10, 11 trở lên; macOS 11 trở lên; ChromeOS; Linux; iPadOS 14 trở lên; iOS 14 trở lên; Android 9 trở lên'),
  (UUID(), @vid, 'Kết nối', 'Bluetooth (lên đến 10m). Tương thích với đầu thu USB Logi Bolt (không đi kèm)'),
  (UUID(), @vid, 'Khoảng cách kết nối', 'Lên đến 10m'),
  (UUID(), @vid, 'Đèn LED', 'LED báo lượng pin, 3 kênh Easy-Switch Bluetooth'),
  (UUID(), @vid, 'Tiện ích', 'Công nghệ Bluetooth tiết kiệm năng lượng'),
  (UUID(), @vid, 'Pin', '2 x AAA (Pin kiềm)'),
  (UUID(), @vid, 'Cổng sạc', 'Không'),
  (UUID(), @vid, 'Kích thước', '12.4 x 27.9 x 1.6 cm'),
  (UUID(), @vid, 'Khối lượng', '415g (kèm pin)');

-- ===============================

-- PRODUCT: Bàn phím giả cơ Logitech G213 Prodigy RGB Gaming
SET @pid_67 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_67, @cid, @bid_Logitech, 'Bàn phím giả cơ Logitech G213 Prodigy RGB Gaming', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_67, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/g/a/gaming_8_78_.png', TRUE),
  (UUID(), @pid_67, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/b/a/ban-phim-gia-co-logitech-g213-prodigy-rgb-gaming-1.jpg', FALSE),
  (UUID(), @pid_67, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/b/a/ban-phim-gia-co-logitech-g213-prodigy-rgb-gaming-2.jpg', FALSE),
  (UUID(), @pid_67, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/b/a/ban-phim-gia-co-logitech-g213-prodigy-rgb-gaming-3.jpg', FALSE),
  (UUID(), @pid_67, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/b/a/ban-phim-gia-co-logitech-g213-prodigy-rgb-gaming-4.jpg', FALSE),
  (UUID(), @pid_67, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/f/r/frame_379_-_2025-05-19t160144.938.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_67, 'Đen', 1149000.0, 990000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Loại bàn phím', 'Full-size'),
  (UUID(), @vid, 'Số phím', '104 phím'),
  (UUID(), @vid, 'Tương thích', 'Windows 7 trở lên'),
  (UUID(), @vid, 'Kết nối', 'Cổng dây USB 2.0'),
  (UUID(), @vid, 'Khoảng cách kết nối', '1.8m'),
  (UUID(), @vid, 'Đèn LED', 'LED RGB (5 Khu vực)'),
  (UUID(), @vid, 'Tiện ích', 'Chống đổ tràn, Có kê tay'),
  (UUID(), @vid, 'Pin', 'Không'),
  (UUID(), @vid, 'Cổng sạc', 'Không'),
  (UUID(), @vid, 'Kích thước', '45.2 x 21.8 x 3.3 cm'),
  (UUID(), @vid, 'Khối lượng', '1kg');

-- ===============================

-- PRODUCT: Bàn phím không dây Logitech Pop Icon Keys
SET @pid_68 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_68, @cid, @bid_Logitech, 'Bàn phím không dây Logitech Pop Icon Keys', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_68, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/g/a/gaming_8_17__1.png', TRUE),
  (UUID(), @pid_68, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/b/a/ban-phim-khong-day-logitech-pop-icon-keys_2_.png', FALSE),
  (UUID(), @pid_68, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/b/a/ban-phim-khong-day-logitech-pop-icon-keys_6_.png', FALSE),
  (UUID(), @pid_68, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/b/a/ban-phim-khong-day-logitech-pop-icon-keys_7_.png', FALSE),
  (UUID(), @pid_68, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/b/a/ban-phim-khong-day-logitech-pop-icon-keys_8_.png', FALSE),
  (UUID(), @pid_68, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/b/a/ban-phim-khong-day-logitech-pop-icon-keys_9_.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_68, 'Xám đen', 1499000.0, 1290000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Loại bàn phím', 'Tenkeyless'),
  (UUID(), @vid, 'Số phím', '85 phím'),
  (UUID(), @vid, 'Tương thích', 'Windows 10, 11 trở lên; macOS 12 trở lên; ChromeOS; Linux; iPadOS 15 trở lên; iOS 15 trở lên; Android 12 trở lên'),
  (UUID(), @vid, 'Kết nối', 'Bluetooth, USB Wireless Logi Bolt (Không tặng kèm)'),
  (UUID(), @vid, 'Khoảng cách kết nối', 'Lên đến 10m'),
  (UUID(), @vid, 'Đèn LED', 'Không'),
  (UUID(), @vid, 'Tiện ích', 'Bố cục tối giản với 4 phím hành động có thể tùy chỉnh'),
  (UUID(), @vid, 'Pin', '2 x Pin AAA'),
  (UUID(), @vid, 'Cổng sạc', 'Không'),
  (UUID(), @vid, 'Kích thước', '13.7 x 32.5 x 2.2 cm'),
  (UUID(), @vid, 'Khối lượng', '530g');

-- ===============================

-- PRODUCT: Bàn phím cơ Logitech G413 SE TKL Brown Switch White Led
SET @pid_69 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_69, @cid, @bid_Logitech, 'Bàn phím cơ Logitech G413 SE TKL Brown Switch White Led', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_69, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/g/a/gaming_8_12_.png', TRUE),
  (UUID(), @pid_69, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/3/1/31_1_28.jpg', FALSE),
  (UUID(), @pid_69, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/3/2/32_1_22.jpg', FALSE),
  (UUID(), @pid_69, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/3/0/30_1_27.jpg', FALSE),
  (UUID(), @pid_69, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/3/4/34_1_24.jpg', FALSE),
  (UUID(), @pid_69, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/f/r/frame_379_31__1.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_69, 'Đen', 1599000.0, 1490000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Loại bàn phím', 'Tenkeyless'),
  (UUID(), @vid, 'Số phím', '87 phím'),
  (UUID(), @vid, 'Tương thích', 'Windows 10 trở lên, macOS X 10.14 trở lên'),
  (UUID(), @vid, 'Kết nối', 'USB 2.0'),
  (UUID(), @vid, 'Khoảng cách kết nối', '1.8m'),
  (UUID(), @vid, 'Đèn LED', 'Đèn LED trắng'),
  (UUID(), @vid, 'Tiện ích', 'Tất cả các phím có thể lập trình'),
  (UUID(), @vid, 'Pin', 'Không'),
  (UUID(), @vid, 'Cổng sạc', 'Không'),
  (UUID(), @vid, 'Kích thước', '35.5 x 12.7 x 3.63 cm (Dài x Rộng x Cao)'),
  (UUID(), @vid, 'Khối lượng', '650g');

-- ===============================

-- PRODUCT: Bàn phím cơ không dây Logitech Alto Keys K98M Xám Đen
SET @pid_70 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_70, @cid, @bid_Logitech, 'Bàn phím cơ không dây Logitech Alto Keys K98M Xám Đen', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_70, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/g/a/gaming_8_2_3.png', TRUE),
  (UUID(), @pid_70, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/f/r/frame_516_2.png', FALSE),
  (UUID(), @pid_70, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/f/r/frame_516_1__2.png', FALSE),
  (UUID(), @pid_70, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/f/r/frame_516_2__2.png', FALSE),
  (UUID(), @pid_70, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/f/r/frame_516_3__2.png', FALSE),
  (UUID(), @pid_70, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/f/r/frame_516_4__2.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_70, 'Xám đen', 2799000.0, 2290000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Loại bàn phím', 'Full-size'),
  (UUID(), @vid, 'Số phím', '98 phím'),
  (UUID(), @vid, 'Tương thích', 'Windows 10, 11 trở lên; macOS 11 trở lên; ChromeOS; Linux; iPadOS 14 trở lên; iOS 14 trở lên; Android 9 trở lên'),
  (UUID(), @vid, 'Kết nối', 'Bluetooth, USB'),
  (UUID(), @vid, 'Khoảng cách kết nối', 'Lên đến 10m'),
  (UUID(), @vid, 'Đèn LED', 'LED 1 màu trắng'),
  (UUID(), @vid, 'Tiện ích', 'Kết nối và chuyển đổi qua lại giữa tối đa 3 thiết bị'),
  (UUID(), @vid, 'Pin', 'Có thể sạc lại'),
  (UUID(), @vid, 'Cổng sạc', 'Dây sạc USB-A to USB-C'),
  (UUID(), @vid, 'Kích thước', '14.7 x 40.1 x 3.96 cm'),
  (UUID(), @vid, 'Khối lượng', '1.1kg');

-- ===============================

-- PRODUCT: Bàn phím không dây Logitech MX Keys mini
SET @pid_71 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_71, @cid, @bid_Logitech, 'Bàn phím không dây Logitech MX Keys mini', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_71, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/g/a/gaming_8_15__1.png', TRUE),
  (UUID(), @pid_71, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/_/t_i_xu_ng_-_2022-11-22t111430.528.png', FALSE),
  (UUID(), @pid_71, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/_/t_i_xu_ng_-_2022-11-22t111438.304.png', FALSE),
  (UUID(), @pid_71, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/_/t_i_xu_ng_-_2022-11-22t111446.985.png', FALSE),
  (UUID(), @pid_71, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/_/t_i_xu_ng_-_2022-11-22t111434.753.png', FALSE),
  (UUID(), @pid_71, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/t/_/t_i_xu_ng_-_2022-11-22t111442.480.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_71, 'Xám đen', 2690000.0, 2490000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Loại bàn phím', 'Mini-size'),
  (UUID(), @vid, 'Số phím', '79 phím'),
  (UUID(), @vid, 'Tương thích', 'Windows, macOS, iOS, iPadOS, Linux, ChromeOS, Android'),
  (UUID(), @vid, 'Kết nối', 'Bluetooth Low Energy, Tương thích USB Receiver Logi Bolt (Không đi kèm)'),
  (UUID(), @vid, 'Khoảng cách kết nối', 'Lên đến 10m'),
  (UUID(), @vid, 'Đèn LED', 'LED trắng'),
  (UUID(), @vid, 'Tiện ích', 'Phím đọc chính tả giúp chuyển đàm thoại thành văn bản'),
  (UUID(), @vid, 'Pin', 'Pin sạc Li-Po (1500 mAh)'),
  (UUID(), @vid, 'Cổng sạc', 'Cổng Type C'),
  (UUID(), @vid, 'Kích thước', '13.2 x 29.7 x 2 cm'),
  (UUID(), @vid, 'Khối lượng', '506.4g');

-- ===============================

-- PRODUCT: Bàn phím cơ không dây Logitech MX Mechanical Mini
SET @pid_72 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_72, @cid, @bid_Logitech, 'Bàn phím cơ không dây Logitech MX Mechanical Mini', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_72, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/g/a/gaming_8_23__1.png', TRUE),
  (UUID(), @pid_72, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/l/o/logitech_mechanical_mini_-1.png', FALSE),
  (UUID(), @pid_72, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/l/o/logitech_mechanical_mini_-3.png', FALSE),
  (UUID(), @pid_72, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/l/o/logitech_mechanical_mini_-14.png', FALSE),
  (UUID(), @pid_72, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/l/o/logitech_mechanical_mini_-_5.png', FALSE),
  (UUID(), @pid_72, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/f/r/frame_379_84__1.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_72, 'Đen', 3599000.0, 3490000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Loại bàn phím', 'Tenkeyless'),
  (UUID(), @vid, 'Số phím', '84 phím'),
  (UUID(), @vid, 'Tương thích', 'Windows 10, 11 trở lên; macOS 11 trở lên; ChromeOS; Linux; iPadOS 14 trở lên; iOS 14 trở lên; Android 9 trở lên'),
  (UUID(), @vid, 'Kết nối', 'Bluetooth, USB Receiver'),
  (UUID(), @vid, 'Khoảng cách kết nối', 'Lên đến 10m'),
  (UUID(), @vid, 'Đèn LED', 'LED đơn sắc'),
  (UUID(), @vid, 'Tiện ích', 'Có thể tùy chỉnh toàn bộ dãy phím Fn thành bất cứ chức năng nào'),
  (UUID(), @vid, 'Pin', 'Pin sạc Li-Po (1500 mAh)'),
  (UUID(), @vid, 'Cổng sạc', 'USB-C'),
  (UUID(), @vid, 'Kích thước', '31.26 x 13.12 x 2.61 cm'),
  (UUID(), @vid, 'Khối lượng', '612g');

-- ===============================

-- PRODUCT: Bàn phím gaming có dây Logitech G915 X Low Profile
SET @pid_73 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_73, @cid, @bid_Logitech, 'Bàn phím gaming có dây Logitech G915 X Low Profile', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_73, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/g/a/gaming_8_84_.png', TRUE),
  (UUID(), @pid_73, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/b/a/ban-phim-gaming-co-day-logitech-g915-x-low-profile-den_2_.png', FALSE),
  (UUID(), @pid_73, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/b/a/ban-phim-gaming-co-day-logitech-g915-x-low-profile-den_3_.png', FALSE),
  (UUID(), @pid_73, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/b/a/ban-phim-gaming-co-day-logitech-g915-x-low-profile-den_4_.png', FALSE),
  (UUID(), @pid_73, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/b/a/ban-phim-gaming-co-day-logitech-g915-x-low-profile-den_5_.png', FALSE),
  (UUID(), @pid_73, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/b/a/ban-phim-gaming-co-day-logitech-g915-x-low-profile-den_6_.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_73, 'Đen', 4690000.0, 3590000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Loại bàn phím', 'Full-size'),
  (UUID(), @vid, 'Số phím', '120 phím (Bao gồm cả phím chức năng)'),
  (UUID(), @vid, 'Tương thích', 'Windows 10 trở lên, macOS 12 trở lên'),
  (UUID(), @vid, 'Kết nối', 'Có dây với cổng USB-A sang USB-C'),
  (UUID(), @vid, 'Khoảng cách kết nối', '1.8 m'),
  (UUID(), @vid, 'Đèn LED', 'LED RGB LIGHTSYNC'),
  (UUID(), @vid, 'Tiện ích', 'Led có thể lập trình qua HUB G'),
  (UUID(), @vid, 'Pin', 'Không'),
  (UUID(), @vid, 'Cổng sạc', 'Không'),
  (UUID(), @vid, 'Kích thước', '47.5 x 15 x 2.26 cm'),
  (UUID(), @vid, 'Khối lượng', '1040g');

-- ===============================

-- PRODUCT: Bàn phím gaming không dây Logitech G715 TKL Lightspeed Rgb Linear
SET @pid_74 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_74, @cid, @bid_Logitech, 'Bàn phím gaming không dây Logitech G715 TKL Lightspeed Rgb Linear', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_74, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/g/a/gaming_8_83__1.png', TRUE),
  (UUID(), @pid_74, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/b/a/ban-phim-gaming-khong-day-logitech-g715-tkl-lightspeed-rgb-tactile_2__2.png', FALSE),
  (UUID(), @pid_74, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/b/a/ban-phim-gaming-khong-day-logitech-g715-tkl-lightspeed-rgb-tactile_3__2.png', FALSE),
  (UUID(), @pid_74, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/b/a/ban-phim-gaming-khong-day-logitech-g715-tkl-lightspeed-rgb-tactile_5__2.png', FALSE),
  (UUID(), @pid_74, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/b/a/ban-phim-gaming-khong-day-logitech-g715-tkl-lightspeed-rgb-tactile_4__2.png', FALSE),
  (UUID(), @pid_74, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/f/r/frame_379_-_2025-05-23t113021.905_1.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_74, 'Trắng', 4290000.0, 3790000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Loại bàn phím', 'Tenkeyless'),
  (UUID(), @vid, 'Số phím', '87 phím'),
  (UUID(), @vid, 'Tương thích', 'Chrome OS, Windows 10 trở lên, macOS 10.15 trở lên'),
  (UUID(), @vid, 'Kết nối', 'Bluetooth, USB Receiver'),
  (UUID(), @vid, 'Khoảng cách kết nối', '1.8 m'),
  (UUID(), @vid, 'Đèn LED', 'LED RGB LIGHTSYNC'),
  (UUID(), @vid, 'Tiện ích', 'Các phím switch cơ học RGB riêng'),
  (UUID(), @vid, 'Pin', 'Pin lithium polyme có thể sạc'),
  (UUID(), @vid, 'Cổng sạc', 'Cáp USB-A to C'),
  (UUID(), @vid, 'Kích thước', '37 x 15.7 x 3.72 cm'),
  (UUID(), @vid, 'Khối lượng', '976g');

-- ===============================

-- PRODUCT: Bàn phím gaming không dây Logitech G915 X Lightspeed TKL Low Profile
SET @pid_75 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_75, @cid, @bid_Logitech, 'Bàn phím gaming không dây Logitech G915 X Lightspeed TKL Low Profile', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_75, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/g/a/gaming_8_82_.png', TRUE),
  (UUID(), @pid_75, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/b/a/ban-phim-gaming-khong-day-logitech-g915-x-lightspeed-tkl-low-profile_2_.png', FALSE),
  (UUID(), @pid_75, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/b/a/ban-phim-gaming-khong-day-logitech-g915-x-lightspeed-tkl-low-profile_4_.png', FALSE),
  (UUID(), @pid_75, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/b/a/ban-phim-gaming-khong-day-logitech-g915-x-lightspeed-tkl-low-profile_5_.png', FALSE),
  (UUID(), @pid_75, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/b/a/ban-phim-gaming-khong-day-logitech-g915-x-lightspeed-tkl-low-profile_7_.png', FALSE),
  (UUID(), @pid_75, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/f/r/frame_379_-_2025-05-23t110638.531.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_75, 'Đen', 5290000.0, 4350000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Loại bàn phím', 'Tenkeyless'),
  (UUID(), @vid, 'Số phím', '96 phím (Bao gồm cả phím chức năng)'),
  (UUID(), @vid, 'Tương thích', 'Windows 10/11, MacOS, iOS/iPadOS, Chrome OS, Android 4.3 trở lên'),
  (UUID(), @vid, 'Kết nối', 'Wired USB-C, Bluetooth, Wireless 2.4GHz'),
  (UUID(), @vid, 'Khoảng cách kết nối', 'Lên đến 10m'),
  (UUID(), @vid, 'Đèn LED', 'LED RGB LIGHTSYNC'),
  (UUID(), @vid, 'Tiện ích', 'Led có thể lập trình qua HUB G'),
  (UUID(), @vid, 'Pin', 'Pin Polyme Lithium có thể sạc lại'),
  (UUID(), @vid, 'Cổng sạc', 'Cáp sạc dữ liệu USB-C'),
  (UUID(), @vid, 'Kích thước', '36.8 x 15 x 2.26 cm'),
  (UUID(), @vid, 'Khối lượng', '860g');

-- ===============================

-- === CATEGORY: Củ sạc ===
SET @cid = UUID();
INSERT INTO category (category_id, category_name) VALUES (@cid, 'Củ sạc');

-- BRAND: Ugreen
SET @bid_Ugreen = UUID();
INSERT INTO brand (brand_id, brand_name) VALUES (@bid_Ugreen, 'Ugreen');

-- PRODUCT: Củ sạc Ugreen Type C PD 20W Mini CD241
SET @pid_76 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_76, @cid, @bid_Ugreen, 'Củ sạc Ugreen Type C PD 20W Mini CD241', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_76, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/f/r/frame_1_7__2.png', TRUE),
  (UUID(), @pid_76, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/1/_/1_91.jpg', FALSE),
  (UUID(), @pid_76, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/u/cu-sac-nhanh-ugreen-type-c-pd-20w-cd241-mini.png', FALSE),
  (UUID(), @pid_76, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/u/cu-sac-nhanh-ugreen-type-c-pd-20w-cd241-mini_1_.png', FALSE),
  (UUID(), @pid_76, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/u/cu-sac-nhanh-ugreen-type-c-pd-20w-cd241-mini_3_.png', FALSE),
  (UUID(), @pid_76, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/u/cu-sac-nhanh-ugreen-type-c-pd-20w-cd241-mini_4_.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_76, 'Trắng', 260000.0, 210000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Công suất sạc', '20W'),
  (UUID(), @vid, 'Sử dụng tối đa', '1 thiết bị'),
  (UUID(), @vid, 'Đầu ra', 'USB-C'),
  (UUID(), @vid, 'Nguồn vào', '100-240V~50/60Hz 500mA'),
  (UUID(), @vid, 'Nguồn ra', '5.0V~3.0A, 9.0V~2.2A, 12.0V~1.67A, 3.3-5.9V~3.0A, 3.3-11.0V~1.8A'),
  (UUID(), @vid, 'Tiện ích', 'Sạc nhanh, Bảo vệ quá dòng, quá điện áp và ngắn mạch'),
  (UUID(), @vid, 'Công nghệ / Đạt chứng nhận', 'Công nghệ PD'),
  (UUID(), @vid, 'Kích thước', '25 x 12 x 4 cm'),
  (UUID(), @vid, 'Trọng lượng', '49.9g');

-- ===============================

-- PRODUCT: Củ sạc nhanh Ugreen GaN Nexode 30W CD319 90901
SET @pid_77 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_77, @cid, @bid_Ugreen, 'Củ sạc nhanh Ugreen GaN Nexode 30W CD319 90901', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_77, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/u/cu-sac-nhanh-ugreen-gan-nexode-30w-cd319-90901_1_.png', TRUE),
  (UUID(), @pid_77, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/a/2/a20b2fac416424f4478d89c59d1bd63d.png_720x720q80.jpg_.png', FALSE),
  (UUID(), @pid_77, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/u/cu-sac-nhanh-ugreen-gan-nexode-30w-cd319-90901_1.png', FALSE),
  (UUID(), @pid_77, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/u/cu-sac-nhanh-ugreen-gan-nexode-30w-cd319-90901_2_.png', FALSE),
  (UUID(), @pid_77, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/u/cu-sac-nhanh-ugreen-gan-nexode-30w-cd319-90901_3_.png', FALSE),
  (UUID(), @pid_77, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/u/cu-sac-nhanh-ugreen-gan-nexode-30w-cd319-90901_5_.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_77, 'Đen', 370000.0, 320000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Công suất sạc', '30W'),
  (UUID(), @vid, 'Sử dụng tối đa', '1 thiết bị'),
  (UUID(), @vid, 'Đầu ra', 'USB-C'),
  (UUID(), @vid, 'Nguồn vào', '100/240V, 50-60Hz, 800mA Max'),
  (UUID(), @vid, 'Nguồn ra', '5V/3A, 9V/3A, 12V/2.5A, 15V/2A, 20V/1.5A, 3.3-11V/2.7A'),
  (UUID(), @vid, 'Tiện ích', 'Sạc nhanh. Công nghệ GaN giúp cải thiện tốc độ và hiệu quả sạc. Bảo vệ các thiết bị của bạn khỏi bị đoản mạch, quá áp, quá nhiệt và quá dòng'),
  (UUID(), @vid, 'Công nghệ / Đạt chứng nhận', 'Công nghệ PD3.0/2.0, PPS, QC4.0/3.0/2.0, AFC, SCP, FCP'),
  (UUID(), @vid, 'Kích thước', '25 x 12 x 4 cm'),
  (UUID(), @vid, 'Trọng lượng', '248g');

-- ===============================

-- PRODUCT: Củ sạc Ugreen GaN 2C1A 45W (US) X527 65155B
SET @pid_78 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_78, @cid, @bid_Ugreen, 'Củ sạc Ugreen GaN 2C1A 45W (US) X527 65155B', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_78, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/f/r/frame_427320264_2_.png', TRUE),
  (UUID(), @pid_78, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/f/r/frame_3_9__4.png', FALSE),
  (UUID(), @pid_78, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/g/r/group_561_68__2.png', FALSE),
  (UUID(), @pid_78, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/g/r/group_561_70__2.png', FALSE),
  (UUID(), @pid_78, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/g/r/group_561_69__2.png', FALSE),
  (UUID(), @pid_78, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/g/r/group_561_72__2.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_78, 'Xám', 590000.0, 390000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Công suất sạc', '45W'),
  (UUID(), @vid, 'Sử dụng tối đa', '3 thiết bị'),
  (UUID(), @vid, 'Đầu ra', '2 x USB-C, 1 x USB-A'),
  (UUID(), @vid, 'Nguồn vào', '100-240V, 50/60Hz (US Plug)'),
  (UUID(), @vid, 'Nguồn ra', 'USB-C1/C2: 5V/3A, 9V/3A, 12V/3A, 15V/3A, 20V/2.25A tối đa 45W. USB-A: 5V/3A, 9V/2A, 12V/1,5A tối đa 22.5W'),
  (UUID(), @vid, 'Tiện ích', 'Sạc nhanh. Bảo vệ các thiết bị của bạn khỏi bị đoản mạch, quá áp, quá nhiệt và quá dòng'),
  (UUID(), @vid, 'Công nghệ / Đạt chứng nhận', 'Hỗ trợ: PD3.0, PPS, QC4+/4.0/3.0, FCP, AFC, 5V2.4A, BC1.2'),
  (UUID(), @vid, 'Kích thước', '4,3 x 4,7 x 6,7 cm'),
  (UUID(), @vid, 'Trọng lượng', '55g');

-- ===============================

-- PRODUCT: Sạc nhanh Ugreen Robot CD361 3 cổng USB-C và USB-A GaN 65W
SET @pid_79 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_79, @cid, @bid_Ugreen, 'Sạc nhanh Ugreen Robot CD361 3 cổng USB-C và USB-A GaN 65W', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_79, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/u/cu-sac-nhanh-ugreen-robot-3-cong-usb-c-to-usb-a-gan-65w-11570_1_.png', TRUE),
  (UUID(), @pid_79, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/u/cu-sac-nhanh-ugreen-robot-3-cong-usb-c-to-usb-a-gan-65w-11570-3.png', FALSE),
  (UUID(), @pid_79, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/u/cu-sac-nhanh-ugreen-robot-3-cong-usb-c-to-usb-a-gan-65w-11570-2.png', FALSE),
  (UUID(), @pid_79, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/u/cu-sac-nhanh-ugreen-robot-3-cong-usb-c-to-usb-a-gan-65w-11570-4.png', FALSE),
  (UUID(), @pid_79, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/u/cu-sac-nhanh-ugreen-robot-3-cong-usb-c-to-usb-a-gan-65w-11570-5.png', FALSE),
  (UUID(), @pid_79, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/u/cu-sac-nhanh-ugreen-robot-3-cong-usb-c-to-usb-a-gan-65w-11570-6.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_79, 'Đen', 900000.0, 490000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Công suất sạc', '65W'),
  (UUID(), @vid, 'Sử dụng tối đa', '3 thiết bị'),
  (UUID(), @vid, 'Đầu ra', 'USB-C/USB-A'),
  (UUID(), @vid, 'Nguồn vào', '100-240V~ 50/60Hz .8A Max'),
  (UUID(), @vid, 'Nguồn ra', 'USB-C1: 5.0V 3.0A/9.0V 3.0A/12.0V 3.0A/15.0V 3.0A/20.0V 3.25A/3.3-21.0V 3.0A 65.0W Max. USB-C2: 5.0V 3.0A/9.0V 3.0A/12.0V 2.5A/15.0V 2.0A/20.0V 1.5A/3.3-11.0V 2.7A 30.0W Max. USB-A: 5.0V 3.0A/9.0V 2.0A/12.0V 1.5A/10.0V 2.25A 22.5W Max'),
  (UUID(), @vid, 'Tiện ích', 'Công nghệ GaNFast. Mặt robot là màn hình LED hiển thị các biểu thức khác nhau về trạng thái sạc. Bảo vệ ngắn mạch, quá tải, nhiệt độ và quá điện áp. Phích cắm có thể gập lại'),
  (UUID(), @vid, 'Công nghệ / Đạt chứng nhận', 'Công nghệ PD 3.0, QC 4.0/3.0'),
  (UUID(), @vid, 'Kích thước', '4,3 x 4,7 x 6,7 cm'),
  (UUID(), @vid, 'Trọng lượng', '220g');

-- ===============================

-- PRODUCT: Củ sạc Ugreen GaN Nexode 3 cổng ( EU 2C 1A ) 65W CD244 10335
SET @pid_80 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_80, @cid, @bid_Ugreen, 'Củ sạc Ugreen GaN Nexode 3 cổng ( EU 2C 1A ) 65W CD244 10335', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_80, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/u/cu-sac-nhanh-ugreen-gan-nexode-3-cong-eu-65w-cd244-10335_6_.png', TRUE),
  (UUID(), @pid_80, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/u/cu-sac-nhanh-ugreen-gan-nexode-3-cong-eu-65w-cd244-10335_5_.png', FALSE),
  (UUID(), @pid_80, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/b/o/bo-sac-nhanh-65w-2c-1a-eu-gan-ugreen-cd244-10335.jpg', FALSE),
  (UUID(), @pid_80, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/b/o/bo-sac-nhanh-65w-2c-1a-eu-gan-ugreen-cd244-10335-2.jpg', FALSE),
  (UUID(), @pid_80, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/b/o/bo-sac-nhanh-65w-2c-1a-eu-gan-ugreen-cd244-10335-4.png', FALSE),
  (UUID(), @pid_80, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/u/cu-sac-nhanh-ugreen-gan-nexode-3-cong-eu-65w-cd244-10335_3_.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_80, 'Đen', 900000.0, 590000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Công suất sạc', '65W'),
  (UUID(), @vid, 'Sử dụng tối đa', '3 thiết bị'),
  (UUID(), @vid, 'Đầu ra', '2 x USB-C, 1 x USB-A'),
  (UUID(), @vid, 'Nguồn vào', '100 - 240V, 50/60 Hz 1.8A'),
  (UUID(), @vid, 'Nguồn ra', 'USB C1/C2:5V = 3A, 9V = 3A, 12V = 3A, 15V = 3A, 20V = 3.25A'),
  (UUID(), @vid, 'Tiện ích', 'Sạc nhanh. Công nghệ GaN II tiên tiến hiệu suất cao hơn, kích thước nhỏ hơn và nhiệt độ hoạt động thấp hơn'),
  (UUID(), @vid, 'Công nghệ / Đạt chứng nhận', 'Công nghệ PD 3.0, QC 4.0/3.0'),
  (UUID(), @vid, 'Kích thước', '25 x 12 x 4 cm'),
  (UUID(), @vid, 'Trọng lượng', '248g');

-- ===============================

-- PRODUCT: Sạc nhanh Ugreen X753 Nexode Pro 3 cổng GAN Ultra-Slim US 65W
SET @pid_81 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_81, @cid, @bid_Ugreen, 'Sạc nhanh Ugreen X753 Nexode Pro 3 cổng GAN Ultra-Slim US 65W', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_81, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/f/r/frame_515_9_.png', TRUE),
  (UUID(), @pid_81, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/g/r/group_495_62_.png', FALSE),
  (UUID(), @pid_81, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/g/r/group_495_63_.png', FALSE),
  (UUID(), @pid_81, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/g/r/group_495_61_.png', FALSE),
  (UUID(), @pid_81, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/g/r/group_495_60_.png', FALSE),
  (UUID(), @pid_81, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/f/r/frame_1_59__4.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_81, 'Đen', 900000.0, 690000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Công suất sạc', '65W'),
  (UUID(), @vid, 'Sử dụng tối đa', '3 thiết bị'),
  (UUID(), @vid, 'Đầu ra', '1 x USB-A, 2 x USB-C'),
  (UUID(), @vid, 'Nguồn vào', '100-240V~50/60Hz 1.8A tối đa'),
  (UUID(), @vid, 'Nguồn ra', 'USB-C1: 5.0Vx3.0A, 9.0Vx3.0A, 12.0Vx3.0A, 15.0Vx3.0A, 20.0Vx3.25A, 65.0W tối đa. USB-C2: 5.0Vx3.0A, 9.0Vx3.0A, 12.0Vx2.5A, 30.0W tối đa. USB-A: 5.0Vx3.0A, 9.0Vx2.0A, 12.0Vx1.5A, 10.0Vx2.25A, 22.5W tối đa'),
  (UUID(), @vid, 'Tiện ích', 'Sạc nhanh, Chống cháy nổ, Dùng được cho laptop'),
  (UUID(), @vid, 'Công nghệ / Đạt chứng nhận', 'Công nghệ vi chip GaN'),
  (UUID(), @vid, 'Kích thước', '84.5 x 46.8 x 14.5 mm'),
  (UUID(), @vid, 'Trọng lượng', '146g');

-- ===============================

-- BRAND: Baseus
SET @bid_Baseus = UUID();
INSERT INTO brand (brand_id, brand_name) VALUES (@bid_Baseus, 'Baseus');

-- PRODUCT: Củ sạc Baseus Speed Mini 20W 1 cổng
SET @pid_82 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_82, @cid, @bid_Baseus, 'Củ sạc Baseus Speed Mini 20W 1 cổng', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_82, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/f/r/frame_7.png', TRUE),
  (UUID(), @pid_82, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/u/cu-sac-nhanh-baseus-speed-mini-20w-1-cong-1.jpg', FALSE),
  (UUID(), @pid_82, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/u/cu-sac-nhanh-baseus-speed-mini-20w-1-cong-3.jpg', FALSE),
  (UUID(), @pid_82, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/u/cu-sac-nhanh-baseus-speed-mini-20w-1-cong-5.jpg', FALSE),
  (UUID(), @pid_82, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/u/cu-sac-nhanh-baseus-speed-mini-20w-1-cong-6.jpg', FALSE),
  (UUID(), @pid_82, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/u/cu-sac-nhanh-baseus-speed-mini-20w-1-cong-7.jpg', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_82, 'Đen', 390000.0, 220000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Công suất sạc', '20W'),
  (UUID(), @vid, 'Sử dụng tối đa', '1 thiết bị'),
  (UUID(), @vid, 'Đầu ra', 'USB-C'),
  (UUID(), @vid, 'Nguồn vào', '100V-240V, 50/60Hz, 800mA'),
  (UUID(), @vid, 'Nguồn ra', '5V-3A, 9V-2.22A, 12V-1.67A (20W Max)'),
  (UUID(), @vid, 'Tiện ích', 'Sạc nhanh. Đều chỉnh công suất, điện áp, dòng điện phù hợp với từng loại thiêt bị. Bảo vệ thông minh, kiểm soát quá dòng, quá áp, quá nhiệt, chống rò điện và ngắn mạch'),
  (UUID(), @vid, 'Công nghệ / Đạt chứng nhận', 'Công nghệ PD/ QC3.0, PPS'),
  (UUID(), @vid, 'Kích thước', '5 x 4.3 x 2.6 cm'),
  (UUID(), @vid, 'Trọng lượng', '59g');

-- ===============================

-- PRODUCT: Sạc Baseus GaN5S 1C 20W US
SET @pid_83 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_83, @cid, @bid_Baseus, 'Sạc Baseus GaN5S 1C 20W US', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_83, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/u/cu-sac-baseus-gane5s-1c-20w-us_1_.png', TRUE),
  (UUID(), @pid_83, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/u/cu-sac-baseus-gane5s-1c-20w-us_2_.png', FALSE),
  (UUID(), @pid_83, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/u/cu-sac-baseus-gane5s-1c-20w-us_4_.png', FALSE),
  (UUID(), @pid_83, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/u/cu-sac-baseus-gane5s-1c-20w-us_7_.png', FALSE),
  (UUID(), @pid_83, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/u/cu-sac-baseus-gane5s-1c-20w-us_5_.png', FALSE),
  (UUID(), @pid_83, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/u/cu-sac-baseus-gane5s-1c-20w-us_6_.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_83, 'Đen', 390000.0, 230000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Công suất sạc', '20W'),
  (UUID(), @vid, 'Sử dụng tối đa', '1 thiết bị'),
  (UUID(), @vid, 'Đầu ra', 'USB-C'),
  (UUID(), @vid, 'Nguồn vào', '100-240V, 50/60Hz, 0.8A'),
  (UUID(), @vid, 'Nguồn ra', '5V = 3A, 9V = 2.22A'),
  (UUID(), @vid, 'Tiện ích', 'Sạc nhanh. Công nghệ GaN (Gallium Nitride) giúp củ sạc không chỉ nhỏ gọn mà còn mạnh mẽ hơn. Công nghệ bảo vệ đa lớp: bảo vệ quá dòng, quá áp, ngắn mạch và quá nhiệt'),
  (UUID(), @vid, 'Công nghệ / Đạt chứng nhận', 'Công nghệ PD và Quick Charge'),
  (UUID(), @vid, 'Kích thước', '3.11 x 3.11 x 2.99 cm'),
  (UUID(), @vid, 'Trọng lượng', '36g');

-- ===============================

-- PRODUCT: Sạc Baseus Cube 1C 20W chân CN gập (Kèm cáp C-L 20W dài 1M)
SET @pid_84 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_84, @cid, @bid_Baseus, 'Sạc Baseus Cube 1C 20W chân CN gập (Kèm cáp C-L 20W dài 1M)', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_84, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/f/r/frame_515_7_.png', TRUE),
  (UUID(), @pid_84, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/g/r/group_563_87__2.png', FALSE),
  (UUID(), @pid_84, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/g/r/group_563_86__2.png', FALSE),
  (UUID(), @pid_84, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/g/r/group_563_88__2.png', FALSE),
  (UUID(), @pid_84, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/g/r/group_563_90__1.png', FALSE),
  (UUID(), @pid_84, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/g/r/group_563_89__2.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_84, 'Trắng', 490000.0, 250000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Công suất sạc', '20W'),
  (UUID(), @vid, 'Sử dụng tối đa', '1 thiết bị'),
  (UUID(), @vid, 'Đầu ra', 'USB-C'),
  (UUID(), @vid, 'Nguồn vào', '100-240V, 50/60Hz, 0.8A'),
  (UUID(), @vid, 'Nguồn ra', '5V-3A, 9V-2A, 9V-2.22A, 12V-1.67A'),
  (UUID(), @vid, 'Tiện ích', 'Sạc nhanh. Chân gập. Kèm dây sạc Type C - Lightning'),
  (UUID(), @vid, 'Công nghệ / Đạt chứng nhận', 'Công nghệ PD và Quick Charge'),
  (UUID(), @vid, 'Kích thước', '33 x 32 x 34 mm'),
  (UUID(), @vid, 'Trọng lượng', '40.7g');

-- ===============================

-- PRODUCT: Củ sạc Baseus Super Si IC 30W
SET @pid_85 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_85, @cid, @bid_Baseus, 'Củ sạc Baseus Super Si IC 30W', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_85, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/g/r/group_3_5__1.png', TRUE),
  (UUID(), @pid_85, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/_/1/_1__2.png', FALSE),
  (UUID(), @pid_85, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/_/4/_4_.png', FALSE),
  (UUID(), @pid_85, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/_/2/_2__3.png', FALSE),
  (UUID(), @pid_85, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/_/8/_8_.png', FALSE),
  (UUID(), @pid_85, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/_/1/_11_.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_85, 'Đen', 400000.0, 290000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Công suất sạc', '30W'),
  (UUID(), @vid, 'Sử dụng tối đa', '1 thiết bị'),
  (UUID(), @vid, 'Đầu ra', 'USB-C'),
  (UUID(), @vid, 'Nguồn vào', 'AC 100-240V, 50/60Hz, 0.6A'),
  (UUID(), @vid, 'Nguồn ra', '5V=3A, 9V=3A, 15V=2A, 20V=1.5A'),
  (UUID(), @vid, 'Tiện ích', 'Sạc nhanh. Tự động ngắt sạc khi sạc đầy. Điều chỉnh cấu hình điện áp sạc ngỏ ra tối ưu cho từng thiết bị'),
  (UUID(), @vid, 'Công nghệ / Đạt chứng nhận', 'Công nghệ Power delivery và Quick charge 3.0'),
  (UUID(), @vid, 'Kích thước', '33 x 32 x 34 mm'),
  (UUID(), @vid, 'Trọng lượng', '40g');

-- ===============================

-- PRODUCT: Củ sạc siêu nhanh Baseus Gan3 30W
SET @pid_86 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_86, @cid, @bid_Baseus, 'Củ sạc siêu nhanh Baseus Gan3 30W', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_86, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/u/cu-sac-nhanh-baseus-gan3-30w_1.png', TRUE),
  (UUID(), @pid_86, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/s/_/s_vj_5_.jpg', FALSE),
  (UUID(), @pid_86, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/s/_/s_vj_4_.jpg', FALSE),
  (UUID(), @pid_86, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/s/_/s_vj_3_.jpg', FALSE),
  (UUID(), @pid_86, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/s/_/s_vj_2_.jpg', FALSE),
  (UUID(), @pid_86, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/s/_/s_vj.jpg', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_86, 'Đen', 450000.0, 330000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Công suất sạc', '30W'),
  (UUID(), @vid, 'Sử dụng tối đa', '1 thiết bị'),
  (UUID(), @vid, 'Đầu ra', 'USB-C'),
  (UUID(), @vid, 'Nguồn vào', '100-240V, 50/60Hz, 0.8A'),
  (UUID(), @vid, 'Nguồn ra', '5V=3A, 9V=3A, 12V=2.5A, 15V=2A, 20V=1.5A'),
  (UUID(), @vid, 'Tiện ích', 'Sạc nhanh. Chân sạc có thể gập lại. Công nghệ GaN thế hệ thứ 3 giúp hoạt ổn định và có mức tỏa nhiệt thấp hơn'),
  (UUID(), @vid, 'Công nghệ / Đạt chứng nhận', 'Công nghệ Power delivery và Quick charge 3.0'),
  (UUID(), @vid, 'Kích thước', '3.84 x 3.05 x 2.9 cm'),
  (UUID(), @vid, 'Trọng lượng', '43g');

-- ===============================

-- === CATEGORY: Cáp sạc ===
SET @cid = UUID();
INSERT INTO category (category_id, category_name) VALUES (@cid, 'Cáp sạc');

-- PRODUCT: Cáp dữ liệu Ugreen Usb sang Type-C truyền dữ liệu 1M 60116
SET @pid_87 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_87, @cid, @bid_Ugreen, 'Cáp dữ liệu Ugreen Usb sang Type-C truyền dữ liệu 1M 60116', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_87, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/a/cap-du-lieu-ugreen-usb-sang-type-c-60116-1m_1__1.png', TRUE),
  (UUID(), @pid_87, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/a/cap-du-lieu-ugreen-usb-sang-type-c-60116-1m_1_.png', FALSE),
  (UUID(), @pid_87, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/g/r/group_563_11__3.png', FALSE),
  (UUID(), @pid_87, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/g/r/group_563_10__3.png', FALSE),
  (UUID(), @pid_87, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/a/cap-du-lieu-ugreen-usb-sang-type-c-60116-1m_3_.png', FALSE),
  (UUID(), @pid_87, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/a/cap-du-lieu-ugreen-usb-sang-type-c-60116-1m_4_.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_87, 'Đen', 55000.0, 50000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Công suất sạc', '60W'),
  (UUID(), @vid, 'Đầu vào', 'USB'),
  (UUID(), @vid, 'Đầu ra', 'USB-C'),
  (UUID(), @vid, 'Nguồn ra', '5V/3A, 9V/2A, 12V/1.5A'),
  (UUID(), @vid, 'Tiện ích', 'Sạc nhanh Quick Charge'),
  (UUID(), @vid, 'Công nghệ / Đạt chứng nhận', 'QC 3.0, AFC, FCP'),
  (UUID(), @vid, 'Chiều dài dây', '1m'),
  (UUID(), @vid, 'Chất liệu', 'Nhựa PVC'),
  (UUID(), @vid, 'Trọng lượng', '100g');

-- ===============================

-- PRODUCT: Cáp Ugreen USB-A to Type-C 1M US288
SET @pid_88 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_88, @cid, @bid_Ugreen, 'Cáp Ugreen USB-A to Type-C 1M US288', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_88, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/a/cap-usb-a-to-type-c-ugreen-us288-1m.1.png', TRUE),
  (UUID(), @pid_88, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/6/_/6_35_3.jpg', FALSE),
  (UUID(), @pid_88, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/a/cap-usb-a-to-type-c-ugreen-us288-1m_1_.png', FALSE),
  (UUID(), @pid_88, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/a/cap-usb-a-to-type-c-ugreen-us288-1m_3_.png', FALSE),
  (UUID(), @pid_88, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/a/cap-usb-a-to-type-c-ugreen-us288-1m_4_.png', FALSE),
  (UUID(), @pid_88, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/a/cap-usb-a-to-type-c-ugreen-us288-1m_5_.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_88, 'Đen', 100000.0, 70000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Công suất sạc', '60W'),
  (UUID(), @vid, 'Đầu vào', 'USB-A'),
  (UUID(), @vid, 'Đầu ra', 'USB-C'),
  (UUID(), @vid, 'Nguồn ra', '5V/3A'),
  (UUID(), @vid, 'Tiện ích', 'Truyền tải dữ liệu với tốc độ lên đến 480Mbps'),
  (UUID(), @vid, 'Công nghệ / Đạt chứng nhận', 'QC 3.0, AFC, FCP'),
  (UUID(), @vid, 'Chiều dài dây', '1m'),
  (UUID(), @vid, 'Chất liệu', 'Vỏ TPE + Lớp bện nylon'),
  (UUID(), @vid, 'Trọng lượng', '37g');

-- ===============================

-- PRODUCT: Cáp Ugreen Type-C to Type-C 60W 1M US286
SET @pid_89 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_89, @cid, @bid_Ugreen, 'Cáp Ugreen Type-C to Type-C 60W 1M US286', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_89, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/a/cap-type-c-to-type-c-ugreen-us286-60w-1m.png', TRUE),
  (UUID(), @pid_89, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/a/cap-sac-usb-type-c-dai-1m-chinh-hang-ugreen-50997-cao-cap_6057.jpg', FALSE),
  (UUID(), @pid_89, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/d/o/download_18.png', FALSE),
  (UUID(), @pid_89, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/d/o/download-_1__2_2.jpg', FALSE),
  (UUID(), @pid_89, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/a/cap-type-c-to-type-c-ugreen-us286-60w-1m_1_.png', FALSE),
  (UUID(), @pid_89, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/a/cap-type-c-to-type-c-ugreen-us286-60w-1m_5_.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_89, 'Đen', 130000.0, 90000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Công suất sạc', '60W'),
  (UUID(), @vid, 'Đầu vào', 'Type-C'),
  (UUID(), @vid, 'Đầu ra', 'Type-C'),
  (UUID(), @vid, 'Nguồn ra', '3A'),
  (UUID(), @vid, 'Tiện ích', 'Hỗ trợ sạc nhanh, Tốc độ truyền tải dữ liệu lên đến 480Mbps'),
  (UUID(), @vid, 'Công nghệ / Đạt chứng nhận', 'PD3.0/QC4.0/FCP'),
  (UUID(), @vid, 'Chiều dài dây', '1m'),
  (UUID(), @vid, 'Chất liệu', 'PVC'),
  (UUID(), @vid, 'Trọng lượng', '100g');

-- ===============================

-- PRODUCT: Cáp Ugreen Type-C to Type-C Silicone US563 15283 60W dài 1m
SET @pid_90 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_90, @cid, @bid_Ugreen, 'Cáp Ugreen Type-C to Type-C Silicone US563 15283 60W dài 1m', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_90, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/f/r/frame_1_40__1_5.png', TRUE),
  (UUID(), @pid_90, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/a/cap-type-c-to-type-c-ugreen-us563-15283-100w-1m_2_.png', FALSE),
  (UUID(), @pid_90, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/a/cap-type-c-to-type-c-ugreen-us563-15283-100w-1m_4_.png', FALSE),
  (UUID(), @pid_90, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/f/r/frame_469_2.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_90, 'Đen', 220000.0, 1800000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Công suất sạc', '60W'),
  (UUID(), @vid, 'Đầu vào', 'Type-C'),
  (UUID(), @vid, 'Đầu ra', 'Type-C'),
  (UUID(), @vid, 'Nguồn ra', '3A'),
  (UUID(), @vid, 'Tiện ích', 'Hỗ trợ sạc nhanh, Tốc độ truyền tải dữ liệu lên đến 480Mbps'),
  (UUID(), @vid, 'Công nghệ / Đạt chứng nhận', 'QC 3.0, AFC, FCP'),
  (UUID(), @vid, 'Chiều dài dây', '1m'),
  (UUID(), @vid, 'Chất liệu', 'Silicon'),
  (UUID(), @vid, 'Trọng lượng', '37g');

-- ===============================

-- PRODUCT: Cáp Type-C to Lightning Ugreen MFI US304 1m
SET @pid_91 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_91, @cid, @bid_Ugreen, 'Cáp Type-C to Lightning Ugreen MFI US304 1m', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_91, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/a/cap-type-c-to-lightning-ugreen-mfi-us304-1m_1_.png', TRUE),
  (UUID(), @pid_91, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/u/r/urgreen1.jpg', FALSE),
  (UUID(), @pid_91, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/u/r/urgreen.jpg', FALSE),
  (UUID(), @pid_91, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/a/cap-type-c-to-lightning-ugreen-mfi-us304-1m_2_.png', FALSE),
  (UUID(), @pid_91, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/a/cap-type-c-to-lightning-ugreen-mfi-us304-1m_4_.png', FALSE),
  (UUID(), @pid_91, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/a/cap-type-c-to-lightning-ugreen-mfi-us304-1m_5_.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_91, 'Bạc', 360000.0, 280000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Công suất sạc', '18W'),
  (UUID(), @vid, 'Đầu vào', 'USB-C'),
  (UUID(), @vid, 'Đầu ra', 'Lightning'),
  (UUID(), @vid, 'Nguồn ra', '5V - 2.4A'),
  (UUID(), @vid, 'Tiện ích', 'Tốc độ truyền dữ liệu 480Mbps, Có khả năng chống uốn cong'),
  (UUID(), @vid, 'Công nghệ / Đạt chứng nhận', 'Công nghệ PD, Đat chuẩn MFi'),
  (UUID(), @vid, 'Chiều dài dây', '1m'),
  (UUID(), @vid, 'Chất liệu', 'Vỏ TPE + Lớp bện nylon'),
  (UUID(), @vid, 'Trọng lượng', '100g');

-- ===============================

-- PRODUCT: Cáp Baseus Superior Series USB-A to Micro dài 1m
SET @pid_92 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_92, @cid, @bid_Baseus, 'Cáp Baseus Superior Series USB-A to Micro dài 1m', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_92, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/a/cap-usb-a-to-micro-baseus-superior-series-1m.png', TRUE),
  (UUID(), @pid_92, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/a/cap-usb-a-to-micro-baseus-superior-series-1m_2_.png', FALSE),
  (UUID(), @pid_92, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/a/cap-usb-a-to-micro-baseus-superior-series-1m_4_.png', FALSE),
  (UUID(), @pid_92, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/a/cap-usb-a-to-micro-baseus-superior-series-1m_5_.png', FALSE),
  (UUID(), @pid_92, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/a/cap-usb-a-to-micro-baseus-superior-series-1m_7_.png', FALSE),
  (UUID(), @pid_92, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/a/cap-usb-a-to-micro-baseus-superior-series-1m_6_.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_92, 'Đen', 99000.0, 50000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Công suất sạc', '60W'),
  (UUID(), @vid, 'Đầu vào', 'USB-A'),
  (UUID(), @vid, 'Đầu ra', 'Micro USB'),
  (UUID(), @vid, 'Nguồn ra', '2A'),
  (UUID(), @vid, 'Tiện ích', 'Tốc độ truyền tải dữ liệu 480Mbps, Thiết kế chống gảy đầu cáp'),
  (UUID(), @vid, 'Công nghệ / Đạt chứng nhận', 'Hỗ trợ Quick charge 2.0/ QC 3.0'),
  (UUID(), @vid, 'Chiều dài dây', '1m'),
  (UUID(), @vid, 'Chất liệu', 'ABS + TPE'),
  (UUID(), @vid, 'Trọng lượng', '100g');

-- ===============================

-- PRODUCT: Cáp Baseus Dura Series USB-A To C 60w Dài 1m
SET @pid_93 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_93, @cid, @bid_Baseus, 'Cáp Baseus Dura Series USB-A To C 60w Dài 1m', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_93, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/a/cap-usb-a-yo-type-c-baseus-dura-series-60w-1m.png', TRUE),
  (UUID(), @pid_93, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/f/r/frame_1_57__3.png', FALSE),
  (UUID(), @pid_93, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/g/r/group_563_63__1.png', FALSE),
  (UUID(), @pid_93, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/g/r/group_563_64__1.png', FALSE),
  (UUID(), @pid_93, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/g/r/group_563_67__1.png', FALSE),
  (UUID(), @pid_93, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/g/r/group_563_66__1.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_93, 'Đen', 120000.0, 80000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Công suất sạc', '60W'),
  (UUID(), @vid, 'Đầu vào', 'USB-A'),
  (UUID(), @vid, 'Đầu ra', 'Type-C'),
  (UUID(), @vid, 'Nguồn ra', '5V/3A'),
  (UUID(), @vid, 'Tiện ích', 'Hỗ trợ sạc nhanh, Tốc độ truyền tải dữ liệu lên đến 480Mbps'),
  (UUID(), @vid, 'Công nghệ / Đạt chứng nhận', 'PD3.0/QC4.0/FCP'),
  (UUID(), @vid, 'Chiều dài dây', '1m'),
  (UUID(), @vid, 'Chất liệu', 'Hợp kim nhôm đúc + Nylon'),
  (UUID(), @vid, 'Trọng lượng', '37g');

-- ===============================

-- PRODUCT: Cáp Lightning Baseus Dynamic 1m
SET @pid_94 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_94, @cid, @bid_Baseus, 'Cáp Lightning Baseus Dynamic 1m', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_94, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/f/r/frame_2_18_.png', TRUE),
  (UUID(), @pid_94, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/1/_/1_70_5.jpg', FALSE),
  (UUID(), @pid_94, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/0/3/03_2.jpg', FALSE),
  (UUID(), @pid_94, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/0/5/05_1_1.jpg', FALSE),
  (UUID(), @pid_94, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/0/2/02_1_2.jpg', FALSE),
  (UUID(), @pid_94, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/0/4/04_1_2.jpg', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_94, 'Trắng', 130000.0, 90000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Công suất sạc', '60W'),
  (UUID(), @vid, 'Đầu vào', 'USB-A'),
  (UUID(), @vid, 'Đầu ra', 'Lightning'),
  (UUID(), @vid, 'Nguồn ra', '5V/3A'),
  (UUID(), @vid, 'Tiện ích', 'Tốc độ truyền 480Mbps, Trang bị chip quản lý nguồn giúp kiểm soát ổn định'),
  (UUID(), @vid, 'Công nghệ / Đạt chứng nhận', 'PD3.0/QC4.0/FCP'),
  (UUID(), @vid, 'Chiều dài dây', '1m'),
  (UUID(), @vid, 'Chất liệu', 'Chất liệu ABS + Dây vải dù siêu bền'),
  (UUID(), @vid, 'Trọng lượng', '37g');

-- ===============================

-- PRODUCT: Cáp sạc nhanh Baseus Cafule PD 2.0 100W Type-C to Type-C (20V 5A) 2M
SET @pid_95 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_95, @cid, @bid_Baseus, 'Cáp sạc nhanh Baseus Cafule PD 2.0 100W Type-C to Type-C (20V 5A) 2M', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_95, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/a/cap-sac-nhanh-baseus-cafule-pd-2-0-100w-type-c-to-type-c-20v-5a-2m.1_7_.png', TRUE),
  (UUID(), @pid_95, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/a/cap-sac-nhanh-baseus-cafule-pd-2-0-100w-type-c-to-type-c-20v-5a-2m-2.png', FALSE),
  (UUID(), @pid_95, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/a/cap-sac-nhanh-baseus-cafule-pd-2-0-100w-type-c-to-type-c-20v-5a-2m-3.png', FALSE),
  (UUID(), @pid_95, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/a/cap-sac-nhanh-baseus-cafule-pd-2-0-100w-type-c-to-type-c-20v-5a-2m-4.png', FALSE),
  (UUID(), @pid_95, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/a/cap-sac-nhanh-baseus-cafule-pd-2-0-100w-type-c-to-type-c-20v-5a-2m-6.png', FALSE),
  (UUID(), @pid_95, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/a/cap-sac-nhanh-baseus-cafule-pd-2-0-100w-type-c-to-type-c-20v-5a-2m-7.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_95, 'Đen', 160000.0, 110000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Công suất sạc', '100W'),
  (UUID(), @vid, 'Đầu vào', 'Type-C'),
  (UUID(), @vid, 'Đầu ra', 'Type-C'),
  (UUID(), @vid, 'Nguồn ra', '20V/5A'),
  (UUID(), @vid, 'Tiện ích', 'Hỗ trợ sạc nhanh, Tốc độ truyền tải dữ liệu lên đến 480Mbps'),
  (UUID(), @vid, 'Công nghệ / Đạt chứng nhận', 'Power Delivery / QC 3.0'),
  (UUID(), @vid, 'Chiều dài dây', '2m'),
  (UUID(), @vid, 'Chất liệu', 'Hợp kim nhôm + TPE + Dây bện mật độ cao'),
  (UUID(), @vid, 'Trọng lượng', '37g');

-- ===============================

-- PRODUCT: Cáp Lightning Baseus Dynamic 2m
SET @pid_96 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_96, @cid, @bid_Baseus, 'Cáp Lightning Baseus Dynamic 2m', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_96, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/a/cap-usb-a-to-lightning-baseus-dynamic-2m.png', TRUE),
  (UUID(), @pid_96, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/a/cap-usb-a-to-lightning-baseus-dynamic-2m.png', FALSE),
  (UUID(), @pid_96, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/9/_/9_9_38.jpg', FALSE),
  (UUID(), @pid_96, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/1/1/11_4_41.jpg', FALSE),
  (UUID(), @pid_96, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/1/0/10_8_33.jpg', FALSE),
  (UUID(), @pid_96, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/1/2/12_5_26.jpg', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_96, 'Xanh dương', 190000.0, 130000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Công suất sạc', '60W'),
  (UUID(), @vid, 'Đầu vào', 'USB-A'),
  (UUID(), @vid, 'Đầu ra', 'Lightning'),
  (UUID(), @vid, 'Nguồn ra', '2.4A'),
  (UUID(), @vid, 'Tiện ích', 'Tốc độ truyền tai dữ liệu lên đến 480mbps, Chip thông minh bảo vệ an toàn thiết bị'),
  (UUID(), @vid, 'Công nghệ / Đạt chứng nhận', 'PD3.0/QC4.0/FCP'),
  (UUID(), @vid, 'Chiều dài dây', '2m'),
  (UUID(), @vid, 'Chất liệu', 'ABS, vải dù'),
  (UUID(), @vid, 'Trọng lượng', '37g');

-- ===============================

-- PRODUCT: Cáp Baseus Superior 2 USB4 Full-Function Type-C to Type-C 240W 1.8m
SET @pid_97 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_97, @cid, @bid_Baseus, 'Cáp Baseus Superior 2 USB4 Full-Function Type-C to Type-C 240W 1.8m', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_97, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/a/cap-type-c-to-type-c-baseus-superior-2-usb-4-240w-1-8m_1_.png', TRUE),
  (UUID(), @pid_97, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/a/cap-type-c-to-type-c-baseus-superior-2-usb-4-240w-1-8m_3_.png', FALSE),
  (UUID(), @pid_97, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/a/cap-type-c-to-type-c-baseus-superior-2-usb-4-240w-1-8m_4_.png', FALSE),
  (UUID(), @pid_97, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/a/cap-type-c-to-type-c-baseus-superior-2-usb-4-240w-1-8m_5_.png', FALSE),
  (UUID(), @pid_97, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/a/cap-type-c-to-type-c-baseus-superior-2-usb-4-240w-1-8m_6_.png', FALSE),
  (UUID(), @pid_97, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/a/cap-type-c-to-type-c-baseus-superior-2-usb-4-240w-1-8m.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_97, 'Trắng', 490000.0, 390000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Công suất sạc', '240W'),
  (UUID(), @vid, 'Đầu vào', 'Type-C'),
  (UUID(), @vid, 'Đầu ra', 'Type-C'),
  (UUID(), @vid, 'Nguồn ra', '20V/5A'),
  (UUID(), @vid, 'Tiện ích', 'Sạc nhanh, Tốc độ truyền tải dữ liệu 40Gbps'),
  (UUID(), @vid, 'Công nghệ / Đạt chứng nhận', 'Hỗ trợ Quick charge 2.0/ QC 3.0'),
  (UUID(), @vid, 'Chiều dài dây', '1.8m'),
  (UUID(), @vid, 'Chất liệu', 'Nhựa PC + TPE'),
  (UUID(), @vid, 'Trọng lượng', '49.3g');

-- ===============================

-- PRODUCT: Cáp Baseus thu gọn Type-C to Type-C 100W dài 1.5m
SET @pid_98 = UUID();
INSERT INTO product (product_id, category_id, brand_id, product_name, warranty_months, product_status) VALUES (@pid_98, @cid, @bid_Baseus, 'Cáp Baseus thu gọn Type-C to Type-C 100W dài 1.5m', 24, 'ACTIVE');
INSERT INTO image (image_id, product_id, image_url, is_main) VALUES
  (UUID(), @pid_98, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:358:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/a/cap-type-c-to-type-c-baseus-100w-1-5m_1_.png', TRUE),
  (UUID(), @pid_98, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/a/cap-type-c-to-type-c-baseus-100w-1-5m_3_.png', FALSE),
  (UUID(), @pid_98, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/a/cap-type-c-to-type-c-baseus-100w-1-5m_4_.png', FALSE),
  (UUID(), @pid_98, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/a/cap-type-c-to-type-c-baseus-100w-1-5m_6_.png', FALSE),
  (UUID(), @pid_98, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/a/cap-type-c-to-type-c-baseus-100w-1-5m_5_.png', FALSE),
  (UUID(), @pid_98, 'https://cdn2.cellphones.com.vn/insecure/rs:fill:0:358/q:90/plain/https://cellphones.com.vn/media/catalog/product/c/a/cap-type-c-to-type-c-baseus-100w-1-5m_7_.png', FALSE);
-- VARIANT
SET @vid = UUID();
INSERT INTO product_variant (product_variant_id, product_id, color, original_price, promotional_price, stock, is_default) VALUES (@vid, @pid_98, 'Đen', 360000.0, 300000.0, 20, TRUE);
INSERT INTO product_spec (product_spec_id, product_variant_id, spec_key, spec_value) VALUES
  (UUID(), @vid, 'Công suất sạc', '100W'),
  (UUID(), @vid, 'Đầu vào', 'USB-C'),
  (UUID(), @vid, 'Đầu ra', 'USB-C'),
  (UUID(), @vid, 'Nguồn ra', '20V/5A'),
  (UUID(), @vid, 'Tiện ích', 'Hỗ trợ sạc nhanh, Tốc độ truyền tải dữ liệu lên đến 480Mbps, Dây có thể kéo rút gọn lại chống rối'),
  (UUID(), @vid, 'Công nghệ / Đạt chứng nhận', 'Hỗ trợ Quick charge 2.0/ QC 3.0'),
  (UUID(), @vid, 'Chiều dài dây', '1.5m'),
  (UUID(), @vid, 'Chất liệu', 'Nhựa PC + TPE'),
  (UUID(), @vid, 'Trọng lượng', '100g');

-- ===============================

-- DISCOUNT
INSERT INTO discount (discount_id, code, description, discount_percent, min_order_amount, max_discount_amount, quantity, start_date, end_date, is_active)
VALUES
(UUID(), 'BIGSALE', 'Giảm 30% giá trị đơn hàng', 10, 0, 500000, 10, '2025-12-01', '2025-12-31', TRUE),
(UUID(), 'LTECH', 'Giảm 10% giá trị đơn hàng', 10, 0, 500000, 200, '2025-12-01', '2026-12-31', TRUE),
(UUID(), 'SALE10', 'Giảm 10% giá trị đơn hàng', 10, 0, 500000, 100, '2025-01-01', '2025-12-31', TRUE),
(UUID(), 'SALE20', 'Giảm 20% giá trị đơn hàng', 20, 100000, 1000000, 50, '2025-01-01', '2025-12-30', TRUE),
(UUID(), 'SALE50', 'Giảm 50% giá trị đơn hàng', 50, 0, 100000, 20, '2025-03-01', '2025-12-05', TRUE),
(UUID(), 'SALE30', 'Giảm 30% giá trị đơn hàng', 30, 0, 2, 20, '2025-03-01', '2025-12-05', TRUE);

TRUNCATE TABLE discount;