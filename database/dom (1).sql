-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 15, 2017 at 10:17 AM
-- Server version: 5.7.20-0ubuntu0.16.04.1
-- PHP Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dom`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `footer` tinyint(1) DEFAULT NULL,
  `slider` tinyint(1) DEFAULT NULL,
  `top` tinyint(1) DEFAULT NULL,
  `left` tinyint(1) DEFAULT NULL,
  `right` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `name`, `title`, `link`, `status`, `footer`, `slider`, `top`, `left`, `right`, `created_at`, `updated_at`) VALUES
(1, '1.PNG', 'Dắt xe bá đạo', 'http://shop-lar2.dev/', 1, 0, 0, 0, 0, 0, '2017-04-03 07:23:07', '2017-04-03 07:23:07');

-- --------------------------------------------------------

--
-- Table structure for table `cates`
--

CREATE TABLE `cates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(3) NOT NULL DEFAULT '0',
  `status` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `top` int(11) DEFAULT NULL,
  `home` int(11) DEFAULT NULL,
  `footer` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `keywords` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cates`
--

INSERT INTO `cates` (`id`, `name`, `alias`, `order`, `status`, `type`, `top`, `home`, `footer`, `parent_id`, `keywords`, `description`, `avatar`, `content`, `created_at`, `updated_at`) VALUES
(1, '                                                  Giày, dép cao gót nữ                                                                                                ', 'giay-dep-cao-got-nu', 0, 1, 1, 1, 1, 1, 0, 'Giày, dép cao gót nữ, Giày dép, giay, dep cao got nu, giay dep, Giày, dép cao gót nữ gia re, Giày, dép cao gót nữ sieu khuyen mai, Giày cao gót bít mũi, Giày cao gót hở mũi, Giày cao gót hở gót, Giày cao gót hở eo, Giày sandal cao gót, Giày Mules cao gót, Dép cao gót, guốc', 'Giày, dép cao gót nữ: Giày cao gót bít mũi, Giày cao gót hở mũi, Giày cao gót hở gót, Giày cao gót hở eo, Giày sandal cao gót, Giày Mules cao gót, Dép cao gót, guốc, đa dạng, giá cực tốt, siêu khuyến mãi, vận chuyển toàn quốc miễn phí. Mua ngay!', '', '', '2017-12-14 03:43:06', '2017-12-14 03:43:06'),
(2, 'Giày cao gót bít mũi', 'giay-cao-got-bit-mui', 0, 1, 1, 1, 1, 1, 1, 'giày cao gót, giày cao gót nữ, giay cao got, giay cao got nu', 'Mua giày cao gót 2017 ✅ Đẹp, chất lượng cao ✅ Giá rẻ hơn tại Sendo.vn ✅ 999✚ mẫu mới ✅ Giảm giá đến 50%✚✚ ✅ Hàng hiệu cao cấp.', '', '', '2017-12-14 03:43:06', '2017-12-14 03:43:06'),
(3, 'Giày cao gót hở mũi', 'giay-cao-got-ho-mui', 0, 1, 1, 1, 1, 1, 1, 'Giày cao gót hở mũi, Giày, dép cao gót nữ, giay cao got ho mui, giay, dep cao got nu, Giày cao gót hở mũi gia re, Giày cao gót hở mũi sieu khuyen mai', 'Giày cao gót hở mũi đa dạng, giá cực tốt, siêu khuyến mãi, vận chuyển toàn quốc miễn phí. Mua ngay!', '', '', '2017-12-14 03:43:07', '2017-12-14 03:43:07'),
(4, 'Giày cao gót hở gót', 'giay-cao-got-ho-got', 0, 1, 1, 1, 1, 1, 1, 'Giày cao gót hở gót, Giày, dép cao gót nữ, giay cao got ho got, giay, dep cao got nu, Giày cao gót hở gót gia re, Giày cao gót hở gót sieu khuyen mai', 'Giày cao gót hở gót đa dạng, giá cực tốt, siêu khuyến mãi, vận chuyển toàn quốc miễn phí. Mua ngay!', '', '', '2017-12-14 03:43:08', '2017-12-14 03:43:08'),
(5, 'Giày cao gót hở eo', 'giay-cao-got-ho-eo', 0, 1, 1, 1, 1, 1, 1, 'Giày cao gót hở eo, Giày, dép cao gót nữ, giay cao got ho eo, giay, dep cao got nu, Giày cao gót hở eo gia re, Giày cao gót hở eo sieu khuyen mai', 'Giày cao gót hở eo đa dạng, giá cực tốt, siêu khuyến mãi, vận chuyển toàn quốc miễn phí. Mua ngay!', '', '', '2017-12-14 03:43:09', '2017-12-14 03:43:09'),
(6, 'Giày sandal cao gót', 'giay-sandal-cao-got', 0, 1, 1, 1, 1, 1, 1, 'Giày sandal cao gót, Giày, dép cao gót nữ, giay sandal cao got, giay, dep cao got nu, Giày sandal cao gót gia re, Giày sandal cao gót sieu khuyen mai', 'Giày sandal cao gót đa dạng, giá cực tốt, siêu khuyến mãi, vận chuyển toàn quốc miễn phí. Mua ngay!', '', '', '2017-12-14 03:43:09', '2017-12-14 03:43:09'),
(7, 'Giày Mules cao gót', 'giay-mules-cao-got', 0, 1, 1, 1, 1, 1, 1, 'Giày Mules cao gót, Giày, dép cao gót nữ, giay mules cao got, giay, dep cao got nu, Giày Mules cao gót gia re, Giày Mules cao gót sieu khuyen mai', 'Giày Mules cao gót đa dạng, giá cực tốt, siêu khuyến mãi, vận chuyển toàn quốc miễn phí. Mua ngay!', '', '', '2017-12-14 03:43:10', '2017-12-14 03:43:10'),
(8, 'Dép cao gót, guốc', 'dep-cao-got-guoc', 0, 1, 1, 1, 1, 1, 1, 'Dép cao gót, guốc, Giày, dép cao gót nữ, dep cao got, guoc, giay, dep cao got nu, Dép cao gót, guốc gia re, Dép cao gót, guốc sieu khuyen mai', 'Dép cao gót, guốc 2017 rẻ đẹp, tôn vóc dáng uyển chuyển ✅ Sản phẩm giá tốt, đa dạng mẫu mã ✅ Mua sắm dễ dàng tại Sendo.vn ✅ Giao hàng toàn quốc', '', '', '2017-12-14 03:43:11', '2017-12-14 03:43:11'),
(9, '                                                  Giày đế xuồng nữ                                                                                                ', 'giay-de-xuong-nu', 0, 1, 1, 1, 1, 1, 0, 'giày đế xuồng nữ', 'Giày đế xuồng cao, giày đế xuồng thấp, giày đế xuồng nữ mẫu mã đẹp, mới lạ ✅ Giá cực rẻ ✅ Giao hàng nhanh ✅ Nhiều ưu đãi vô cùng hấp dẫn tại Sendo.vn', '', '', '2017-12-14 03:43:11', '2017-12-14 03:43:11'),
(10, 'Giày đế xuồng bít mũi', 'giay-de-xuong-bit-mui', 0, 1, 1, 1, 1, 1, 9, 'Giày đế xuồng bít mũi, Giày đế xuồng nữ, giay de xuong bit mui, giay de xuong nu, Giày đế xuồng bít mũi gia re, Giày đế xuồng bít mũi sieu khuyen mai', 'Giày đế xuồng bít mũi đa dạng, giá cực tốt, siêu khuyến mãi, vận chuyển toàn quốc miễn phí. Mua ngay!', '', '', '2017-12-14 03:43:12', '2017-12-14 03:43:12'),
(11, 'Giày đế xuồng hở mũi', 'giay-de-xuong-ho-mui', 0, 1, 1, 1, 1, 1, 9, 'Giày đế xuồng hở mũi, Giày đế xuồng nữ, giay de xuong ho mui, giay de xuong nu, Giày đế xuồng hở mũi gia re, Giày đế xuồng hở mũi sieu khuyen mai', 'Giày đế xuồng hở mũi đa dạng, giá cực tốt, siêu khuyến mãi, vận chuyển toàn quốc miễn phí. Mua ngay!', '', '', '2017-12-14 03:43:13', '2017-12-14 03:43:13'),
(12, 'Giày đế xuồng hở gót', 'giay-de-xuong-ho-got', 0, 1, 1, 1, 1, 1, 9, 'Giày đế xuồng hở gót, Giày đế xuồng nữ, giay de xuong ho got, giay de xuong nu, Giày đế xuồng hở gót gia re, Giày đế xuồng hở gót sieu khuyen mai', 'Giày đế xuồng hở gót đa dạng, giá cực tốt, siêu khuyến mãi, vận chuyển toàn quốc miễn phí. Mua ngay!', '', '', '2017-12-14 03:43:13', '2017-12-14 03:43:13'),
(13, 'Giày sandal đế xuồng', 'giay-sandal-de-xuong', 0, 1, 1, 1, 1, 1, 9, 'Giày sandal đế xuồng, Giày đế xuồng nữ, giay sandal de xuong, giay de xuong nu, Giày sandal đế xuồng gia re, Giày sandal đế xuồng sieu khuyen mai', 'Giày sandal đế xuồng đa dạng, giá cực tốt, siêu khuyến mãi, vận chuyển toàn quốc miễn phí. Mua ngay!', '', '', '2017-12-14 03:43:14', '2017-12-14 03:43:14'),
(14, '                                                  Giày bốt nữ                                                                                                ', 'giay-bot-nu', 0, 1, 1, 1, 1, 1, 0, 'Giày bốt nữ, Giày dép, giay bot nu, giay dep, Giày bốt nữ gia re, Giày bốt nữ sieu khuyen mai, Giày bốt nữ cổ ngắn, Giày bốt nữ cổ trung, Giày bốt nữ cổ cao, Giày bốt nữ cao gót, Giày bốt nữ đế độn, đế xuồng, Giày bốt nữ đế bệt, Giày bốt nữ thắt dây, Ủng nữ', 'Giày bốt nữ: Giày bốt nữ cổ ngắn, Giày bốt nữ cổ trung, Giày bốt nữ cổ cao, Giày bốt nữ cao gót, Giày bốt nữ đế độn, đế xuồng, Giày bốt nữ đế bệt, Giày bốt nữ thắt dây, Ủng nữ, đa dạng, giá cực tốt, siêu khuyến mãi, vận chuyển toàn quốc miễn phí. Mua ngay!', '', '', '2017-12-14 03:43:15', '2017-12-14 03:43:15'),
(15, 'Giày bốt nữ cổ ngắn', 'giay-bot-nu-co-ngan', 0, 1, 1, 1, 1, 1, 14, 'Giày bốt nữ cổ ngắn, Giày bốt nữ, giay bot nu co ngan, giay bot nu, Giày bốt nữ cổ ngắn gia re, Giày bốt nữ cổ ngắn sieu khuyen mai', 'Giày bốt nữ cổ ngắn đa dạng, giá cực tốt, siêu khuyến mãi, vận chuyển toàn quốc miễn phí. Mua ngay!', '', '', '2017-12-14 03:43:16', '2017-12-14 03:43:16'),
(16, 'Giày bốt nữ cổ trung', 'giay-bot-nu-co-trung', 0, 1, 1, 1, 1, 1, 14, 'Giày bốt nữ cổ trung, Giày bốt nữ, giay bot nu co trung, giay bot nu, Giày bốt nữ cổ trung gia re, Giày bốt nữ cổ trung sieu khuyen mai', 'Giày bốt nữ cổ trung đa dạng, giá cực tốt, siêu khuyến mãi, vận chuyển toàn quốc miễn phí. Mua ngay!', '', '', '2017-12-14 03:43:16', '2017-12-14 03:43:16'),
(17, 'Giày bốt nữ cổ cao', 'giay-bot-nu-co-cao', 0, 1, 1, 1, 1, 1, 14, 'Giày bốt nữ cổ cao, Giày bốt nữ, giay bot nu co cao, giay bot nu, Giày bốt nữ cổ cao gia re, Giày bốt nữ cổ cao sieu khuyen mai', 'Giày bốt nữ cổ cao đa dạng, giá cực tốt, siêu khuyến mãi, vận chuyển toàn quốc miễn phí. Mua ngay!', '', '', '2017-12-14 03:43:17', '2017-12-14 03:43:17'),
(18, 'Giày bốt nữ cao gót', 'giay-bot-nu-cao-got', 0, 1, 1, 1, 1, 1, 14, 'Giày bốt nữ cao gót, Giày bốt nữ, giay bot nu cao got, giay bot nu, Giày bốt nữ cao gót gia re, Giày bốt nữ cao gót sieu khuyen mai', 'Giày bốt nữ cao gót đa dạng, giá cực tốt, siêu khuyến mãi, vận chuyển toàn quốc miễn phí. Mua ngay!', '', '', '2017-12-14 03:43:18', '2017-12-14 03:43:18'),
(19, 'Giày bốt nữ đế độn, đế xuồng', 'giay-bot-nu-de-don-de-xuong', 0, 1, 1, 1, 1, 1, 14, 'Giày bốt nữ đế độn, đế xuồng, Giày bốt nữ, giay bot nu de don, de xuong, giay bot nu, Giày bốt nữ đế độn, đế xuồng gia re, Giày bốt nữ đế độn, đế xuồng sieu khuyen mai', 'Giày bốt nữ đế độn, đế xuồng đa dạng, giá cực tốt, siêu khuyến mãi, vận chuyển toàn quốc miễn phí. Mua ngay!', '', '', '2017-12-14 03:43:19', '2017-12-14 03:43:19'),
(20, 'Giày bốt nữ đế bệt', 'giay-bot-nu-de-bet', 0, 1, 1, 1, 1, 1, 14, 'Giày bốt nữ đế bệt, Giày bốt nữ, giay bot nu de bet, giay bot nu, Giày bốt nữ đế bệt gia re, Giày bốt nữ đế bệt sieu khuyen mai', 'Giày bốt nữ đế bệt đa dạng, giá cực tốt, siêu khuyến mãi, vận chuyển toàn quốc miễn phí. Mua ngay!', '', '', '2017-12-14 03:43:19', '2017-12-14 03:43:19'),
(21, 'Giày bốt nữ thắt dây', 'giay-bot-nu-that-day', 0, 1, 1, 1, 1, 1, 14, 'Giày bốt nữ thắt dây, Giày bốt nữ, giay bot nu that day, giay bot nu, Giày bốt nữ thắt dây gia re, Giày bốt nữ thắt dây sieu khuyen mai', 'Giày bốt nữ thắt dây đa dạng, giá cực tốt, siêu khuyến mãi, vận chuyển toàn quốc miễn phí. Mua ngay!', '', '', '2017-12-14 03:43:20', '2017-12-14 03:43:20'),
(22, 'Ủng nữ', 'ung-nu', 0, 1, 1, 1, 1, 1, 14, 'Ủng nữ, Giày bốt nữ, ung nu, giay bot nu, Ủng nữ gia re, Ủng nữ sieu khuyen mai', 'Ủng nữ đa dạng, giá cực tốt, siêu khuyến mãi, vận chuyển toàn quốc miễn phí. Mua ngay!', '', '', '2017-12-14 03:43:20', '2017-12-14 03:43:20'),
(23, '                                                  Dép nữ                                                                                                ', 'dep-nu', 0, 1, 1, 1, 1, 1, 0, 'Dép nữ rẻ đẹp, Dép nữ cao cấp, Dép nữ 2017, Dép nữ thời trang, Dép nữ hàng hiệu', 'Dép nữ 2017 giá rẻ ✅ Kiểu dáng độc lạ, trẻ trung ✅ Dép nữ xu hướng Hàn Quốc ✅ Dép nữ hàng hiệu thật điệu ✅ Mua ngay tại Sendo.vn', '', '', '2017-12-14 03:43:21', '2017-12-14 03:43:21'),
(24, 'Dép xỏ ngón, kẹp nữ', 'dep-xo-ngon-kep-nu', 0, 1, 1, 1, 1, 1, 23, 'dép xỏ ngón nữ, dép xỏ ngón thái lan, dép xỏ ngón vnxk, dép xỏ ngón đẹp', 'Dép xỏ ngón nữ, dép xỏ ngón thái lan ✅ Nhiều mẫu mã mới lạ ✅ Ưu đãi hấp dẫn ✅ Giao hàng trên khắp cả nước ✅ Mua bán đảm bảo ✅ Uy tín, chất lượng trên Sendo.vn', '', '', '2017-12-14 03:43:22', '2017-12-14 03:43:22'),
(25, 'Dép quai ngang, chéo nữ', 'dep-quai-ngang-cheo-nu', 0, 1, 1, 1, 1, 1, 23, 'Dép quai ngang chéo nữ đế cao, Dép quai ngang chéo nữ adidas, Dép quai ngang chéo nữ rẻ đẹp, Dép quai ngang chéo nữ 2017', 'Dép quai ngang chéo nữ 2017 giá rẻ, tiện ích, bền đẹp, dễ ứng dụng ✅ Giá cả cạnh tranh nhất thị trường ✅ Sendo.vn mua bán đảm bảo ✅ Giao hàng toàn quốc', '', '', '2017-12-14 03:43:23', '2017-12-14 03:43:23'),
(26, 'Dép nhựa nữ', 'dep-nhua-nu', 0, 1, 1, 1, 1, 1, 23, 'Dép nhựa nữ Thái Lan, dép sục nhựa nữ, Dép nhựa nữ rẻ đẹp, dép nhựa nữ mùa hè', 'Dép nhựa nữ 2017 rẻ đẹp, hợp mốt, giá tốt, mua sắm cực đã trên Sendo.vn ✅ Giao hàng toàn quốc ✅ Thanh toán khi nhận hàng ✅ Đảm bảo bởi FPT', '', '', '2017-12-14 03:43:23', '2017-12-14 03:43:23'),
(27, 'Dép bít mũi, sục nữ', 'dep-bit-mui-suc-nu', 0, 1, 1, 1, 1, 1, 23, 'Dép bít mũi, sục nữ, Dép nữ, dep bit mui, suc nu, dep nu, Dép bít mũi, sục nữ gia re, Dép bít mũi, sục nữ sieu khuyen mai', 'Dép bít mũi, sục nữ đa dạng, giá cực tốt, siêu khuyến mãi, vận chuyển toàn quốc miễn phí. Mua ngay!', '', '', '2017-12-14 03:43:24', '2017-12-14 03:43:24'),
(28, 'Dép mang trong nhà', 'dep-mang-trong-nha', 0, 1, 1, 1, 1, 1, 23, 'dép mang trong nhà, dép mang trong nhà tắm, dép mang trong nhà deal, dép mang trong nhà rẻ đẹp, dép mang trong nhà thú bông, dép đi trong nhà hình thú, Dép mang trong nhà dễ thương', 'Dép mang trong nhà 2017 giá rẻ, nhiều kiểu dáng siêu cute ✅ Dép hình thú ngộ nghĩnh ✅ Dép bông êm ái ✅ Dép nhựa nhẹ mát... ✅ Mua ngay trên Sendo.vn', '', '', '2017-12-14 03:43:25', '2017-12-14 03:43:25'),
(29, 'Dép nữ khác', 'dep-nu-khac', 0, 1, 1, 1, 1, 1, 23, 'Dép nữ các loại rẻ đẹp, Dép nữ cao cấp, Dép nữ 2017, Dép nữ thời trang, Dép nữ hàng hiệu', 'Dép nữ các loại 2017 giá rẻ, chất lượng tốt từ nhiều shop uy tín tại SENDO.VN ✅ Giao hàng tận nơi trên toàn quốc ✅ Sàn TMĐT chính thức của tập đoàn FPT', '', '', '2017-12-14 03:43:25', '2017-12-14 03:43:25'),
(30, 'Dép đế xuồng nữ', 'dep-de-xuong-nu', 0, 1, 1, 1, 1, 1, 23, 'Dép đế xuồng nữ, Dép nữ, dep de xuong nu, dep nu, Dép đế xuồng nữ gia re, Dép đế xuồng nữ sieu khuyen mai', 'Dép đế xuồng nữ đa dạng, giá cực tốt, siêu khuyến mãi, vận chuyển toàn quốc miễn phí. Mua ngay!', '', '', '2017-12-14 03:43:26', '2017-12-14 03:43:26'),
(31, '                                                  Giày nữ khác                                                                                                ', 'giay-nu', 0, 1, 1, 1, 1, 1, 0, 'giày nữ rẻ đẹp, giày nữ cao cấp, giày nữ 2017, giày nữ thời trang, giầy nữ hàng hiệu', 'Giày nữ 2017 rẻ đẹp ✅Giá rẻ hơn tại Sendo.vn ✅9999✚✚ sản phẩm chất lượng cao ✅Chính hãng ✅Cao cấp ✅Bền đẹp ✅Giảm giá đến 50% ✚✚.', '', '', '2017-12-14 03:43:27', '2017-12-14 03:43:27'),
(32, 'Giày búp bê', 'giay-bup-be', 0, 1, 1, 1, 1, 1, 31, 'giày búp bê đẹp, giày búp bê giá rẻ, giày búp bê đế xuồng, giày búp bê cao gót', 'Mua Giày Búp Bê Cho Nữ Rẻ Đẹp  ✅Hợp Thời Trang ✅Chất lượng cao ✅Giá rẻ hơn tại Sendo.vn ✅999✚Mẫu mới ✅Giảm đến 50% ✈ MUA NGAY!', '', '', '2017-12-14 03:43:27', '2017-12-14 03:43:27'),
(33, 'Giày búp bê hở mũi', 'giay-bup-be-ho-mui', 0, 1, 1, 1, 1, 1, 31, 'Giày búp bê hở mũi, Giày nữ khác, giay bup be ho mui, giay nu khac, Giày búp bê hở mũi gia re, Giày búp bê hở mũi sieu khuyen mai', 'Giày búp bê hở mũi đa dạng, giá cực tốt, siêu khuyến mãi, vận chuyển toàn quốc miễn phí. Mua ngay!', '', '', '2017-12-14 03:43:28', '2017-12-14 03:43:28'),
(34, 'Giày Oxford nữ', 'giay-oxford-nu', 0, 1, 1, 1, 1, 1, 31, 'giày oxford nữ hcm, giày oxford nữ hà nội, giày oxford nữ facebook, giày oxford nữ mua ở đâu, giày oxford nữ ở hà nội, giày oxford nữ cao gót, giày oxford nữ hàng hiệu, giày oxford nữ đà nẵng  ', 'Giày oxford nữ 2017 cá tính, êm chân, xu hướng mới dành cho hot girl hiện đại ✅ Sản phẩm đa dạng, bền bỉ ✅ Cung cấp bởi những shop uy tín nhất trên Sendo.vn', '', '', '2017-12-14 03:43:29', '2017-12-14 03:43:29'),
(35, 'Giày mọi, slip on nữ', 'giay-moi-slip-on-nu', 0, 1, 1, 1, 1, 1, 31, 'giày slip on nữ hà nội, giày slip on giá rẻ, giày slip on facebook, giày slip on tphcm, giày mọi nữ vascara, giày mọi nữ tphcm, giày mọi nữ hàn quốc, giày mọi nữ facebook, giày mọi nữ cao cấp, giày mọi nữ xuất khẩu', 'Giày mọi slip on nữ 2017 giá rẻ, cá tính, bền đẹp, nhiều mẫu mã ✅ Mua bán đảm bảo tại Sendo.vn ✅ Giao hàng toàn quốc ✅ Thanh toán khi nhận hàng', '', '', '2017-12-14 03:43:30', '2017-12-14 03:43:30'),
(36, 'Giày bánh mì', 'giay-banh-mi', 0, 1, 1, 1, 1, 1, 31, 'Giày bánh mì, Giày bánh mì hàn quốc, Giày bánh mì giá rẻ, Giày bánh mì thời trang', 'Giày bánh mì nữ 2017 rẻ đẹp, năng động, phong cách xứ Hàn trẻ trung✅ Sendo.vn mua bán đảm bảo - Giao hàng toàn quốc ✅ KM cực hấp dẫn', '', '', '2017-12-14 03:43:30', '2017-12-14 03:43:30'),
(37, 'Giày nhựa nữ', 'giay-nhua-nu', 0, 1, 1, 1, 1, 1, 31, 'giày nhựa melissa tphcm, giày nhựa nữ Thái Lan, giày nhựa nữ Hà Nội, giày nhựa nữ giá rẻ, giày nhựa nữ [2016]', 'Giày nhựa nữ 2017 giá rẻ, siêu nhẹ, siêu bền, đi mưa cực đã ✅ Mua ngay hôm nay trên Sendo.vn để nhận nhiều ưu đãi hấp dẫn ✅ Giao hàng toàn quốc', '', '', '2017-12-14 03:43:31', '2017-12-14 03:43:31'),
(38, 'Giày sneaker nữ', 'giay-sneaker-nu', 0, 1, 1, 1, 1, 1, 31, 'giày sneaker nữ hcm, giày sneaker nữ adidas, giày sneaker nữ trắng, giày sneaker nữ tăng chiều cao, giày sneaker nữ đẹp', 'Giày sneaker nữ 2017 phong cách, đa dạng màu sắc, giá cả cạnh tranh trên Sendo.vn ✅ Style cá tính ✅ Nhiều mẫu đẹp ✅ Giảm giá SỐC lên đến 70%.', '', '', '2017-12-14 03:43:32', '2017-12-14 03:43:32'),
(39, 'Sandal đế bệt nữ', 'giay-sandal-nu', 0, 1, 1, 1, 1, 1, 31, 'giày sandal nữ, giày sandal nữ đế bệt,giày sandal nữ cao gót, giày sandal nữ đi học', 'Giày sandal nữ, giày sandal nữ đế bệt 2016 thiết kế đẹp mắt, ấn tượng ✅ Hàng đẹp, chất lượng ✅ Giao hàng toàn quốc ✅ Thanh toán dễ dàng tại Sendo.vn', '', '', '2017-12-14 03:43:32', '2017-12-14 03:43:32'),
(40, 'Sandal xỏ ngón nữ', 'sandal-xo-ngon-nu', 0, 1, 1, 1, 1, 1, 31, 'Sandal xỏ ngón nữ, Giày nữ khác, sandal xo ngon nu, giay nu khac, Sandal xỏ ngón nữ gia re, Sandal xỏ ngón nữ sieu khuyen mai', 'Sandal xỏ ngón nữ đa dạng, giá cực tốt, siêu khuyến mãi, vận chuyển toàn quốc miễn phí. Mua ngay!', '', '', '2017-12-14 03:43:33', '2017-12-14 03:43:33'),
(41, 'Giày nữ khác', 'giay-nu-khac', 0, 1, 1, 1, 1, 1, 31, 'giày nữ các loại, giày nữ hàn quốc các loại, giày các loại giá rẻ, giày thời trang các loại', 'Giày nữ các loại 2017 đa dạng, giá rẻ ✅ Mua bán đảm bảo tại Sendo.vn ✅ Sàn TMĐT hàng đầu Việt Nam thuộc tập đoàn FPT ✅ Nhiều KM hấp dẫn', '', '', '2017-12-14 03:43:33', '2017-12-14 03:43:33'),
(42, '                                                  Giày nam                                                                                                ', 'giay-nam', 0, 1, 1, 1, 1, 1, 0, 'Giày nam rẻ đẹp, Giày nam cao cấp, Giày nam 2017, Giày nam thời trang, Giày nam hàng hiệu', 'Giày nam 2017 đa phong cách, chất liệu siêu bền, ✅ giá rẻ hơn tại Sendo.vn ✅ Giao hàng toàn quốc ✅ Hàng chính hãng ✅ Giảm giá SỐC!', '', '', '2017-12-14 03:43:34', '2017-12-14 03:43:34'),
(43, 'Giày tây', 'giay-tay', 0, 1, 1, 1, 1, 1, 42, 'Giầy Tây nam rẻ đẹp, Giầy Tây nam cao cấp, Giầy Tây nam 2017, Giầy Tây nam thời trang, Giầy Tây nam hàng hiệu', 'Giầy Tây nam 2017 lịch lãm, sang trọng, phong cách cổ điển pha lẫn hiện đại ✅ Giầy Tây nam Hàn Quốc sành điệu, trẻ trung ✅ Giá tốt hơn khi mua tại Sendo.vn', '', '', '2017-12-14 03:43:35', '2017-12-14 03:43:35'),
(44, 'Giày sandal nam', 'giay-sandal-nam', 0, 1, 1, 1, 1, 1, 42, 'Giầy sandal nam đẹp, Giầy sandal nam Hàn Quốc, Giầy sandal nam giá rẻ, Giầy sandal nam 2017', 'Giầy sandal nam 2017 giá rẻ, đa dạng kiểu dáng, chất liệu bền bỉ, ứng dụng trong nhiều môi trường ✅ Mua ngay tại Sendo.vn ✅ Nhiều ưu đãi hấp dẫn.', '', '', '2017-12-14 03:43:35', '2017-12-14 03:43:35'),
(45, 'Giày lười, giày mọi nam', 'giay-luoi-giay-moi-nam', 0, 1, 1, 1, 1, 1, 42, 'giày lười, giày mọi nam đẹp, hàng hiệu, giá rẻ', 'Giày lười da lộn, giày mọi vải 2017 thời trang, sành điệu, kiểu dáng Hàn Quốc giá tốt trên Sendo.vn ✅ Giao hàng toàn quốc ✅ Đảm bảo bởi FPT', '', '', '2017-12-14 03:43:36', '2017-12-14 03:43:36'),
(46, 'Giày sneaker nam', 'giay-sneaker-nam', 0, 1, 1, 1, 1, 1, 42, 'Giày Sneaker nam Hà Nội, Giày Sneaker nam trắng, Giày Sneaker nam nike, Giày Sneaker nam tp.HCM, Giày Sneaker nam rẻ đẹp, Giày Sneaker nam 2017', 'Giày Sneaker nam 2017 chất lừ, đa dạng mẫu mã, chất liệu tốt, giá rẻ hơn tại Sendo.vn ✅ Siêu bền ✅ Hàng chính hãng ✅ Giao hàng tận nơi!', '', '', '2017-12-14 03:43:37', '2017-12-14 03:43:37'),
(47, 'Giày bốt nam', 'giay-bot-nam', 0, 1, 1, 1, 1, 1, 42, 'giày boot nam', 'Mua ngay giày bốt nam 2017 ấn tượng và chất lượng tại các shop uy tín trên Sendo.vn ✅ Giao hàng nhanh ✅ Thanh toán dễ dàng ✅ Hàng tốt hợp mốt.', '', '', '2017-12-14 03:43:37', '2017-12-14 03:43:37'),
(48, 'Giày đế cao', 'giay-de-cao', 0, 1, 1, 1, 1, 1, 42, 'Giày đế cao nam, giày đế cao nam đẹp, Giày đế cao nam độc đáo, Giày đế cao nam giá rẻ', 'Mua bán giày nam, Giày đế cao nam nam thời trang, sành điệu ✅ Xem ngay các sản phẩm giày nam: westman, maxi, toldo ✅ Mua trực tuyến giá tốt tại Sendo.vn', '', '', '2017-12-14 03:43:38', '2017-12-14 03:43:38'),
(49, 'Giày tăng chiều cao', 'giay-tang-chieu-cao', 0, 1, 1, 1, 1, 1, 42, 'giày tăng chiều cao nam', 'Mua bán giày tăng chiều cao nam thời trang, độc đáo, đa dạng kiểu dáng tại Sendo.vn ✅ Tăng 7-10 cm ✅ Chất lượng cao ✅Giảm giá lên đến 70%', '', '', '2017-12-14 03:43:39', '2017-12-14 03:43:39'),
(50, 'Giày nhựa nam', 'giay-nhua-nam', 0, 1, 1, 1, 1, 1, 42, 'Giày nhựa nam đi mưa, giày nhựa nam Thái Lan, giày nhựa nam Hà Nội, giày nhựa nam Crocs, giày nhựa Puma, giày nhựa nam rẻ đẹp ', 'Giày nhựa nam 2017 giá rẻ, chất lượng tốt từ nhiều shop uy tín tại SENDO.VN ✅ Giao hàng tận nơi trên toàn quốc ✅ Sàn TMĐT chính thức của tập đoàn FPT', '', '', '2017-12-14 03:43:40', '2017-12-14 03:43:40'),
(51, 'Giày nam khác', 'giay-nam-khac', 0, 1, 1, 1, 1, 1, 42, 'Giày nam rẻ đẹp các loại, Giày nam cao cấp các loại, Giày nam các loại 2017, Giày nam thời trang các loại, Giày nam hàng hiệu các loại', 'Giày nam các loại 2017 giá rẻ, đa dạng mẫu mã, kiểu dáng, giá cả cạnh tranh trên thị trường ✅ Sendo.vn mua bán đảm bảo ✅ Giao hàng toàn quốc', '', '', '2017-12-14 03:43:40', '2017-12-14 03:43:40'),
(52, '                                                  Dép nam                                                                                                ', 'dep-nam', 0, 1, 1, 1, 1, 1, 0, 'dép nam xuất khẩu, dép nam độc, dép nam adidas, dép nam hà nội, dép nam nike, dép nam biti\'s, shop dép nam tphcm, dép nam thái lan', 'Mua dép nam 2017 bền đẹp, nhiều mẫu mới nổi bật, hợp xu hướng thời trang, giá rẻ hơn tại Sendo.vn ✅ Hàng chính hãng ✅ Giảm giá đến 70% ✅ Chất lượng cao.', '', '', '2017-12-14 03:43:41', '2017-12-14 03:43:41'),
(53, 'Dép xỏ ngón nam', 'dep-xo-ngon-nam', 0, 1, 1, 1, 1, 1, 52, 'Dép xỏ ngón nam, Dép xỏ ngón nam rẻ đẹp, Dép xỏ ngón nam kiểu', 'Dép xỏ ngón nam 2017 giá rẻ, chất lượng đảm bảo, xu hướng thời trang hè năng động, tiện lợi ✅ Mua với giá tốt nhất tại Sendo.vn ✅ Giao hàng toàn quốc.', '', '', '2017-12-14 03:43:42', '2017-12-14 03:43:42'),
(54, 'Dép quai ngang, chéo nam', 'dep-quai-ngang-cheo-nam', 0, 1, 1, 1, 1, 1, 52, 'Dép quai ngang nam nike, Dép quai ngang nam adidas, Dép quai ngang rẻ đẹp, dép quai chéo nam rẻ đẹp', 'Dép quai ngang, dép quai chéo nam 2017 giá rẻ, trẻ đẹp, dễ kết hợp đi học, đi làm, chất liệu siêu bền ✅ Sendo.vn mua bán đảm bảo ✅ Thanh toán khi nhận hàng', '', '', '2017-12-14 03:43:43', '2017-12-14 03:43:43'),
(55, 'Dép bít mũi', 'dep-bit-mui', 0, 1, 1, 1, 1, 1, 52, 'Dép bít mũi nam, Dép bít mũi nam rẻ đẹp, Dép bít mũi nam kiểu', 'Mua dép bít mũi nam 2017 giá rẻ, lạ mắt, chất liệu bền bỉ, phong cách nam tính ✅ Mua ngay trên Sendo.vn để hưởng nhiều ưu đãi ✅ Khuyến mãi hấp dẫn.', '', '', '2017-12-14 03:43:43', '2017-12-14 03:43:43'),
(56, 'Dép nhựa nam', 'dep-nhua-nam', 0, 1, 1, 1, 1, 1, 52, 'Dép nhựa nam rẻ đẹp, Dép nhựa nam Thái Lan, sản phẩm Dép nhựa nam, dép sandal nam nhựa, Dép nhựa nam giá rẻ', 'Dép nhựa nam 2017 giá rẻ, mẫu mã đa dạng, nhiều màu sắc trẻ trung, hiện đại ✅ Được bán với giá rẻ bất ngờ trên Sendo.vn ✅ Mua ngay hôm nay để nhận nhiều ưu đãi hấp dẫn', '', '', '2017-12-14 03:43:44', '2017-12-14 03:43:44'),
(57, 'Dép nam khác', 'dep-nam-khac', 0, 1, 1, 1, 1, 1, 52, 'Dép nam các loại, Dép nam các loại rẻ đẹp', 'Dép nam các loại 2017 giá rẻ, chất lượng tốt từ nhiều shop uy tín tại SENDO.VN ✅ Giao hàng tận nơi trên toàn quốc ✅ Sàn TMĐT chính thức của tập đoàn FPT', '', '', '2017-12-14 03:43:45', '2017-12-14 03:43:45'),
(58, '                                                  Giày thể thao chuyên dụng                                                                                                ', 'giay-the-thao-chuyen-dung', 0, 1, 1, 1, 1, 1, 0, 'Giày thể thao chuyên dụng nike, Giày thể thao chuyên dụng adidas, Giày thể thao chuyên dụng puma, Giày thể thao chuyên dụng rẻ đẹp, Giày thể thao chuyên dụng hàng hiệu', 'Giày thể thao chuyên dụng 2017 chính hãng, giá rẻ ✅ Liên tục cập nhật mẫu mã, chất liệu siêu bền ✅ Sendo.vn giao hàng toàn quốc ✅ Thanh toán khi nhận hàng', '', '', '2017-12-14 03:43:45', '2017-12-14 03:43:45'),
(59, 'Giày thể thao nam', 'giay-the-thao-nam', 0, 1, 1, 1, 1, 1, 58, 'Giày thể thao nam giá rẻ tp.hcm, Giày thể thao nam giá rẻ, Giày thể thao nam nam nike, Giày thể thao nam đẹp', 'Giày thể thao nam 2017 rẻ đẹp, êm chân, mẫu mã đa dạng, chất lượng, giá rẻ tại Sendo.vn ✅ Dạo phố ✅ Chạy bộ ✅ Đá bóng ✅ Tập thể hình.', '', '', '2017-12-14 03:43:46', '2017-12-14 03:43:46'),
(60, 'Giày chạy bộ, tập gym', 'giay-chay-bo-tap-gym', 0, 1, 1, 1, 1, 1, 58, 'Giày chạy bộ, tập gym, Giày thể thao chuyên dụng, giay chay bo, tap gym, giay the thao chuyen dung, Giày chạy bộ, tập gym gia re, Giày chạy bộ, tập gym sieu khuyen mai', 'Giày chạy bộ, tập gym đa dạng, giá cực tốt, siêu khuyến mãi, vận chuyển toàn quốc miễn phí. Mua ngay!', '', '', '2017-12-14 03:43:47', '2017-12-14 03:43:47'),
(61, 'Giày đinh, đá banh', 'giay-dinh', 0, 1, 1, 1, 1, 1, 58, 'Giày đinh chạy điền kinh, Giày đinh đá bóng giá rẻ, giày đinh tán 123mua, giày đinh tán đẹp, giày đinh rẻ đẹp', 'Giày đinh 2017 rẻ đẹp, xu hướng hiện đại, mạnh mẽ ✅ Chất lượng bền đẹp ✅ Sendo.vn mua bán đảm bảo ✅ Sàn TMĐT chính thức của tập đoàn FPT', '', '', '2017-12-14 03:43:47', '2017-12-14 03:43:47'),
(62, 'Giày cầu lông', 'giay-cau-long', 0, 1, 1, 1, 1, 1, 58, 'Giày cầu lông, Giày thể thao chuyên dụng, giay cau long, giay the thao chuyen dung, Giày cầu lông gia re, Giày cầu lông sieu khuyen mai', 'Giày cầu lông đa dạng, giá cực tốt, siêu khuyến mãi, vận chuyển toàn quốc miễn phí. Mua ngay!', '', '', '2017-12-14 03:43:48', '2017-12-14 03:43:48'),
(63, 'Giày thể thao nữ', 'giay-the-thao-nu', 0, 1, 1, 1, 1, 1, 58, 'Giày thể thao nữ 2017 giá rẻ, chất lượng tốt từ nhiều shop uy tín tại SENDO.VN - Giao hàng tận nơi trên toàn quốc - Sàn TMĐT chính thức của tập đoàn FPT', 'Giày thể thao nữ 2017 chính hãng giá rẻ, chất lượng từ nhiều shop uy tín tại SENDO.VN ✅ Đi chơi ✅ Chạy bộ ✅ Tập gym ✅ Giảm giá SỐC lên đến 70%.', '', '', '2017-12-14 03:43:49', '2017-12-14 03:43:49'),
(64, 'Giày Tennis', 'giay-tennis', 0, 1, 1, 1, 1, 1, 58, 'Giày tennis', 'Giày Tennis đa dạng, giá cực tốt, siêu khuyến mãi, vận chuyển toàn quốc miễn phí. Mua ngay!', '', '', '2017-12-14 03:43:50', '2017-12-14 03:43:50'),
(65, 'Giày Golf', 'giay-goft', 0, 1, 1, 1, 1, 1, 58, 'Giày goft', 'Giày Golf đa dạng, giá cực tốt, siêu khuyến mãi, vận chuyển toàn quốc miễn phí. Mua ngay!', '', '', '2017-12-14 03:43:50', '2017-12-14 03:43:50'),
(66, 'Giày Trượt Patin', 'giay-truot-patin', 0, 1, 1, 1, 1, 1, 58, 'Giày Trượt Patin, Giày thể thao chuyên dụng, giay truot patin, giay the thao chuyen dung, Giày Trượt Patin gia re, Giày Trượt Patin sieu khuyen mai', 'Giày Trượt Patin đa dạng, giá cực tốt, siêu khuyến mãi, vận chuyển toàn quốc miễn phí. Mua ngay!', '', '', '2017-12-14 03:43:51', '2017-12-14 03:43:51'),
(67, 'Giày Đi Phượt', 'giay-di-phuot', 0, 1, 1, 1, 1, 1, 58, 'Giày đi phượt', 'Giày Đi Phượt đa dạng, giá cực tốt, siêu khuyến mãi, vận chuyển toàn quốc miễn phí. Mua ngay!', '', '', '2017-12-14 03:43:51', '2017-12-14 03:43:51'),
(68, 'Giày thể thao khác', 'giay-the-thao-khac', 0, 1, 1, 1, 1, 1, 58, 'Giày thể thao rẻ đẹp, giày thể thao nam, giày thể thao chất lượng, giày thể thao hàng hiệu ', 'Giày thể thao các loại 2017 giá rẻ, chất lượng tốt từ nhiều shop uy tín tại SENDO.VN ✅ Giao hàng tận nơi toàn quốc ✅ Sàn TMĐT chính thức của tập đoàn FPT', '', '', '2017-12-14 03:43:52', '2017-12-14 03:43:52'),
(69, '                                                  Phụ kiện giày dép                                                                                                ', 'phu-kien-giay-dep', 0, 1, 1, 1, 1, 1, 0, 'phụ kiện giày dép, phụ kiện giày dép giá rẻ, phụ kiện giày dép 2017', 'Phụ kiện giày dép 2017 giá rẻ ✅ Chất lượng tốt từ nhiều shop uy tín tại SENDO.VN ✅ Giao hàng tận nơi trên toàn quốc ✅ Sàn TMĐT chính thức của tập đoàn FPT', '', '', '2017-12-14 03:43:53', '2017-12-14 03:43:53'),
(70, 'Dây giày', 'day-giay', 0, 1, 1, 1, 1, 1, 69, 'Dây giày tròn, Dây giày đẹp, Dây giày dạ quang, Dây giày giá rẻ', 'Dây giày 2017 giá rẻ, dễ sử dụng, nhiều kiểu dáng phù hợp với nhiều loại giày ✅ Sản phẩm chất lượng trên Sendo.vn ✅ Mua bán đảm bảo ✅ Giao hàng toàn quốc', '', '', '2017-12-14 03:43:53', '2017-12-14 03:43:53'),
(71, 'Miếng lót giày', 'mieng-lot-giay', 0, 1, 1, 1, 1, 1, 69, 'Miếng lót giày nam, Miếng lót giày nam giá rẻ, Miếng lót giày nam 2017, Miếng lót giày nam thể thao, Miếng lót giày nam êm chân', 'Miếng lót giày nam 2017 giá rẻ, chất lượng tốt ✅ Miếng lót quế khử mùi, tiện lợi, dễ sử dụng ✅ Mua ngay với giá ưu đãi trên Sendo.vn ✅ Sàn TMĐT hàng đầu Việt Nam', '', '', '2017-12-14 03:43:54', '2017-12-14 03:43:54'),
(72, 'Chất để bảo quản giày', 'chat-de-bao-quan-giay', 0, 1, 1, 1, 1, 1, 69, 'Chất để bản quản giày rẻ đẹp, Chất để bản quản giày cao cấp, Chất để bản quản giày 2017', 'Chất để bảo quản giày 2017 giá rẻ, chất lượng tốt, cập nhật mẫu mới liên tục - Mua bán đảm bảo trên Sendo.vn - Giao hàng toàn quốc', '', '', '2017-12-14 03:43:55', '2017-12-14 03:43:55'),
(73, 'Phụ kiện giày dép khác', 'phu-kien-giay-dep-khac', 0, 1, 1, 1, 1, 1, 69, 'phụ kiện giày dép các loại, phụ kiện giày dép các loại giá rẻ, phụ kiện giày dép các loại 2017', 'Phụ kiện giày dép các loại 2017 giá rẻ, chất lượng từ nhiều shop uy tín tại SENDO.VN ✅ Sản phẩm đa dạng ✅ Mua bán đảm bảo ✅ Giao hàng toàn quốc', '', '', '2017-12-14 03:43:56', '2017-12-14 03:43:56');

-- --------------------------------------------------------

--
-- Table structure for table `cate_spec`
--

CREATE TABLE `cate_spec` (
  `cate_id` int(13) NOT NULL,
  `spec_id` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(12) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `product_id`, `name`, `title`, `created_at`, `updated_at`) VALUES
(10, 1, 'banner.jpg', '', '2017-04-04 07:36:41', '2017-04-04 07:36:41');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 1),
(9, '2017_12_08_034903_create_shop_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `links` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_product` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `link_zip` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `home` int(11) NOT NULL,
  `new` int(11) NOT NULL,
  `hot` int(11) NOT NULL,
  `best_sale` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `delete` int(11) NOT NULL,
  `intro` text COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cate_id` int(10) UNSIGNED NOT NULL,
  `images_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(12) DEFAULT NULL,
  `view` int(12) DEFAULT NULL,
  `cart` int(12) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` int(10) UNSIGNED NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `page` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `link`, `name`, `type`, `page`, `phone`, `email`, `address`, `created_at`, `updated_at`) VALUES
(39, 'https://www.sendo.vn/shop/strawberries_shop', 'Strawberries_Shop', 'sendo.vn', '1', '0913963037', 'yeninchristvn@yahoo.com', '282/43 Bùi Hữu Nghĩa, phường(xã) Phường 02, Quận Bình Thạnh, Hồ Chí Minh', '2017-12-08 06:52:41', '2017-12-08 06:52:41'),
(40, 'https://www.sendo.vn/shop/boboshopnet', 'boboshopnet', 'sendo.vn', '1', '01207004391', 'happyhome1630@gmail.com', '693b,bình quới,phường 27,quận bình thạnh, phường(xã) phường 27, Quận Bình Thạnh, Hồ Chí Minh', '2017-12-08 06:52:42', '2017-12-08 06:52:42'),
(41, 'https://www.sendo.vn/shop/thanh', 'hoamai', 'sendo.vn', '1', '0939002616', 'lethanhkieu1990@gmail.com', '10D/7 mau than, phường(xã) xuan khanh, Quận Ninh Kiều, Cần Thơ', '2017-12-08 06:52:42', '2017-12-08 06:52:42'),
(42, 'https://www.sendo.vn/shop/phukiencongnghe', 'Phu Kien Cong Nghe', 'sendo.vn', '1', '01229703332', 'phamvanhongchuong@gmail.com', '373/47 Lý Thường Kiệt, phường(xã) Phường 09, Quận Tân Bình, Hồ Chí Minh', '2017-12-08 06:52:43', '2017-12-08 06:52:43'),
(43, 'https://www.sendo.vn/shop/ao-nguc-charming', 'ÁO NGỰC CHARMING', 'sendo.vn', '1', '0937773091', 'dolotcharming@gmail.com', '896 Nguyễn Văn Quá, P. Đông Hưng Thuận, Q.12, TP.HCM, phường(xã) Phường Đông Hưng Thuận, Quận 12, Hồ Chí Minh', '2017-12-08 06:52:44', '2017-12-08 06:52:44'),
(44, 'https://www.sendo.vn/shop/style-k', 'Style-K', 'sendo.vn', '1', '01655675534', 'shop@style-k.vn', 'Căn Hộ Sky Garden II , Phòng 3D 4-3 ,Phú Mỹ Hưng , phường(xã) Phường Tân Phong, Quận 7, Hồ Chí Minh', '2017-12-08 06:52:45', '2017-12-08 06:52:45'),
(45, 'https://www.sendo.vn/shop/phu-kien-thiet-bi-so', 'PHỤ KIỆN THIẾT BỊ SỐ', 'sendo.vn', '1', '0903263583', 'admin.dth@gmail.com', '12 Ngõ 278 Tây Sơn, phường(xã) Phường Trung Liệt, Quận Đống Đa, Hà Nội', '2017-12-08 06:52:45', '2017-12-08 06:52:45'),
(46, 'https://www.sendo.vn/shop/fhome', 'FHome', 'sendo.vn', '1', '0904330156', 'familyhome.vn@gmail.com', '65/4/2 Lê Tấn Bê, phường(xã) An Lạc, Quận Bình Tân, Hồ Chí Minh', '2017-12-08 06:52:46', '2017-12-08 06:52:46'),
(47, 'https://www.sendo.vn/shop/thanh-truc', 'Thanh Truc', 'sendo.vn', '1', '01222011101', '1', '148 Nguyen Thai Binh, phường(xã) P 12, Quận Tân Bình, Hồ Chí Minh', '2017-12-08 06:52:47', '2017-12-08 06:52:47'),
(48, 'https://www.sendo.vn/shop/thoi-trang-theo-xu-huong', 'thời trang theo xu hướng', 'sendo.vn', '1', '01212231305', 'dethuongnhoc195@gmail.com', '83/37 phạm văn bạch Tân Bình , phường(xã) Phường 15, Quận Tân Bình, Hồ Chí Minh', '2017-12-08 06:52:47', '2017-12-08 06:52:47'),
(49, 'https://www.sendo.vn/shop/kara-house', 'Kara House', 'sendo.vn', '1', '0932696496', 'kara171112@gmail.com', '11/33 Hồ Dắc Di P. Tây Thạnh Q. Tân Phú, phường(xã) Tay thanh, Quận Tân Phú, Hồ Chí Minh', '2017-12-08 06:52:48', '2017-12-08 06:52:48'),
(50, 'https://www.sendo.vn/shop/totohouse', 'Toto\'s house', 'sendo.vn', '1', '0968896309', 'thoa.tran26500@gmail.com', '429/13/3 QUANG TRUNG PHƯỜNG 10 QUẬN GÒ VẤP, phường(xã) Phường 10, Quận Gò Vấp, Hồ Chí Minh', '2017-12-08 06:52:48', '2017-12-08 06:52:48'),
(51, 'https://www.sendo.vn/shop/vaydamgiasi', 'vaydamgiasi.com', 'sendo.vn', '1', '0933325235', 'huynh_y1109@yahoo.com.vn', '4/39 Quang Trung, phường(xã) Thới Tam Thôn, Huyện Hóc Môn, Hồ Chí Minh', '2017-12-08 06:52:49', '2017-12-08 06:52:49'),
(52, 'https://www.sendo.vn/shop/haanhshop', 'haanhshop', 'sendo.vn', '1', '0904875895', 'dongugiasi@gmail.com', 'Hồ Chí Minh, Việt  Nam - Shop giao hàng tận nơi trên toàn quốc, phường(xã) Xã Bà Điểm, Huyện Hóc Môn, Hồ Chí Minh', '2017-12-08 06:52:50', '2017-12-08 06:52:50'),
(53, 'https://www.sendo.vn/shop/lionboutique', 'Lion Boutique', 'sendo.vn', '1', '0965163456', 'lion_boutique@yahoo.com', '69 lê lợi, phường(xã) Phường Phước Hiệp, Thành phố Bà Rịa, Bà Rịa–Vũng Tàu', '2017-12-08 06:52:51', '2017-12-08 06:52:51'),
(54, 'https://www.sendo.vn/shop/lusini', 'Lusini', 'sendo.vn', '1', '0908978040', 'Nguyenvutrong89@gmail.com', 'Tòa nhà FPT Tân Thuận, Lô 29B-31B-33B, Đường Tân Thuận, KCX Tân Thuận, phường(xã) Phường Tân Thuận Đông, Quận 7, Hồ Chí Minh', '2017-12-08 06:52:51', '2017-12-08 06:52:51'),
(55, 'https://www.sendo.vn/shop/dingding', 'Ding Ding', 'sendo.vn', '1', '0938727058', 'anhgeeky@gmail.com', '63/2A Lê Văn Khương, Khu phố 5, phường(xã) Hiệp Thành, Quận 12, Hồ Chí Minh', '2017-12-08 06:52:52', '2017-12-08 06:52:52'),
(56, 'https://www.sendo.vn/shop/co-lau-shop', 'Cỏ Lau Shop', 'sendo.vn', '1', '0907646299', 'shopcolau@gmail.com', '162 Pasteur , phường(xã) Phường Bến Nghé, Quận 1, Hồ Chí Minh', '2017-12-08 06:52:53', '2017-12-08 06:52:53'),
(57, 'https://www.sendo.vn/shop/giay-nam-cao-cap', 'Giày Nam Thiên Trường', 'sendo.vn', '1', '0963380380', 'dinhlanh2307@gmail.com', '327/13 Âu Cơ, phường(xã) Phú Trung, Quận Tân Phú, Hồ Chí Minh', '2017-12-08 06:52:53', '2017-12-08 06:52:53'),
(58, 'https://www.sendo.vn/shop/thai-hoangfashion', 'THAI HOANGFASHION', 'sendo.vn', '1', '0903347896', 'nhungmilan@gmail.com', '1025/1D CÁCH MẠNG THÁNG 8, phường(xã) 7, Quận Tân Bình, Hồ Chí Minh', '2017-12-08 06:52:54', '2017-12-08 06:52:54'),
(59, 'https://www.sendo.vn/shop/vungmanh', 'Máy tính Vững mạnh', 'sendo.vn', '1', '0962774328', 'kientvnd@gmail.com', 'Số 15 ngõ 41 Phố Vọng - Hai Bà Trưng - Hà Nội, phường(xã) Phường Đồng Tâm, Quận Hai Bà Trưng, Hà Nội', '2017-12-08 06:52:55', '2017-12-08 06:52:55'),
(60, 'https://www.sendo.vn/shop/karanvietnam', 'Karanvietnam', 'sendo.vn', '1', '0907571687', 'nguyenhoai16_09@yahoo.com.vn', '63/18 Đỗ Nhuận, P.Sơn Kỳ, Q.Tân Phú, phường(xã) Sơn Kỳ, Quận Tân Phú, Hồ Chí Minh', '2017-12-08 06:52:55', '2017-12-08 06:52:55'),
(61, 'https://www.sendo.vn/shop/phukiendexinh', 'Phukiendexinh', 'sendo.vn', '1', '0933189879', 'tphamdang@gmail.com', '46 Hồ Bá Kiện, phường(xã) 15, Quận 10, Hồ Chí Minh', '2017-12-08 06:52:56', '2017-12-08 06:52:56'),
(62, 'https://www.sendo.vn/shop/mac-la-xinh', 'Mặc Là Xinh', 'sendo.vn', '1', '01699286268', 'trangnguyen.ftu2@gmail.com', '239/7B Bà Hom , phường(xã) 13, Quận 6, Hồ Chí Minh', '2017-12-08 06:52:57', '2017-12-08 06:52:57'),
(63, 'https://www.sendo.vn/shop/baotran_collection', 'Baotran.Xshop', 'sendo.vn', '1', '0937575141', 'baotran.xshop@gmail.com', '2/10 (Số mới 581) Quang Trung P11 Gò vấp tp.hcm, phường(xã) Phường 11, Quận Gò Vấp, Hồ Chí Minh', '2017-12-08 06:52:58', '2017-12-08 06:52:58'),
(64, 'https://www.sendo.vn/shop/dieukhien', 'Điều khiển từ xa batto', 'sendo.vn', '1', '0946586858', 'quockhanh@battocentre.com', 'Số 6A ngõ 17 Phố Hoàng Ngọc Phách, phường(xã) Láng Hạ, Quận Đống Đa, Hà Nội', '2017-12-08 06:52:58', '2017-12-08 06:52:58'),
(65, 'https://www.sendo.vn/shop/tipi-watch', 'TiPi Watch', 'sendo.vn', '1', '0933162652', 'ms.mailanphuong@gmail.com', '5/7 Nguyễn Công Hoan, phường(xã) Phường 03, Quận Bình Thạnh, Hồ Chí Minh', '2017-12-08 06:52:59', '2017-12-08 06:52:59'),
(66, 'https://www.sendo.vn/shop/xukakids', 'XukaKids', 'sendo.vn', '1', '01667864478', 'bhcucphuong@yahoo.com', '116/33 Nguyễn Văn Lượng, P.17 Gò Vấp , phường(xã) 17, Quận Gò Vấp, Hồ Chí Minh', '2017-12-08 06:53:00', '2017-12-08 06:53:00'),
(67, 'https://www.sendo.vn/shop/shopyeuthuong', 'Shop Yêu Thương', 'sendo.vn', '1', '0934178039', 'ngcvanle@gmail.com', 'Chợ chiều Mai Văn Vĩnh, 54/89 Đường số 33 (Đảo Đào Hoa), phường(xã) Phường Tân Kiểng, Quận 7, Hồ Chí Minh', '2017-12-08 06:53:01', '2017-12-08 06:53:01'),
(68, 'https://www.sendo.vn/shop/thanhtamgiay', 'thanhtamgiay', 'sendo.vn', '1', '0888661661', 'Thanhtamshopvn@gmail.com', '015 Chung Cư Phan Văn Trị Đường Lê Hồng Phong, phường(xã) Phường 2, Quận 5, Hồ Chí Minh', '2017-12-08 06:53:02', '2017-12-08 06:53:02'),
(69, 'https://www.sendo.vn/shop/bookbuy', 'Bookbuy', 'sendo.vn', '1', '0933109009', 'info@bookbuy.vn', '2Bis, Nguyễn Thị Minh Khai, phường(xã) Phường Đa Kao, Quận 1, Hồ Chí Minh', '2017-12-08 06:53:03', '2017-12-08 06:53:03'),
(70, 'https://www.sendo.vn/shop/iplaza', 'Iplaza', 'sendo.vn', '1', '0963505870', 'vungocchimai@yahoo.com', 'số nhà 21 ngõ 250 Nguyễn Xiển- Thanh Xuân- Hà Nội, phường(xã) , Quận Thanh Xuân, Hà Nội', '2017-12-08 06:53:04', '2017-12-08 06:53:04'),
(71, 'https://www.sendo.vn/shop/magicwalker', 'magic walker', 'sendo.vn', '1', '0966843338', 'magicwalker1982@yahoo.com.vn', 'số nhà 74/150 đường Kim Hoa , phường Phương Liên , Đống Đa , Hà Nội , phường(xã) Phường Kim Liên, Quận Đống Đa, Hà Nội', '2017-12-08 06:53:04', '2017-12-08 06:53:04'),
(72, 'https://www.sendo.vn/shop/shopphuongnguyen', 'Shopphuongnguyen', 'sendo.vn', '1', '0913813896', 'Phuongbichnguyen2011@gmail.com', '6 nguyễn như đổ, phường(xã) Phường Văn Miếu, Quận Đống Đa, Hà Nội', '2017-12-08 06:53:05', '2017-12-08 06:53:05'),
(73, 'https://www.sendo.vn/shop/dolly', 'Dolly', 'sendo.vn', '1', '0981820052', 'thoitrangdolly@gmail.com', '294/2 Bùi Đình Túy, phường(xã) Phường 12, Quận Bình Thạnh, Hồ Chí Minh', '2017-12-08 06:53:06', '2017-12-08 06:53:06'),
(74, 'https://www.sendo.vn/shop/shop252', 'shop252', 'sendo.vn', '1', '0987367163', 'trantruyen156@gmail.com', '304/6 nguyễn thượng hiền, phường(xã) Phường 05, Quận Phú Nhuận, Hồ Chí Minh', '2017-12-08 06:53:07', '2017-12-08 06:53:07'),
(75, 'https://www.sendo.vn/shop/ao-quan', 'vay-ao', 'sendo.vn', '1', '0903345798', 'nana.dealmarket@gmail.com', '17 Huỳnh Lan Khanh, phường(xã) 2, Quận Tân Bình, Hồ Chí Minh', '2017-12-08 06:53:07', '2017-12-08 06:53:07'),
(76, 'https://www.sendo.vn/shop/shopmuaxuan', 'Shop Mùa Xuân', 'sendo.vn', '1', '0903319840', 'uyenuong@gmail.com', '422 Vĩnh Viễn, phường(xã) Phường 08, Quận 10, Hồ Chí Minh', '2017-12-08 06:53:08', '2017-12-08 06:53:08'),
(77, 'https://www.sendo.vn/shop/phukiengiasivn', 'Phụ Kiện Giá Sỉ', 'sendo.vn', '1', '0982128029', 'sale.phukiengiasivn@gmail.com', '156/34B Đặng Văn Ngữ, phường 14, phường(xã) Phường 14, Quận Phú Nhuận, Hồ Chí Minh', '2017-12-08 06:53:09', '2017-12-08 06:53:09'),
(78, 'https://www.sendo.vn/shop/dealsaigonvn', 'Dealsaigonvn', 'sendo.vn', '1', '0912786151', 'huynhthaoqtkd@gmail.com', '44 Đường C27 , phường(xã) Phường 12, Quận Tân Bình, Hồ Chí Minh', '2017-12-08 06:53:10', '2017-12-08 06:53:10'),
(79, 'https://www.sendo.vn/shop/okokmenshop', 'okokmenshop', 'sendo.vn', '1', '0943395671', 'nizhidao600@gmail.com', 'số 16 xóm ven hồ, phường(xã) phú diễn, Quận Bắc Từ Liêm, Hà Nội', '2017-12-08 06:53:10', '2017-12-08 06:53:10'),
(80, 'https://www.sendo.vn/shop/phukienlaptop', 'Phụ Kiện Laptop', 'sendo.vn', '1', '0906363983', 'phamlegiaco@yahoo.com', '373/47 Lý Thường Kiệt, phường(xã) Phường 09, Quận Tân Bình, Hồ Chí Minh', '2017-12-08 06:53:11', '2017-12-08 06:53:11'),
(81, 'https://www.sendo.vn/shop/shoplongthinh', 'shoplongthinh', 'sendo.vn', '1', '0909216838', 'leonchan86@gmail.com', '56 Hàn Hải Nguyên, phường(xã) 16, Quận 11, Hồ Chí Minh', '2017-12-08 06:53:12', '2017-12-08 06:53:12'),
(82, 'https://www.sendo.vn/shop/1giaymua', '1giâymua', 'sendo.vn', '1', '0915626326', '1giaymua@gmail.com', '394 Nguyễn Duy Dương, Phường 9, Quận 10, phường(xã) 9, Quận 10, Hồ Chí Minh', '2017-12-08 06:53:12', '2017-12-08 06:53:12'),
(83, 'https://www.sendo.vn/shop/sexybrahouse', 'sexybrahouse', 'sendo.vn', '1', '0907739937', 'ngavobich@ymail.com', '35 Nguyễn Phi Khanh, F Tân Định, Q1, phường(xã) Phường Tân Định, Quận 1, Hồ Chí Minh', '2017-12-08 06:53:13', '2017-12-08 06:53:13'),
(84, 'https://www.sendo.vn/shop/annabeauty', 'Mỹ phẩm Anna', 'sendo.vn', '1', '0906324504', 'anna_2818@yahoo.com.vn', '373/47 Lý Thường Kiệt , phường(xã) Phường 09, Quận Tân Bình, Hồ Chí Minh', '2017-12-08 06:53:14', '2017-12-08 06:53:14'),
(85, 'https://www.sendo.vn/shop/bao-da-op-lung-dien-thoai', 'Lê tưởng', 'sendo.vn', '1', '0941262262', 'letrituong89@gmail.com', '1/62/183A Lĩnh Nam, phường(xã) , Quận Hoàng Mai, Hà Nội', '2017-12-08 06:53:14', '2017-12-08 06:53:14'),
(86, 'https://www.sendo.vn/shop/lamour', 'L\'amour Boutique', 'sendo.vn', '1', '0981817185', 'duyhung1984vn@yahoo.com', '374/6/8 đường Âu Cơ, phường(xã) Phường 10, Quận Tân Bình, Hồ Chí Minh', '2017-12-08 06:53:15', '2017-12-08 06:53:15'),
(87, 'https://www.sendo.vn/shop/vay-cong-so', 'Thời Trang Lady', 'sendo.vn', '1', '01669079123', 'tuongtmdt@gmail.com', 'Tòa B, CT36 Định Công, phường(xã) Phường Định Công, Quận Hoàng Mai, Hà Nội', '2017-12-08 06:53:16', '2017-12-08 06:53:16'),
(88, 'https://www.sendo.vn/shop/binhsua', 'babyMAM.vn', 'sendo.vn', '1', '0908416476', 'tinyminh@yahoo.com', '898 Hưng Phú ad, phường(xã) 10, Quận 8, Hồ Chí Minh', '2017-12-08 06:53:16', '2017-12-08 06:53:16'),
(89, 'https://www.sendo.vn/shop/shop-happy-family', 'shop-happy-family', 'sendo.vn', '1', '0989731800', 'hatrangtt@gmail.com', 'Hà Đông, Văn Phú, phường(xã) Phường Phú La, Quận Hà Đông, Hà Nội', '2017-12-08 06:53:17', '2017-12-08 06:53:17'),
(90, 'https://www.sendo.vn/shop/nts', 'NTS', 'sendo.vn', '1', '0909247427', 'thanhson2008@gmail.com', '0901 lô D chung cư Phạm Viết Chánh, phường(xã) P.19, Quận Bình Thạnh, Hồ Chí Minh', '2017-12-08 06:53:18', '2017-12-08 06:53:18'),
(91, 'https://www.sendo.vn/shop/jeans-style', 'Jeans Style', 'sendo.vn', '1', '0983254657', 'quanjeandep@gmail.com', 'Số 55 Đội Cấn, Ba Đình, phường(xã) Đội Cấn, Quận Ba Đình, Hà Nội', '2017-12-08 06:53:19', '2017-12-08 06:53:19'),
(92, 'https://www.sendo.vn/shop/9hotdeal9', '9HotDeal9', 'sendo.vn', '1', '01686258583', '9hotdeal9@gmail.com', '20 Đường số 3, phường(xã) Phường 10, Quận Tân Bình, Hồ Chí Minh', '2017-12-08 06:53:19', '2017-12-08 06:53:19'),
(93, 'https://www.sendo.vn/shop/shopnk', 'N&K', 'sendo.vn', '1', '0963192122', 'nguyentrongnghia.bigedu@gmail.com', '86/127 Đường Trường Chinh,P12,Q Tân Bình,TPHCM, phường(xã) Phường 12, Quận Tân Bình, Hồ Chí Minh', '2017-12-08 06:53:20', '2017-12-08 06:53:20'),
(94, 'https://www.sendo.vn/shop/cong-so-cao-cap', 'Công Sở Cao Cấp', 'sendo.vn', '1', '0902749989', 'truyen262014@gmail.com', '193 trương vĩnh ký, phường(xã) Phường Tân Thành, Quận Tân Phú, Hồ Chí Minh', '2017-12-08 06:53:21', '2017-12-08 06:53:21'),
(95, 'https://www.sendo.vn/shop/kidshome', 'Kidshome', 'sendo.vn', '1', '01692041191', 'huyentrangmiss88@gmail.com', 'Số 23 - Ngách 26 - Ngõ 454 Minh Khai, phường(xã) Phường Vĩnh Tuy, Quận Hai Bà Trưng, Hà Nội', '2017-12-08 06:53:22', '2017-12-08 06:53:22'),
(96, 'https://www.sendo.vn/shop/hangnhatxachtay', 'Hàng Nhật xách tay', 'sendo.vn', '1', '0909387360', 'tlqmai@gmail.com', '856 Tạ Quang Bửu Phường 5 Quận 8, phường(xã) 5, Quận 8, Hồ Chí Minh', '2017-12-08 06:53:22', '2017-12-08 06:53:22'),
(97, 'https://www.sendo.vn/shop/bi-kitty', 'BI KITTY', 'sendo.vn', '1', '0908205070', 'ngocbichvd2606@gmail.com', '295 Tân Kỳ Tân Quý, phường(xã) Phường Tân Sơn Nhì, Quận Tân Phú, Hồ Chí Minh', '2017-12-08 06:53:23', '2017-12-08 06:53:23'),
(98, 'https://www.sendo.vn/shop/tin-hoc-phu-lam', 'TIN HỌC PHÚ LÂM', 'sendo.vn', '2', '0908476230', 'tinhocphulam@gmail.com', '251C NGUYỄN VĂN LUÔNG P.11 Q.6 TP. HCM, phường(xã) Phường 11, Quận 6, Hồ Chí Minh', '2017-12-08 06:53:24', '2017-12-08 06:53:24'),
(99, 'https://www.sendo.vn/shop/giamuatot', 'giamuatot', 'sendo.vn', '2', '0976870641', 'tieuvanhiep123@yahoo.com.vn', '1113/14/15 huỳnh Tấn Phát,Phướng Phú Thuận,Quận 7, phường(xã) Phường Phú Thuận, Quận 7, Hồ Chí Minh', '2017-12-08 06:53:25', '2017-12-08 06:53:25'),
(100, 'https://www.sendo.vn/shop/numberone', 'NUMBERONE', 'sendo.vn', '2', '0905412370', 'you_andi16@yahoo.com', '1025/1D Cách Mạng Tháng Tám, phường(xã) Phường 07, Quận Tân Bình, Hồ Chí Minh', '2017-12-08 06:53:26', '2017-12-08 06:53:26'),
(101, 'https://www.sendo.vn/shop/mivie-damcaocap', 'mivie-damcaocap', 'sendo.vn', '2', '0932649762', 'acct.tamle01@gmail.com', '193 Trương Vĩnh Ký , phường(xã) Tân Thành, Quận Tân Phú, Hồ Chí Minh', '2017-12-08 06:53:26', '2017-12-08 06:53:26'),
(102, 'https://www.sendo.vn/shop/dam-xinh-xinh', 'dam-xinh-xinh', 'sendo.vn', '2', '0907273277', 'phamthimongtinh@gmail.com', 'Cty PTI  81/2 Phó Đức Chính, phường(xã) 1, Quận Bình Thạnh, Hồ Chí Minh', '2017-12-08 06:53:27', '2017-12-08 06:53:27'),
(103, 'https://www.sendo.vn/shop/quatangkydieu-com', 'quatangkydieu_com', 'sendo.vn', '2', '0905532326', 'dung@quatangkydieu.com', '147 Đường 3/2, phường(xã) Phường Thuận Phước, Quận Hải Châu, Đà Nẵng', '2017-12-08 06:53:28', '2017-12-08 06:53:28'),
(104, 'https://www.sendo.vn/shop/libertyshop', 'C5 Shop', 'sendo.vn', '2', '0938688697', 'nguyendao199137@gmail.com', '981/1A Cách Mạng Tháng 8, phường(xã) 7, Quận Tân Bình, Hồ Chí Minh', '2017-12-08 06:53:28', '2017-12-08 06:53:28'),
(105, 'https://www.sendo.vn/shop/brada_maxi', 'BRADA & MAXI Fashion', 'sendo.vn', '2', '0934066808', 'info@brada-maxi.com', 'Tầng 1 TTTM VINCOM MAXIMARK - Số 3, Đường 3 Tháng 2, phường(xã) Phường 11, Quận 10, Hồ Chí Minh', '2017-12-08 06:53:29', '2017-12-08 06:53:29'),
(106, 'https://www.sendo.vn/shop/nicestore', 'NICE STORE', 'sendo.vn', '2', '0908466551', 'phukienipadx@gmail.com', '174/47 Thái Phiên, phường(xã) Phường 08, Quận 11, Hồ Chí Minh', '2017-12-08 06:53:29', '2017-12-08 06:53:29'),
(107, 'https://www.sendo.vn/shop/dam-cong-so-han-quoc', 'dam-cong-so-han-quoc', 'sendo.vn', '2', '0908565496', 'bexinhmedep_sale@yahoo.com.vn', '256/42/36 Phan Huy Ích, phường(xã) P12, Quận Gò Vấp, Hồ Chí Minh', '2017-12-08 06:53:30', '2017-12-08 06:53:30'),
(108, 'https://www.sendo.vn/shop/edaysshop', 'eDaysShop', 'sendo.vn', '2', '0932707559', 'edaysshop@gmail.com', '22 đường TL 50, khu phố 2, phường(xã) Phường Thạnh Lộc, Quận 12, Hồ Chí Minh', '2017-12-08 06:53:30', '2017-12-08 06:53:30'),
(109, 'https://www.sendo.vn/shop/yukieo', 'yukieo', 'sendo.vn', '2', '0932707559', 'dinhcongnguyen552@yahoo.com', '59 đường TL 50, khu phố 2, phường(xã) thạnh lộc, Quận 12, Hồ Chí Minh', '2017-12-08 06:53:31', '2017-12-08 06:53:31'),
(110, 'https://www.sendo.vn/shop/woman-in-love', 'woman in love', 'sendo.vn', '2', '0908183434', 'tuongthi1984@gmail.com', '307/12 nguyễn văn trỗi, phường(xã) Phường 01, Quận Tân Bình, Hồ Chí Minh', '2017-12-08 06:53:33', '2017-12-08 06:53:33'),
(111, 'https://www.sendo.vn/shop/antuongshop', 'Ấn tượng shop', 'sendo.vn', '2', '01647736087', 'antuongshop.kh@gmail.com', '81 Trần Quang Diệu, P14, phường(xã) Phường 14, Quận 3, Hồ Chí Minh', '2017-12-08 06:53:34', '2017-12-08 06:53:34'),
(112, 'https://www.sendo.vn/shop/me-va-be', 'Familylove.vn', 'sendo.vn', '2', '0913180045', 'vinhphuoc91@gmail.com', '491 Hậu Giang, phường(xã) Phường 11, Quận 6, Hồ Chí Minh', '2017-12-08 06:53:34', '2017-12-08 06:53:34'),
(113, 'https://www.sendo.vn/shop/nhatminhshop', 'Nhật Minh Shop', 'sendo.vn', '2', '0963787206', 'luongthidung@gmail.com', '117c Nguyễn Đình Chính, phường(xã) Phường 15, Quận Phú Nhuận, Hồ Chí Minh', '2017-12-08 06:53:35', '2017-12-08 06:53:35'),
(114, 'https://www.sendo.vn/shop/thoitrangsale', 'Thời Trang Sale', 'sendo.vn', '2', '0933250480', 'tiamo_chinh@yahoo.co.uk', '65/27 Huỳnh Văn Bánh, phường(xã) Phường 17, Quận Phú Nhuận, Hồ Chí Minh', '2017-12-08 06:53:35', '2017-12-08 06:53:35'),
(115, 'https://www.sendo.vn/shop/baongoc', 'Kim Liên', 'sendo.vn', '2', '0936008360', 'thoitrangkimlien@yahoo.com', '20 Đường số 3, phường(xã) Phường 10, Quận Tân Bình, Hồ Chí Minh', '2017-12-08 06:53:36', '2017-12-08 06:53:36'),
(116, 'https://www.sendo.vn/shop/men', 'Menshop', 'sendo.vn', '2', '0907063579', 'duongvinhtrung@gmail.com', '230/8 Pasteur, Phường 6, phường(xã) Phường 06, Quận 3, Hồ Chí Minh', '2017-12-08 06:53:37', '2017-12-08 06:53:37'),
(117, 'https://www.sendo.vn/shop/baby-cun-shop', 'Baby Cún Shop', 'sendo.vn', '2', '0912639726', 'tieulongnu19842003@yahoo.com', '28 Đội Cấn, phường(xã) Phường Đội Cấn, Quận Ba Đình, Hà Nội', '2017-12-08 06:53:37', '2017-12-08 06:53:37'),
(118, 'https://www.sendo.vn/shop/susu', 'Susu', 'sendo.vn', '2', '0938141285', 'thaottt4@fpt.com.vn', 'tòa nhà fpt tân thuận, phường(xã) Phường Tân Thuận Đông, Quận 7, Hồ Chí Minh', '2017-12-08 06:53:38', '2017-12-08 06:53:38'),
(119, 'https://www.sendo.vn/shop/tranthuykl-shop-s-8b4f1', 'tranthuykl shop\'s 8b4f1', 'sendo.vn', '2', '0904413412', 'tranthuykl@gmail.com', '122 - Bình Lợi , phường(xã) Phường 13, Quận Bình Thạnh, Hồ Chí Minh', '2017-12-08 06:53:38', '2017-12-08 06:53:38'),
(120, 'https://www.sendo.vn/shop/shoptest4', 'shoptest4', 'sendo.vn', '2', '0906300171', 'devtest688@yahoo.com.vn', 'trwerrweefs, phường(xã) 11, Quận Bình Thủy, Cần Thơ', '2017-12-08 06:53:39', '2017-12-08 06:53:39'),
(121, 'https://www.sendo.vn/shop/riri-shop', 'RiRi shop', 'sendo.vn', '2', '0977799391', 'vtmt2310@yahoo.com', '78/4 Nguyễn Văn Săng, phường(xã) Phường Tân Sơn Nhì, Quận Tân Phú, Hồ Chí Minh', '2017-12-08 06:53:40', '2017-12-08 06:53:40'),
(122, 'https://www.sendo.vn/shop/depvatot', 'Đẹp & Tốt', 'sendo.vn', '2', '0902296128', 'sale@depvatot.vn', '38/16/18 Đường 24, phường(xã) Phường 12, Quận Gò Vấp, Hồ Chí Minh', '2017-12-08 06:53:41', '2017-12-08 06:53:41'),
(123, 'https://www.sendo.vn/shop/madamdzi', 'MadamDzi - Dealhangthai.com', 'sendo.vn', '2', '01689525650', 'madamdzi@gmail.com', '42 Bis B Trần Đình Xu, phường(xã) Cô Giang, Quận 1, Hồ Chí Minh', '2017-12-08 06:53:42', '2017-12-08 06:53:42'),
(124, 'https://www.sendo.vn/shop/orangefashion', 'Orange Fashion', 'sendo.vn', '2', '01686870687', 'huynhngochan0612@gmail.com', '888/89 Lạc Long Quân, phường(xã) 8, Quận Tân Bình, Hồ Chí Minh', '2017-12-08 06:53:43', '2017-12-08 06:53:43'),
(125, 'https://www.sendo.vn/shop/heu-shop', 'Hêu Shop', 'sendo.vn', '2', '0937283980', 'blue_apple_83@yahoo.com', '232/14 Võ Thị Sáu, phường(xã) Phường 07, Quận 3, Hồ Chí Minh', '2017-12-08 06:53:43', '2017-12-08 06:53:43'),
(126, 'https://www.sendo.vn/shop/thoi-trang-han-quoc', 'Đẹp online', 'sendo.vn', '2', '0938541817', 'trunghaiktv@gmail.com', '105 Lô F Chung Cư Lê Thị Riêng, phường(xã) Phường 15, Quận 10, Hồ Chí Minh', '2017-12-08 06:53:44', '2017-12-08 06:53:44'),
(127, 'https://www.sendo.vn/shop/happyshop', 'happyshop', 'sendo.vn', '2', '0935833811', 'hothikien@gmail.com', '725/30/19 Trường Chinh, P Tây Thạnh, tân Phú, phường(xã) Phường Tây Thạnh, Quận Tân Phú, Hồ Chí Minh', '2017-12-08 06:53:45', '2017-12-08 06:53:45'),
(128, 'https://www.sendo.vn/shop/nuta-bag', 'Nuta Bag', 'sendo.vn', '2', '0946967850', 'nguyen.3links@gmail.com', 'Số 34 Đường D9, phường(xã) tây thạnh, Quận Tân Phú, Hồ Chí Minh', '2017-12-08 06:53:46', '2017-12-08 06:53:46'),
(129, 'https://www.sendo.vn/shop/korea-shop', 'korea-shop', 'sendo.vn', '2', '0937681518', 'dnnguyen87@gmail.com', '61/2 Phan Đình Phùng, P.17, Phú Nhuận, Hồ Chí Minh, phường(xã) Phường 01, Quận Phú Nhuận, Hồ Chí Minh', '2017-12-08 06:53:46', '2017-12-08 06:53:46'),
(130, 'https://www.sendo.vn/shop/famy', 'Famy', 'sendo.vn', '2', '0988570474', 'nguyenthinguyen@gmail.com', 'A807 CC Gia Phú, phường(xã) Bình Hưng Hòa, Quận Bình Tân, Hồ Chí Minh', '2017-12-08 06:53:47', '2017-12-08 06:53:47'),
(131, 'https://www.sendo.vn/shop/cucvip-vn', 'cucvip-vn', 'sendo.vn', '2', '0939022795', 'cucvip.vn@gmail.com', '63 tùng thiện vương, phường(xã) Phường 11, Quận 8, Hồ Chí Minh', '2017-12-08 06:53:48', '2017-12-08 06:53:48'),
(132, 'https://www.sendo.vn/shop/suavn', 'sua.vn', 'sendo.vn', '2', '01282222762', 'info@sua.vn', '435 An Dương Vương, P. 11, Q6 Tp.HCM, phường(xã) Phường 11, Quận 6, Hồ Chí Minh', '2017-12-08 06:53:49', '2017-12-08 06:53:49'),
(133, 'https://www.sendo.vn/shop/mypham', 'mypham', 'sendo.vn', '2', '0938796719', 'lamtanhiep1203@gmail.com', '437 Nơ Trang Long, phường(xã) 13, Quận Bình Thạnh, Hồ Chí Minh', '2017-12-08 06:53:49', '2017-12-08 06:53:49'),
(134, 'https://www.sendo.vn/shop/sieuthitainha', 'sieuthitainha.vn', 'sendo.vn', '2', '0943000126', 'sieuthitainha.vn@gmail.com', '74 Đường 3413 Phạm Thế Hiển, phường(xã) Phường 07, Quận 8, Hồ Chí Minh', '2017-12-08 06:53:50', '2017-12-08 06:53:50'),
(135, 'https://www.sendo.vn/shop/cherryshop99', 'cherryshop99', 'sendo.vn', '2', '01227136005', 'lethiensu86@yahoo.com.vn', '124/104b xô viết nghệ tĩnh, phường(xã) 21, Quận Bình Thạnh, Hồ Chí Minh', '2017-12-08 06:53:50', '2017-12-08 06:53:50'),
(136, 'https://www.sendo.vn/shop/sumi', 'sumi', 'sendo.vn', '2', '0932707559', 'phamthitu82@gmail.com', '59 đường Thạnh Lộc 50, Khu Phố 2,, phường(xã) Thạnh Lộc, Quận 12, Hồ Chí Minh', '2017-12-08 06:53:51', '2017-12-08 06:53:51'),
(137, 'https://www.sendo.vn/shop/trangsucbaohan', 'trangsucbaohan', 'sendo.vn', '2', '0993487090', 'bahaco.com@gmail.com', 'VPGD Tầng 2, số 19 Nguyễn Duy Dương, phường(xã) Phường 08, Quận 5, Hồ Chí Minh', '2017-12-08 06:53:52', '2017-12-08 06:53:52'),
(138, 'https://www.sendo.vn/shop/vaydamthoitrang', 'vaydamthoitrang', 'sendo.vn', '2', '0948001125', 'vaydamthoitrang@yahoo.com.vn', '14/31 đường HT 43, phường(xã) Hiệp Thành, Quận 12, Hồ Chí Minh', '2017-12-08 06:53:53', '2017-12-08 06:53:53'),
(139, 'https://www.sendo.vn/shop/viethoa-beauty-shop', 'VietHoa Beauty Shop', 'sendo.vn', '2', '0913530831', 'hatim60683@gmail.com', 'cc Khang gia, lô B, phường(xã) 14, Quận Gò Vấp, Hồ Chí Minh', '2017-12-08 06:53:53', '2017-12-08 06:53:53'),
(140, 'https://www.sendo.vn/shop/bumie', 'Bumie', 'sendo.vn', '2', '0902288646', 'bumshopvn@yahoo.com', '13 Ngô Thị Thu Minh, phường(xã) Phường 02, Quận Tân Bình, Hồ Chí Minh', '2017-12-08 06:53:54', '2017-12-08 06:53:54'),
(141, 'https://www.sendo.vn/shop/mitfashion', 'mitfashion', 'sendo.vn', '2', '0937879012', 'cunhaycuoicung124@yahoo.com', '72/12 tây thạnh, p tây thạnh, quân tân phú, phường(xã) Phường Tây Thạnh, Quận Tân Phú, Hồ Chí Minh', '2017-12-08 06:53:55', '2017-12-08 06:53:55'),
(142, 'https://www.sendo.vn/shop/thao-chip-shop', 'Thảo Chíp Shop', 'sendo.vn', '2', '0934609541', 'thaodtp123@gmail.com', '1/3A Đường Số 12, F. Hiệp Bình Chánh, Thủ Đức (Gần siêu thị Co.op mart bình triệu), phường(xã) Phường Hiệp Bình Chánh, Quận Thủ Đức, Hồ Chí Minh', '2017-12-08 06:53:56', '2017-12-08 06:53:56'),
(143, 'https://www.sendo.vn/shop/thoitranghd', 'thoitranghd', 'sendo.vn', '2', '0909393552', 'hoangphuonghpv@yahoo.com', '133/45 Đỗ Xuân Hợp tổ 3, KP2, phường(xã) Phường Phước Long B, Quận 9, Hồ Chí Minh', '2017-12-08 06:53:56', '2017-12-08 06:53:56'),
(144, 'https://www.sendo.vn/shop/goodshop24h', 'goodshop24h', 'sendo.vn', '2', '0909682311', 'support@goodshop24h.com', '13/1 ĐỒNG ĐEN PHƯỜNG 12 QUẬN TÂN BÌNH, phường(xã) Phường 12, Quận Tân Bình, Hồ Chí Minh', '2017-12-08 06:53:57', '2017-12-08 06:53:57'),
(145, 'https://www.sendo.vn/shop/got-ngoc', 'Gót Ngọc', 'sendo.vn', '2', '0919060306', 'buitrieuanh@gmail.com', '64 Công Trường An Đông (cổng sau chợ An Đông). , phường(xã) Phường 09, Quận 5, Hồ Chí Minh', '2017-12-08 06:53:58', '2017-12-08 06:53:58'),
(146, 'https://www.sendo.vn/shop/shopdobau', 'ShopDoBau', 'sendo.vn', '2', '0909214811', 'shopdobau@yahoo.com', 'ERA TOWN Block B3 29-10 Đường 15B Phạm Hữu Lầu, phường(xã) Phường Phú Mỹ, Quận 7, Hồ Chí Minh', '2017-12-08 06:53:59', '2017-12-08 06:53:59'),
(147, 'https://www.sendo.vn/shop/dieu-store', 'Điệu Store', 'sendo.vn', '2', '01229950529', 'bongbingbong2008@yahoo.com', '551/90 Phan Văn Trị, P5, Gò Vấp, phường(xã) Phường 05, Quận Gò Vấp, Hồ Chí Minh', '2017-12-08 06:54:00', '2017-12-08 06:54:00'),
(148, 'https://www.sendo.vn/shop/lyly', 'Lyly', 'sendo.vn', '2', '0978075262', 'hue85hcm@yahoo.com.vn', '22 đường 64, p.Thảo Điền, Q.2, phường(xã) Phường Thảo Điền, Quận 2, Hồ Chí Minh', '2017-12-08 06:54:01', '2017-12-08 06:54:01'),
(149, 'https://www.sendo.vn/shop/shopquanaoviet', 'shopquanaoviet', 'sendo.vn', '2', '0908249729', 'ntluc1801@yahoo.com', '79/30/50 Âu Cơ, phường(xã) Phường 14, Quận 11, Hồ Chí Minh', '2017-12-08 06:54:01', '2017-12-08 06:54:01'),
(150, 'https://www.sendo.vn/shop/bosua', 'Bò Sữa', 'sendo.vn', '2', '0906078788', 'hailinh.nguyen@bosua.vn', '19 Võ Văn Tần, phường(xã) phường 6, Quận 3, Hồ Chí Minh', '2017-12-08 06:54:02', '2017-12-08 06:54:02'),
(151, 'https://www.sendo.vn/shop/cherry-vc', 'CHERRY VC', 'sendo.vn', '2', '01264678407', 'hungmyshoes@gmail.com', '13/24 Ton That Thuyet, phường(xã) Phuong 18 , Quận 4, Hồ Chí Minh', '2017-12-08 06:54:03', '2017-12-08 06:54:03'),
(152, 'https://www.sendo.vn/shop/tq_shop', 'tq_shop', 'sendo.vn', '2', '0987367163', 'mynhquan1912@gmail.com', '304/6 Nguyễn Thượng Hiền, phường(xã) Phường 05, Quận Phú Nhuận, Hồ Chí Minh', '2017-12-08 06:54:04', '2017-12-08 06:54:04'),
(153, 'https://www.sendo.vn/shop/lam-linh', 'Lam Linh', 'sendo.vn', '2', '0908060509', 'mylinh.lns@gmail.com', '118/29/1 Trần Văn Quang, phường(xã) 10, Quận Tân Bình, Hồ Chí Minh', '2017-12-08 06:54:05', '2017-12-08 06:54:05'),
(154, 'https://www.sendo.vn/shop/kimtuoi-shop', 'KIMTUOI shop', 'sendo.vn', '2', '0988876568', 'kimtuoi0210@gmail.com', '947/69 ĐƯỜNG  LẠC LONG QUÂN , phường(xã) PHƯỜNG 11, Quận Tân Bình, Hồ Chí Minh', '2017-12-08 06:54:05', '2017-12-08 06:54:05'),
(155, 'https://www.sendo.vn/shop/tancuongxanh001', 'tancuongxanh001', 'sendo.vn', '2', '0838111866', 'tancuongxanh001@gmail.com', '288A3 Nam Kỳ Khởi Nghĩa, P.8, Q.3, phường(xã) Phường 04, Quận 3, Hồ Chí Minh', '2017-12-08 06:54:06', '2017-12-08 06:54:06'),
(156, 'https://www.sendo.vn/shop/chethainguyenngon', 'chethainguyenngon', 'sendo.vn', '2', '0919998202', 'tancuongxanh01@gmail.com', '575 Hoàng Văn Thụ, phường(xã) Phường 04, Quận Tân Bình, Hồ Chí Minh', '2017-12-08 06:54:07', '2017-12-08 06:54:07'),
(157, 'https://www.sendo.vn/shop/ngoc-vy', 'Ngọc Vy', 'sendo.vn', '2', '01238858313', 'thuyluu0811@yahoo.com', '475/33 Hai bà trưng, phường(xã) 8, Quận 3, Hồ Chí Minh', '2017-12-08 06:54:08', '2017-12-08 06:54:08'),
(158, 'https://www.sendo.vn/shop/shop-orimy', 'SHOP ORIMY', 'sendo.vn', '3', '01285125165', 'shop.orimy@yahoo.com', '282A HÒA BÌNH ( cư xá hòa bình - khu D), phường(xã) Phường hiệp tân, Quận Tân Phú, Hồ Chí Minh', '2017-12-08 06:54:09', '2017-12-08 06:54:09'),
(159, 'https://www.sendo.vn/shop/gio-moi', 'Gió mới', 'sendo.vn', '3', '0932707559', 'myharry6@gmail.com', '59 đường TL50, Khu Phố 2, phường(xã) Thạnh Lộc, Quận 12, Hồ Chí Minh', '2017-12-08 06:54:09', '2017-12-08 06:54:09'),
(160, 'https://www.sendo.vn/shop/shopvinhmy', 'Shop Vinh Mỹ', 'sendo.vn', '3', '0908718548', 'nuochoa.tinhdau@yahoo.com', '73A/44 Dương Bá Trạc, phường(xã) Phường 01, Quận 8, Hồ Chí Minh', '2017-12-08 06:54:10', '2017-12-08 06:54:10'),
(161, 'https://www.sendo.vn/shop/the-gioi-tui-xach-292', 'thế giới túi xách 292', 'sendo.vn', '3', '0903016186', 'thegioituixach292@yahoo.com.vn', '18 Trương Quốc Dung , phường(xã) Phường 08, Quận Phú Nhuận, Hồ Chí Minh', '2017-12-08 06:54:11', '2017-12-08 06:54:11'),
(162, 'https://www.sendo.vn/shop/pc', 'p&c', 'sendo.vn', '3', '0932236311', 'fatcow_0310@yahoo.com.vn', '158/11 Hòa Hưng, phường(xã) Phường 13, Quận 10, Hồ Chí Minh', '2017-12-08 06:54:13', '2017-12-08 06:54:13'),
(163, 'https://www.sendo.vn/shop/tncc', 'Thanh niên chuyên cườii', 'sendo.vn', '3', '0904531292', 'tutay152@gmail.com', 'tầng 3 số 6 ngõ 203 Trường Chinh, phường(xã) Phường Khương Mai, Quận Thanh Xuân, Hà Nội', '2017-12-08 06:54:14', '2017-12-08 06:54:14'),
(164, 'https://www.sendo.vn/shop/vietonlineshop', 'Vietonlineshop', 'sendo.vn', '3', '01673146666', 'doquy89@gmail.com', 'số 27 ngõ 3 Cù Chính Lan, thanh xuân,hà nội, phường(xã) Phường Khương Mai, Quận Thanh Xuân, Hà Nội', '2017-12-08 06:54:15', '2017-12-08 06:54:15'),
(165, 'https://www.sendo.vn/shop/cuu-long-electronics', 'Cửu Long Electronics', 'sendo.vn', '3', '0932530129', 'chauthiengiang2808@gmail.com', '252F Cô Bắc, phường(xã) Phường Cô Giang, Quận 1, Hồ Chí Minh', '2017-12-08 06:54:16', '2017-12-08 06:54:16'),
(166, 'https://www.sendo.vn/shop/may-han-gia-re', 'Máy hàn giá rẻ', 'sendo.vn', '3', '0903408268', 'namnh@weldtec.com.vn', '435 Đường Giải Phóng, P. Phương Liệt, Q. Thanh Xuân, Hà Nộ, phường(xã) Phường Phương Liệt, Quận Thanh Xuân, Hà Nội', '2017-12-08 06:54:16', '2017-12-08 06:54:16'),
(167, 'https://www.sendo.vn/shop/tranhthuongthuong', 'tranhthuongthuong', 'sendo.vn', '3', '1', 'thuongthuong.net@gmail.com', ', phường(xã) , Quận 1, Hồ Chí Minh', '2017-12-08 06:54:17', '2017-12-08 06:54:17'),
(168, 'https://www.sendo.vn/shop/kubi-shop', 'KuBi Shop', 'sendo.vn', '3', '0908592934', 'huetien1214@gmail.com', 'C7B/119/15 Phạm Hùng, phường(xã) xã Bình Hưng, Huyện Bình Chánh, Hồ Chí Minh', '2017-12-08 06:54:18', '2017-12-08 06:54:18'),
(169, 'https://www.sendo.vn/shop/haitin', 'haitin', 'sendo.vn', '3', '0941359567', '0941359567', '243/2 bùi thị xuân, phường(xã) Phường 01, Quận Tân Bình, Hồ Chí Minh', '2017-12-08 06:54:19', '2017-12-08 06:54:19'),
(170, 'https://www.sendo.vn/shop/dep-khong-ti-vet', 'Đẹp Không Tì Vết', 'sendo.vn', '3', '01699669169', 'thuha8325@gmail.com', 'P1209 tháp T1, tòa nhà Bắc Hà C37 Bộ Công An, đường Tố Hữu, phường(xã) Phường Trung Văn, Quận Nam Từ Liêm, Hà Nội', '2017-12-08 06:54:22', '2017-12-08 06:54:22'),
(171, 'https://www.sendo.vn/shop/mon0506', 'mon0506', 'sendo.vn', '3', '0934085788', '0934085788', '219, phường(xã) Phường Phú Trung, Quận Tân Phú, Hồ Chí Minh', '2017-12-08 06:54:23', '2017-12-08 06:54:23'),
(172, 'https://www.sendo.vn/shop/monvicky', 'MonVicky', 'sendo.vn', '3', '0984550406', '0984550406', 'Khương Đình, phường(xã) Phường Hạ Đình, Quận Thanh Xuân, Hà Nội', '2017-12-08 06:54:24', '2017-12-08 06:54:24'),
(173, 'https://www.sendo.vn/shop/sunmie', 'SUNMIE', 'sendo.vn', '3', '01263931293', '01263931293', '83/145 lý nam đế, phường(xã) phường 7, Quận 11, Hồ Chí Minh', '2017-12-08 06:54:24', '2017-12-08 06:54:24'),
(174, 'https://www.sendo.vn/shop/qua-tang-gia-si', 'Quà Tặng Giá Sỉ', 'sendo.vn', '3', '0918102222', 'support@chipchipshop.com', 'số 484 Nguyễn Đình Chiểu, phường(xã) Phường 04, Quận 3, Hồ Chí Minh', '2017-12-08 06:54:25', '2017-12-08 06:54:25'),
(175, 'https://www.sendo.vn/shop/trevaxinh', 'trevaxinh', 'sendo.vn', '3', '0907992098', 'trevaxinh@gmail.com', '15/97/37, phạm ngọc thạch, phường(xã) hiệp thành, Thành phố Thủ Dầu Một, Bình Dương', '2017-12-08 06:54:26', '2017-12-08 06:54:26'),
(176, 'https://www.sendo.vn/shop/sonlong_shop', 'SONLONG_SHOP', 'sendo.vn', '3', '0979919106', 'hoangtu93x@gmail.com', '127/93 ÂU CƠ, phường(xã) P14, Quận 11, Hồ Chí Minh', '2017-12-08 06:54:27', '2017-12-08 06:54:27'),
(177, 'https://www.sendo.vn/shop/ngan-dinh-chuyen-tui', 'Ngân Đinh Chuyên Túi', 'sendo.vn', '3', '0983951415', 'phamsang.manulife@gmail.com', 'Số 21 - Ngõ 43 Phú Đô - Phú Đô - Nam Từ Liêm - HN, phường(xã) Phường Phú Đô, Quận Nam Từ Liêm, Hà Nội', '2017-12-08 06:54:27', '2017-12-08 06:54:27'),
(178, 'https://www.sendo.vn/shop/thiet-bi-ve-sinh-duc-chung', 'Thiết bị vệ sinh Đức Chung', 'sendo.vn', '3', '0948188133', 'chungkhet@gmail.com', 'Chợ Bê Tông , Xuân Trung , Thủy Xuân Tiên , Chương Mỹ , Hà Nội, phường(xã) Xã Thủy Xuân Tiên, Huyện Chương Mỹ, Hà Nội', '2017-12-08 06:54:28', '2017-12-08 06:54:28'),
(179, 'https://www.sendo.vn/shop/chan-ga-goi-dem-niam', 'Chăn ga gối đệm NIAM', 'sendo.vn', '3', '0919054618', 'tranhuyensaigon@gmail.com', '183/5 Bến Vân Đồn, phường(xã) Phường 05, Quận 4, Hồ Chí Minh', '2017-12-08 06:54:29', '2017-12-08 06:54:29'),
(180, 'https://www.sendo.vn/shop/bella_shop83', 'bella_shop83', 'sendo.vn', '3', '0938051012', 'ngobella83@yahoo.com.vn', '91/14 trần quang diệu, phường(xã) 13, Quận 3, Hồ Chí Minh', '2017-12-08 06:54:29', '2017-12-08 06:54:29'),
(181, 'https://www.sendo.vn/shop/alomenshop', 'alomen', 'sendo.vn', '3', '0932064341', 'VUONG1080.1@GMAIL.COM', '499/10f cmt8 , phường(xã) Phường 13, Quận 10, Hồ Chí Minh', '2017-12-08 06:54:30', '2017-12-08 06:54:30'),
(182, 'https://www.sendo.vn/shop/hahuma', 'HAHUMA', 'sendo.vn', '3', '0989449966', 'hahuma.com@gmail.com', '34 ngõ 34 Hoàng Cầu, phường(xã) Ô Chợ Dừa, Quận Đống Đa, Hà Nội', '2017-12-08 06:54:31', '2017-12-08 06:54:31'),
(183, 'https://www.sendo.vn/shop/trangjp', 'Trangjp', 'sendo.vn', '3', '0939999274', 'kieutrang9274@gmail.com', ', phường(xã) , Quận 1, Hồ Chí Minh', '2017-12-08 06:54:32', '2017-12-08 06:54:32'),
(184, 'https://www.sendo.vn/shop/nha-sach-an-binh', 'Nha sach An Binh', 'sendo.vn', '3', '0963094650', 'lamngoctuyetvn@gmail.com', '262 Lũy Bán Bích, phường(xã) Phường Hoà Thạnh, Quận Tân Phú, Hồ Chí Minh', '2017-12-08 06:54:32', '2017-12-08 06:54:32'),
(185, 'https://www.sendo.vn/shop/linh-kien-dien-tu-123', 'Linh kiện điện tử 123', 'sendo.vn', '3', '0978960646', 'halekshk86@gmail.com', 'Khu phố 4, phường(xã) Phường Sơn Lộc, Thị xã Sơn Tây, Hà Nội', '2017-12-08 06:54:33', '2017-12-08 06:54:33'),
(186, 'https://www.sendo.vn/shop/tho-nam-shop', 'Thỏ Nấm Shop', 'sendo.vn', '3', '01267197380', 'baotranla1984@gmail.com', '337/10, phường(xã) 5, Quận 3, Hồ Chí Minh', '2017-12-08 06:54:34', '2017-12-08 06:54:34'),
(187, 'https://www.sendo.vn/shop/my-pham-kim-kim', 'Mỹ Phẩm Kim Kim', 'sendo.vn', '3', '0932064035', '0932064035', '32 Lê Lăng, phường(xã) Phường Phú Thọ Hoà, Quận Tân Phú, Hồ Chí Minh', '2017-12-08 06:54:35', '2017-12-08 06:54:35'),
(188, 'https://www.sendo.vn/shop/songthu-fashion', 'Songthu Fashion', 'sendo.vn', '3', '0976024042', 'danhnguyen11111980@gmail.com', '179/1A Trần Văn Đang, phường(xã) Phường 11, Quận 3, Hồ Chí Minh', '2017-12-08 06:54:36', '2017-12-08 06:54:36'),
(189, 'https://www.sendo.vn/shop/thien-anh-company', 'Thiên Anh Company', 'sendo.vn', '3', '0868646806', 'baonv0104@gmail.com', 'Số 91 Thọ Tháp, phường(xã) Phường Dịch Vọng, Quận Cầu Giấy, Hà Nội', '2017-12-08 06:54:36', '2017-12-08 06:54:36'),
(190, 'https://www.sendo.vn/shop/lamifa', 'lamifa', 'sendo.vn', '3', '0978924394', 'lamifa.vn@gmail.com', 'Sô 3 - Đỗ Quang , phường(xã) Trung Hòa, Quận Cầu Giấy, Hà Nội', '2017-12-08 06:54:37', '2017-12-08 06:54:37'),
(191, 'https://www.sendo.vn/shop/leuyen1612', 'leuyen1612', 'sendo.vn', '3', '0938919138', '0938933898', '210/6/50 nguyễn văn luông, phường(xã) Phường 11, Quận 6, Hồ Chí Minh', '2017-12-08 06:54:37', '2017-12-08 06:54:37'),
(192, 'https://www.sendo.vn/shop/tntshoptrang', 'TnTShop QATE', 'sendo.vn', '3', '0973668868', 'phamquangbk@gmail.com', 'số 3 ngách 72/12 Dương Quảng Hàm, phường(xã) , Quận Cầu Giấy, Hà Nội', '2017-12-08 06:54:38', '2017-12-08 06:54:38'),
(193, 'https://www.sendo.vn/shop/kellypham-shop', 'KellyPham Shop', 'sendo.vn', '3', '0933217577', '0933217577', '352/12 lê hồng phong, phường(xã) phường 1, Quận 10, Hồ Chí Minh', '2017-12-08 06:54:39', '2017-12-08 06:54:39'),
(194, 'https://www.sendo.vn/shop/shop-myn', 'shop myn', 'sendo.vn', '3', '0987740157', 'phamthimyhanh05111990@gmail.com', 'Ngách 6-Ngõ 38-Tả Thanh Oai-Thanh Trì-Hà Nội, phường(xã) Xã Tả Thanh Oai, Huyện Thanh Trì, Hà Nội', '2017-12-08 06:54:39', '2017-12-08 06:54:39'),
(195, 'https://www.sendo.vn/shop/chipxinh', 'ChipXinh', 'sendo.vn', '3', '0868843186', 'giangct1101@gmail.com', '20 lô 10  Hưng Phú Phường 10 quận8, phường(xã) Phường 10, Quận 8, Hồ Chí Minh', '2017-12-08 06:54:40', '2017-12-08 06:54:40'),
(196, 'https://www.sendo.vn/shop/bella-kit', 'Bella Kit', 'sendo.vn', '3', '0937094431', '0937094431', '200 bình tiên , phường(xã) 4, Quận 6, Hồ Chí Minh', '2017-12-08 06:54:41', '2017-12-08 06:54:41'),
(197, 'https://www.sendo.vn/shop/sieuthidienmayhk', 'điện máy kiên hùng', 'sendo.vn', '3', '01667705689', 'maylocnuocusa.vn@gmail.com', '5/97/27 Đức Giang, phường(xã) Đức Giang, Quận Long Biên, Hà Nội', '2017-12-08 06:54:42', '2017-12-08 06:54:42'),
(198, 'https://www.sendo.vn/shop/trangtrailamdep', 'trangtrailamdep', 'sendo.vn', '3', '0981161286', 'nhan.higoda@gmail.com', '144 trương văn thành, phường(xã) Phường Hiệp Phú, Quận 9, Hồ Chí Minh', '2017-12-08 06:54:43', '2017-12-08 06:54:43'),
(199, 'https://www.sendo.vn/shop/phu-nu-xinh', 'Phụ Nữ Xinh', 'sendo.vn', '3', '0977189259', 'tult11782@gmail.com', '184/20/21 Bùi Văn Ngữ, Kp7., phường(xã) Hiệp Thành, Quận 12, Hồ Chí Minh', '2017-12-08 06:54:43', '2017-12-08 06:54:43'),
(200, 'https://www.sendo.vn/shop/xuong-giay-ngoc-khue', 'Xưởng giày Ngọc Khuê', 'sendo.vn', '3', '0903127345', 'thuylanh232@gmail.com', '69 Phạm ngọc Thạch, Phường 6, Quận 3, TP. HCM, phường(xã) Phường 6, Quận 3, Hồ Chí Minh', '2017-12-08 06:54:44', '2017-12-08 06:54:44'),
(201, 'https://www.sendo.vn/shop/duong-duong-shop', 'Dương Dương Shop', 'sendo.vn', '3', '0975815892', 'dtantg95@gmail.com', '(lấy hàng trước 16h30, chủ nhật nghỉ) phòng A9.10 mặt sau lô A chung cư Carina, 1648 Võ Văn Kiệt, phường(xã) Phường 16, Quận 8, Hồ Chí Minh', '2017-12-08 06:54:44', '2017-12-08 06:54:44'),
(202, 'https://www.sendo.vn/shop/muagame', 'MuaGame', 'sendo.vn', '3', '0937802306', 'duongkhang1999@gmail.com', '97 Trần Huy Liệu, phường(xã) Phường 12, Quận Phú Nhuận, Hồ Chí Minh', '2017-12-08 06:54:45', '2017-12-08 06:54:45'),
(203, 'https://www.sendo.vn/shop/kinhmatanphat', 'Kính mắt An Phát', 'sendo.vn', '3', '0915606809', 'khanhngoc2612013@gmail.com', '01 Trường Chinh , phường(xã) Phương Liệt, Quận Thanh Xuân, Hà Nội', '2017-12-08 06:54:46', '2017-12-08 06:54:46'),
(204, 'https://www.sendo.vn/shop/hengsshop', 'Hengsshop', 'sendo.vn', '3', '0987437139', 'trung.nqhb@gmail.com', 'Số 39 Ngõ 723 Nguyễn Khoái - Hoàng Mai - Hà Nội, phường(xã) Phường Thanh Trì, Quận Hoàng Mai, Hà Nội', '2017-12-08 06:54:47', '2017-12-08 06:54:47'),
(205, 'https://www.sendo.vn/shop/hanggiadunganlynguyen', 'hanggiadunganlynguyen', 'sendo.vn', '3', '0984614335', '0984614335', 'số 309- ngõ 84 - tổ 12 , phường(xã) kiến hưng, Quận Hà Đông, Hà Nội', '2017-12-08 06:54:52', '2017-12-08 06:54:52'),
(206, 'https://www.sendo.vn/shop/thegioidonghogiare', 'thegioidonghogiare', 'sendo.vn', '3', '0985222186', 'tuanvu710@gmail.com', '52 Trần Huy Liệu, phường(xã) Xã Mỹ Xá, Thành phố Nam Định, Nam Định', '2017-12-08 06:54:53', '2017-12-08 06:54:53'),
(207, 'https://www.sendo.vn/shop/ngocbich12', 'ngocbich12', 'sendo.vn', '3', '0982854183', '0982854183', 'ngõ 180, phường(xã) Phường Dịch Vọng, Quận Cầu Giấy, Hà Nội', '2017-12-08 06:54:54', '2017-12-08 06:54:54'),
(208, 'https://www.sendo.vn/shop/tst-shops', 'TST Shops', 'sendo.vn', '3', '01688143016', 'truongson.uit@gmail.com', '171A Hoàng Hoa Thám, phường(xã) Phường 13, Quận Tân Bình, Hồ Chí Minh', '2017-12-08 06:54:55', '2017-12-08 06:54:55'),
(209, 'https://www.sendo.vn/shop/aothungiadinh', 'Dung pham', 'sendo.vn', '3', '0908872588', 'minhtri02112012@gmail.com', '18d,to4,kp1a, phường(xã) tan thoi hiep, Quận 12, Hồ Chí Minh', '2017-12-08 06:54:56', '2017-12-08 06:54:56'),
(210, 'https://www.sendo.vn/shop/s1-mobile', 'S1 Mobile', 'sendo.vn', '3', '0948012652', 'nguyenphuong31098@gmail.com', 'Phòng 1610 chung cư Vật tư Du lịch, số 6 ngách 51/15 đường Ngọc Hồi, phường(xã) Phường Hoàng Liệt, Quận Hoàng Mai, Hà Nội', '2017-12-08 06:54:57', '2017-12-08 06:54:57'),
(211, 'https://www.sendo.vn/shop/quoc-hoan', 'Quốc Hoàn', 'sendo.vn', '3', '0934428887', 'thuc.dvp@gmail.com', 'Số 16/51/309 Đà Nẵng, phường(xã) Phường Cầu Tre, Quận Ngô Quyền, Hải Phòng', '2017-12-08 06:54:57', '2017-12-08 06:54:57'),
(212, 'https://www.sendo.vn/shop/occhiali', 'Occhiali', 'sendo.vn', '3', '01208485287', 'rayban2sell@gmail.com', 'A2.11.3 Chung cư Le Thành, phường(xã) An Lạc, Quận Bình Tân, Hồ Chí Minh', '2017-12-08 06:54:58', '2017-12-08 06:54:58'),
(213, 'https://www.sendo.vn/shop/duong-chat-vang', 'Dưỡng Chất Vàng', 'sendo.vn', '3', '0903005468', 'nguyetthiphansg@gmail.com', '138/52/5 Nguyễn Duy Cung, phường(xã) Phường 12, Quận Gò Vấp, Hồ Chí Minh', '2017-12-08 06:54:58', '2017-12-08 06:54:58'),
(214, 'https://www.sendo.vn/shop/shalyshop', 'shalyshop', 'sendo.vn', '3', '01217581790', '01217581790', '94/3a đường 15 phường tân thuận tây . Q7, phường(xã) , Quận 7, Hồ Chí Minh', '2017-12-08 06:54:59', '2017-12-08 06:54:59'),
(215, 'https://www.sendo.vn/shop/sap-vuot-toc-nam-ha-noi', 'Sáp Vuốt Tóc Nam Hà Nội', 'sendo.vn', '3', '0966331669', 'quangtrung151094@gmail.com', '16C Hòa Mỹ, Phường Đa Kao, Quận 1, Hồ Chí Minh, phường(xã) Phường Đa Kao, Quận 1, Hồ Chí Minh', '2017-12-08 06:55:00', '2017-12-08 06:55:00'),
(216, 'https://www.sendo.vn/shop/mjy', 'J&Y', 'sendo.vn', '3', '01228660882', 'mjy6988@gmail.com', '533/1A Phạm Văn Chí, phường(xã) Phường 07, Quận 6, Hồ Chí Minh', '2017-12-08 06:55:00', '2017-12-08 06:55:00'),
(217, 'https://www.sendo.vn/shop/cong-ty-co-phan-tm-dv-phong-vu', 'Công ty Cổ Phần TM DV Phong Vũ', 'sendo.vn', '3', '19001835', 'saleonline@vitinhphongvu.com', 'Trụ sở chính: 125 Cách Mạng Tháng 8, phường(xã) Bến Thành, Quận 1, Hồ Chí Minh', '2017-12-08 06:55:01', '2017-12-08 06:55:01'),
(218, 'https://www.sendo.vn/shop/chan-ga-thiet-ke', 'chăn ga thiết kế', 'sendo.vn', '4', '0946938786', '0946938786', 'số73, ngõ 727, ngô gia tự, phường(xã) Phường Thành Tô, Quận Hải An, Hải Phòng', '2017-12-08 06:55:03', '2017-12-08 06:55:03'),
(219, 'https://www.sendo.vn/shop/napiishop', 'Napiishop', 'sendo.vn', '4', '0981270680', 'Napinguyen1808@gmail.com', 'C8, ngách 46, ngõ 89 Lạc Long Quân, phường(xã) Phường Bưởi, Quận Tây Hồ, Hà Nội', '2017-12-08 06:55:03', '2017-12-08 06:55:03'),
(220, 'https://www.sendo.vn/shop/dong-ho-thong-minh-thien-anh', 'Đồng hồ thông minh Thiên Anh', 'sendo.vn', '4', '01663006874', 'dantruong021299@gmail.com', 'Số 7 Duy Tân, phường(xã) Phường Dịch Vọng Hậu, Quận Cầu Giấy, Hà Nội', '2017-12-08 06:55:04', '2017-12-08 06:55:04'),
(221, 'https://www.sendo.vn/shop/forher', 'Forher', 'sendo.vn', '4', '0969798397', 'nhthai.tn@gmail.com', '51 DƯƠNG LÂM, phường(xã) Phường An Hải Bắc, Quận Sơn Trà, Đà Nẵng', '2017-12-08 06:55:05', '2017-12-08 06:55:05'),
(222, 'https://www.sendo.vn/shop/hangkhuyenmaigiarevvn', 'hangkhuyenmaigiarevvn', 'sendo.vn', '4', '0909603929', 'jessicanhung86@gmail.com', '28 đường số 6, phường(xã) Phường Phước Bình, Quận 9, Hồ Chí Minh', '2017-12-08 06:55:05', '2017-12-08 06:55:05'),
(223, 'https://www.sendo.vn/shop/ai-nhi-shop-2', 'Ái Nhi Shop 2', 'sendo.vn', '4', '0969000030', 'Mobile_hv@yahoo.com.vn', '689, cách mạng tháng 8, phường(xã) Phường 06, Quận Tân Bình, Hồ Chí Minh', '2017-12-08 06:55:06', '2017-12-08 06:55:06'),
(224, 'https://www.sendo.vn/shop/ai-nhi-shop', 'Ái Nhi Shop', 'sendo.vn', '4', '0937941466', 'daoainhi2016@gmail.com', '689, cách mạng tháng Tám, phường(xã) Phường 06, Quận Tân Bình, Hồ Chí Minh', '2017-12-08 06:55:06', '2017-12-08 06:55:06'),
(225, 'https://www.sendo.vn/shop/thienthaopc', 'Thienthaopc', 'sendo.vn', '4', '01669729999', 'thienthaopc@gmail.com', 'Số 129 Phố Yên Hòa, phường(xã) Phường Yên Hoà, Quận Cầu Giấy, Hà Nội', '2017-12-08 06:55:07', '2017-12-08 06:55:07'),
(226, 'https://www.sendo.vn/shop/homemade-suri-ho-thao', 'Homemade Suri Ho Thao', 'sendo.vn', '4', '0933424972', '0933424972', ', phường(xã) , Quận 1, Hồ Chí Minh', '2017-12-08 06:55:08', '2017-12-08 06:55:08'),
(227, 'https://www.sendo.vn/shop/cong-ty-tan-dai-phu', 'Công ty Tân Đại Phú', 'sendo.vn', '4', '0943312128', 'tandaiphuco@gmail.com', '780 Minh Khai, phường Vĩnh Tuy, phường(xã) Vĩnh Tuy, Quận Hai Bà Trưng, Hà Nội', '2017-12-08 06:55:09', '2017-12-08 06:55:09'),
(228, 'https://www.sendo.vn/shop/hmobiecare', 'HMobieCare', 'sendo.vn', '4', '01649686545', 'bachduongbx@gmail.com', '7/3 Đường 41 Kp6  , phường(xã) Phường Linh Đông, Quận Thủ Đức, Hồ Chí Minh', '2017-12-08 06:55:10', '2017-12-08 06:55:10'),
(229, 'https://www.sendo.vn/shop/shop-ao-thuat-vu-hai', 'Shop Ảo Thuật Vũ Hải', 'sendo.vn', '4', '0916821431', 'shopaothuatvuhai@gmail.com', 'Đường số 10 Khu dân cư Trung Sơn, phường(xã) Xã Bình Hưng, Huyện Bình Chánh, Hồ Chí Minh', '2017-12-08 06:55:10', '2017-12-08 06:55:10'),
(230, 'https://www.sendo.vn/shop/ruby-cosmetics', ' Ruby Cosmetics', 'sendo.vn', '4', '0909585325', 'HANHTRUONG0109@GMAIL.COM', '125/16/7 Bùi Đình Túy,, phường(xã) 24, Quận Bình Thạnh, Hồ Chí Minh', '2017-12-08 06:55:11', '2017-12-08 06:55:11'),
(231, 'https://www.sendo.vn/shop/phukiendn', 'phukiendn', 'sendo.vn', '4', '0935641683', 'nguyenthai199x@gmail.com', 'k106/1 ngô gia tự, phường(xã) Phường Hải Châu II, Quận Hải Châu, Đà Nẵng', '2017-12-08 06:55:12', '2017-12-08 06:55:12'),
(232, 'https://www.sendo.vn/shop/shop-giay-cao-cap', 'Shop Giầy Cao Cấp', 'sendo.vn', '4', '0966666485', '0974386381', '214 Xa Dan, phường(xã) Phường Phương Liên, Quận Đống Đa, Hà Nội', '2017-12-08 06:55:12', '2017-12-08 06:55:12'),
(233, 'https://www.sendo.vn/shop/kitsune-shop', 'Kitsune Shop', 'sendo.vn', '4', '0931852309', 'kitsuneshop36@gmail.com', 'B14/11B, Cây Cám, Ấp 2C, phường(xã) Vĩnh Lộc B, Huyện Bình Chánh, Hồ Chí Minh', '2017-12-08 06:55:13', '2017-12-08 06:55:13'),
(234, 'https://www.sendo.vn/shop/si-mien-bac', 'sỉ miền bắc', 'sendo.vn', '4', '0974562976', '0974562976', '490,xuân đinh, phường(xã) Phường Xuân Đỉnh, Quận Bắc Từ Liêm, Hà Nội', '2017-12-08 06:55:14', '2017-12-08 06:55:14'),
(235, 'https://www.sendo.vn/shop/giay-dnd', 'Giày DND', 'sendo.vn', '4', '0934321746', 'giaynhapkhaudnd@gmail.com', '55/9 Thạnh Lộc 12, Quận 12, Hồ Chí Minh, phường(xã) Phường Thạnh Lộc, Quận 12, Hồ Chí Minh', '2017-12-08 06:55:15', '2017-12-08 06:55:15'),
(236, 'https://www.sendo.vn/shop/kulushop', 'kulushop', 'sendo.vn', '4', '01674653641', 'doanphuong2301@gmail.com', '6/17 phạm văn chiêu , phường(xã) Phường 08, Quận Gò Vấp, Hồ Chí Minh', '2017-12-08 06:55:15', '2017-12-08 06:55:15'),
(237, 'https://www.sendo.vn/shop/tinh-dau-thien-nhien-tphcm', 'Tinh Dầu Thiên Nhiên TPHCM', 'sendo.vn', '4', '0932157268', 'tinhdauthiennhien100.com@gmail.com', '18/1 Đường số 6, phường(xã) Linh Tây, Quận Thủ Đức, Hồ Chí Minh', '2017-12-08 06:55:16', '2017-12-08 06:55:16'),
(238, 'https://www.sendo.vn/shop/bao-da-op-lung-shop', 'Bao da ốp lưng shop', 'sendo.vn', '4', '0979810965', '0971418326', '157 Nguyễn Thượng Hiền Phường 4,quận 3 thành phố Hồ Chí Minh., phường(xã) Phường 04, Quận 3, Hồ Chí Minh', '2017-12-08 06:55:16', '2017-12-08 06:55:16'),
(239, 'https://www.sendo.vn/shop/shop-thien-nga', 'shop thiên nga', 'sendo.vn', '4', '0904663194', 'tuanhello12345@gmail.com', '353 ngô gia tự, phường(xã) Phường Tiền An, Thành phố Bắc Ninh, Bắc Ninh', '2017-12-08 06:55:17', '2017-12-08 06:55:17'),
(240, 'https://www.sendo.vn/shop/ashoes', 'Ashoes', 'sendo.vn', '4', '01698603350', 'phuongnv0394@gmail.com', '34 Phan Xích Long,p.3,q.Phú Nhuận, phường(xã) Phường 03, Quận Phú Nhuận, Hồ Chí Minh', '2017-12-08 06:55:18', '2017-12-08 06:55:18'),
(241, 'https://www.sendo.vn/shop/little-mango', 'Little Mango', 'sendo.vn', '4', '0905250185', '0905250185', '72 nguyễn ngọc nại khương mai , phường(xã) khương mai, Quận Thanh Xuân, Hà Nội', '2017-12-08 06:55:18', '2017-12-08 06:55:18'),
(242, 'https://www.sendo.vn/shop/alanyugiohshop', 'Alanyugiohshop', 'sendo.vn', '4', '0962976841', '0979598640', '15 Bùi Ngọc Dương, phường(xã) Phường Bạch Mai, Quận Hai Bà Trưng, Hà Nội', '2017-12-08 06:55:19', '2017-12-08 06:55:19'),
(243, 'https://www.sendo.vn/shop/fullshop', 'FullShop', 'sendo.vn', '4', '0971851393', 'khacphuong2008@gmail.com', '103 Yên Lãng, phường(xã) Phường Thịnh Quang, Quận Đống Đa, Hà Nội', '2017-12-08 06:55:19', '2017-12-08 06:55:19');
INSERT INTO `shops` (`id`, `link`, `name`, `type`, `page`, `phone`, `email`, `address`, `created_at`, `updated_at`) VALUES
(244, 'https://www.sendo.vn/shop/ky-duyen-shop', 'Kỳ Duyên Shop', 'sendo.vn', '4', '01653543523', 'huyenthoai_khucbietly@yahoo.com', '35A - 37 - Đường 16B - khu phố 22- phương Bình Hưng Hòa A, phường(xã) Phường Binh Hưng Hoà A, Quận Bình Tân, Hồ Chí Minh', '2017-12-08 06:55:20', '2017-12-08 06:55:20'),
(245, 'https://www.sendo.vn/shop/shop-tieu-muoi', 'Shop Tieu Muoi', 'sendo.vn', '4', '0902951322', 'caheonhinho@gmail.com', '303 Lô K, đường số 6, cư xá Bình Thới, phường(xã) 8, Quận 11, Hồ Chí Minh', '2017-12-08 06:55:21', '2017-12-08 06:55:21'),
(246, 'https://www.sendo.vn/shop/ori-princess', 'Ori Princess', 'sendo.vn', '4', '01256780995', 'ngochien08995@gmail.com', 'Tòa nhà FPT Tân Thuận, Lô 29B-31B-33B, Đường Tân Thuận, KCX Tân Thuận, phường(xã) Phường Tân Thuận Đông, Quận 7, Hồ Chí Minh', '2017-12-08 06:55:22', '2017-12-08 06:55:22'),
(247, 'https://www.sendo.vn/shop/my-pham-binh-minh', 'Mỹ phẩm Bình Minh', 'sendo.vn', '4', '01212565456', 'binhminh1998@vnn.vn', '87 đường 84 Cao Lỗ, phường(xã) Phường 04, Quận 8, Hồ Chí Minh', '2017-12-08 06:55:22', '2017-12-08 06:55:22'),
(248, 'https://www.sendo.vn/shop/gia-dung-store', 'Gia Dụng Store', 'sendo.vn', '4', '0985151417', 'dungcutienich@gmail.com', '495/18 Tô Hiến Thành, phường(xã) Phường 14, Quận 10, Hồ Chí Minh', '2017-12-08 06:55:23', '2017-12-08 06:55:23'),
(249, 'https://www.sendo.vn/shop/thuocgiasivn', 'Thuốc Giá Sỉ', 'sendo.vn', '4', '0901434245', 'thuocgiasivn@gmail.com', 'B50 Lê Thị Riêng, phường(xã)  Phường Thới An, Quận 12, Hồ Chí Minh', '2017-12-08 06:55:23', '2017-12-08 06:55:23'),
(250, 'https://www.sendo.vn/shop/shop-mun-mun', 'shop mun mun', 'sendo.vn', '4', '0904643293', 'kedendoluong@gmail.com', 'số 9, Lê Đức Thọ Kéo dài, phường(xã) Phường Mai Dịch, Quận Cầu Giấy, Hà Nội', '2017-12-08 06:55:24', '2017-12-08 06:55:24'),
(251, 'https://www.sendo.vn/shop/thoi-trang-thiet-ke-sana', 'Thời trang thiết kế SaNa', 'sendo.vn', '4', '0943808737', 'sanphamtotnhatsg@gmail.com', '1086 Lê Đức Thọ , phường(xã) Phường 13, Quận Gò Vấp, Hồ Chí Minh', '2017-12-08 06:55:25', '2017-12-08 06:55:25'),
(252, 'https://www.sendo.vn/shop/vt-fashion', 'VT FASHION ', 'sendo.vn', '4', '01654176115', 'trinh300497@gmail.com', 'nơ trang long- bình thạnh, phường(xã) 13, Quận Bình Thạnh, Hồ Chí Minh', '2017-12-08 06:55:26', '2017-12-08 06:55:26'),
(253, 'https://www.sendo.vn/shop/suchi', 'suchi', 'sendo.vn', '4', '0979321246', '0979321246', '291 Tân Thới Hiệp 07, phường(xã) Phường Tân Thới Hiệp, Quận 12, Hồ Chí Minh', '2017-12-08 06:55:26', '2017-12-08 06:55:26'),
(254, 'https://www.sendo.vn/shop/ngan2188', 'ngan2188', 'sendo.vn', '4', '01254804595', '01254804595', 'Sảnh B, nhà A2, chung cư 151A Nguyễn Đức Cảnh, phường(xã) Tương Mai, Quận Hoàng Mai, Hà Nội', '2017-12-08 06:55:27', '2017-12-08 06:55:27'),
(255, 'https://www.sendo.vn/shop/truc-gau-shop', 'Trúc Gấu shop', 'sendo.vn', '4', '01656099027', '01656099027', 'Hà Lâm 3, Thuỵ Lâm, Đông Anh, Hà Nội, phường(xã) Xã Thuỵ Lâm, Huyện Đông Anh, Hà Nội', '2017-12-08 06:55:27', '2017-12-08 06:55:27'),
(256, 'https://www.sendo.vn/shop/ngocliengroup', 'Bồn Nước Tân Á Đại Thành', 'sendo.vn', '4', '0931919590', 'support@ngocliengroup.com', '114/86 Tô Ngọc Vân, phường(xã) Phường 15, Quận Gò Vấp, Hồ Chí Minh', '2017-12-08 06:55:28', '2017-12-08 06:55:28'),
(257, 'https://www.sendo.vn/shop/khonoithat24h', 'khonoithat24h.com', 'sendo.vn', '4', '0902556618', 'khonoithat24h@gmail.com', '165/16 Nguyễn Thị Thập, phường(xã) Phường Tân Phú, Quận 7, Hồ Chí Minh', '2017-12-08 06:55:29', '2017-12-08 06:55:29'),
(258, 'https://www.sendo.vn/shop/chan-ga-goi-dem-everhome', 'Chăn ga gối đệm Everhome', 'sendo.vn', '4', '0988379382', 'khanhnqk85@gmail.com', '629 Nguyễn Văn Cừ, phường(xã) Gia Thụy, Quận Long Biên, Hà Nội', '2017-12-08 06:55:30', '2017-12-08 06:55:30'),
(259, 'https://www.sendo.vn/shop/gia-dung-thanh-binh', 'Gia dụng Thanh Bình', 'sendo.vn', '4', '0902848855', 'phuongdond180892@gmail.com', 'Số 43 ngõ 171 Nguyễn Xiển, phường(xã) Phường Hạ Đình, Quận Thanh Xuân, Hà Nội', '2017-12-08 06:55:31', '2017-12-08 06:55:31'),
(260, 'https://www.sendo.vn/shop/newzada', 'Newzada', 'sendo.vn', '4', '0911970144', 'dangluu164@gmail.com', 'số 6 đường hai bà trưng, phường(xã) hiệp phú, Quận 9, Hồ Chí Minh', '2017-12-08 06:55:32', '2017-12-08 06:55:32'),
(261, 'https://www.sendo.vn/shop/trangsucthaonhi', 'trangsucthaonhi', 'sendo.vn', '4', '0908785339', '0908785339', '97/10 đường nguyễn đình chi, phường(xã) Phường 09, Quận 6, Hồ Chí Minh', '2017-12-08 06:55:33', '2017-12-08 06:55:33'),
(262, 'https://www.sendo.vn/shop/viettex', 'Viettex', 'sendo.vn', '4', '0962889402', 'hien.mkt02@viettex.vn', 'Tầng 1, Tòa nhà 789A, phường(xã) Mỹ Đình 1, Quận Nam Từ Liêm, Hà Nội', '2017-12-08 06:55:34', '2017-12-08 06:55:34'),
(263, 'https://www.sendo.vn/shop/cui-cosmetic', 'Cũi Cosmetic', 'sendo.vn', '4', '0939466969', 'promise.production@gmail.com', '119 Trần Mai Ninh P11 Tân Bình, phường(xã) Phường 11, Quận Tân Bình, Hồ Chí Minh', '2017-12-08 06:55:34', '2017-12-08 06:55:34'),
(264, 'https://www.sendo.vn/shop/thegioicuabe', 'thegioicuabe', 'sendo.vn', '4', '0968396699', '0968396699', 'đường 179,Trung dương, phường(xã) Xã Kiêu Kỵ, Huyện Gia Lâm, Hà Nội', '2017-12-08 06:55:35', '2017-12-08 06:55:35'),
(265, 'https://www.sendo.vn/shop/noi-that-domen', 'Nội thất DOMEN', 'sendo.vn', '4', '0906813481', 'Phanthimyduyen2011@gmail.com', 'số 746 hậu Giang p12 q6, phường(xã) Phường 12, Quận 6, Hồ Chí Minh', '2017-12-08 06:55:35', '2017-12-08 06:55:35'),
(266, 'https://www.sendo.vn/shop/dong-hung-pc', 'Đông Hưng PC', 'sendo.vn', '4', '0902425089', 'donghung366@gmail.com', '366 đường 7A, phường(xã) Bình Trị Đông B, Quận Bình Tân, Hồ Chí Minh', '2017-12-08 06:55:36', '2017-12-08 06:55:36'),
(267, 'https://www.sendo.vn/shop/hang-gia-re-hn', 'hàng giá rẻ HN', 'sendo.vn', '4', '0902169762', 'minhtuyetpt.87@gmail.com', 'P1604 TÒA HH2A LINH ĐÀM , phường(xã) Phường Hoàng Liệt, Quận Hoàng Mai, Hà Nội', '2017-12-08 06:55:37', '2017-12-08 06:55:37'),
(268, 'https://www.sendo.vn/shop/may-tinh-dep-gia-re', 'Máy Tính Đẹp Giá Rẻ', 'sendo.vn', '4', '0917008222', 'hienphamnd@gmail.com', '35A Ngõ 120 Kim Giang, phường(xã) Phường Đại Kim, Quận Hoàng Mai, Hà Nội', '2017-12-08 06:55:37', '2017-12-08 06:55:37'),
(269, 'https://www.sendo.vn/shop/quanaosieunhan', 'quanaosieunhan', 'sendo.vn', '4', '0983111719', 'trinhphuong20@yahoo.com', '62 Lê Bình, phường(xã) Phường 04, Quận Tân Bình, Hồ Chí Minh', '2017-12-08 06:55:38', '2017-12-08 06:55:38'),
(270, 'https://www.sendo.vn/shop/denledxemay', 'denledxemay.vn', 'sendo.vn', '4', '0917697669', 'denledxemay5@gmail.com', '1561 đường 3 tháng 2, phường(xã) 16, Quận 11, Hồ Chí Minh', '2017-12-08 06:55:39', '2017-12-08 06:55:39'),
(271, 'https://www.sendo.vn/shop/myphamhuyenbe', 'myphamhuyenbe', 'sendo.vn', '4', '01255202489', '01696438348', 'số 36/193 nam dư lĩnh nam, phường(xã) Phường Lĩnh Nam, Quận Hoàng Mai, Hà Nội', '2017-12-08 06:55:39', '2017-12-08 06:55:39'),
(272, 'https://www.sendo.vn/shop/emyshop16', 'Emyshop16', 'sendo.vn', '4', '01634311266', '01634311266', 'Ninh Hiệp, phường(xã) Xã Ninh Hiệp, Huyện Gia Lâm, Hà Nội', '2017-12-08 06:55:40', '2017-12-08 06:55:40'),
(273, 'https://www.sendo.vn/shop/psinchac-shop', 'psinchac shop', 'sendo.vn', '4', '0971953539', '0971953539', '710/59 hậu giang, phường(xã) 12, Quận 6, Hồ Chí Minh', '2017-12-08 06:55:41', '2017-12-08 06:55:41'),
(274, 'https://www.sendo.vn/shop/phukientantan', 'phukientantan', 'sendo.vn', '4', '0968924848', 'nguyenthitrucly09@gmail.com', '123/16A (8/4K) Nguyễn Văn Quỳ, Tân Thuận Đông, Quận 7, phường(xã) Phường Tân Thuận Đông, Quận 7, Hồ Chí Minh', '2017-12-08 06:55:41', '2017-12-08 06:55:41'),
(275, 'https://www.sendo.vn/shop/my-pham-nga-fair-food', 'mỹ phẩm nga fair food', 'sendo.vn', '4', '0968505870', 'masterfresh2013@gmail.com', 'phòng 1606 nhà 17T5 đường hoàng đạo thúy, phường(xã) Phường Nhân Chính, Quận Thanh Xuân, Hà Nội', '2017-12-08 06:55:42', '2017-12-08 06:55:42'),
(276, 'https://www.sendo.vn/shop/speedway', 'Shop Online Giá Gốc', 'sendo.vn', '4', '0905544765', 'vnhomeoffice@gmail.com', '125/203 Đinh Tiên Hoàng ( Vui lòng gọi trước khi đến), phường(xã) Phường 03, Quận Bình Thạnh, Hồ Chí Minh', '2017-12-08 06:55:43', '2017-12-08 06:55:43'),
(277, 'https://www.sendo.vn/shop/nam-vi-tinh', 'NAM VI TÍNH', 'sendo.vn', '4', '0898981637', 'vuthanhnamit1@gmail.com', '65/4 thủ khoa huân quận 1, phường(xã) Phường Bến Thành, Quận 1, Hồ Chí Minh', '2017-12-08 06:55:44', '2017-12-08 06:55:44'),
(278, 'https://www.sendo.vn/shop/rose-tree-shop', 'Rose Tree Shop', 'sendo.vn', '5', '0974344525', 'rosetreeshop@gmail.com', 'số 5 ngõ 119 Trung Kính, phường(xã) Trung Yên, Quận Cầu Giấy, Hà Nội', '2017-12-08 06:55:45', '2017-12-08 06:55:45'),
(279, 'https://www.sendo.vn/shop/shoppl', 'shopPL', 'sendo.vn', '5', '0938700191', 'shopphuclinh@gmail.com', '133/4 hòa bình, phường(xã) hiệp tân, Quận Tân Phú, Hồ Chí Minh', '2017-12-08 06:55:46', '2017-12-08 06:55:46'),
(280, 'https://www.sendo.vn/shop/homekiss', 'HomeKiss', 'sendo.vn', '5', '0901458383', 'phanthanhnhan2010@yahoo.com', '237/2/40 hoà bình, phường(xã) hiệp tân, Quận Tân Phú, Hồ Chí Minh', '2017-12-08 06:55:46', '2017-12-08 06:55:46'),
(281, 'https://www.sendo.vn/shop/maytinhcatthanh', 'maytinhcatthanh', 'sendo.vn', '5', '0914367055', 'congcatthanh@gmail.com', 'Số 50 ngách 165/30 ngõ 165 Thái Hà - đường Thái Hà - Đống Đa - Hà Nội, phường(xã) Phường Láng Hạ, Quận Đống Đa, Hà Nội', '2017-12-08 06:55:47', '2017-12-08 06:55:47'),
(282, 'https://www.sendo.vn/shop/my-pham-phung-lai', 'Mỹ Phẩm Phụng Lai', 'sendo.vn', '5', '0937503268', 'ngothong1988@gmail.com', '88A Vườn Lài, Phường Tân Thành, Quận Tân Phú, phường(xã) Phường Tân Thành, Quận Tân Phú, Hồ Chí Minh', '2017-12-08 06:55:48', '2017-12-08 06:55:48'),
(283, 'https://www.sendo.vn/shop/quanaogiatot', 'quanaogiatot', 'sendo.vn', '5', '0919930162', 'nguyenngocnd92@gmail.com', '20 đường đình, an đào, trâu quỳ, phường(xã) Thị trấn trâu quỳ, Huyện Gia Lâm, Hà Nội', '2017-12-08 06:55:48', '2017-12-08 06:55:48'),
(284, 'https://www.sendo.vn/shop/hongha', 'HongHa', 'sendo.vn', '5', '0903075780', 'honghac1993@gmail.com', '778/42/3 Thống Nhất, phường(xã) Phường 15, Quận Gò Vấp, Hồ Chí Minh', '2017-12-08 06:55:49', '2017-12-08 06:55:49'),
(285, 'https://www.sendo.vn/shop/anbishop', 'Anbi Shop', 'sendo.vn', '5', '0974901220', 'huynhthanhan92@gmail.com', 'Moon\'s Shop - 13 Đường Số 40, phường(xã) Phường Tân Quy, Quận 7, Hồ Chí Minh', '2017-12-08 06:55:50', '2017-12-08 06:55:50'),
(286, 'https://www.sendo.vn/shop/hdhuong', 'hdhuong', 'sendo.vn', '5', '01679123533', 'dhuonghoang@facebook.com', 'số 9 ngách 44 ngõ 252 Minh Khai, phường(xã) Minh Khai, Quận Hai Bà Trưng, Hà Nội', '2017-12-08 06:55:50', '2017-12-08 06:55:50'),
(287, 'https://www.sendo.vn/shop/sieu-cute', 'siêu Cute', 'sendo.vn', '5', '0983868169', 'tranquangduy81@gmail.com', '36/1k triều khúc/thanh xuân nam/ hà nội, phường(xã) Phường Thanh Xuân Nam, Quận Thanh Xuân, Hà Nội', '2017-12-08 06:55:51', '2017-12-08 06:55:51'),
(288, 'https://www.sendo.vn/shop/cua-hang-phu-kien-dien-tu', 'Cửa Hàng Phụ Kiện Điện Tử', 'sendo.vn', '5', '01222011313', 'maillahopthu@gmail.com', '750 Nguyễn Duy, phường(xã) Phường 12, Quận 8, Hồ Chí Minh', '2017-12-08 06:55:52', '2017-12-08 06:55:52'),
(289, 'https://www.sendo.vn/shop/doremii-fashion', 'Doremii fashion', 'sendo.vn', '5', '0903005321', 'trangdoremii@yahoo.com.vn', '61/33 Cô Giang ,p Cầu Ông Lãnh ,Quận 1, phường(xã) Phường Cầu Ông Lãnh, Quận 1, Hồ Chí Minh', '2017-12-08 06:55:53', '2017-12-08 06:55:53'),
(290, 'https://www.sendo.vn/shop/baocaosu365', 'baocaosu365', 'sendo.vn', '5', '0906552756', 'hanhphuc291199@gmail.com', '309 Dương Quảng Hàm, phường(xã) Phường 06, Quận Gò Vấp, Hồ Chí Minh', '2017-12-08 06:55:53', '2017-12-08 06:55:53'),
(291, 'https://www.sendo.vn/shop/shop-xiteen-online', 'Shop XiTeen Online', 'sendo.vn', '5', '0909607499', 'vn.mr.an@gmail.com', '24/1 Tú Xương, phường(xã) Phường Hiệp Phú, Quận 9, Hồ Chí Minh', '2017-12-08 06:55:54', '2017-12-08 06:55:54'),
(292, 'https://www.sendo.vn/shop/366_vn', '366.vn', 'sendo.vn', '5', '0969337667', 'shop366vn@gmail.com', 'Số 31 Nguyễn Xiển, phường(xã) Phường Hạ Đình, Quận Thanh Xuân, Hà Nội', '2017-12-08 06:55:55', '2017-12-08 06:55:55'),
(293, 'https://www.sendo.vn/shop/tbs', 'Thiên Bảo Solutions', 'sendo.vn', '5', '0966869373', 'thienbaosolutions@gmail.com', 'Tòa nhà An Phú (Tầng M) 117-119 Lý Chính Thắng, phường(xã) Phường 07, Quận 3, Hồ Chí Minh', '2017-12-08 06:55:56', '2017-12-08 06:55:56'),
(294, 'https://www.sendo.vn/shop/cho-si', 'Chợ Sỉ Online', 'sendo.vn', '5', '01255355687', 'longthuong.hcm@gmail.com', '975/3 Nguyễn Kiệm, phường(xã) Phường 03, Quận Gò Vấp, Hồ Chí Minh', '2017-12-08 06:55:56', '2017-12-08 06:55:56'),
(295, 'https://www.sendo.vn/shop/minh-minh-beauty-shop', 'Minh Minh\'s Beauty Shop', 'sendo.vn', '5', '0938687601', 'tuyetminhho@gmail.com', '833 Lê Hồng Phong, Phường 12, Quận 10, TP.HCM, phường(xã) Phường 12, Quận 10, Hồ Chí Minh', '2017-12-08 06:55:57', '2017-12-08 06:55:57'),
(296, 'https://www.sendo.vn/shop/my-boutique', 'My Boutique', 'sendo.vn', '5', '0976861739', 'myboutiquemyboutique@gmail.com', '117/6  BA VÂN, phường(xã) phường 14, Quận Tân Bình, Hồ Chí Minh', '2017-12-08 06:55:57', '2017-12-08 06:55:57'),
(297, 'https://www.sendo.vn/shop/giay-ngo-store', 'Giày Ngố Store', 'sendo.vn', '5', '0902667623', 'tscnguyen@gmail.com', 'A139 Bis Tô Kí, Khu phố 2, phường(xã) Phường Đông Hưng Thuận, Quận 12, Hồ Chí Minh', '2017-12-08 06:55:58', '2017-12-08 06:55:58'),
(298, 'https://www.sendo.vn/shop/canko1304', 'CẦN KÒ ', 'sendo.vn', '5', '0937949923', 'nguyencan1304hbl@gmail.com', '1362 Kha Vạn Cân , phường(xã) Linh Trung, Quận Thủ Đức, Hồ Chí Minh', '2017-12-08 06:55:59', '2017-12-08 06:55:59'),
(299, 'https://www.sendo.vn/shop/cheapshop', 'Cheapshop', 'sendo.vn', '5', '01684889296', 'girlnhinhanh_yeudoi@yahoo.com', 'Số 170, Trung Văn, phường(xã) Trung văn, Quận Nam Từ Liêm, Hà Nội', '2017-12-08 06:56:00', '2017-12-08 06:56:00'),
(300, 'https://www.sendo.vn/shop/quang-vinh', 'Quang Vinh', 'sendo.vn', '5', '0915093883', 'maythietbiytehanoi@gmail.com', '168 Ngọc Khánh, phường(xã) Phường Giảng Võ, Quận Ba Đình, Hà Nội', '2017-12-08 06:56:01', '2017-12-08 06:56:01'),
(301, 'https://www.sendo.vn/shop/xoishop', 'Xôi Shop', 'sendo.vn', '5', '0902540589', 'hungqt134@gmail.com', '146 Nơ Trang Long, phường(xã) Phường 14, Quận Bình Thạnh, Hồ Chí Minh', '2017-12-08 06:56:01', '2017-12-08 06:56:01'),
(302, 'https://www.sendo.vn/shop/noi-tro-247', 'Nội Trợ 247 ', 'sendo.vn', '5', '0937789900', 'letuanct.247@gmail.com', '658/38 Cách Mạng Tháng 8 - P.11- Q.3- HCM , phường(xã) Phường 11, Quận 3, Hồ Chí Minh', '2017-12-08 06:56:02', '2017-12-08 06:56:02'),
(303, 'https://www.sendo.vn/shop/shopphukienbeyeu', 'shopphukienbeyeu', 'sendo.vn', '5', '0919352708', 'viethasam@yahoo.com', '50 Đường số 3 (Chung cư Bộ Công An), phường(xã) Phường Bình An, Quận 2, Hồ Chí Minh', '2017-12-08 06:56:03', '2017-12-08 06:56:03'),
(304, 'https://www.sendo.vn/shop/skypgardenshop', 'skypgardenshop', 'sendo.vn', '5', '0974845043', 'nguyenhoangtrongnghia1993@gmail.com', '67 Thân Nhân Trung ,quận Tân Bình , phường(xã) Phường 13, Quận Tân Bình, Hồ Chí Minh', '2017-12-08 06:56:04', '2017-12-08 06:56:04'),
(305, 'https://www.sendo.vn/shop/tho-hi-shop', 'Tho hi shop', 'sendo.vn', '5', '01254980348', 'beden796037@yahoo.com.vn', '87 Trần Thiện Chánh, phường(xã) 12, Quận 10, Hồ Chí Minh', '2017-12-08 06:56:04', '2017-12-08 06:56:04'),
(306, 'https://www.sendo.vn/shop/bonbon_shop', 'Bonbon_Shop', 'sendo.vn', '5', '0989133633', 'phuongdung0208@yahoo.com', '76/42/4 Nguyễn Sơn, phường(xã) Phường Phú Thọ Hoà, Quận Tân Phú, Hồ Chí Minh', '2017-12-08 06:56:05', '2017-12-08 06:56:05'),
(307, 'https://www.sendo.vn/shop/thanhcongplaza', 'ThanhCongPlaza', 'sendo.vn', '5', '0822400600', 'thanhcongplaza.vn@gmail.com', '77/25/21 Phạm Đăng Giảng, P.BHH, Q.Bình Tân, Tp.Hồ Chí Minh, phường(xã) Phường Bình Hưng Hòa, Quận Bình Tân, Hồ Chí Minh', '2017-12-08 06:56:06', '2017-12-08 06:56:06'),
(308, 'https://www.sendo.vn/shop/diengiadunggiare', 'diengiadunggiare', 'sendo.vn', '5', '0908234858', 'sales@thekata.com', '108/11 Trần Mai Ninh , Phường 12, Q.Tân Bình, phường(xã) phường 12, Quận Tân Bình, Hồ Chí Minh', '2017-12-08 06:56:06', '2017-12-08 06:56:06'),
(309, 'https://www.sendo.vn/shop/dep-da-dep-toc', 'Đẹp da Đẹp tóc', 'sendo.vn', '5', '0905275359', 'hoangtran2612@gmail.com', 'K156/19 Hùng Vương, phường(xã) Hải Châu 1, Quận Hải Châu, Đà Nẵng', '2017-12-08 06:56:07', '2017-12-08 06:56:07'),
(310, 'https://www.sendo.vn/shop/cunmiushop', 'CunMiuShop', 'sendo.vn', '5', '0982263359', 'cunmiushop@gmail.com', '3/2 đường đường 30, phường(xã) Phường Linh Đông, Quận Thủ Đức, Hồ Chí Minh', '2017-12-08 06:56:08', '2017-12-08 06:56:08'),
(311, 'https://www.sendo.vn/shop/decal-dan-tuong-hcm', 'DECAL DAN TUONG HCM', 'sendo.vn', '5', '0907579143', 'decaldantuongbangha@gmail.com', '49 Đường 33 kp2 , phường(xã) Phường Linh Đông, Quận Thủ Đức, Hồ Chí Minh', '2017-12-08 06:56:08', '2017-12-08 06:56:08'),
(312, 'https://www.sendo.vn/shop/kimnganhd-5b030', 'kimnganhd 5b030', 'sendo.vn', '5', '0975862636', 'anh2cn@gmail.com', '119 Bà triệu , phường(xã) Phường Tân Bình, Thành phố Hải Dương , Hải Dương', '2017-12-08 06:56:09', '2017-12-08 06:56:09'),
(313, 'https://www.sendo.vn/shop/titishop1', 'titishop1', 'sendo.vn', '5', '0973456114', 'nguyendaihai1993@gmail.com', '54, đường số 17, khu phố 5, phường bình chiểu, quận thủ đức, thành phố hồ chí minh, phường(xã) bình chiểu, Quận Thủ Đức, Hồ Chí Minh', '2017-12-08 06:56:10', '2017-12-08 06:56:10'),
(314, 'https://www.sendo.vn/shop/hastestore', 'Haste Store', 'sendo.vn', '5', '01672666654', 'cdthanh94@gmail.com', '42 Ngô Quyền, phường(xã) Phường 5, Quận 10, Hồ Chí Minh', '2017-12-08 06:56:11', '2017-12-08 06:56:11'),
(315, 'https://www.sendo.vn/shop/shop-thoi-trang-kl', 'Shop Thời Trang KL', 'sendo.vn', '5', '0908543864', 'kim_pham3388@yahoo.com', '47A1 Nguyễn Thượng Hiền,, phường(xã) Phường 05, Quận Bình Thạnh, Hồ Chí Minh', '2017-12-08 06:56:11', '2017-12-08 06:56:11'),
(316, 'https://www.sendo.vn/shop/thao88-shop', 'thao88-shop', 'sendo.vn', '5', '0938070209', 'truong0minh@gmail.com', '1/10v trân văn mười, phường(xã) Xã Xuân Thới Đông, Huyện Hóc Môn, Hồ Chí Minh', '2017-12-08 06:56:12', '2017-12-08 06:56:12'),
(317, 'https://www.sendo.vn/shop/phong-cach-xua-va-nay', 'PHONG CÁCH XƯA VÀ NAY', 'sendo.vn', '5', '0909719808', 'banhanghot83@gmail.com', 'N\'16 Đường Nguyễn Thị Tần, phường(xã) Phường 2, Quận 8, Hồ Chí Minh', '2017-12-08 06:56:13', '2017-12-08 06:56:13'),
(318, 'https://www.sendo.vn/shop/nn-shop', 'NN Shop', 'sendo.vn', '5', '0909047248', 'greeting79@gmail.com', '29/2S Đông Lân, Bà Điểm, phường(xã) Bà Điểm, Huyện Hóc Môn, Hồ Chí Minh', '2017-12-08 06:56:14', '2017-12-08 06:56:14'),
(319, 'https://www.sendo.vn/shop/chin', 'chin', 'sendo.vn', '5', '0908027187', 'd.chin_chin@yahoo.com.vn', '71/14 BÌNH THỚI, phường(xã) Phường 11, Quận 11, Hồ Chí Minh', '2017-12-08 06:56:14', '2017-12-08 06:56:14'),
(320, 'https://www.sendo.vn/shop/nguyenanhstore', 'Nguyễn Anh Store', 'sendo.vn', '5', '0984753073', 'nghaianh@gmail.com', 'E3 Phương Mai, phường(xã) Phường Phương Mai, Quận Đống Đa, Hà Nội', '2017-12-08 06:56:15', '2017-12-08 06:56:15'),
(321, 'https://www.sendo.vn/shop/glassesstore', 'GlassesStore', 'sendo.vn', '5', '0906963669', 'namthanhvu1812@gmail.com', '79 Đường Bà Huyện Thanh Quan, phường(xã) Phường 06, Quận 3, Hồ Chí Minh', '2017-12-08 06:56:15', '2017-12-08 06:56:15'),
(322, 'https://www.sendo.vn/shop/guitarvn', 'GuitarVN', 'sendo.vn', '5', '0983674612', 'nguyenquochuy101@gmail.com', 'Thị tứ Hưng Đạo, phường(xã) Xã Hưng Đạo, Huyện Tứ Kỳ, Hải Dương', '2017-12-08 06:56:16', '2017-12-08 06:56:16'),
(323, 'https://www.sendo.vn/shop/cao-la-rung-zn', 'Cao lá rừng ZN ', 'sendo.vn', '5', '0984846515', 'thuthu250194@gmail.com', 'số 168 ngõ 22 Tôn Thất Tùng , phường(xã) Phường Khương Thượng, Quận Đống Đa, Hà Nội', '2017-12-08 06:56:17', '2017-12-08 06:56:17'),
(324, 'https://www.sendo.vn/shop/cuong-mobi', 'Cường Mobi', 'sendo.vn', '5', '0988155200', 'hungem80@yahoo.com', '2 Thoại Ngọc Hầu, phường(xã) Phường Hoà Thạnh, Quận Tân Phú, Hồ Chí Minh', '2017-12-08 06:56:18', '2017-12-08 06:56:18'),
(325, 'https://www.sendo.vn/shop/roseleefashion', 'Rose Lee Fashion', 'sendo.vn', '5', '0989292522', 'hongnhungou11@gmail.com', '35/1D Ấp Đông, phường(xã) Xã Thới Tam Thôn, Huyện Hóc Môn, Hồ Chí Minh', '2017-12-08 06:56:18', '2017-12-08 06:56:18'),
(326, 'https://www.sendo.vn/shop/stephy-shop', 'Stephy Shop', 'sendo.vn', '5', '0932175212', 'stephy9d@gmail.com', '179B3 Lầu 3 Nguyễn Tri Phương, phường(xã) Phường 08, Quận 5, Hồ Chí Minh', '2017-12-08 06:56:19', '2017-12-08 06:56:19'),
(327, 'https://www.sendo.vn/shop/mebong', 'Mẹ Bống', 'sendo.vn', '5', '0904504025', 'xuanmai1986@gmail.com', 'Số 9 ngõ 240 Âu Cơ, phường(xã) Phường Quảng An, Quận Tây Hồ, Hà Nội', '2017-12-08 06:56:20', '2017-12-08 06:56:20'),
(328, 'https://www.sendo.vn/shop/dien-may-titi', 'Điện máy Titi', 'sendo.vn', '5', '0916299529', 'titibuyvn@gmail.com', '112/31 Trần Văn Kiểu, phường(xã) 10, Quận 6, Hồ Chí Minh', '2017-12-08 06:56:20', '2017-12-08 06:56:20'),
(329, 'https://www.sendo.vn/shop/yumi-mobile', 'Yumi Mobile', 'sendo.vn', '5', '0986188449', 'tuyetmai_8590@yahoo.com', '636 Đường 3/2, phường(xã) Phường 14, Quận 10, Hồ Chí Minh', '2017-12-08 06:56:21', '2017-12-08 06:56:21'),
(330, 'https://www.sendo.vn/shop/gia-dung-cao-cap', 'Gia dụng cao cấp', 'sendo.vn', '5', '0981336379', 'ex.im@tanakavietnam.vn', 'Số 55 Đường K2, phường(xã) Phường Cầu Diễn, Quận Bắc Từ Liêm, Hà Nội', '2017-12-08 06:56:22', '2017-12-08 06:56:22'),
(331, 'https://www.sendo.vn/shop/baonghiacomputer', 'Bao Nghia Computer', 'sendo.vn', '5', '0969820850', 'baonghiapc@gmail.com', '87 Phố Nhổn, phường(xã) Phường Phương Canh, Quận Nam Từ Liêm, Hà Nội', '2017-12-08 06:56:22', '2017-12-08 06:56:22'),
(332, 'https://www.sendo.vn/shop/bb-shoes-store', 'BB shoes store', 'sendo.vn', '5', '0965395493', 'duongphamletrinh@gmail.com', '489/19 Huỳnh Văn Bánh, p13, Phú Nhuận, phường(xã) Phường 13, Quận Phú Nhuận, Hồ Chí Minh', '2017-12-08 06:56:23', '2017-12-08 06:56:23'),
(333, 'https://www.sendo.vn/shop/khoi-nghiep-shop', 'Khởi Nghiệp shop', 'sendo.vn', '5', '0936476379', 'nguyenkhanh146@gmail.com', '164/14/10 Bùi Quang Là,F12, phường(xã) 12, Quận Gò Vấp, Hồ Chí Minh', '2017-12-08 06:56:24', '2017-12-08 06:56:24'),
(334, 'https://www.sendo.vn/shop/pig-house-92', 'Pig house 92', 'sendo.vn', '5', '0933721728', 'phancuongfs@gmail.com', '783/70 cmt8, phường 6, q. tân bình, tp.hcm, phường(xã) 6, Quận Tân Bình, Hồ Chí Minh', '2017-12-08 06:56:24', '2017-12-08 06:56:24'),
(335, 'https://www.sendo.vn/shop/yado-shop', 'YADO SHOP', 'sendo.vn', '5', '01265053957', 'yadothoitrang@gmail.com', 'xã tân thông hội, phường(xã) Xã Tân Thông Hội, Huyện Củ Chi, Hồ Chí Minh', '2017-12-08 06:56:25', '2017-12-08 06:56:25'),
(336, 'https://www.sendo.vn/shop/cho-va-cho', 'Cho và Cho', 'sendo.vn', '5', '0902892294', 'duongky262262@gmail.com', '255/1 Thích Quảng Đức,P4, Quận Phú Nhuận,HCM, phường(xã) Phường 04, Quận Phú Nhuận, Hồ Chí Minh', '2017-12-08 06:56:26', '2017-12-08 06:56:26'),
(337, 'https://www.sendo.vn/shop/queen-shop-hcm', 'Queen Shop HCM', 'sendo.vn', '5', '0975707324', 'dothimyhien49@gmail.com', '776/42 Đường Phạm Văn Bạch, phường(xã) Phường 12, Quận Gò Vấp, Hồ Chí Minh', '2017-12-08 06:56:26', '2017-12-08 06:56:26');

-- --------------------------------------------------------

--
-- Table structure for table `specifics`
--

CREATE TABLE `specifics` (
  `id` int(13) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `img` varchar(500) DEFAULT NULL,
  `id_sendo` int(13) DEFAULT NULL,
  `created_day` timestamp NULL DEFAULT NULL,
  `update_day` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cates`
--
ALTER TABLE `cates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`,`product_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_cate_id_foreign` (`cate_id`),
  ADD KEY `products_images_id_foreign` (`images_id`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specifics`
--
ALTER TABLE `specifics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cates`
--
ALTER TABLE `cates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=338;
--
-- AUTO_INCREMENT for table `specifics`
--
ALTER TABLE `specifics`
  MODIFY `id` int(13) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
