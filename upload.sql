-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2021 at 07:35 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `upload`
--

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` int(11) NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` int(16) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `data`, `created`, `status`) VALUES
(1, '[{\"success\":true,\"main\":{\"id\":\"95562\",\"name\":\"TUY-10654\",\"updated_at\":\"2021-07-19 10:36:08\"},\"cmz\":{\"id\":\"61566\",\"sku\":\"10654-SST\",\"number\":\"762461_5315\",\"updated_at\":\"2021-07-21 07:32:46\"},\"target\":\"21071A_GJL\",\"data\":{\"original\":{\"f\":{\"file_id\":\"S3_616_16266909149727\",\"file_url\":\"https:\\/\\/tee-upload2.s3.ap-southeast-1.amazonaws.com\\/TUY\\/190721_60f55537cecbf\\/1626690910218-99455-original.png?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAWUOW7XFEST6BMUED%2F20210719%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20210719T103515Z&X-Amz-SignedHeaders=host&X-Amz-Expires=604800&X-Amz-Signature=0c360f0986fe14ff83deccf694cdd1a7600e545321199fac1f00ca0bf1ffc1ca\",\"file_name\":\"10654-SST-FRONT-MOCKUP.png\"},\"f_d\":{\"file_id\":\"S3_616_16266909165055\",\"file_url\":\"https:\\/\\/tee-upload2.s3.ap-southeast-1.amazonaws.com\\/TUY\\/190721_60f55537cecbf\\/1626690911069-3542-original.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAWUOW7XFEST6BMUED%2F20210719%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20210719T103517Z&X-Amz-SignedHeaders=host&X-Amz-Expires=604800&X-Amz-Signature=9f8cbe7836b11db7db39b44003de686515e42bccf772f4b3f2f0bf4bb4e9e9e2\",\"file_name\":\"10654-SST-FRONT-DESIGN.jpg\"},\"b\":{\"file_id\":\"S3_616_16266909149727\",\"file_url\":\"https:\\/\\/tee-upload2.s3.ap-southeast-1.amazonaws.com\\/TUY\\/190721_60f55537cecbf\\/1626690910218-99455-original.png?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAWUOW7XFEST6BMUED%2F20210719%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20210719T103515Z&X-Amz-SignedHeaders=host&X-Amz-Expires=604800&X-Amz-Signature=0c360f0986fe14ff83deccf694cdd1a7600e545321199fac1f00ca0bf1ffc1ca\",\"file_name\":\"10654-SST-BACK-MOCKUP.png\"},\"b_d\":{\"file_id\":\"S3_616_16266909204469\",\"file_url\":\"https:\\/\\/tee-upload2.s3.ap-southeast-1.amazonaws.com\\/TUY\\/190721_60f55537cecbf\\/1626690911834-91138-original.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAWUOW7XFEST6BMUED%2F20210719%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20210719T103521Z&X-Amz-SignedHeaders=host&X-Amz-Expires=604800&X-Amz-Signature=96f552bda5accc5b3cd550a412be755ca0aaede1b0bc33f44e4756585e8f3b01\",\"file_name\":\"10654-SST-BACK-DESIGN.jpg\"}},\"extra\":{\"extra-design\":[{\"file_id\":\"S3_616_16266909201214\",\"file_url\":\"https:\\/\\/tee-upload2.s3.ap-southeast-1.amazonaws.com\\/TUY\\/190721_60f55537cecbf\\/1626690912587-40445-original.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAWUOW7XFEST6BMUED%2F20210719%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20210719T103521Z&X-Amz-SignedHeaders=host&X-Amz-Expires=604800&X-Amz-Signature=4ee8180de2ca387e7a1a49b60e083e923243f68b6da93b076ffcdad9baa589ff\",\"file_name\":\"10654-SST-EXTRA-DESIGN-EXTRA-DESIGN-1.jpg\"}]},\"cmz\":[{\"file_id\":\"S3_616_16268527618030\",\"file_url\":\"https:\\/\\/tee-upload2.s3.ap-southeast-1.amazonaws.com\\/TUY\\/210721_60f7cd9355c23\\/1626852754358-29533-original.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAWUOW7XFEST6BMUED%2F20210721%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20210721T073242Z&X-Amz-SignedHeaders=host&X-Amz-Expires=604800&X-Amz-Signature=ec7065d1a17bc6e85807130b44410ba2957a7c924010c0c0de3534ab9de52f5a\",\"file_name\":\"POS_1.jpg\"}],\"is_cmz\":true}},{\"success\":true,\"main\":{\"id\":\"96009\",\"name\":\"TUY-10733\",\"updated_at\":\"2021-07-21 07:40:42\"},\"cmz\":[],\"target\":\"21071A_GJL\",\"data\":{\"original\":{\"f\":{\"file_id\":\"S3_616_16268530511049\",\"file_url\":\"https:\\/\\/tee-upload2.s3.ap-southeast-1.amazonaws.com\\/TUY\\/210721_60f7ce824b333\\/1626853047201-15839-original.png?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAWUOW7XFEST6BMUED%2F20210721%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20210721T073732Z&X-Amz-SignedHeaders=host&X-Amz-Expires=604800&X-Amz-Signature=d545ed3099e342badd4f2308b74f5ca13237d1056eb27c37a9fc6b644b6a5b65\",\"file_name\":\"10733-JRY-FRONT-MOCKUP.png\"},\"f_d\":{\"file_id\":\"S3_616_16268530533877\",\"file_url\":\"https:\\/\\/tee-upload2.s3.ap-southeast-1.amazonaws.com\\/TUY\\/210721_60f7ce824b333\\/1626853048825-80851-original.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAWUOW7XFEST6BMUED%2F20210721%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20210721T073733Z&X-Amz-SignedHeaders=host&X-Amz-Expires=604800&X-Amz-Signature=858c4f631770d7ac2f9dc2b3a34283ec1017890d444db5f4e75918157dbfb78e\",\"file_name\":\"10733-JRY-FRONT-DESIGN.jpg\"},\"b\":{\"file_id\":\"S3_616_16268530511049\",\"file_url\":\"https:\\/\\/tee-upload2.s3.ap-southeast-1.amazonaws.com\\/TUY\\/210721_60f7ce824b333\\/1626853047201-15839-original.png?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAWUOW7XFEST6BMUED%2F20210721%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20210721T073732Z&X-Amz-SignedHeaders=host&X-Amz-Expires=604800&X-Amz-Signature=d545ed3099e342badd4f2308b74f5ca13237d1056eb27c37a9fc6b644b6a5b65\",\"file_name\":\"10733-JRY-BACK-MOCKUP.png\"},\"b_d\":{\"file_id\":\"S3_616_16268530521379\",\"file_url\":\"https:\\/\\/tee-upload2.s3.ap-southeast-1.amazonaws.com\\/TUY\\/210721_60f7ce824b333\\/1626853048210-7-original.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAWUOW7XFEST6BMUED%2F20210721%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20210721T073733Z&X-Amz-SignedHeaders=host&X-Amz-Expires=604800&X-Amz-Signature=e9369428ecde468a359974243039b7d788c19e4c8238281b1c6e5f87ed78e6eb\",\"file_name\":\"10733-JRY-BACK-DESIGN.jpg\"}},\"extra\":{\"sleeve\":[{\"file_id\":\"S3_616_16268530536894\",\"file_url\":\"https:\\/\\/tee-upload2.s3.ap-southeast-1.amazonaws.com\\/TUY\\/210721_60f7ce824b333\\/1626853049426-45170-original.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAWUOW7XFEST6BMUED%2F20210721%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20210721T073734Z&X-Amz-SignedHeaders=host&X-Amz-Expires=604800&X-Amz-Signature=08ae2c4146a003e26ef7758e23172add8b1e39dd5c3a248db9cd3b78b9692e42\",\"file_name\":\"10733-JRY-SLEEVE-SLEEVE-1.jpg\"}],\"cap\":[{\"file_id\":\"S3_616_16268530545401\",\"file_url\":\"https:\\/\\/tee-upload2.s3.ap-southeast-1.amazonaws.com\\/TUY\\/210721_60f7ce824b333\\/1626853050173-30766-original.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAWUOW7XFEST6BMUED%2F20210721%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20210721T073735Z&X-Amz-SignedHeaders=host&X-Amz-Expires=604800&X-Amz-Signature=0111a65649b09b988d0150307244c92d545ae89421d763c8b6041ac7f0634dfa\",\"file_name\":\"10733-JRY-CAP-CAP-1.jpg\"}]},\"cmz\":[],\"is_cmz\":false}},{\"success\":true,\"main\":{\"id\":\"94110\",\"name\":\"TUY-10473\",\"updated_at\":\"2021-07-13 03:09:51\"},\"cmz\":[],\"target\":\"21071A_GJL\",\"data\":{\"original\":{\"f\":{\"file_id\":\"S3_616_16261457719073\",\"file_url\":\"https:\\/\\/tee-upload2.s3.ap-southeast-1.amazonaws.com\\/TUY\\/130721_60ed02d873b7a\\/1626145765751-5037-original.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAWUOW7XFEST6BMUED%2F20210722%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20210722T022419Z&X-Amz-SignedHeaders=host&X-Amz-Expires=604800&X-Amz-Signature=24c8f66fb89d0c8ee63e51905286ef56dd3dd9c6f5a4102d536a1ebc8fd10b9d\",\"file_name\":\"10473-CAO-FRONT-MOCKUP.jpg\"},\"f_d\":{\"file_id\":\"S3_616_16261457653862\",\"file_url\":\"https:\\/\\/tee-upload2.s3.ap-southeast-1.amazonaws.com\\/TUY\\/130721_60ed02d873b7a\\/1626145758504-51831-original.png?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAWUOW7XFEST6BMUED%2F20210722%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20210722T022421Z&X-Amz-SignedHeaders=host&X-Amz-Expires=604800&X-Amz-Signature=25b25e725d94c83dd8856c3dd72046c2cf509f5c5a08b6610b210716b4ebe18a\",\"file_name\":\"10473-CAO-FRONT-DESIGN.png\"},\"b\":{\"file_id\":\"S3_616_16261457719073\",\"file_url\":\"https:\\/\\/tee-upload2.s3.ap-southeast-1.amazonaws.com\\/TUY\\/130721_60ed02d873b7a\\/1626145765751-5037-original.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAWUOW7XFEST6BMUED%2F20210722%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20210722T022419Z&X-Amz-SignedHeaders=host&X-Amz-Expires=604800&X-Amz-Signature=24c8f66fb89d0c8ee63e51905286ef56dd3dd9c6f5a4102d536a1ebc8fd10b9d\",\"file_name\":\"10473-CAO-BACK-MOCKUP.jpg\"},\"b_d\":{\"file_id\":\"S3_616_16261457653862\",\"file_url\":\"https:\\/\\/tee-upload2.s3.ap-southeast-1.amazonaws.com\\/TUY\\/130721_60ed02d873b7a\\/1626145758504-51831-original.png?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAWUOW7XFEST6BMUED%2F20210722%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20210722T022421Z&X-Amz-SignedHeaders=host&X-Amz-Expires=604800&X-Amz-Signature=25b25e725d94c83dd8856c3dd72046c2cf509f5c5a08b6610b210716b4ebe18a\",\"file_name\":\"10473-CAO-BACK-DESIGN.png\"}},\"extra\":[],\"cmz\":[],\"is_cmz\":false}},{\"success\":true,\"main\":{\"id\":\"89550\",\"name\":\"TUY-10067\",\"updated_at\":\"2021-06-22 11:26:35\"},\"cmz\":[],\"target\":\"21071A_GJL\",\"data\":{\"original\":{\"f\":{\"file_id\":\"S3_616_16243610601617\",\"file_url\":\"https:\\/\\/tee-upload2.s3.ap-southeast-1.amazonaws.com\\/TUY\\/220621_60d1c855bb228\\/1624361054455-97480-original.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAWUOW7XFEST6BMUED%2F20210722%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20210722T022423Z&X-Amz-SignedHeaders=host&X-Amz-Expires=604800&X-Amz-Signature=c77b92f3b14aef9cb4861f4dab41b36f3a99da2dca5cfd19c0920a1b00929240\",\"file_name\":\"10067-VRUG-FRONT-MOCKUP.jpg\"},\"f_d\":{\"file_id\":\"S3_616_16243610619085\",\"file_url\":\"https:\\/\\/tee-upload2.s3.ap-southeast-1.amazonaws.com\\/TUY\\/220621_60d1c855bb228\\/1624361055163-74187-original.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAWUOW7XFEST6BMUED%2F20210722%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20210722T022424Z&X-Amz-SignedHeaders=host&X-Amz-Expires=604800&X-Amz-Signature=c8e1c536c49a4da2a8f4843a3c00a4fef65b17f1b15cf7eb9f4a07c4b9fcc95b\",\"file_name\":\"10067-VRUG-FRONT-DESIGN.jpg\"}},\"extra\":[],\"cmz\":[],\"is_cmz\":false}},{\"success\":true,\"main\":{\"id\":\"82590\",\"name\":\"TUY-9031\",\"updated_at\":\"2021-05-19 03:35:11\"},\"cmz\":[],\"target\":\"21071A_GJL\",\"data\":{\"original\":{\"f\":{\"file_id\":\"S3_616_16213952361936\",\"file_url\":\"https:\\/\\/tee-upload2.s3.ap-southeast-1.amazonaws.com\\/TUY\\/190521_60a48702cdbae\\/1621395230420-68661-original.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAWUOW7XFEST6BMUED%2F20210722%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20210722T022426Z&X-Amz-SignedHeaders=host&X-Amz-Expires=604800&X-Amz-Signature=5fc288a9a9b1343001bf6c5448d4f191b8ca170acc7897d17e115d4af2f0f984\",\"file_name\":\"9031-CUPYUN-FRONT-MOCKUP.jpg\"},\"f_d\":{\"file_id\":\"S3_616_16213952365689\",\"file_url\":\"https:\\/\\/tee-upload2.s3.ap-southeast-1.amazonaws.com\\/TUY\\/190521_60a48702cdbae\\/1621395229330-24401-original.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAWUOW7XFEST6BMUED%2F20210722%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20210722T022428Z&X-Amz-SignedHeaders=host&X-Amz-Expires=604800&X-Amz-Signature=28c942ae21140f7ef0032b622f2ed030ac27a6bfc8a50d5d3be1c0d5b778e655\",\"file_name\":\"9031-CUPYUN-FRONT-DESIGN.jpg\"}},\"extra\":[],\"cmz\":[],\"is_cmz\":false}},{\"success\":true,\"main\":{\"id\":\"91588\",\"name\":\"TUY-10267\",\"updated_at\":\"2021-06-30 10:57:16\"},\"cmz\":{\"id\":\"61565\",\"sku\":\"10267-TX\",\"number\":\"746457_3238\",\"updated_at\":\"2021-07-21 07:27:08\"},\"target\":\"21071A_GJL\",\"data\":{\"original\":{\"f\":{\"file_id\":\"S3_616_16250505527731\",\"file_url\":\"https:\\/\\/tee-upload2.s3.ap-southeast-1.amazonaws.com\\/TUY\\/300621_60dc4d9fc6588\\/1625050544630-39173-original.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAWUOW7XFEST6BMUED%2F20210720%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20210720T101525Z&X-Amz-SignedHeaders=host&X-Amz-Expires=604800&X-Amz-Signature=34a904b60e7c86f935cbc55f472eb5d6b3df8ea751a65711b8b4c9f1207005d0\",\"file_name\":\"10267-TX-FRONT-MOCKUP.jpg\"},\"f_d\":{\"file_id\":\"S3_616_16250505517184\",\"file_url\":\"https:\\/\\/tee-upload2.s3.ap-southeast-1.amazonaws.com\\/TUY\\/300621_60dc4d9fc6588\\/1625050541290-12603-original.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAWUOW7XFEST6BMUED%2F20210720%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20210720T101527Z&X-Amz-SignedHeaders=host&X-Amz-Expires=604800&X-Amz-Signature=9ef2770f82fd08825565d74f49383a1be9575322d5ca33d636ecd2b520946c8b\",\"file_name\":\"10267-TX-FRONT-DESIGN.jpg\"},\"b\":{\"file_id\":\"S3_616_16250505527731\",\"file_url\":\"https:\\/\\/tee-upload2.s3.ap-southeast-1.amazonaws.com\\/TUY\\/300621_60dc4d9fc6588\\/1625050544630-39173-original.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAWUOW7XFEST6BMUED%2F20210720%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20210720T101525Z&X-Amz-SignedHeaders=host&X-Amz-Expires=604800&X-Amz-Signature=34a904b60e7c86f935cbc55f472eb5d6b3df8ea751a65711b8b4c9f1207005d0\",\"file_name\":\"10267-TX-BACK-MOCKUP.jpg\"},\"b_d\":{\"file_id\":\"S3_616_16250505544692\",\"file_url\":\"https:\\/\\/tee-upload2.s3.ap-southeast-1.amazonaws.com\\/TUY\\/300621_60dc4d9fc6588\\/1625050545867-74278-original.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAWUOW7XFEST6BMUED%2F20210720%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20210720T101529Z&X-Amz-SignedHeaders=host&X-Amz-Expires=604800&X-Amz-Signature=3f9dec11fb694c9f6abb60671d1f50a5948bafe671e8a57254837fd8df308dca\",\"file_name\":\"10267-TX-BACK-DESIGN.jpg\"}},\"extra\":{\"extra-design\":[{\"file_id\":\"S3_616_16250505514764\",\"file_url\":\"https:\\/\\/tee-upload2.s3.ap-southeast-1.amazonaws.com\\/TUY\\/300621_60dc4d9fc6588\\/1625050543606-7790-original.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAWUOW7XFEST6BMUED%2F20210720%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20210720T101531Z&X-Amz-SignedHeaders=host&X-Amz-Expires=604800&X-Amz-Signature=cdaf5aac8c9317203e3b3548786b2f067a720c565c519137422a748fa56411be\",\"file_name\":\"10267-TX-EXTRA-DESIGN-EXTRA-DESIGN-1.jpg\"},{\"file_id\":\"S3_616_16250505512351\",\"file_url\":\"https:\\/\\/tee-upload2.s3.ap-southeast-1.amazonaws.com\\/TUY\\/300621_60dc4d9fc6588\\/1625050542414-82194-original.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAWUOW7XFEST6BMUED%2F20210720%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20210720T101532Z&X-Amz-SignedHeaders=host&X-Amz-Expires=604800&X-Amz-Signature=12b64df4b2d61273fc6733bf77772c65da0d7750c36cae85aa3d4cb63074b394\",\"file_name\":\"10267-TX-EXTRA-DESIGN-EXTRA-DESIGN-2.jpg\"}]},\"cmz\":[{\"file_id\":\"S3_616_16267764543501\",\"file_url\":\"https:\\/\\/tee-upload2.s3.ap-southeast-1.amazonaws.com\\/TUY\\/200721_60f6a37f57938\\/1626776446425-57568-original.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAWUOW7XFEST6BMUED%2F20210720%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20210720T102055Z&X-Amz-SignedHeaders=host&X-Amz-Expires=604800&X-Amz-Signature=07ba7ef7e7364cee647e865f6f11790fad5254a88117cac98e042e6b5ef94099\",\"file_name\":\"POS_1.jpg\"}],\"is_cmz\":true}}]', 1, 1),
(2, '{\"success\":true,\"main\":{\"id\":\"95562\",\"name\":\"TUY-10654\",\"updated_at\":\"2021-07-19 10:36:08\"},\"cmz\":{\"id\":\"61566\",\"sku\":\"10654-SST\",\"number\":\"762461_5315\",\"updated_at\":\"2021-07-21 07:32:46\"},\"target\":\"21071A_GJL\",\"data\":{\"original\":{\"f\":{\"file_id\":\"S3_616_16266909149727\",\"file_url\":\"https:\\/\\/tee-upload2.s3.ap-southeast-1.amazonaws.com\\/TUY\\/190721_60f55537cecbf\\/1626690910218-99455-original.png?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAWUOW7XFEST6BMUED%2F20210719%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20210719T103515Z&X-Amz-SignedHeaders=host&X-Amz-Expires=604800&X-Amz-Signature=0c360f0986fe14ff83deccf694cdd1a7600e545321199fac1f00ca0bf1ffc1ca\",\"file_name\":\"10654-SST-FRONT-MOCKUP.png\"},\"f_d\":{\"file_id\":\"S3_616_16266909165055\",\"file_url\":\"https:\\/\\/tee-upload2.s3.ap-southeast-1.amazonaws.com\\/TUY\\/190721_60f55537cecbf\\/1626690911069-3542-original.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAWUOW7XFEST6BMUED%2F20210719%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20210719T103517Z&X-Amz-SignedHeaders=host&X-Amz-Expires=604800&X-Amz-Signature=9f8cbe7836b11db7db39b44003de686515e42bccf772f4b3f2f0bf4bb4e9e9e2\",\"file_name\":\"10654-SST-FRONT-DESIGN.jpg\"},\"b\":{\"file_id\":\"S3_616_16266909149727\",\"file_url\":\"https:\\/\\/tee-upload2.s3.ap-southeast-1.amazonaws.com\\/TUY\\/190721_60f55537cecbf\\/1626690910218-99455-original.png?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAWUOW7XFEST6BMUED%2F20210719%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20210719T103515Z&X-Amz-SignedHeaders=host&X-Amz-Expires=604800&X-Amz-Signature=0c360f0986fe14ff83deccf694cdd1a7600e545321199fac1f00ca0bf1ffc1ca\",\"file_name\":\"10654-SST-BACK-MOCKUP.png\"},\"b_d\":{\"file_id\":\"S3_616_16266909204469\",\"file_url\":\"https:\\/\\/tee-upload2.s3.ap-southeast-1.amazonaws.com\\/TUY\\/190721_60f55537cecbf\\/1626690911834-91138-original.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAWUOW7XFEST6BMUED%2F20210719%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20210719T103521Z&X-Amz-SignedHeaders=host&X-Amz-Expires=604800&X-Amz-Signature=96f552bda5accc5b3cd550a412be755ca0aaede1b0bc33f44e4756585e8f3b01\",\"file_name\":\"10654-SST-BACK-DESIGN.jpg\"}},\"extra\":{\"extra-design\":[{\"file_id\":\"S3_616_16266909201214\",\"file_url\":\"https:\\/\\/tee-upload2.s3.ap-southeast-1.amazonaws.com\\/TUY\\/190721_60f55537cecbf\\/1626690912587-40445-original.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAWUOW7XFEST6BMUED%2F20210719%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20210719T103521Z&X-Amz-SignedHeaders=host&X-Amz-Expires=604800&X-Amz-Signature=4ee8180de2ca387e7a1a49b60e083e923243f68b6da93b076ffcdad9baa589ff\",\"file_name\":\"10654-SST-EXTRA-DESIGN-EXTRA-DESIGN-1.jpg\"}]},\"cmz\":[{\"file_id\":\"S3_616_16268527618030\",\"file_url\":\"https:\\/\\/tee-upload2.s3.ap-southeast-1.amazonaws.com\\/TUY\\/210721_60f7cd9355c23\\/1626852754358-29533-original.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAWUOW7XFEST6BMUED%2F20210721%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20210721T073242Z&X-Amz-SignedHeaders=host&X-Amz-Expires=604800&X-Amz-Signature=ec7065d1a17bc6e85807130b44410ba2957a7c924010c0c0de3534ab9de52f5a\",\"file_name\":\"POS_1.jpg\"}],\"is_cmz\":true}}', 1, 0),
(3, '{\"success\":true,\"main\":{\"id\":\"96009\",\"name\":\"TUY-10733\",\"updated_at\":\"2021-07-21 07:40:42\"},\"cmz\":[],\"target\":\"21071A_GJL\",\"data\":{\"original\":{\"f\":{\"file_id\":\"S3_616_16268530511049\",\"file_url\":\"https:\\/\\/tee-upload2.s3.ap-southeast-1.amazonaws.com\\/TUY\\/210721_60f7ce824b333\\/1626853047201-15839-original.png?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAWUOW7XFEST6BMUED%2F20210721%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20210721T073732Z&X-Amz-SignedHeaders=host&X-Amz-Expires=604800&X-Amz-Signature=d545ed3099e342badd4f2308b74f5ca13237d1056eb27c37a9fc6b644b6a5b65\",\"file_name\":\"10733-JRY-FRONT-MOCKUP.png\"},\"f_d\":{\"file_id\":\"S3_616_16268530533877\",\"file_url\":\"https:\\/\\/tee-upload2.s3.ap-southeast-1.amazonaws.com\\/TUY\\/210721_60f7ce824b333\\/1626853048825-80851-original.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAWUOW7XFEST6BMUED%2F20210721%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20210721T073733Z&X-Amz-SignedHeaders=host&X-Amz-Expires=604800&X-Amz-Signature=858c4f631770d7ac2f9dc2b3a34283ec1017890d444db5f4e75918157dbfb78e\",\"file_name\":\"10733-JRY-FRONT-DESIGN.jpg\"},\"b\":{\"file_id\":\"S3_616_16268530511049\",\"file_url\":\"https:\\/\\/tee-upload2.s3.ap-southeast-1.amazonaws.com\\/TUY\\/210721_60f7ce824b333\\/1626853047201-15839-original.png?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAWUOW7XFEST6BMUED%2F20210721%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20210721T073732Z&X-Amz-SignedHeaders=host&X-Amz-Expires=604800&X-Amz-Signature=d545ed3099e342badd4f2308b74f5ca13237d1056eb27c37a9fc6b644b6a5b65\",\"file_name\":\"10733-JRY-BACK-MOCKUP.png\"},\"b_d\":{\"file_id\":\"S3_616_16268530521379\",\"file_url\":\"https:\\/\\/tee-upload2.s3.ap-southeast-1.amazonaws.com\\/TUY\\/210721_60f7ce824b333\\/1626853048210-7-original.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAWUOW7XFEST6BMUED%2F20210721%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20210721T073733Z&X-Amz-SignedHeaders=host&X-Amz-Expires=604800&X-Amz-Signature=e9369428ecde468a359974243039b7d788c19e4c8238281b1c6e5f87ed78e6eb\",\"file_name\":\"10733-JRY-BACK-DESIGN.jpg\"}},\"extra\":{\"sleeve\":[{\"file_id\":\"S3_616_16268530536894\",\"file_url\":\"https:\\/\\/tee-upload2.s3.ap-southeast-1.amazonaws.com\\/TUY\\/210721_60f7ce824b333\\/1626853049426-45170-original.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAWUOW7XFEST6BMUED%2F20210721%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20210721T073734Z&X-Amz-SignedHeaders=host&X-Amz-Expires=604800&X-Amz-Signature=08ae2c4146a003e26ef7758e23172add8b1e39dd5c3a248db9cd3b78b9692e42\",\"file_name\":\"10733-JRY-SLEEVE-SLEEVE-1.jpg\"}],\"cap\":[{\"file_id\":\"S3_616_16268530545401\",\"file_url\":\"https:\\/\\/tee-upload2.s3.ap-southeast-1.amazonaws.com\\/TUY\\/210721_60f7ce824b333\\/1626853050173-30766-original.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAWUOW7XFEST6BMUED%2F20210721%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20210721T073735Z&X-Amz-SignedHeaders=host&X-Amz-Expires=604800&X-Amz-Signature=0111a65649b09b988d0150307244c92d545ae89421d763c8b6041ac7f0634dfa\",\"file_name\":\"10733-JRY-CAP-CAP-1.jpg\"}]},\"cmz\":[],\"is_cmz\":false}}', 1, 1),
(4, '{\"success\":true,\"main\":{\"id\":\"89550\",\"name\":\"TUY-10067\",\"updated_at\":\"2021-06-22 11:26:35\"},\"cmz\":[],\"target\":\"21071A_GJL\",\"data\":{\"original\":{\"f\":{\"file_id\":\"S3_616_16243610601617\",\"file_url\":\"https:\\/\\/tee-upload2.s3.ap-southeast-1.amazonaws.com\\/TUY\\/220621_60d1c855bb228\\/1624361054455-97480-original.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAWUOW7XFEST6BMUED%2F20210722%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20210722T022423Z&X-Amz-SignedHeaders=host&X-Amz-Expires=604800&X-Amz-Signature=c77b92f3b14aef9cb4861f4dab41b36f3a99da2dca5cfd19c0920a1b00929240\",\"file_name\":\"10067-VRUG-FRONT-MOCKUP.jpg\"},\"f_d\":{\"file_id\":\"S3_616_16243610619085\",\"file_url\":\"https:\\/\\/tee-upload2.s3.ap-southeast-1.amazonaws.com\\/TUY\\/220621_60d1c855bb228\\/1624361055163-74187-original.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAWUOW7XFEST6BMUED%2F20210722%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20210722T022424Z&X-Amz-SignedHeaders=host&X-Amz-Expires=604800&X-Amz-Signature=c8e1c536c49a4da2a8f4843a3c00a4fef65b17f1b15cf7eb9f4a07c4b9fcc95b\",\"file_name\":\"10067-VRUG-FRONT-DESIGN.jpg\"}},\"extra\":[],\"cmz\":[],\"is_cmz\":false}}', 1, 1),
(5, '{\"success\":true,\"main\":{\"id\":\"82590\",\"name\":\"TUY-9031\",\"updated_at\":\"2021-05-19 03:35:11\"},\"cmz\":[],\"target\":\"21071A_GJL\",\"data\":{\"original\":{\"f\":{\"file_id\":\"S3_616_16213952361936\",\"file_url\":\"https:\\/\\/tee-upload2.s3.ap-southeast-1.amazonaws.com\\/TUY\\/190521_60a48702cdbae\\/1621395230420-68661-original.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAWUOW7XFEST6BMUED%2F20210722%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20210722T022426Z&X-Amz-SignedHeaders=host&X-Amz-Expires=604800&X-Amz-Signature=5fc288a9a9b1343001bf6c5448d4f191b8ca170acc7897d17e115d4af2f0f984\",\"file_name\":\"9031-CUPYUN-FRONT-MOCKUP.jpg\"},\"f_d\":{\"file_id\":\"S3_616_16213952365689\",\"file_url\":\"https:\\/\\/tee-upload2.s3.ap-southeast-1.amazonaws.com\\/TUY\\/190521_60a48702cdbae\\/1621395229330-24401-original.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAWUOW7XFEST6BMUED%2F20210722%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20210722T022428Z&X-Amz-SignedHeaders=host&X-Amz-Expires=604800&X-Amz-Signature=28c942ae21140f7ef0032b622f2ed030ac27a6bfc8a50d5d3be1c0d5b778e655\",\"file_name\":\"9031-CUPYUN-FRONT-DESIGN.jpg\"}},\"extra\":[],\"cmz\":[],\"is_cmz\":false}}', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `folder`
--

CREATE TABLE `folder` (
  `id` int(11) NOT NULL,
  `name` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_folder_drive` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_parent` int(11) NOT NULL,
  `id_sender` int(11) NOT NULL,
  `updated_at` int(16) NOT NULL,
  `type` int(2) NOT NULL,
  `created` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `folder`
--

INSERT INTO `folder` (`id`, `name`, `id_folder_drive`, `id_parent`, `id_sender`, `updated_at`, `type`, `created`) VALUES
(1, 'NewDes', '1OhkUUm9n-QokWXPpz5g5wp2L1jwHfvcc', 0, 0, 0, 0, 1626863392),
(96, 'GJL', '1rAGnevJOtWr-ruYgZQhYmQFdlnQpEJ_q', 1, 21071, 1627025486, 0, 1627025487),
(97, 'TUY-10654', '123s1_u8qeTzi07zpxvdn817T5ziPpgpB', 96, 95562, 1626683768, 0, 1627025488),
(98, 'TUY-10654-CMZ', '1nFlF6_7DrWZpMWxj-qII95AuC4xyDzWB', 97, 95562, 1626683768, 1, 1627025531),
(99, '762461_5315', '1VLlcwz08WrUL1riD6m5s5FYMcgiRE9rK', 98, 61566, 1626845566, 0, 1627025531),
(100, 'TUY-9031', '1LovLSart_kcRIoQShloophGTY3c25FNY', 96, 82590, 1621388111, 0, 1627025799);

-- --------------------------------------------------------

--
-- Table structure for table `folder_data`
--

CREATE TABLE `folder_data` (
  `id` int(11) NOT NULL,
  `id_folder` int(11) NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `save_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `folder_data`
--

INSERT INTO `folder_data` (`id`, `id_folder`, `data`, `save_time`) VALUES
(1, 97, '{\"success\":true,\"main\":{\"id\":\"95562\",\"name\":\"TUY-10654\",\"updated_at\":\"2021-07-19 10:36:08\"},\"cmz\":{\"id\":\"61566\",\"sku\":\"10654-SST\",\"number\":\"762461_5315\",\"updated_at\":\"2021-07-21 07:32:46\"},\"target\":\"21071A_GJL\",\"data\":{\"original\":{\"f\":{\"file_id\":\"S3_616_16266909149727\",\"file_url\":\"https:\\/\\/tee-upload2.s3.ap-southeast-1.amazonaws.com\\/TUY\\/190721_60f55537cecbf\\/1626690910218-99455-original.png?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAWUOW7XFEST6BMUED%2F20210719%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20210719T103515Z&X-Amz-SignedHeaders=host&X-Amz-Expires=604800&X-Amz-Signature=0c360f0986fe14ff83deccf694cdd1a7600e545321199fac1f00ca0bf1ffc1ca\",\"file_name\":\"10654-SST-FRONT-MOCKUP.png\"},\"f_d\":{\"file_id\":\"S3_616_16266909165055\",\"file_url\":\"https:\\/\\/tee-upload2.s3.ap-southeast-1.amazonaws.com\\/TUY\\/190721_60f55537cecbf\\/1626690911069-3542-original.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAWUOW7XFEST6BMUED%2F20210719%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20210719T103517Z&X-Amz-SignedHeaders=host&X-Amz-Expires=604800&X-Amz-Signature=9f8cbe7836b11db7db39b44003de686515e42bccf772f4b3f2f0bf4bb4e9e9e2\",\"file_name\":\"10654-SST-FRONT-DESIGN.jpg\"},\"b\":{\"file_id\":\"S3_616_16266909149727\",\"file_url\":\"https:\\/\\/tee-upload2.s3.ap-southeast-1.amazonaws.com\\/TUY\\/190721_60f55537cecbf\\/1626690910218-99455-original.png?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAWUOW7XFEST6BMUED%2F20210719%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20210719T103515Z&X-Amz-SignedHeaders=host&X-Amz-Expires=604800&X-Amz-Signature=0c360f0986fe14ff83deccf694cdd1a7600e545321199fac1f00ca0bf1ffc1ca\",\"file_name\":\"10654-SST-BACK-MOCKUP.png\"},\"b_d\":{\"file_id\":\"S3_616_16266909204469\",\"file_url\":\"https:\\/\\/tee-upload2.s3.ap-southeast-1.amazonaws.com\\/TUY\\/190721_60f55537cecbf\\/1626690911834-91138-original.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAWUOW7XFEST6BMUED%2F20210719%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20210719T103521Z&X-Amz-SignedHeaders=host&X-Amz-Expires=604800&X-Amz-Signature=96f552bda5accc5b3cd550a412be755ca0aaede1b0bc33f44e4756585e8f3b01\",\"file_name\":\"10654-SST-BACK-DESIGN.jpg\"}},\"extra\":{\"extra-design\":[{\"file_id\":\"S3_616_16266909201214\",\"file_url\":\"https:\\/\\/tee-upload2.s3.ap-southeast-1.amazonaws.com\\/TUY\\/190721_60f55537cecbf\\/1626690912587-40445-original.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAWUOW7XFEST6BMUED%2F20210719%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20210719T103521Z&X-Amz-SignedHeaders=host&X-Amz-Expires=604800&X-Amz-Signature=4ee8180de2ca387e7a1a49b60e083e923243f68b6da93b076ffcdad9baa589ff\",\"file_name\":\"10654-SST-EXTRA-DESIGN-EXTRA-DESIGN-1.jpg\"}]},\"cmz\":[{\"file_id\":\"S3_616_16268527618030\",\"file_url\":\"https:\\/\\/tee-upload2.s3.ap-southeast-1.amazonaws.com\\/TUY\\/210721_60f7cd9355c23\\/1626852754358-29533-original.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAWUOW7XFEST6BMUED%2F20210721%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20210721T073242Z&X-Amz-SignedHeaders=host&X-Amz-Expires=604800&X-Amz-Signature=ec7065d1a17bc6e85807130b44410ba2957a7c924010c0c0de3534ab9de52f5a\",\"file_name\":\"POS_1.jpg\"}],\"is_cmz\":true}}', 1627025488),
(2, 100, '{\"success\":true,\"main\":{\"id\":\"82590\",\"name\":\"TUY-9031\",\"updated_at\":\"2021-05-19 03:35:11\"},\"cmz\":[],\"target\":\"21071A_GJL\",\"data\":{\"original\":{\"f\":{\"file_id\":\"S3_616_16213952361936\",\"file_url\":\"https:\\/\\/tee-upload2.s3.ap-southeast-1.amazonaws.com\\/TUY\\/190521_60a48702cdbae\\/1621395230420-68661-original.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAWUOW7XFEST6BMUED%2F20210722%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20210722T022426Z&X-Amz-SignedHeaders=host&X-Amz-Expires=604800&X-Amz-Signature=5fc288a9a9b1343001bf6c5448d4f191b8ca170acc7897d17e115d4af2f0f984\",\"file_name\":\"9031-CUPYUN-FRONT-MOCKUP.jpg\"},\"f_d\":{\"file_id\":\"S3_616_16213952365689\",\"file_url\":\"https:\\/\\/tee-upload2.s3.ap-southeast-1.amazonaws.com\\/TUY\\/190521_60a48702cdbae\\/1621395229330-24401-original.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAWUOW7XFEST6BMUED%2F20210722%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20210722T022428Z&X-Amz-SignedHeaders=host&X-Amz-Expires=604800&X-Amz-Signature=28c942ae21140f7ef0032b622f2ed030ac27a6bfc8a50d5d3be1c0d5b778e655\",\"file_name\":\"9031-CUPYUN-FRONT-DESIGN.jpg\"}},\"extra\":[],\"cmz\":[],\"is_cmz\":false}}', 1627025799);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `file_id` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_folder` int(11) NOT NULL,
  `id_img_drive` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create` int(16) NOT NULL,
  `last_change` int(16) NOT NULL,
  `status` int(11) NOT NULL,
  `push` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `file_id`, `url`, `name`, `id_folder`, `id_img_drive`, `create`, `last_change`, `status`, `push`) VALUES
(1, 'S3_616_16266909149727', 'https://tee-upload2.s3.ap-southeast-1.amazonaws.com/TUY/190721_60f55537cecbf/1626690910218-99455-original.png?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAWUOW7XFEST6BMUED%2F20210719%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20210719T103515Z&X-Amz-SignedHeaders=host&X-Amz-Expires=604800&X-Amz-Signature=0c360f0986fe14ff83deccf694cdd1a7600e545321199fac1f00ca0bf1ffc1ca', '10654-SST-FRONT-MOCKUP.png', 97, '', 1627025490, 0, 1, 1),
(2, 'S3_616_16266909165055', 'https://tee-upload2.s3.ap-southeast-1.amazonaws.com/TUY/190721_60f55537cecbf/1626690911069-3542-original.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAWUOW7XFEST6BMUED%2F20210719%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20210719T103517Z&X-Amz-SignedHeaders=host&X-Amz-Expires=604800&X-Amz-Signature=9f8cbe7836b11db7db39b44003de686515e42bccf772f4b3f2f0bf4bb4e9e9e2', '10654-SST-FRONT-DESIGN.jpg', 97, '', 1627025507, 0, 1, 1),
(3, 'S3_616_16266909149727', 'https://tee-upload2.s3.ap-southeast-1.amazonaws.com/TUY/190721_60f55537cecbf/1626690910218-99455-original.png?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAWUOW7XFEST6BMUED%2F20210719%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20210719T103515Z&X-Amz-SignedHeaders=host&X-Amz-Expires=604800&X-Amz-Signature=0c360f0986fe14ff83deccf694cdd1a7600e545321199fac1f00ca0bf1ffc1ca', '10654-SST-BACK-MOCKUP.png', 97, '', 1627025509, 0, 1, 1),
(4, 'S3_616_16266909204469', 'https://tee-upload2.s3.ap-southeast-1.amazonaws.com/TUY/190721_60f55537cecbf/1626690911834-91138-original.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAWUOW7XFEST6BMUED%2F20210719%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20210719T103521Z&X-Amz-SignedHeaders=host&X-Amz-Expires=604800&X-Amz-Signature=96f552bda5accc5b3cd550a412be755ca0aaede1b0bc33f44e4756585e8f3b01', '10654-SST-BACK-DESIGN.jpg', 97, '', 1627025519, 0, 1, 1),
(5, 'S3_616_16266909201214', 'https://tee-upload2.s3.ap-southeast-1.amazonaws.com/TUY/190721_60f55537cecbf/1626690912587-40445-original.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAWUOW7XFEST6BMUED%2F20210719%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20210719T103521Z&X-Amz-SignedHeaders=host&X-Amz-Expires=604800&X-Amz-Signature=4ee8180de2ca387e7a1a49b60e083e923243f68b6da93b076ffcdad9baa589ff', '10654-SST-EXTRA-DESIGN-EXTRA-DESIGN-1.jpg', 97, '', 1627025530, 0, 1, 0),
(6, 'S3_616_16268527618030', 'https://tee-upload2.s3.ap-southeast-1.amazonaws.com/TUY/210721_60f7cd9355c23/1626852754358-29533-original.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAWUOW7XFEST6BMUED%2F20210721%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20210721T073242Z&X-Amz-SignedHeaders=host&X-Amz-Expires=604800&X-Amz-Signature=ec7065d1a17bc6e85807130b44410ba2957a7c924010c0c0de3534ab9de52f5a', 'POS_1.jpg', 99, '', 1627025543, 0, 1, 0),
(7, 'S3_616_16213952361936', 'https://tee-upload2.s3.ap-southeast-1.amazonaws.com/TUY/190521_60a48702cdbae/1621395230420-68661-original.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAWUOW7XFEST6BMUED%2F20210722%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20210722T022426Z&X-Amz-SignedHeaders=host&X-Amz-Expires=604800&X-Amz-Signature=5fc288a9a9b1343001bf6c5448d4f191b8ca170acc7897d17e115d4af2f0f984', '9031-CUPYUN-FRONT-MOCKUP.jpg', 100, '', 1627025802, 0, 1, 1),
(8, 'S3_616_16213952365689', 'https://tee-upload2.s3.ap-southeast-1.amazonaws.com/TUY/190521_60a48702cdbae/1621395229330-24401-original.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAWUOW7XFEST6BMUED%2F20210722%2Fap-southeast-1%2Fs3%2Faws4_request&X-Amz-Date=20210722T022428Z&X-Amz-SignedHeaders=host&X-Amz-Expires=604800&X-Amz-Signature=28c942ae21140f7ef0032b622f2ed030ac27a6bfc8a50d5d3be1c0d5b778e655', '9031-CUPYUN-FRONT-DESIGN.jpg', 100, '', 1627025805, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `id_queue` int(11) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `folder`
--
ALTER TABLE `folder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_parent` (`id_parent`);

--
-- Indexes for table `folder_data`
--
ALTER TABLE `folder_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`id_folder`,`status`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `folder`
--
ALTER TABLE `folder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `folder_data`
--
ALTER TABLE `folder_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
