/* Date: 2017-07-17_1014 */

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
DROP TABLE IF EXISTS `oc_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(32) NOT NULL,
  `company_id` varchar(32) NOT NULL,
  `tax_id` varchar(32) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_affiliate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_affiliate` (
  `affiliate_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `company` varchar(32) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_affiliate_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_affiliate_transaction` (
  `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_article` (
  `article_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `date_available` date NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `article_review` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `gstatus` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`article_id`)
) ENGINE=MyISAM AUTO_INCREMENT=124 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_article_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_article_description` (
  `article_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `seo_title` varchar(255) NOT NULL,
  `seo_h1` varchar(255) NOT NULL,
  `tag` text NOT NULL,
  PRIMARY KEY (`article_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_article_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_article_image` (
  `article_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`article_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4105 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_article_related`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_article_related` (
  `article_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`article_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_article_related_gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_article_related_gallery` (
  `article_id` int(11) NOT NULL,
  `gallery_id` int(11) NOT NULL,
  PRIMARY KEY (`article_id`,`gallery_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_article_related_mn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_article_related_mn` (
  `article_id` int(11) NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  PRIMARY KEY (`article_id`,`manufacturer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_article_related_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_article_related_product` (
  `article_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`article_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_article_related_wb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_article_related_wb` (
  `article_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`article_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_article_to_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_article_to_download` (
  `article_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`article_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_article_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_article_to_layout` (
  `article_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`article_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_article_to_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_article_to_news` (
  `article_id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL,
  `main_news` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`article_id`,`news_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_article_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_article_to_store` (
  `article_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`article_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_attribute_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_attribute_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_attribute_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_banner_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=140 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_banner_image_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`banner_image_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_benefit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_benefit` (
  `benefit_id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`benefit_id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_benefit_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_benefit_description` (
  `benefit_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`benefit_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_blog_related_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_blog_related_product` (
  `article_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`article_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_category_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `description_bottom` text NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `seo_title` varchar(255) NOT NULL,
  `seo_h1` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_category_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_category_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_option` (
  `option_id` int(10) NOT NULL AUTO_INCREMENT,
  `status` int(1) DEFAULT '0',
  `sort_order` int(10) DEFAULT '0',
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_category_option_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_option_description` (
  `option_id` int(10) NOT NULL,
  `language_id` int(10) NOT NULL,
  `name` varchar(127) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`option_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_category_path`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_category_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_category_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_coolfilter_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coolfilter_group` (
  `coolfilter_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`coolfilter_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_coolfilter_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coolfilter_group_description` (
  `coolfilter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`coolfilter_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_coolfilter_group_option_to_coolfilter_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coolfilter_group_option_to_coolfilter_group` (
  `option_id` int(11) NOT NULL,
  `coolfilter_group_id` int(11) NOT NULL,
  PRIMARY KEY (`coolfilter_group_id`,`option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_coolfilter_group_to_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coolfilter_group_to_category` (
  `coolfilter_group_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`coolfilter_group_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=227 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `code` varchar(10) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_coupon_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_coupon_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_coupon_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_custom_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  `location` varchar(32) NOT NULL,
  `position` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_custom_field_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_custom_field_to_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_to_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_custom_field_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_custom_field_value_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `token` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_customer_ban_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_ban_ip` (
  `customer_ban_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`customer_ban_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_customer_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_field` (
  `customer_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` int(128) NOT NULL,
  `value` text NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_id`,`custom_field_id`,`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(1) NOT NULL,
  `company_id_display` int(1) NOT NULL,
  `company_id_required` int(1) NOT NULL,
  `tax_id_display` int(1) NOT NULL,
  `tax_id_required` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_customer_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`customer_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_customer_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_customer_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_customer_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_customer_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`customer_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_customer_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(128) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `remaining` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_download_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`download_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_filter_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_filter_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_filter_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_geo_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`information_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_information_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `seo_title` varchar(255) NOT NULL,
  `seo_h1` varchar(255) NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_information_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_information_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `filename` varchar(64) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_layout_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_length_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY (`length_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_length_class_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`length_class_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_manufacturer_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_manufacturer_description` (
  `manufacturer_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `description_bottom` text NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `seo_title` varchar(255) NOT NULL,
  `seo_h1` varchar(255) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_manufacturer_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_manufacturer_to_layout` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`),
  KEY `cae9af8f5afbde96d0404991762c91ea` (`layout_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_manufacturer_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`news_id`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_news_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_news_description` (
  `news_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `seo_title` varchar(255) NOT NULL,
  `seo_h1` varchar(255) NOT NULL,
  PRIMARY KEY (`news_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_news_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_news_to_layout` (
  `news_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`news_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_news_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_news_to_store` (
  `news_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`news_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_option_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_option_value_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(32) NOT NULL,
  `payment_company_id` varchar(32) NOT NULL,
  `payment_tax_id` varchar(32) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(32) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_order_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_download` (
  `order_download_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `filename` varchar(128) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `remaining` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_order_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_field` (
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` int(128) NOT NULL,
  `value` text NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_id`,`custom_field_id`,`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_order_fraud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_fraud` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `country_match` varchar(3) NOT NULL,
  `country_code` varchar(2) NOT NULL,
  `high_risk_country` varchar(3) NOT NULL,
  `distance` int(11) NOT NULL,
  `ip_region` varchar(255) NOT NULL,
  `ip_city` varchar(255) NOT NULL,
  `ip_latitude` decimal(10,6) NOT NULL,
  `ip_longitude` decimal(10,6) NOT NULL,
  `ip_isp` varchar(255) NOT NULL,
  `ip_org` varchar(255) NOT NULL,
  `ip_asnum` int(11) NOT NULL,
  `ip_user_type` varchar(255) NOT NULL,
  `ip_country_confidence` varchar(3) NOT NULL,
  `ip_region_confidence` varchar(3) NOT NULL,
  `ip_city_confidence` varchar(3) NOT NULL,
  `ip_postal_confidence` varchar(3) NOT NULL,
  `ip_postal_code` varchar(10) NOT NULL,
  `ip_accuracy_radius` int(11) NOT NULL,
  `ip_net_speed_cell` varchar(255) NOT NULL,
  `ip_metro_code` int(3) NOT NULL,
  `ip_area_code` int(3) NOT NULL,
  `ip_time_zone` varchar(255) NOT NULL,
  `ip_region_name` varchar(255) NOT NULL,
  `ip_domain` varchar(255) NOT NULL,
  `ip_country_name` varchar(255) NOT NULL,
  `ip_continent_code` varchar(2) NOT NULL,
  `ip_corporate_proxy` varchar(3) NOT NULL,
  `anonymous_proxy` varchar(3) NOT NULL,
  `proxy_score` int(3) NOT NULL,
  `is_trans_proxy` varchar(3) NOT NULL,
  `free_mail` varchar(3) NOT NULL,
  `carder_email` varchar(3) NOT NULL,
  `high_risk_username` varchar(3) NOT NULL,
  `high_risk_password` varchar(3) NOT NULL,
  `bin_match` varchar(10) NOT NULL,
  `bin_country` varchar(2) NOT NULL,
  `bin_name_match` varchar(3) NOT NULL,
  `bin_name` varchar(255) NOT NULL,
  `bin_phone_match` varchar(3) NOT NULL,
  `bin_phone` varchar(32) NOT NULL,
  `customer_phone_in_billing_location` varchar(8) NOT NULL,
  `ship_forward` varchar(3) NOT NULL,
  `city_postal_match` varchar(3) NOT NULL,
  `ship_city_postal_match` varchar(3) NOT NULL,
  `score` decimal(10,5) NOT NULL,
  `explanation` text NOT NULL,
  `risk_score` decimal(10,5) NOT NULL,
  `queries_remaining` int(11) NOT NULL,
  `maxmind_id` varchar(8) NOT NULL,
  `error` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(5) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`order_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_order_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`order_option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL,
  PRIMARY KEY (`order_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_order_recurring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `status` tinyint(4) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `profile_name` varchar(255) NOT NULL,
  `profile_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `profile_reference` varchar(255) NOT NULL,
  PRIMARY KEY (`order_recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_order_recurring_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_recurring_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`order_recurring_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`order_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_order_total`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_total_id`),
  KEY `idx_orders_total_orders_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_order_voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  PRIMARY KEY (`order_voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(13) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL,
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `viewed` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_product_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_product_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `description_mini` text NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `seo_title` varchar(255) NOT NULL,
  `seo_h1` varchar(255) NOT NULL,
  `tag` text NOT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_product_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_discount_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=534 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_product_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3549 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_product_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=230 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_product_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  PRIMARY KEY (`product_option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_product_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_profile` (
  `product_id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`profile_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_product_recurring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_product_related`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_product_related2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_related2` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_product_related_mn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_related_mn` (
  `product_id` int(11) NOT NULL,
  `manufacturer_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_product_related_wb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_related_wb` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_product_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_reward_id`)
) ENGINE=MyISAM AUTO_INCREMENT=966 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_product_special`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_special_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=589 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_product_to_benefit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_benefit` (
  `product_id` int(11) NOT NULL,
  `benefit_id` int(11) NOT NULL,
  KEY `product_id` (`product_id`),
  KEY `benefit_id` (`benefit_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_product_to_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `main_category` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_product_to_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_product_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_product_to_sticker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_sticker` (
  `product_id` int(11) NOT NULL,
  `sticker_id` int(11) NOT NULL,
  `position` tinyint(1) NOT NULL,
  KEY `product_id` (`product_id`),
  KEY `sticker_id` (`sticker_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_product_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_profile` (
  `profile_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) unsigned NOT NULL,
  `cycle` int(10) unsigned NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) unsigned NOT NULL,
  `trial_cycle` int(10) unsigned NOT NULL,
  PRIMARY KEY (`profile_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_profile_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_profile_description` (
  `profile_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`profile_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_return`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`return_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_return_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`return_action_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_return_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`return_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_return_reason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`return_reason_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_return_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`return_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`review_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_review_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_review_article` (
  `review_article_id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`review_article_id`),
  KEY `article_id` (`article_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `group` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1355 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_sticker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_sticker` (
  `sticker_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`sticker_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_stock_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`stock_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_style_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_style_option` (
  `option_id` int(11) NOT NULL,
  `style_id` varchar(250) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`style_id`,`option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_tax_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`tax_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_tax_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_tax_rate_to_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`tax_rate_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_tax_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`tax_rule_id`)
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_testimonial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_testimonial` (
  `testimonial_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `city` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(96) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `rating` int(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`testimonial_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_testimonial_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_testimonial_description` (
  `testimonial_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`testimonial_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_type_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_type_option` (
  `option_id` int(11) NOT NULL,
  `type_index` varchar(250) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`type_index`,`option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_url_alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_url_alias` (
  `url_alias_id` int(11) NOT NULL AUTO_INCREMENT,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `seomanager` int(1) DEFAULT '0',
  PRIMARY KEY (`url_alias_id`),
  KEY `query` (`query`(64)),
  KEY `seomanager` (`seomanager`)
) ENGINE=MyISAM AUTO_INCREMENT=837 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_voucher_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_voucher_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_voucher_theme_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_weight_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`weight_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_weight_class_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`weight_class_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3720 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `oc_zone_to_geo_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`zone_to_geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

LOCK TABLES `oc_address` WRITE;
/*!40000 ALTER TABLE `oc_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_address` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_affiliate` WRITE;
/*!40000 ALTER TABLE `oc_affiliate` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_affiliate` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_affiliate_transaction` WRITE;
/*!40000 ALTER TABLE `oc_affiliate_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_affiliate_transaction` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_article` WRITE;
/*!40000 ALTER TABLE `oc_article` DISABLE KEYS */;
INSERT INTO `oc_article` VALUES (120,'data/logo.png','0000-00-00',1,1,1,'2014-04-08 04:26:00','0000-00-00 00:00:00',7,0),(123,'data/logo.png','0000-00-00',1,1,1,'2014-03-31 06:55:15','2014-04-08 05:37:36',137,1);
/*!40000 ALTER TABLE `oc_article` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_article_description` WRITE;
/*!40000 ALTER TABLE `oc_article_description` DISABLE KEYS */;
INSERT INTO `oc_article_description` VALUES (120,1,'CMS для интернет магазинов OCSHOP.CMS v1.5.6.3','&lt;p&gt;Рады представить Вашему вниманию OCSHOP.CMS v1.5.6.3 основанную на OpenCart v1.5.6.3&lt;/p&gt;\r\n','CMS для интернет магазинов OCSHOP.CMS v1.5.6.3 это бесплатный функциональный движок для создания качественных продающих магазинов.','cms, opencart, ocshop','CMS для интернет магазинов OCSHOP.CMS v1.5.6.3 - Скачать','CMS для интернет магазинов OCSHOP.CMS v1.5.6.3',''),(120,2,'CMS for online stores OCSHOP.CMS v1.5.6.3','&lt;p&gt;&lt;span class=&quot;long_text&quot; id=&quot;result_box&quot; lang=&quot;en&quot;&gt;&lt;span class=&quot;hps&quot;&gt;Are pleased to announce&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;OCSHOP.CMS v1.5.6.3&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;based on&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;OpenCart v1.5.6.3&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n','CMS for online stores OCSHOP.CMS v1.5.6.3 is a free functional engine to create high-quality shops selling.','cms, opencart, ocshop','CMS for online stores OCSHOP.CMS v1.5.6.3 - Download','CMS for online stores OCSHOP.CMS v1.5.6.3',''),(123,1,'Фото Обзор Первый','&lt;p&gt;Это первый фото обзор тут можно написать много какого то текста который описывает фото обзор и говорит что и как и почему для чего :-) Это первый фото обзор тут можно написать много какого то текста который описывает фото обзор и говорит что и как и почему для чего :-) Это первый фото обзор тут можно написать много какого то текста который описывает фото обзор и говорит что и как и почему для чего :-) Это первый фото обзор тут можно написать много какого то текста который описывает фото обзор и говорит что и как и почему для чего :-) Это первый фото обзор тут можно написать много какого то текста который описывает фото обзор и говорит что и как и почему для чего :-) Это первый фото обзор тут можно написать много какого то текста который описывает фото обзор и говорит что и как и почему для чего :-) Это первый фото обзор тут можно написать много какого то текста который описывает фото обзор и говорит что и как и почему для чего :-) Это первый фото обзор тут можно написать много какого то текста который описывает фото обзор и говорит что и как и почему для чего :-) Это первый фото обзор тут можно написать много какого то текста который описывает фото обзор и говорит что и как и почему для чего :-)&lt;/p&gt;\r\n','Фото Обзор Первый','Фото Обзор Первый','Фото Обзор Первый','Фото Обзор Первый',''),(123,2,'First Photo Overview','&lt;p&gt;&lt;span id=&quot;result_box&quot; lang=&quot;en&quot;&gt;&lt;span class=&quot;hps&quot;&gt;This is the first&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;review of the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;photos&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;here&lt;/span&gt;&lt;span&gt;, you can write&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;a lot of&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what that&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;text&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;that describes the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;photo&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;review and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;says&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what and how&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and why&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;:-) This is the first&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;review of the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;photos&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;here&lt;/span&gt;&lt;span&gt;, you can write&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;a lot of&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what that&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;text&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;that describes the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;photo&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;review and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;says&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what and how&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and why&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;:-) This is the first&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;review of the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;photos&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;here&lt;/span&gt;&lt;span&gt;, you can write&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;a lot of&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what that&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;text&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;that describes the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;photo&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;review and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;says&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what and how&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and why&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;:-) This is the first&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;review of the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;photos&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;here&lt;/span&gt;&lt;span&gt;, you can write&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;a lot of&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what that&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;text&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;that describes the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;photo&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;review and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;says&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what and how&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and why&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;:-) This is the first&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;review of the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;photos&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;here&lt;/span&gt;&lt;span&gt;, you can write&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;a lot of&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what that&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;text&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;that describes the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;photo&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;review and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;says&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what and how&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and why&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;:-) This is the first&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;review of the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;photos&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;here&lt;/span&gt;&lt;span&gt;, you can write&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;a lot of&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what that&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;text&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;that describes the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;photo&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;review and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;says&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what and how&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and why&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;:-) This is the first&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;review of the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;photos&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;here&lt;/span&gt;&lt;span&gt;, you can write&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;a lot of&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what that&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;text&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;that describes the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;photo&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;review and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;says&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what and how&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and why&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;:-) This is the first&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;review of the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;photos&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;here&lt;/span&gt;&lt;span&gt;, you can write&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;a lot of&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what that&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;text&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;that describes the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;photo&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;review and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;says&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what and how&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and why&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;:-) This is the first&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;review of the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;photos&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;here&lt;/span&gt;&lt;span&gt;, you can write&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;a lot of&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what that&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;text&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;that describes the&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;photo&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;review and&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;says&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what and how&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;and why&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;what&lt;/span&gt; &lt;span class=&quot;hps&quot;&gt;:-)&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n','First Photo Overview','First Photo Overview','First Photo Overview','First Photo Overview','');
/*!40000 ALTER TABLE `oc_article_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_article_image` WRITE;
/*!40000 ALTER TABLE `oc_article_image` DISABLE KEYS */;
INSERT INTO `oc_article_image` VALUES (4104,123,'data/demo/nikon_d300_3.jpg',6),(4103,123,'data/demo/canon_eos_5d_1.jpg',1),(4102,123,'data/demo/nikon_d300_1.jpg',4),(4101,123,'data/demo/nikon_d300_2.jpg',5),(4100,123,'data/demo/nikon_d300_4.jpg',7),(4099,123,'data/demo/canon_eos_5d_2.jpg',2),(4097,123,'data/demo/nikon_d300_5.jpg',8),(4098,123,'data/demo/canon_eos_5d_3.jpg',3);
/*!40000 ALTER TABLE `oc_article_image` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_article_related` WRITE;
/*!40000 ALTER TABLE `oc_article_related` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_article_related` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_article_related_gallery` WRITE;
/*!40000 ALTER TABLE `oc_article_related_gallery` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_article_related_gallery` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_article_related_mn` WRITE;
/*!40000 ALTER TABLE `oc_article_related_mn` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_article_related_mn` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_article_related_product` WRITE;
/*!40000 ALTER TABLE `oc_article_related_product` DISABLE KEYS */;
INSERT INTO `oc_article_related_product` VALUES (30,123),(31,123),(43,123),(45,123),(123,30),(123,31),(123,43),(123,45);
/*!40000 ALTER TABLE `oc_article_related_product` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_article_related_wb` WRITE;
/*!40000 ALTER TABLE `oc_article_related_wb` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_article_related_wb` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_article_to_download` WRITE;
/*!40000 ALTER TABLE `oc_article_to_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_article_to_download` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_article_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_article_to_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_article_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_article_to_news` WRITE;
/*!40000 ALTER TABLE `oc_article_to_news` DISABLE KEYS */;
INSERT INTO `oc_article_to_news` VALUES (120,69,1),(123,70,1);
/*!40000 ALTER TABLE `oc_article_to_news` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_article_to_store` WRITE;
/*!40000 ALTER TABLE `oc_article_to_store` DISABLE KEYS */;
INSERT INTO `oc_article_to_store` VALUES (120,0),(123,0);
/*!40000 ALTER TABLE `oc_article_to_store` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_attribute` WRITE;
/*!40000 ALTER TABLE `oc_attribute` DISABLE KEYS */;
INSERT INTO `oc_attribute` VALUES (1,6,1),(2,6,5),(3,6,3),(4,3,1),(5,3,2),(6,3,3),(7,3,4),(8,3,5),(9,3,6),(10,3,7),(11,3,8);
/*!40000 ALTER TABLE `oc_attribute` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_attribute_description` WRITE;
/*!40000 ALTER TABLE `oc_attribute_description` DISABLE KEYS */;
INSERT INTO `oc_attribute_description` VALUES (1,1,'Description'),(2,1,'No. of Cores'),(4,1,'test 1'),(5,1,'test 2'),(6,1,'test 3'),(7,1,'test 4'),(8,1,'test 5'),(9,1,'test 6'),(10,1,'test 7'),(11,1,'test 8'),(3,1,'Clockspeed');
/*!40000 ALTER TABLE `oc_attribute_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_attribute_group` WRITE;
/*!40000 ALTER TABLE `oc_attribute_group` DISABLE KEYS */;
INSERT INTO `oc_attribute_group` VALUES (3,2),(4,1),(5,3),(6,4);
/*!40000 ALTER TABLE `oc_attribute_group` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_attribute_group_description` WRITE;
/*!40000 ALTER TABLE `oc_attribute_group_description` DISABLE KEYS */;
INSERT INTO `oc_attribute_group_description` VALUES (3,1,'Память'),(4,1,'Technical'),(5,1,'Материнская плата'),(6,1,'Процессор');
/*!40000 ALTER TABLE `oc_attribute_group_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_banner` WRITE;
/*!40000 ALTER TABLE `oc_banner` DISABLE KEYS */;
INSERT INTO `oc_banner` VALUES (1,'Слайдшоу на главной',1),(6,'Banner',1),(7,'Home',1),(8,'Manufacturers',1);
/*!40000 ALTER TABLE `oc_banner` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_banner_image` WRITE;
/*!40000 ALTER TABLE `oc_banner_image` DISABLE KEYS */;
INSERT INTO `oc_banner_image` VALUES (127,1,'/','data/slider/test-3.jpg'),(126,1,'/','data/slider/test-1.jpg'),(125,1,'/','data/slider/test-4.jpg'),(102,6,'#','no_image.jpg'),(101,6,'#','no_image.jpg'),(100,6,'#','no_image.jpg'),(105,7,'#','no_image.jpg'),(104,7,'#','no_image.jpg'),(103,7,'#','no_image.jpg'),(139,8,'index.php?route=product/manufacturer/info&amp;manufacturer_id=5','no_image.jpg'),(138,8,'index.php?route=product/manufacturer/info&amp;manufacturer_id=8','no_image.jpg'),(137,8,'index.php?route=product/manufacturer/info&amp;manufacturer_id=9','no_image.jpg'),(136,8,'index.php?route=product/manufacturer/info&amp;manufacturer_id=10','no_image.jpg'),(135,8,'index.php?route=product/manufacturer/info&amp;manufacturer_id=6','no_image.jpg'),(134,8,'index.php?route=product/manufacturer/info&amp;manufacturer_id=7','no_image.jpg');
/*!40000 ALTER TABLE `oc_banner_image` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_banner_image_description` WRITE;
/*!40000 ALTER TABLE `oc_banner_image_description` DISABLE KEYS */;
INSERT INTO `oc_banner_image_description` VALUES (127,1,1,'slider-1',''),(126,1,1,'slider-2',''),(125,1,1,'slider-3',''),(102,1,6,'Ipad',''),(101,1,6,'Iphone 5',''),(105,1,7,'banner1',''),(139,1,8,'HTC',''),(138,1,8,'Apple',''),(137,1,8,'Canon',''),(100,1,6,'macbook',''),(104,1,7,'banner2',''),(103,1,7,'banner3',''),(136,1,8,'Sony',''),(135,1,8,'Palm',''),(134,1,8,'Hewlett-Packard','');
/*!40000 ALTER TABLE `oc_banner_image_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_benefit` WRITE;
/*!40000 ALTER TABLE `oc_benefit` DISABLE KEYS */;
INSERT INTO `oc_benefit` VALUES (39,'/index.php?route=product/product&amp;product_id=40',1,0,'data/present/present6.png','Подарок наушники'),(25,'',1,1,'data/benefit/wifi.jpg','WIFI'),(38,'http://ru.wikipedia.org/wiki/Bluetooth',1,1,'data/benefit/bluetooth.jpg','Bluetooth'),(42,'index.php?route=product/product&amp;product_id=40',1,0,'data/present/present1.png','Телефоны'),(41,'',1,1,'data/benefit/android.png','Android');
/*!40000 ALTER TABLE `oc_benefit` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_benefit_description` WRITE;
/*!40000 ALTER TABLE `oc_benefit_description` DISABLE KEYS */;
INSERT INTO `oc_benefit_description` VALUES (25,1,'&lt;p&gt;&lt;span style=&quot;color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;&quot;&gt;Под аббревиатурой Wi-Fi (от английского словосочетания Wireless Fidelity&lt;/span&gt;&lt;sup class=&quot;reference&quot; id=&quot;cite_ref-1&quot; style=&quot;line-height: 1em; unicode-bidi: -webkit-isolate; color: rgb(37, 37, 37); font-family: sans-serif;&quot;&gt;&lt;a href=&quot;https://ru.wikipedia.org/wiki/Wi-Fi#cite_note-1&quot; style=&quot;text-decoration: none; color: rgb(11, 0, 128); background: none;&quot;&gt;[1]&lt;/a&gt;&lt;/sup&gt;&lt;span style=&quot;color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;&quot;&gt;, которое можно дословно перевести как «беспроводное качество» или «беспроводная точность») в настоящее время развивается целое семейство стандартов передачи цифровых потоков данных по радиоканалам.&lt;/span&gt;&lt;/p&gt;\r\n'),(25,2,'&lt;p&gt;&lt;span style=&quot;font-size: 13px; line-height: 20.7999992370605px;&quot;&gt;WIFI&lt;/span&gt;&lt;/p&gt;\r\n'),(38,1,'&lt;p&gt;&lt;b style=&quot;color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;&quot;&gt;Bluetooth&lt;/b&gt;&lt;span style=&quot;color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;&quot;&gt;&amp;nbsp;(от слов&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;https://ru.wikipedia.org/wiki/%D0%90%D0%BD%D0%B3%D0%BB%D0%B8%D0%B9%D1%81%D0%BA%D0%B8%D0%B9_%D1%8F%D0%B7%D1%8B%D0%BA&quot; style=&quot;text-decoration: none; color: rgb(11, 0, 128); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px; background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;&quot; title=&quot;Английский язык&quot;&gt;англ.&lt;/a&gt;&lt;span style=&quot;color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;i style=&quot;color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;&quot;&gt;&lt;span lang=&quot;en&quot; xml:lang=&quot;en&quot;&gt;blue&lt;/span&gt;&lt;/i&gt;&lt;span style=&quot;color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;&quot;&gt;&amp;nbsp;- синий и&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;https://ru.wikipedia.org/wiki/%D0%90%D0%BD%D0%B3%D0%BB%D0%B8%D0%B9%D1%81%D0%BA%D0%B8%D0%B9_%D1%8F%D0%B7%D1%8B%D0%BA&quot; style=&quot;text-decoration: none; color: rgb(11, 0, 128); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px; background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;&quot; title=&quot;Английский язык&quot;&gt;англ.&lt;/a&gt;&lt;span style=&quot;color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;i style=&quot;color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;&quot;&gt;&lt;span lang=&quot;en&quot; xml:lang=&quot;en&quot;&gt;tooth&lt;/span&gt;&lt;/i&gt;&lt;span style=&quot;color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;&quot;&gt;&amp;nbsp;- зуб; произносится&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;IPA&quot; style=&quot;font-family: \'Arial Unicode MS\', \'Lucida Sans Unicode\'; color: rgb(37, 37, 37); font-size: 14px; line-height: 22.3999996185303px;&quot;&gt;&lt;a href=&quot;https://ru.wikipedia.org/wiki/%D0%9C%D0%B5%D0%B6%D0%B4%D1%83%D0%BD%D0%B0%D1%80%D0%BE%D0%B4%D0%BD%D1%8B%D0%B9_%D1%84%D0%BE%D0%BD%D0%B5%D1%82%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D0%B9_%D0%B0%D0%BB%D1%84%D0%B0%D0%B2%D0%B8%D1%82&quot; style=&quot;text-decoration: none; color: rgb(11, 0, 128); background: none;&quot; title=&quot;Международный фонетический алфавит&quot;&gt;/bluːtuːθ/&lt;/a&gt;&lt;/span&gt;&lt;span style=&quot;color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;&quot;&gt;)&lt;/span&gt;&lt;/p&gt;\r\n'),(38,2,'&lt;p&gt;&lt;b style=&quot;color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;&quot;&gt;Bluetooth&lt;/b&gt;&lt;span style=&quot;color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;&quot;&gt;&amp;nbsp;(от слов&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;https://ru.wikipedia.org/wiki/%D0%90%D0%BD%D0%B3%D0%BB%D0%B8%D0%B9%D1%81%D0%BA%D0%B8%D0%B9_%D1%8F%D0%B7%D1%8B%D0%BA&quot; style=&quot;text-decoration: none; color: rgb(11, 0, 128); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px; background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;&quot; title=&quot;Английский язык&quot;&gt;англ.&lt;/a&gt;&lt;span style=&quot;color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;i style=&quot;color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;&quot;&gt;&lt;span lang=&quot;en&quot; xml:lang=&quot;en&quot;&gt;blue&lt;/span&gt;&lt;/i&gt;&lt;span style=&quot;color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;&quot;&gt;&amp;nbsp;- синий и&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;https://ru.wikipedia.org/wiki/%D0%90%D0%BD%D0%B3%D0%BB%D0%B8%D0%B9%D1%81%D0%BA%D0%B8%D0%B9_%D1%8F%D0%B7%D1%8B%D0%BA&quot; style=&quot;text-decoration: none; color: rgb(11, 0, 128); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px; background-image: none; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;&quot; title=&quot;Английский язык&quot;&gt;англ.&lt;/a&gt;&lt;span style=&quot;color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;i style=&quot;color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;&quot;&gt;&lt;span lang=&quot;en&quot; xml:lang=&quot;en&quot;&gt;tooth&lt;/span&gt;&lt;/i&gt;&lt;span style=&quot;color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;&quot;&gt;&amp;nbsp;- зуб; произносится&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;IPA&quot; style=&quot;font-family: \'Arial Unicode MS\', \'Lucida Sans Unicode\'; color: rgb(37, 37, 37); font-size: 14px; line-height: 22.3999996185303px;&quot;&gt;&lt;a href=&quot;https://ru.wikipedia.org/wiki/%D0%9C%D0%B5%D0%B6%D0%B4%D1%83%D0%BD%D0%B0%D1%80%D0%BE%D0%B4%D0%BD%D1%8B%D0%B9_%D1%84%D0%BE%D0%BD%D0%B5%D1%82%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D0%B9_%D0%B0%D0%BB%D1%84%D0%B0%D0%B2%D0%B8%D1%82&quot; style=&quot;text-decoration: none; color: rgb(11, 0, 128); background: none;&quot; title=&quot;Международный фонетический алфавит&quot;&gt;/bluːtuːθ/&lt;/a&gt;&lt;/span&gt;&lt;span style=&quot;color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px; line-height: 22.3999996185303px;&quot;&gt;)&lt;/span&gt;&lt;/p&gt;\r\n'),(39,1,'&lt;p&gt;Подарок наушники&lt;/p&gt;\r\n'),(39,2,'&lt;p&gt;Подарок наушники&lt;/p&gt;\r\n'),(41,1,''),(41,2,''),(42,1,'&lt;p&gt;Телефоны&lt;/p&gt;\r\n'),(42,2,'&lt;p&gt;Телефоны&lt;/p&gt;\r\n');
/*!40000 ALTER TABLE `oc_benefit_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_blog_related_product` WRITE;
/*!40000 ALTER TABLE `oc_blog_related_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_blog_related_product` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_category` WRITE;
/*!40000 ALTER TABLE `oc_category` DISABLE KEYS */;
INSERT INTO `oc_category` VALUES (20,'data/demo/Anycool T818  1 copy.png',0,1,1,2,1,'2009-01-05 21:49:43','2017-07-14 10:29:36'),(24,'data/demo/CompleteHappinessBouquet2.png',20,1,0,2,1,'2009-01-20 02:36:26','2013-11-22 11:55:12'),(17,'data/demo/FLY E146 1 copy.png',0,1,1,3,1,'2009-01-03 21:08:57','2017-07-14 10:29:52'),(57,'data/demo/FLY E145 1 copy.png',0,1,1,1,1,'2011-04-26 08:53:16','2017-07-14 10:29:26'),(77,'data/demo/FabledBeautyBouquetwithVase3.png',20,1,0,1,1,'2013-11-05 15:29:33','2013-11-25 14:19:03'),(84,'data/demo/slide-2.jpg',0,1,1,6,0,'2013-11-15 10:31:02','2017-07-14 10:30:13'),(85,'data/demo/slide-1.jpg',0,1,1,5,0,'2013-11-15 10:31:38','2017-07-14 10:30:13'),(86,'data/demo/img3-2.png',0,1,1,4,1,'2013-11-15 10:32:03','2017-07-14 10:30:01'),(88,'data/demo/CitrusBurstBouquet3.png',20,1,0,3,1,'2013-11-15 10:34:34','2013-11-26 16:33:53'),(89,'data/demo/PreciousHeartBouquet3.png',20,1,0,4,1,'2013-11-15 10:35:00','2013-11-22 11:54:53'),(90,'data/demo/CheerfulWishesBloomingBasket3.png',20,1,0,5,1,'2013-11-15 10:35:35','2013-11-22 11:54:28'),(91,'data/demo/TheFTDSpiritofSpringBasket3.png',88,1,0,6,1,'2013-11-15 10:35:56','2013-11-22 11:56:37'),(92,'data/demo/ComeRainorComeShineBouquet2.png',88,1,0,7,1,'2013-11-15 10:37:10','2013-11-22 11:56:17');
/*!40000 ALTER TABLE `oc_category` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_category_description` WRITE;
/*!40000 ALTER TABLE `oc_category_description` DISABLE KEYS */;
INSERT INTO `oc_category_description` VALUES (17,1,'Комнатные цветы','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','',''),(77,1,'Lorem ipsum dolor','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','',''),(77,6,'Lorem ipsum dolor','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','',''),(77,7,'Lorem ipsum dolor','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','',''),(24,1,'Sit aconsectetur','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','',''),(20,1,'Свадебная флористика','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','Example of category description','','',''),(57,1,'Цветочные композиции','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','',''),(88,1,'Ut eros purus','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','',''),(89,1,'Pellentesque malesuada','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','',''),(90,1,'Nunc et orci et libero','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','',''),(91,1,'Morbi eu massa blanit','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','',''),(91,6,'Morbi eu massa blanit','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','',''),(91,7,'Morbi eu massa blanit','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','',''),(88,6,'Ut eros purus','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','',''),(88,7,'Ut eros purus','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','',''),(84,1,'Mixed ','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','',''),(84,6,'Mixed ','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','',''),(84,7,'Mixed ','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','',''),(85,1,'Get well','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','',''),(85,6,'Get well','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','',''),(85,7,'Get well','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','',''),(86,1,'Цветы оптом','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','',''),(24,6,'Sit aconsectetur','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','',''),(24,7,'Sit aconsectetur','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','',''),(89,6,'Pellentesque malesuada','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','',''),(89,7,'Pellentesque malesuada','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','',''),(90,6,'Nunc et orci et libero','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','',''),(90,7,'Nunc et orci et libero','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','',''),(92,1,'Fusce et mauris sit','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','',''),(92,6,'Fusce et mauris sit','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','',''),(92,7,'Fusce et mauris sit','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','','');
/*!40000 ALTER TABLE `oc_category_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_category_filter` WRITE;
/*!40000 ALTER TABLE `oc_category_filter` DISABLE KEYS */;
INSERT INTO `oc_category_filter` VALUES (17,1),(17,2),(17,3),(17,4),(20,1),(20,2),(20,3),(20,4),(24,1),(24,2),(24,4),(57,1),(57,2),(57,3),(57,4);
/*!40000 ALTER TABLE `oc_category_filter` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_category_option` WRITE;
/*!40000 ALTER TABLE `oc_category_option` DISABLE KEYS */;
INSERT INTO `oc_category_option` VALUES (1,1,2),(2,1,1),(3,1,0),(4,1,4);
/*!40000 ALTER TABLE `oc_category_option` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_category_option_description` WRITE;
/*!40000 ALTER TABLE `oc_category_option_description` DISABLE KEYS */;
INSERT INTO `oc_category_option_description` VALUES (1,1,'Размер'),(1,2,'Size'),(2,1,'Производители'),(2,2,'Manufactured'),(3,1,'Цена'),(3,2,'Price'),(4,1,'Экран'),(4,2,'Экран');
/*!40000 ALTER TABLE `oc_category_option_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_category_path` WRITE;
/*!40000 ALTER TABLE `oc_category_path` DISABLE KEYS */;
INSERT INTO `oc_category_path` VALUES (20,20,0),(27,20,0),(27,27,1),(26,20,0),(26,26,1),(24,24,1),(18,18,0),(45,18,0),(45,45,1),(46,18,0),(46,46,1),(17,17,0),(33,33,0),(34,34,0),(37,34,0),(37,37,1),(38,34,0),(38,38,1),(39,34,0),(39,39,1),(40,34,0),(40,40,1),(41,34,0),(41,41,1),(42,34,0),(42,42,1),(43,34,0),(43,43,1),(44,34,0),(44,44,1),(47,34,0),(47,47,1),(48,34,0),(48,48,1),(49,34,0),(49,49,1),(50,34,0),(50,50,1),(51,34,0),(51,51,1),(52,34,0),(52,52,1),(58,34,0),(58,52,1),(58,58,2),(53,34,0),(53,53,1),(54,34,0),(54,54,1),(55,34,0),(55,55,1),(56,34,0),(56,56,1),(57,57,0),(77,20,0),(77,77,1),(24,20,0),(84,84,0),(85,85,0),(86,86,0),(88,20,0),(88,88,1),(89,20,0),(89,89,1),(90,20,0),(90,90,1),(91,91,2),(91,88,1),(92,88,1),(92,92,2),(92,20,0),(91,20,0);
/*!40000 ALTER TABLE `oc_category_path` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_category_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_category_to_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_category_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_category_to_store` WRITE;
/*!40000 ALTER TABLE `oc_category_to_store` DISABLE KEYS */;
INSERT INTO `oc_category_to_store` VALUES (17,0),(20,0),(24,0),(57,0),(77,0),(84,0),(85,0),(86,0),(88,0),(89,0),(90,0),(91,0),(92,0);
/*!40000 ALTER TABLE `oc_category_to_store` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_coolfilter_group` WRITE;
/*!40000 ALTER TABLE `oc_coolfilter_group` DISABLE KEYS */;
INSERT INTO `oc_coolfilter_group` VALUES (1,0);
/*!40000 ALTER TABLE `oc_coolfilter_group` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_coolfilter_group_description` WRITE;
/*!40000 ALTER TABLE `oc_coolfilter_group_description` DISABLE KEYS */;
INSERT INTO `oc_coolfilter_group_description` VALUES (1,1,'Первая'),(1,2,'Первая');
/*!40000 ALTER TABLE `oc_coolfilter_group_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_coolfilter_group_option_to_coolfilter_group` WRITE;
/*!40000 ALTER TABLE `oc_coolfilter_group_option_to_coolfilter_group` DISABLE KEYS */;
INSERT INTO `oc_coolfilter_group_option_to_coolfilter_group` VALUES (1,1),(2,1),(3,1),(4,1);
/*!40000 ALTER TABLE `oc_coolfilter_group_option_to_coolfilter_group` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_coolfilter_group_to_category` WRITE;
/*!40000 ALTER TABLE `oc_coolfilter_group_to_category` DISABLE KEYS */;
INSERT INTO `oc_coolfilter_group_to_category` VALUES (1,17),(1,18),(1,20),(1,24),(1,25),(1,26),(1,27),(1,28),(1,29),(1,30),(1,31),(1,32),(1,33),(1,34),(1,35),(1,36),(1,37),(1,38),(1,39),(1,40),(1,41),(1,42),(1,43),(1,44),(1,45),(1,46),(1,47),(1,48),(1,49),(1,50),(1,51),(1,52),(1,53),(1,54),(1,55),(1,56),(1,57),(1,58);
/*!40000 ALTER TABLE `oc_coolfilter_group_to_category` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_country` WRITE;
/*!40000 ALTER TABLE `oc_country` DISABLE KEYS */;
INSERT INTO `oc_country` VALUES (11,'Армения','AM','ARM','',0,1),(15,'Азербайджан','AZ','AZE','',0,1),(20,'Белоруссия (Беларусь)','BY','BLR','',0,1),(80,'Грузия','GE','GEO','',0,1),(109,'Казахстан','KZ','KAZ','',0,1),(115,'Киргизия (Кыргызстан)','KG','KGZ','',0,1),(140,'Молдова','MD','MDA','',0,1),(176,'Российская Федерация','RU','RUS','',0,1),(207,'Таджикистан','TJ','TJK','',0,1),(216,'Туркменистан','TM','TKM','',0,1),(220,'Украина','UA','UKR','',0,1),(226,'Узбекистан','UZ','UZB','',0,1);
/*!40000 ALTER TABLE `oc_country` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_coupon` WRITE;
/*!40000 ALTER TABLE `oc_coupon` DISABLE KEYS */;
INSERT INTO `oc_coupon` VALUES (4,'-10% скидка','2222','P','10.0000',0,0,'0.0000','2011-01-01','2012-01-01',10,'10',1,'2009-01-27 13:55:03'),(5,'Бесплатная доставка','3333','P','0.0000',0,1,'100.0000','2009-03-01','2009-08-31',10,'10',1,'2009-03-14 21:13:53'),(6,'-10.00 скидка','1111','F','10.0000',0,0,'10.0000','1970-11-01','2020-11-01',100000,'10000',1,'2009-03-14 21:15:18');
/*!40000 ALTER TABLE `oc_coupon` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_coupon_category` WRITE;
/*!40000 ALTER TABLE `oc_coupon_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_category` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_coupon_history` WRITE;
/*!40000 ALTER TABLE `oc_coupon_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_history` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_coupon_product` WRITE;
/*!40000 ALTER TABLE `oc_coupon_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_product` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_currency` WRITE;
/*!40000 ALTER TABLE `oc_currency` DISABLE KEYS */;
INSERT INTO `oc_currency` VALUES (1,'Рубль','RUB','',' р.','2',2.30150008,1,'2017-07-14 11:35:16'),(2,'Гривна','UAH','',' грн.','2',1.00000000,1,'2017-07-14 12:31:18'),(3,'US Dollar','USD','$','','2',0.03840000,1,'2017-07-14 11:35:16'),(4,'Euro','EUR','','€','2',0.03370000,1,'2017-07-14 11:35:16');
/*!40000 ALTER TABLE `oc_currency` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_custom_field` WRITE;
/*!40000 ALTER TABLE `oc_custom_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_custom_field_description` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_custom_field_to_customer_group` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_to_customer_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_to_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_custom_field_value` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_value` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_custom_field_value_description` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_value_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_value_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_customer` WRITE;
/*!40000 ALTER TABLE `oc_customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_customer_ban_ip` WRITE;
/*!40000 ALTER TABLE `oc_customer_ban_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_ban_ip` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_customer_field` WRITE;
/*!40000 ALTER TABLE `oc_customer_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_field` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_customer_group` WRITE;
/*!40000 ALTER TABLE `oc_customer_group` DISABLE KEYS */;
INSERT INTO `oc_customer_group` VALUES (1,0,1,0,0,1,1);
/*!40000 ALTER TABLE `oc_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_customer_group_description` WRITE;
/*!40000 ALTER TABLE `oc_customer_group_description` DISABLE KEYS */;
INSERT INTO `oc_customer_group_description` VALUES (1,1,'Default','test');
/*!40000 ALTER TABLE `oc_customer_group_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_customer_history` WRITE;
/*!40000 ALTER TABLE `oc_customer_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_history` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_customer_ip` WRITE;
/*!40000 ALTER TABLE `oc_customer_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_ip` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_customer_online` WRITE;
/*!40000 ALTER TABLE `oc_customer_online` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_online` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_customer_reward` WRITE;
/*!40000 ALTER TABLE `oc_customer_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_reward` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_customer_transaction` WRITE;
/*!40000 ALTER TABLE `oc_customer_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_transaction` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_download` WRITE;
/*!40000 ALTER TABLE `oc_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_download` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_download_description` WRITE;
/*!40000 ALTER TABLE `oc_download_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_download_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_extension` WRITE;
/*!40000 ALTER TABLE `oc_extension` DISABLE KEYS */;
INSERT INTO `oc_extension` VALUES (1,'total','coupon'),(2,'total','credit'),(3,'total','handling'),(4,'total','low_order_fee'),(5,'total','reward'),(6,'total','shipping'),(7,'total','sub_total'),(8,'total','tax'),(9,'total','total'),(10,'total','voucher'),(11,'payment','cod'),(12,'payment','free_checkout'),(13,'shipping','flat'),(14,'shipping','free'),(15,'module','account'),(16,'module','affiliate'),(17,'module','banner'),(18,'module','bestseller'),(19,'module','blog_category'),(20,'module','blog_latest'),(21,'module','blog_mostviewed'),(22,'module','blog_reviews'),(23,'module','compare'),(24,'module','featured'),(25,'module','filter'),(26,'module','information'),(27,'module','latest'),(28,'module','manufacturer'),(29,'module','newcarousel'),(30,'module','special'),(31,'module','blockhtml');
/*!40000 ALTER TABLE `oc_extension` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_filter` WRITE;
/*!40000 ALTER TABLE `oc_filter` DISABLE KEYS */;
INSERT INTO `oc_filter` VALUES (3,1,3),(2,1,2),(1,1,1),(4,1,4);
/*!40000 ALTER TABLE `oc_filter` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_filter_description` WRITE;
/*!40000 ALTER TABLE `oc_filter_description` DISABLE KEYS */;
INSERT INTO `oc_filter_description` VALUES (3,1,1,'Dolre sit amet'),(2,1,1,'Quisque ullamcorper'),(1,1,1,'Cras dignissim'),(4,1,1,'Nam a ipsum');
/*!40000 ALTER TABLE `oc_filter_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_filter_group` WRITE;
/*!40000 ALTER TABLE `oc_filter_group` DISABLE KEYS */;
INSERT INTO `oc_filter_group` VALUES (1,0);
/*!40000 ALTER TABLE `oc_filter_group` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_filter_group_description` WRITE;
/*!40000 ALTER TABLE `oc_filter_group_description` DISABLE KEYS */;
INSERT INTO `oc_filter_group_description` VALUES (1,1,'Lorem ipsum');
/*!40000 ALTER TABLE `oc_filter_group_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_geo_zone` WRITE;
/*!40000 ALTER TABLE `oc_geo_zone` DISABLE KEYS */;
INSERT INTO `oc_geo_zone` VALUES (3,'НДС','Облагаемые НДС','2010-02-26 22:33:24','2009-01-06 23:26:25');
/*!40000 ALTER TABLE `oc_geo_zone` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_information` WRITE;
/*!40000 ALTER TABLE `oc_information` DISABLE KEYS */;
INSERT INTO `oc_information` VALUES (3,1,3,1),(4,1,1,1),(5,1,4,1),(6,1,2,1);
/*!40000 ALTER TABLE `oc_information` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_information_description` WRITE;
/*!40000 ALTER TABLE `oc_information_description` DISABLE KEYS */;
INSERT INTO `oc_information_description` VALUES (4,1,'О нас','&lt;p&gt;\r\n	О нас&lt;/p&gt;\r\n','','','',''),(5,1,'Условия соглашения','&lt;p&gt;\r\n	Условия соглашения&lt;/p&gt;\r\n','','','',''),(3,1,'Политика Безопасности','&lt;p&gt;\r\n	Политика Безопасности&lt;/p&gt;\r\n','','','',''),(6,1,'Информация о доставке','&lt;p&gt;\r\n	Информация о доставке&lt;/p&gt;\r\n','','','','');
/*!40000 ALTER TABLE `oc_information_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_information_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_information_to_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_information_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_information_to_store` WRITE;
/*!40000 ALTER TABLE `oc_information_to_store` DISABLE KEYS */;
INSERT INTO `oc_information_to_store` VALUES (3,0),(4,0),(5,0),(6,0);
/*!40000 ALTER TABLE `oc_information_to_store` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_language` WRITE;
/*!40000 ALTER TABLE `oc_language` DISABLE KEYS */;
INSERT INTO `oc_language` VALUES (1,'Russian','ru','ru_RU.UTF-8,ru_RU,russian','ru.png','russian','russian',1,1);
/*!40000 ALTER TABLE `oc_language` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_layout` WRITE;
/*!40000 ALTER TABLE `oc_layout` DISABLE KEYS */;
INSERT INTO `oc_layout` VALUES (1,'Главная'),(2,'Продукт'),(3,'Категория'),(4,'По-умолчанию'),(5,'Производитель'),(6,'Аккаунт'),(7,'Оформление заказ'),(8,'Контакты'),(9,'Карта сайта'),(10,'Партнерская программа'),(11,'Информация'),(12,'Блог'),(13,'Категории Блога'),(14,'Статьи Блога'),(15,'Новинки'),(16,'Акции');
/*!40000 ALTER TABLE `oc_layout` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_layout_route` WRITE;
/*!40000 ALTER TABLE `oc_layout_route` DISABLE KEYS */;
INSERT INTO `oc_layout_route` VALUES (30,6,0,'account'),(17,10,0,'affiliate/'),(29,3,0,'product/category'),(26,1,0,'common/home'),(20,2,0,'product/product'),(24,11,0,'information/information'),(39,5,0,'product/manufacturer'),(23,7,0,'checkout/'),(31,8,0,'information/contact'),(32,9,0,'information/sitemap'),(33,12,0,'blog/latest'),(34,13,0,'blog/news'),(35,14,0,'blog/article'),(36,15,0,'product/latest'),(37,16,0,'product/special');
/*!40000 ALTER TABLE `oc_layout_route` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_length_class` WRITE;
/*!40000 ALTER TABLE `oc_length_class` DISABLE KEYS */;
INSERT INTO `oc_length_class` VALUES (1,'1.00000000'),(2,'10.00000000'),(3,'0.39370000');
/*!40000 ALTER TABLE `oc_length_class` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_length_class_description` WRITE;
/*!40000 ALTER TABLE `oc_length_class_description` DISABLE KEYS */;
INSERT INTO `oc_length_class_description` VALUES (1,1,'Сантиметр','см'),(2,1,'Миллиметр','мм'),(3,1,'Дюйм','in');
/*!40000 ALTER TABLE `oc_length_class_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_manufacturer` WRITE;
/*!40000 ALTER TABLE `oc_manufacturer` DISABLE KEYS */;
INSERT INTO `oc_manufacturer` VALUES (5,'Награждения','',5),(6,'Свадьба','data/demo/palm_logo.jpg',2),(7,'Другие события','',7),(8,'Похороны','',6),(9,'Корпоратив','',3),(10,'День рождения','',1),(11,'Обучение','',4);
/*!40000 ALTER TABLE `oc_manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_manufacturer_description` WRITE;
/*!40000 ALTER TABLE `oc_manufacturer_description` DISABLE KEYS */;
INSERT INTO `oc_manufacturer_description` VALUES (11,1,'','','','','',''),(12,1,'','','','','',''),(5,1,'','','','','',''),(6,1,'','','','','',''),(7,1,'','','','','',''),(8,1,'','','','','',''),(9,1,'','','','','',''),(10,1,'','','','','','');
/*!40000 ALTER TABLE `oc_manufacturer_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_manufacturer_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_manufacturer_to_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_manufacturer_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_manufacturer_to_store` WRITE;
/*!40000 ALTER TABLE `oc_manufacturer_to_store` DISABLE KEYS */;
INSERT INTO `oc_manufacturer_to_store` VALUES (5,0),(6,0),(7,0),(8,0),(9,0),(10,0),(11,0);
/*!40000 ALTER TABLE `oc_manufacturer_to_store` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_news` WRITE;
/*!40000 ALTER TABLE `oc_news` DISABLE KEYS */;
INSERT INTO `oc_news` VALUES (69,'data/demo/apple_cinema_30.jpg',0,0,0,0,1,'2014-04-08 03:56:26','2014-04-08 04:00:30'),(70,'data/demo/nikon_d300_1.jpg',0,1,0,0,1,'2014-04-08 03:58:55','2014-04-08 03:58:55');
/*!40000 ALTER TABLE `oc_news` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_news_description` WRITE;
/*!40000 ALTER TABLE `oc_news_description` DISABLE KEYS */;
INSERT INTO `oc_news_description` VALUES (69,1,'Новости','','','','',''),(70,1,'Фото Обзоры','','','','',''),(70,2,'Photos Reviews','','','','',''),(69,2,'News','','','','','');
/*!40000 ALTER TABLE `oc_news_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_news_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_news_to_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_news_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_news_to_store` WRITE;
/*!40000 ALTER TABLE `oc_news_to_store` DISABLE KEYS */;
INSERT INTO `oc_news_to_store` VALUES (69,0),(70,0);
/*!40000 ALTER TABLE `oc_news_to_store` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_option` WRITE;
/*!40000 ALTER TABLE `oc_option` DISABLE KEYS */;
INSERT INTO `oc_option` VALUES (1,'radio',2),(2,'checkbox',3),(4,'text',4),(5,'select',1),(6,'textarea',5),(7,'file',6),(8,'date',7),(9,'time',8),(10,'datetime',9),(11,'select',1),(12,'date',1);
/*!40000 ALTER TABLE `oc_option` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_option_description` WRITE;
/*!40000 ALTER TABLE `oc_option_description` DISABLE KEYS */;
INSERT INTO `oc_option_description` VALUES (1,1,'Radio'),(2,1,'Checkbox'),(4,1,'Text'),(6,1,'Textarea'),(8,1,'Date'),(7,1,'File'),(5,1,'Select'),(9,1,'Time'),(10,1,'Date &amp; Time'),(12,1,'Delivery Date'),(11,1,'Size');
/*!40000 ALTER TABLE `oc_option_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_option_value` WRITE;
/*!40000 ALTER TABLE `oc_option_value` DISABLE KEYS */;
INSERT INTO `oc_option_value` VALUES (43,1,'',3),(32,1,'',1),(45,2,'',4),(44,2,'',3),(42,5,'',4),(41,5,'',3),(39,5,'',1),(40,5,'',2),(31,1,'',2),(23,2,'',1),(24,2,'',2),(46,11,'',1),(47,11,'',2),(48,11,'',3);
/*!40000 ALTER TABLE `oc_option_value` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_option_value_description` WRITE;
/*!40000 ALTER TABLE `oc_option_value_description` DISABLE KEYS */;
INSERT INTO `oc_option_value_description` VALUES (43,1,1,'Large'),(32,1,1,'Small'),(45,1,2,'Checkbox 4'),(44,1,2,'Checkbox 3'),(31,1,1,'Medium'),(42,1,5,'Yellow'),(41,1,5,'Green'),(39,1,5,'Red'),(40,1,5,'Blue'),(23,1,2,'Checkbox 1'),(24,1,2,'Checkbox 2'),(48,1,11,'Large'),(47,1,11,'Medium'),(46,1,11,'Small');
/*!40000 ALTER TABLE `oc_option_value_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_order` WRITE;
/*!40000 ALTER TABLE `oc_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_order_download` WRITE;
/*!40000 ALTER TABLE `oc_order_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_download` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_order_field` WRITE;
/*!40000 ALTER TABLE `oc_order_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_field` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_order_fraud` WRITE;
/*!40000 ALTER TABLE `oc_order_fraud` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_fraud` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_order_history` WRITE;
/*!40000 ALTER TABLE `oc_order_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_history` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_order_option` WRITE;
/*!40000 ALTER TABLE `oc_order_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_option` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_order_product` WRITE;
/*!40000 ALTER TABLE `oc_order_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_product` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_order_recurring` WRITE;
/*!40000 ALTER TABLE `oc_order_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_recurring` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_order_recurring_transaction` WRITE;
/*!40000 ALTER TABLE `oc_order_recurring_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_recurring_transaction` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_order_status` WRITE;
/*!40000 ALTER TABLE `oc_order_status` DISABLE KEYS */;
INSERT INTO `oc_order_status` VALUES (1,1,'Ожидание'),(2,1,'В обработке'),(3,1,'Доставлено'),(7,1,'Отменено'),(5,1,'Сделка завершена'),(8,1,'Возврат'),(9,1,'Отмена и аннулирование'),(10,1,'Неудавшийся'),(11,1,'Возмещенный'),(12,1,'Полностью измененный'),(13,1,'Полный возврат');
/*!40000 ALTER TABLE `oc_order_status` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_order_total` WRITE;
/*!40000 ALTER TABLE `oc_order_total` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_total` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_order_voucher` WRITE;
/*!40000 ALTER TABLE `oc_order_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_voucher` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_product` WRITE;
/*!40000 ALTER TABLE `oc_product` DISABLE KEYS */;
INSERT INTO `oc_product` VALUES (28,'Product 1','','','','','','','',938,7,'data/demo/DreamlandPinkBouquet3.png',11,1,'13.0000',200,9,'2009-02-03','146.40000000',2,'0.00000000','0.00000000','0.00000000',1,1,1,0,1,'2009-02-03 16:06:50','2013-11-22 11:04:00',0),(29,'Product 2','','','','','','','',994,6,'data/demo/BloomingBountyBouquet1.png',6,1,'159.9900',0,9,'2009-02-03','133.00000000',2,'0.00000000','0.00000000','0.00000000',3,1,1,0,1,'2009-02-03 16:42:17','2013-11-22 10:28:34',0),(30,'Product 3','','','','','','','',699,6,'data/demo/CompleteHappinessBouquet1.png',9,1,'10.0000',0,9,'2009-02-03','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,0,1,'2009-02-03 16:59:00','2013-11-25 16:01:51',2),(31,'Product 4','','','','','','','',999,6,'data/demo/PreciousHeartBouquet1.png',5,1,'45.0000',0,9,'2009-02-03','0.00000000',1,'0.00000000','0.00000000','0.00000000',3,1,1,0,1,'2009-02-03 17:00:10','2013-11-22 11:07:31',0),(32,'Product 5','','','','','','','',998,6,'data/demo/SunnySkiesBouquet1.png',5,1,'108.9300',0,9,'2009-02-03','5.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,0,1,'2009-02-03 17:07:26','2013-11-22 10:28:04',4),(33,'Product 6','','','','','','','',983,6,'data/demo/CheerfulWishesBloomingBasket1.png',11,1,'50.0000',0,9,'2009-02-03','5.00000000',1,'0.00000000','0.00000000','0.00000000',2,1,1,0,1,'2009-02-03 17:08:31','2013-11-22 11:01:17',0),(34,'Product 7','','','','','','','',1000,6,'data/demo/TheFTDSpiritofSpringBasket1.png',8,1,'40.8400',0,9,'2009-02-03','5.00000000',1,'0.00000000','0.00000000','0.00000000',2,1,1,0,1,'2009-02-03 18:07:54','2017-07-07 20:55:27',13),(35,'Product 8','','','','','','','',999,5,'data/demo/BreathtakingBeautyBouquet1.png',0,0,'20.0000',0,9,'2009-02-03','5.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,0,1,'2009-02-03 18:08:31','2017-07-07 17:35:06',0),(36,'Product 9','','','','','','','',980,6,'data/demo/BecauseYoureSpecialBouquet1.png',11,0,'18.5000',100,9,'2009-02-03','5.00000000',1,'0.00000000','0.00000000','0.00000000',2,1,1,0,1,'2009-02-03 18:09:19','2017-07-07 20:54:24',2),(40,'product 11','','','','','','','',969,5,'data/demo/FabledBeautyBouquetwithVase1.png',8,1,'37.0000',0,9,'2009-02-03','10.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,0,1,'2009-02-03 21:07:12','2013-11-22 11:04:55',0),(41,'Product 14','','','','','','','',977,5,'data/demo/GetWellBouquetbyBetterHomesandGardens1.png',8,1,'20.0000',0,9,'2009-02-03','5.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,0,1,'2009-02-03 21:07:26','2013-11-22 11:05:45',0),(42,'Product 15','','','','','','','',984,5,'data/demo/SweetSurprisesBouquet1.png',8,1,'57.8650',400,9,'2009-02-04','12.50000000',1,'1.00000000','2.00000000','3.00000000',1,1,2,0,1,'2009-02-03 21:07:37','2013-11-22 10:27:19',10),(43,'Product 16','','','','','','','',900,5,'data/demo/DeepEmotionsBouquet1.png',8,0,'91.9100',0,9,'2009-02-03','0.00000000',1,'0.00000000','0.00000000','0.00000000',2,1,1,0,1,'2009-02-03 21:07:49','2013-11-22 10:18:43',12),(44,'Product 17','','','','','','','',999,5,'data/demo/ComeRainorComeShineBouquet1.png',0,1,'14.0000',0,9,'2009-02-03','0.00000000',1,'0.00000000','0.00000000','0.00000000',2,1,1,0,1,'2009-02-03 21:08:00','2017-07-07 17:35:25',0),(45,'Product 18','','','','','','','',993,5,'data/demo/NaturalWondersBouquet1.png',8,1,'19.0000',0,0,'2009-02-03','0.00000000',1,'0.00000000','0.00000000','0.00000000',2,1,1,0,1,'2009-02-03 21:08:17','2013-11-25 16:03:24',0),(46,'Product 19','','','','','','','',998,5,'data/demo/SilverLiningsCallaLilyPlant1.png',10,1,'49.3500',0,9,'2009-02-03','0.00000000',1,'0.00000000','0.00000000','0.00000000',2,1,1,0,1,'2009-02-03 21:08:29','2013-11-22 10:21:04',3),(47,'Product 21','sdd','4578789','46498','49894654','549564','4684645','',1000,5,'data/demo/CitrusBurstBouquet1.png',7,1,'22.0000',400,9,'2009-02-03','1.00000000',1,'0.00000000','0.00000000','0.00000000',1,0,1,0,1,'2009-02-03 21:08:40','2013-11-22 11:01:54',2),(48,'product 20','test 1','','','','','','test 2',994,5,'data/demo/mithsonianGetWellBouquet1.png',8,1,'15.0000',0,9,'2009-02-08','1.00000000',1,'0.00000000','0.00000000','0.00000000',2,1,1,0,1,'2009-02-08 17:21:51','2013-11-25 16:04:43',0),(49,'Product 19','','','','','','','',995,8,'data/demo/SimplePerfectionBouquet1.png',0,1,'74.8850',0,9,'2011-04-25','0.00000000',1,'0.00000000','0.00000000','0.00000000',1,1,1,1,1,'2011-04-26 08:57:34','2013-11-22 10:26:20',4);
/*!40000 ALTER TABLE `oc_product` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_product_attribute` WRITE;
/*!40000 ALTER TABLE `oc_product_attribute` DISABLE KEYS */;
INSERT INTO `oc_product_attribute` VALUES (42,3,7,'100mhz'),(47,4,7,'16GB'),(47,4,6,'16GB'),(47,4,1,'16GB'),(43,4,7,'8gb'),(42,3,1,'100mhz'),(47,2,7,'4'),(47,2,6,'4'),(42,3,6,'100mhz'),(43,4,6,'8gb'),(47,2,1,'4'),(43,4,1,'8gb'),(43,2,7,'1'),(43,2,1,'1'),(43,2,6,'1');
/*!40000 ALTER TABLE `oc_product_attribute` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_product_description` WRITE;
/*!40000 ALTER TABLE `oc_product_description` DISABLE KEYS */;
INSERT INTO `oc_product_description` VALUES (48,6,'Ut labore et','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','','',''),(48,1,'Ut labore et','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','','',''),(28,1,'Magna aliqua tation','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','','',''),(46,1,'Morbi eu massa blanit','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','','',''),(46,6,'Morbi eu massa blanit','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','','',''),(36,1,'Dolore eu fugiat nulla ','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','','',''),(47,1,'Ipsum dolor conse','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','','',''),(47,6,'Ipsum dolor conse','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','','',''),(42,6,'Pellentesque et ','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','','',''),(42,7,'Pellentesque et ','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','','',''),(32,1,'Nunc et orci et libero','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','','',''),(32,6,'Nunc et orci et libero','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','','',''),(45,1,'Sit aconsectetur','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','','',''),(45,6,'Sit aconsectetur','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','','',''),(31,7,'Ut eros purus','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','','',''),(31,6,'Ut eros purus','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','','',''),(30,1,'Lorem ipsum dolor ','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','','',''),(30,6,'Lorem ipsum dolor ','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','','',''),(29,6,'Sonec enim sapien','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','','',''),(33,6,'Excepteur sint occaecat','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','','',''),(33,1,'Excepteur sint occaecat','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','','',''),(31,1,'Ut eros purus','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','','',''),(43,7,'Lonec non fermentum','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','','','lorem, ipsum, dolore'),(40,7,'Morbi eu massa ','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','','',''),(49,6,'Nam luctus leo quam','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','','',''),(41,6,'Morbi eu massa blanit','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','','',''),(49,7,'Nam luctus leo quam','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','','',''),(41,7,'Morbi eu massa blanit','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','','',''),(30,7,'Lorem ipsum dolor ','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','','',''),(33,7,'Excepteur sint occaecat','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','','',''),(29,7,'Sonec enim sapien','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','','',''),(32,7,'Nunc et orci et libero','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','','',''),(42,1,'Pellentesque et ','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','','',''),(28,6,'Magna aliqua tation ','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','','',''),(43,6,'Lonec non fermentum','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','','','lorem, ipsum, dolore'),(40,6,'Morbi eu massa ','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','','',''),(45,7,'Sit aconsectetur','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','','',''),(35,1,'Eiusmod tempor','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','','',''),(44,1,'Ipsum dolor sit amet','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','','',''),(48,7,'Ut labore et ','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','','',''),(47,7,'Ipsum dolor conse','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','','',''),(28,7,'Magna aliqua tation','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','','',''),(34,1,'Fusce et mauris sit','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','','',''),(46,7,'Morbi eu massa blanit','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','','',''),(49,1,'Nam luctus leo quam','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','','',''),(29,1,'Sonec enim sapien','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','','',''),(43,1,'Lonec non fermentum','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','','','lorem, ipsum, dolore'),(41,1,'Morbi eu massa blanit','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','','',''),(40,1,'Morbi eu massa ','&lt;p&gt;What do we do when we want to show our thankfulness? We send a card, a gift or something like that. But the most traditional thing that we do is to &lt;strong&gt;present flowers&lt;/strong&gt;. They are a universal gift and believe us - even if you are not a fan, it doesn’t matter because it is very pleasant to receive flowers.&lt;br /&gt;\r\nWe are proud to present our wonderful goods. Here you can find many wonderful examples because our collection is one of the biggest among flower stores. We have many unique products, you don’t have to worry about the quality because our goods have premium quality and after all, trust is the foundation of collaboration.&lt;br /&gt;\r\nWe work with the &lt;strong&gt;leading florists&lt;/strong&gt; because this sphere is very important in our kind of activity. You can rely on us because we are offering only premium quality goods. Important thing is that you can save a lot of money in our store. There are many different benefits and discounts. We are ready to make your life more beautiful.&lt;/p&gt;\r\n','','','','','','');
/*!40000 ALTER TABLE `oc_product_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_product_discount` WRITE;
/*!40000 ALTER TABLE `oc_product_discount` DISABLE KEYS */;
INSERT INTO `oc_product_discount` VALUES (533,42,1,30,1,'66.0000','0000-00-00','0000-00-00'),(532,42,1,20,1,'77.0000','0000-00-00','0000-00-00'),(531,42,1,10,1,'88.0000','0000-00-00','0000-00-00');
/*!40000 ALTER TABLE `oc_product_discount` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_product_filter` WRITE;
/*!40000 ALTER TABLE `oc_product_filter` DISABLE KEYS */;
INSERT INTO `oc_product_filter` VALUES (28,1),(28,3),(28,4),(29,1),(29,2),(29,3),(29,4),(30,1),(30,2),(30,3),(30,4),(31,3),(31,4),(32,1),(32,2),(32,4),(40,1),(40,3),(40,4),(42,1),(42,3),(42,4),(43,1),(43,2),(43,3),(43,4),(44,1),(44,3),(44,4),(45,1),(45,2),(45,3),(45,4),(48,1),(48,3),(48,4),(49,1),(49,3),(49,4);
/*!40000 ALTER TABLE `oc_product_filter` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_product_image` WRITE;
/*!40000 ALTER TABLE `oc_product_image` DISABLE KEYS */;
INSERT INTO `oc_product_image` VALUES (3544,36,'data/demo/BecauseYoureSpecialBouquet2.png',0),(3530,45,'data/demo/NaturalWondersBouquet2.png',0),(3522,31,'data/demo/PreciousHeartBouquet3.png',0),(3528,30,'data/demo/CompleteHappinessBouquet2.png',0),(3514,28,'data/demo/DreamlandPinkBouquet2.png',0),(3532,48,'data/demo/mithsonianGetWellBouquet3.png',0),(3548,34,'data/demo/TheFTDSpiritofSpringBasket3.png',0),(3521,31,'data/demo/PreciousHeartBouquet2.png',0),(3494,49,'data/demo/SimplePerfectionBouquet3.png',0),(3487,43,'data/demo/DeepEmotionsBouquet2.png',0),(3499,29,'data/demo/BloomingBountyBouquet2.png',0),(3506,33,'data/demo/CheerfulWishesBloomingBasket3.png',0),(3534,35,'data/demo/BreathtakingBeautyBouquet2.png',0),(3533,35,'data/demo/BreathtakingBeautyBouquet3.png',0),(3517,41,'data/demo/GetWellBouquetbyBetterHomesandGardens2.png',0),(3527,30,'data/demo/CompleteHappinessBouquet3.png',0),(3498,32,'data/demo/SunnySkiesBouquet3.png',0),(3513,28,'data/demo/DreamlandPinkBouquet1.png',0),(3508,47,'data/demo/CitrusBurstBouquet3.png',0),(3515,40,'data/demo/FabledBeautyBouquetwithVase2.png',0),(3538,44,'data/demo/ComeRainorComeShineBouquet2.png',0),(3507,47,'data/demo/CitrusBurstBouquet2.png',0),(3496,42,'data/demo/SweetSurprisesBouquet3.png',0),(3529,45,'data/demo/NaturalWondersBouquet3.png',0),(3505,33,'data/demo/CheerfulWishesBloomingBasket2.png',0),(3531,48,'data/demo/mithsonianGetWellBouquet2.png',0),(3497,32,'data/demo/SunnySkiesBouquet2.png',0),(3495,42,'data/demo/SweetSurprisesBouquet2.png',0),(3491,46,'data/demo/SilverLiningsCallaLilyPlant2.png',0),(3493,49,'data/demo/SimplePerfectionBouquet2.png',0),(3488,43,'data/demo/DeepEmotionsBouquet3.png',0),(3547,34,'data/demo/TheFTDSpiritofSpringBasket2.png',0),(3492,46,'data/demo/SilverLiningsCallaLilyPlant3.png',0),(3500,29,'data/demo/BloomingBountyBouquet3.png',0),(3543,36,'data/demo/BecauseYoureSpecialBouquet3.png',0),(3537,44,'data/demo/ComeRainorComeShineBouquet3.png',0),(3516,40,'data/demo/FabledBeautyBouquetwithVase3.png',0),(3518,41,'data/demo/GetWellBouquetbyBetterHomesandGardens3.png',0);
/*!40000 ALTER TABLE `oc_product_image` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_product_option` WRITE;
/*!40000 ALTER TABLE `oc_product_option` DISABLE KEYS */;
INSERT INTO `oc_product_option` VALUES (224,35,11,'',1),(225,47,12,'2011-04-22',1),(226,30,5,'',1),(227,34,5,'',1),(228,45,11,'',1),(229,45,5,'',1);
/*!40000 ALTER TABLE `oc_product_option` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_product_option_value` WRITE;
/*!40000 ALTER TABLE `oc_product_option_value` DISABLE KEYS */;
INSERT INTO `oc_product_option_value` VALUES (22,228,45,11,48,10,1,'2.0000','+',3,'+','0.10000000','+'),(12,224,35,11,46,10,1,'5.0000','-',0,'+','0.00000000','-'),(13,224,35,11,47,9,1,'10.0000','+',0,'+','0.00000000','+'),(19,227,34,5,41,50,1,'2.0000','+',5,'+','0.00000000','+'),(25,229,45,5,50,20,1,'2.0000','+',10,'+','0.00000000','+'),(26,229,45,5,41,10,1,'0.0000','+',0,'+','0.00000000','+'),(14,224,35,11,48,15,1,'15.0000','+',0,'+','0.00000000','+'),(16,226,30,5,41,1000,1,'10.0000','+',10,'+','0.00000000','+'),(23,228,45,11,46,10,1,'2.0000','-',5,'+','0.10000000','-'),(21,228,45,11,47,10,1,'0.0000','+',0,'+','0.00000000','+'),(28,229,45,5,42,5,1,'2.0000','-',2,'-','0.00000000','+'),(17,227,34,5,42,50,1,'5.0000','-',3,'+','0.00000000','+'),(15,226,30,5,42,50,1,'5.0000','-',2,'+','0.00000000','+');
/*!40000 ALTER TABLE `oc_product_option_value` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_product_profile` WRITE;
/*!40000 ALTER TABLE `oc_product_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_profile` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_product_recurring` WRITE;
/*!40000 ALTER TABLE `oc_product_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_recurring` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_product_related` WRITE;
/*!40000 ALTER TABLE `oc_product_related` DISABLE KEYS */;
INSERT INTO `oc_product_related` VALUES (29,42),(29,43),(31,43),(32,34),(32,43),(34,32),(34,36),(34,40),(34,42),(34,44),(34,45),(36,34),(40,34),(40,42),(41,42),(42,29),(42,34),(42,40),(42,41),(42,42),(43,29),(43,31),(43,32),(43,43),(44,34),(45,34),(45,46),(45,49),(46,45),(49,45);
/*!40000 ALTER TABLE `oc_product_related` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_product_related2` WRITE;
/*!40000 ALTER TABLE `oc_product_related2` DISABLE KEYS */;
INSERT INTO `oc_product_related2` VALUES (41,42),(42,41),(42,43),(42,45),(43,42),(45,42);
/*!40000 ALTER TABLE `oc_product_related2` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_product_related_mn` WRITE;
/*!40000 ALTER TABLE `oc_product_related_mn` DISABLE KEYS */;
INSERT INTO `oc_product_related_mn` VALUES (44,8),(43,8),(41,8),(42,8);
/*!40000 ALTER TABLE `oc_product_related_mn` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_product_related_wb` WRITE;
/*!40000 ALTER TABLE `oc_product_related_wb` DISABLE KEYS */;
INSERT INTO `oc_product_related_wb` VALUES (43,33),(31,33),(28,33),(42,33);
/*!40000 ALTER TABLE `oc_product_related_wb` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_product_reward` WRITE;
/*!40000 ALTER TABLE `oc_product_reward` DISABLE KEYS */;
INSERT INTO `oc_product_reward` VALUES (939,42,1,100),(945,47,1,300),(948,28,1,400),(935,43,1,600),(941,29,1,0),(957,48,1,0),(949,40,1,0),(955,30,1,200),(960,44,1,700),(956,45,1,800),(952,31,1,0),(958,35,1,0),(944,33,1,0),(937,46,1,0),(950,41,1,0),(963,36,1,0),(965,34,1,0),(940,32,1,0),(938,49,1,1000);
/*!40000 ALTER TABLE `oc_product_reward` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_product_special` WRITE;
/*!40000 ALTER TABLE `oc_product_special` DISABLE KEYS */;
INSERT INTO `oc_product_special` VALUES (587,30,1,2,'9.5000','0000-00-00','0000-00-00'),(586,30,1,1,'8.0000','0000-00-00','0000-00-00'),(588,45,1,0,'15.0000','0000-00-00','0000-00-00'),(583,41,1,0,'15.0000','0000-00-00','0000-00-00'),(582,40,1,0,'30.0000','0000-00-00','0000-00-00'),(579,43,1,0,'83.3950','0000-00-00','0000-00-00'),(585,31,1,0,'35.0000','0000-00-00','0000-00-00');
/*!40000 ALTER TABLE `oc_product_special` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_product_to_benefit` WRITE;
/*!40000 ALTER TABLE `oc_product_to_benefit` DISABLE KEYS */;
INSERT INTO `oc_product_to_benefit` VALUES (43,39),(43,25),(28,41),(47,39),(47,25),(47,38),(42,25),(42,38),(42,41),(28,38),(28,25),(28,42);
/*!40000 ALTER TABLE `oc_product_to_benefit` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_product_to_category` WRITE;
/*!40000 ALTER TABLE `oc_product_to_category` DISABLE KEYS */;
INSERT INTO `oc_product_to_category` VALUES (28,20,0),(28,24,0),(28,57,0),(29,57,0),(29,84,0),(29,85,0),(29,86,0),(30,20,0),(31,24,0),(31,57,0),(31,77,0),(31,88,0),(31,89,0),(31,90,0),(31,91,0),(31,92,0),(33,17,0),(34,57,1),(34,77,0),(34,84,0),(34,85,0),(34,86,0),(35,17,1),(36,77,0),(36,57,0),(36,17,1),(40,17,0),(41,57,0),(41,84,0),(41,85,0),(41,86,0),(42,17,0),(43,17,0),(44,17,1),(44,20,0),(44,57,0),(45,17,0),(45,20,0),(45,24,0),(45,77,0),(45,88,0),(45,89,0),(45,90,0),(45,91,0),(45,92,0),(46,20,0),(46,24,0),(46,77,0),(46,88,0),(46,89,0),(46,90,0),(46,91,0),(46,92,0),(48,57,0),(48,84,0),(48,85,0),(48,86,0),(49,20,0),(49,24,0),(49,77,0),(49,88,0),(49,89,0),(49,90,0),(49,91,0),(49,92,0);
/*!40000 ALTER TABLE `oc_product_to_category` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_product_to_download` WRITE;
/*!40000 ALTER TABLE `oc_product_to_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_to_download` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_product_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_product_to_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_product_to_sticker` WRITE;
/*!40000 ALTER TABLE `oc_product_to_sticker` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_to_sticker` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_product_to_store` WRITE;
/*!40000 ALTER TABLE `oc_product_to_store` DISABLE KEYS */;
INSERT INTO `oc_product_to_store` VALUES (28,0),(29,0),(30,0),(31,0),(32,0),(33,0),(34,0),(35,0),(36,0),(40,0),(41,0),(42,0),(43,0),(44,0),(45,0),(46,0),(47,0),(48,0),(49,0);
/*!40000 ALTER TABLE `oc_product_to_store` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_profile` WRITE;
/*!40000 ALTER TABLE `oc_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_profile` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_profile_description` WRITE;
/*!40000 ALTER TABLE `oc_profile_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_profile_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_return` WRITE;
/*!40000 ALTER TABLE `oc_return` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_return` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_return_action` WRITE;
/*!40000 ALTER TABLE `oc_return_action` DISABLE KEYS */;
INSERT INTO `oc_return_action` VALUES (1,1,'Возвращены средства'),(2,1,'Выдан в кредит'),(3,1,'Отправлена замена (отправлен другой товар для замены)');
/*!40000 ALTER TABLE `oc_return_action` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_return_history` WRITE;
/*!40000 ALTER TABLE `oc_return_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_return_history` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_return_reason` WRITE;
/*!40000 ALTER TABLE `oc_return_reason` DISABLE KEYS */;
INSERT INTO `oc_return_reason` VALUES (1,1,'Получен/доставлен неисправным (сломанным)'),(2,1,'Получен не тот (ошибочный) товар'),(4,1,'Ошибочный, пожалуйста укажите/приложите подробности'),(5,1,'Другое (другая причина), пожалуйста укажите/приложите подробности');
/*!40000 ALTER TABLE `oc_return_reason` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_return_status` WRITE;
/*!40000 ALTER TABLE `oc_return_status` DISABLE KEYS */;
INSERT INTO `oc_return_status` VALUES (1,1,'Рассматриваемый / находящийся в '),(3,1,'Готов (к отправке) / или Заверше'),(2,1,'Заказ \"висит\" в ожидании поступл');
/*!40000 ALTER TABLE `oc_return_status` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_review` WRITE;
/*!40000 ALTER TABLE `oc_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_review` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_review_article` WRITE;
/*!40000 ALTER TABLE `oc_review_article` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_review_article` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_setting` WRITE;
/*!40000 ALTER TABLE `oc_setting` DISABLE KEYS */;
INSERT INTO `oc_setting` VALUES (1,0,'account','account_module','a:1:{i:0;a:4:{s:9:\"layout_id\";s:1:\"6\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}}',1),(2,0,'affiliate','affiliate_module','a:1:{i:0;a:4:{s:9:\"layout_id\";s:2:\"10\";s:8:\"position\";s:12:\"column_right\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}}',1),(3,0,'banner','banner_module','a:2:{i:0;a:7:{s:9:\"banner_id\";s:1:\"2\";s:5:\"width\";s:3:\"268\";s:6:\"height\";s:3:\"212\";s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:10:\"header_top\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:1;a:7:{s:9:\"banner_id\";s:1:\"3\";s:5:\"width\";s:3:\"270\";s:6:\"height\";s:3:\"129\";s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:10:\"header_top\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"3\";}}',1),(5,0,'blogconfig','config_blog_admin_limit','20',0),(6,0,'blogconfig','config_blog_article_count','0',0),(7,0,'blogconfig','config_blog_catalog_limit','15',0),(8,0,'blogconfig','config_blog_download','1',0),(9,0,'blogconfig','config_blog_header_menu','1',0),(10,0,'blogconfig','config_blog_image_additional_height','173',0),(11,0,'blogconfig','config_blog_image_additional_width','173',0),(12,0,'blogconfig','config_blog_image_article_height','160',0),(13,0,'blogconfig','config_blog_image_article_width','160',0),(14,0,'blogconfig','config_blog_image_category_height','80',0),(15,0,'blogconfig','config_blog_image_category_width','80',0),(16,0,'blogconfig','config_blog_image_gallery_height','173',0),(17,0,'blogconfig','config_blog_image_gallery_width','173',0),(18,0,'blogconfig','config_blog_image_popup_height','500',0),(19,0,'blogconfig','config_blog_image_popup_width','500',0),(20,0,'blogconfig','config_blog_image_related_height','150',0),(21,0,'blogconfig','config_blog_image_related_width','150',0),(22,0,'blogconfig','config_blog_review_status','1',0),(23,0,'blog_category','blog_category_module','a:3:{i:0;a:5:{s:9:\"layout_id\";s:2:\"12\";s:8:\"position\";s:11:\"column_left\";s:5:\"count\";s:1:\"0\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"0\";}i:1;a:5:{s:9:\"layout_id\";s:2:\"13\";s:8:\"position\";s:11:\"column_left\";s:5:\"count\";s:1:\"0\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"0\";}i:2;a:5:{s:9:\"layout_id\";s:2:\"14\";s:8:\"position\";s:11:\"column_left\";s:5:\"count\";s:1:\"0\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"0\";}}',1),(24,0,'blog_latest','blog_latest_module','a:2:{i:0;a:8:{s:5:\"limit\";s:1:\"3\";s:10:\"text_limit\";s:3:\"100\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:9:\"layout_id\";s:2:\"13\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:1;a:8:{s:5:\"limit\";s:1:\"3\";s:10:\"text_limit\";s:3:\"100\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:9:\"layout_id\";s:2:\"14\";s:8:\"position\";s:14:\"content_bottom\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}}',1),(25,0,'blog_mostviewed','blog_mostviewed_module','a:3:{i:0;a:8:{s:5:\"limit\";s:1:\"3\";s:10:\"text_limit\";s:3:\"100\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:9:\"layout_id\";s:2:\"14\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:1;a:8:{s:5:\"limit\";s:1:\"3\";s:10:\"text_limit\";s:3:\"100\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:9:\"layout_id\";s:2:\"12\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:2;a:8:{s:5:\"limit\";s:1:\"3\";s:10:\"text_limit\";s:3:\"100\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:9:\"layout_id\";s:2:\"13\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}}',1),(26,0,'blog_reviews','blog_reviews_module','a:3:{i:0;a:10:{s:4:\"type\";s:6:\"latest\";s:6:\"header\";a:2:{i:1;s:31:\"Последние отзывы\";i:2;s:17:\"Recently Reviewed\";}s:5:\"limit\";s:1:\"3\";s:10:\"text_limit\";s:3:\"200\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:9:\"layout_id\";s:2:\"14\";s:8:\"position\";s:14:\"content_bottom\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"3\";}i:1;a:10:{s:4:\"type\";s:6:\"latest\";s:6:\"header\";a:2:{i:1;s:31:\"Последние отзывы\";i:2;s:17:\"Recently Reviewed\";}s:5:\"limit\";s:1:\"3\";s:10:\"text_limit\";s:3:\"200\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:9:\"layout_id\";s:2:\"12\";s:8:\"position\";s:14:\"content_bottom\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"3\";}i:2;a:10:{s:4:\"type\";s:6:\"latest\";s:6:\"header\";a:2:{i:1;s:31:\"Последние отзывы\";i:2;s:17:\"Recently Reviewed\";}s:5:\"limit\";s:1:\"3\";s:10:\"text_limit\";s:3:\"200\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:9:\"layout_id\";s:2:\"13\";s:8:\"position\";s:14:\"content_bottom\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"3\";}}',1),(27,0,'cachemanager','cache','a:2:{s:4:\"menu\";a:2:{s:6:\"status\";s:1:\"0\";s:8:\"lifetime\";s:5:\"86400\";}s:14:\"categorymodule\";a:2:{s:6:\"status\";s:1:\"0\";s:8:\"lifetime\";s:5:\"86400\";}}',1),(28,0,'cachemanager','gzip','0',0),(29,0,'carousel','carousel_module','a:1:{i:0;a:10:{s:9:\"banner_id\";s:1:\"8\";s:5:\"limit\";s:1:\"5\";s:6:\"scroll\";s:1:\"3\";s:5:\"width\";s:2:\"80\";s:6:\"height\";s:2:\"80\";s:11:\"resize_type\";s:7:\"default\";s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:14:\"content_bottom\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:2:\"-1\";}}',1),(31,0,'cod','cod_geo_zone_id','0',0),(32,0,'cod','cod_order_status_id','1',0),(33,0,'cod','cod_sort_order','5',0),(34,0,'cod','cod_status','1',0),(35,0,'cod','cod_total','0.01',0),(967,0,'compare','compare_module','a:2:{i:0;a:4:{s:9:\"layout_id\";s:1:\"2\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"3\";}i:1;a:4:{s:9:\"layout_id\";s:1:\"3\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"4\";}}',1),(1354,0,'config','config_google_analytics','&lt;script&gt;\r\n  (function(i,s,o,g,r,a,m){i[\'GoogleAnalyticsObject\']=r;i[r]=i[r]||function(){\r\n  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),\r\n  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)\r\n  })(window,document,\'script\',\'https://www.google-analytics.com/analytics.js\',\'ga\');\r\n\r\n  ga(\'create\', \'UA-102202980-1\', \'auto\');\r\n  ga(\'send\', \'pageview\');\r\n\r\n&lt;/script&gt;',0),(1353,0,'config','config_error_filename','error.txt',0),(1352,0,'config','config_error_log','1',0),(1351,0,'config','config_error_display','1',0),(1350,0,'config','config_compression','0',0),(1347,0,'config','config_maintenance','0',0),(1348,0,'config','config_password','1',0),(1349,0,'config','config_encryption','6670415dfe94fcb5bfef8978a8ac2f85',0),(1340,0,'config','config_robots','abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg',0),(1341,0,'config','config_seo_url','1',0),(1342,0,'config','config_seo_url_type','seo_pro',0),(1343,0,'config','config_seo_url_include_path','1',0),(1344,0,'config','config_seo_url_postfix','',0),(1345,0,'config','config_file_extension_allowed','txt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc\r\nrtf\r\nxls\r\nppt\r\nodt\r\nods',0),(1346,0,'config','config_file_mime_allowed','text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/jpeg\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/vnd.microsoft.icon\r\nimage/tiff\r\nimage/tiff\r\nimage/svg+xml\r\nimage/svg+xml\r\napplication/zip\r\napplication/x-rar-compressed\r\napplication/x-msdownload\r\napplication/vnd.ms-cab-compressed\r\naudio/mpeg\r\nvideo/quicktime\r\nvideo/quicktime\r\napplication/pdf\r\nimage/vnd.adobe.photoshop\r\napplication/postscript\r\napplication/postscript\r\napplication/postscript\r\napplication/msword\r\napplication/rtf\r\napplication/vnd.ms-excel\r\napplication/vnd.ms-powerpoint\r\napplication/vnd.oasis.opendocument.text\r\napplication/vnd.oasis.opendocument.spreadsheet',0),(1339,0,'config','config_shared','0',0),(1338,0,'config','config_secure','0',0),(1337,0,'config','config_sms_gate_password','',0),(1336,0,'config','config_sms_gate_username','',0),(1335,0,'config','config_sms_message','',0),(1334,0,'config','config_sms_copy','',0),(1333,0,'config','config_sms_to','',0),(1332,0,'config','config_sms_from','',0),(1331,0,'config','config_sms_gatename','smsc',0),(1330,0,'config','config_sms_alert','0',0),(1329,0,'config','config_fraud_status_id','2',0),(1328,0,'config','config_fraud_score','',0),(1327,0,'config','config_fraud_key','',0),(1326,0,'config','config_fraud_detection','0',0),(1325,0,'config','config_alert_emails','',0),(1324,0,'config','config_account_mail','0',0),(1323,0,'config','config_alert_mail','0',0),(1322,0,'config','config_smtp_timeout','5',0),(1321,0,'config','config_smtp_port','25',0),(1320,0,'config','config_smtp_password','',0),(1319,0,'config','config_smtp_username','',0),(1318,0,'config','config_smtp_host','',0),(1317,0,'config','config_mail_parameter','',0),(1316,0,'config','config_mail_protocol','mail',0),(1315,0,'config','config_ftp_status','0',0),(1314,0,'config','config_ftp_root','',0),(1313,0,'config','config_ftp_password','',0),(1312,0,'config','config_ftp_username','',0),(1311,0,'config','config_ftp_port','21',0),(1310,0,'config','config_ftp_host','flower-land.com.ua',0),(1309,0,'config','config_image_cart_height','40',0),(1308,0,'config','config_image_cart_width','47',0),(1307,0,'config','config_image_wishlist_height','40',0),(1306,0,'config','config_image_wishlist_width','47',0),(1305,0,'config','config_image_compare_height','77',0),(1304,0,'config','config_image_compare_width','90',0),(1303,0,'config','config_image_related_height','110',0),(1302,0,'config','config_image_related_width','129',0),(1301,0,'config','config_image_additional_height','60',0),(1300,0,'config','config_image_additional_width','70',0),(1299,0,'config','config_image_product_height','196',0),(1298,0,'config','config_image_product_width','229',0),(1295,0,'config','config_image_thumb_height','231',0),(1296,0,'config','config_image_popup_width','600',0),(1297,0,'config','config_image_popup_height','513',0),(1294,0,'config','config_image_thumb_width','270',0),(1293,0,'config','config_image_category_height','110',0),(1292,0,'config','config_image_category_width','129',0),(1291,0,'config','config_icon','data/favicon.png',0),(1290,0,'config','config_logo','data/logo.png',0),(1289,0,'config','config_return_status_id','2',0),(1288,0,'config','config_return_id','0',0),(1287,0,'config','config_commission','5',0),(1286,0,'config','config_affiliate_id','4',0),(1285,0,'config','config_stock_status_id','5',0),(1284,0,'config','config_stock_checkout','0',0),(1283,0,'config','config_stock_warning','0',0),(1282,0,'config','config_stock_display','0',0),(1280,0,'config','config_order_status_id','1',0),(1281,0,'config','config_complete_status_id','5',0),(138,0,'coolfilter','coolfilter_module','a:1:{i:0;a:5:{s:9:\"layout_id\";s:1:\"3\";s:19:\"coolfilter_group_id\";s:1:\"1\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"0\";}}',1),(139,0,'coolfilter','count_enabled','1',0),(140,0,'coupon','coupon_sort_order','4',0),(141,0,'coupon','coupon_status','1',0),(142,0,'credit','credit_sort_order','7',0),(143,0,'credit','credit_status','1',0),(144,0,'featured','featured_module','a:1:{i:0;a:7:{s:5:\"limit\";s:1:\"6\";s:11:\"image_width\";s:3:\"229\";s:12:\"image_height\";s:3:\"196\";s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:11:\"content_top\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"3\";}}',1),(145,0,'featured','featured_product','34,46,49,42,32,29,36,33',0),(146,0,'featured','product','',0),(147,0,'filter','filter_module','a:2:{i:0;a:4:{s:9:\"layout_id\";s:1:\"5\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:1;a:4:{s:9:\"layout_id\";s:1:\"2\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}}',1),(148,0,'flat','flat_cost','5.00',0),(149,0,'flat','flat_geo_zone_id','0',0),(150,0,'flat','flat_sort_order','1',0),(151,0,'flat','flat_status','1',0),(152,0,'flat','flat_tax_class_id','9',0),(153,0,'free','free_geo_zone_id','0',0),(154,0,'free','free_sort_order','2',0),(155,0,'free','free_status','0',0),(156,0,'free','free_total','',0),(157,0,'free_checkout','free_checkout_order_status_id','1',0),(158,0,'free_checkout','free_checkout_sort_order','1',0),(159,0,'free_checkout','free_checkout_status','1',0),(160,0,'information','information_module','a:3:{i:0;a:4:{s:9:\"layout_id\";s:1:\"8\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:1;a:4:{s:9:\"layout_id\";s:1:\"5\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:2;a:4:{s:9:\"layout_id\";s:2:\"10\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}}',1),(960,0,'manufacturer','manufacturer_module','a:3:{i:0;a:4:{s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:1;a:4:{s:9:\"layout_id\";s:1:\"3\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}i:2;a:4:{s:9:\"layout_id\";s:1:\"4\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}}',1),(1102,0,'newcarousel','newcarousel_module','a:1:{i:0;a:7:{s:9:\"banner_id\";s:1:\"1\";s:5:\"width\";s:3:\"870\";s:6:\"height\";s:3:\"500\";s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:10:\"header_top\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"1\";}}',1),(164,0,'newslideshow','slideshow_module','a:1:{i:0;a:7:{s:9:\"banner_id\";s:2:\"14\";s:5:\"width\";s:4:\"1000\";s:6:\"height\";s:3:\"400\";s:9:\"layout_id\";s:1:\"6\";s:8:\"position\";s:11:\"content_top\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:0:\"\";}}',1),(1097,0,'latest','latest_module','a:2:{i:0;a:7:{s:5:\"limit\";s:1:\"1\";s:11:\"image_width\";s:3:\"229\";s:12:\"image_height\";s:3:\"196\";s:9:\"layout_id\";s:1:\"3\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:1;a:7:{s:5:\"limit\";s:1:\"1\";s:11:\"image_width\";s:3:\"229\";s:12:\"image_height\";s:3:\"196\";s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"3\";}}',1),(166,0,'reviews','reviews_module','a:1:{i:0;a:10:{s:4:\"type\";s:6:\"latest\";s:6:\"header\";a:2:{i:1;s:31:\"Последние отзывы\";i:2;s:31:\"Последние отзывы\";}s:5:\"limit\";s:1:\"4\";s:10:\"text_limit\";s:3:\"150\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:9:\"layout_id\";s:1:\"3\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"5\";}}',1),(167,0,'reward','reward_sort_order','2',0),(168,0,'reward','reward_status','1',0),(169,0,'shipping','shipping_estimator','1',0),(170,0,'shipping','shipping_sort_order','3',0),(171,0,'shipping','shipping_status','1',0),(969,0,'bestseller','bestseller_module','a:2:{i:0;a:7:{s:5:\"limit\";s:1:\"1\";s:11:\"image_width\";s:3:\"229\";s:12:\"image_height\";s:3:\"196\";s:9:\"layout_id\";s:1:\"3\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"3\";}i:1;a:7:{s:5:\"limit\";s:1:\"1\";s:11:\"image_width\";s:3:\"229\";s:12:\"image_height\";s:3:\"196\";s:9:\"layout_id\";s:1:\"8\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"3\";}}',1),(956,0,'special','special_module','a:3:{i:0;a:7:{s:5:\"limit\";s:1:\"1\";s:11:\"image_width\";s:3:\"229\";s:12:\"image_height\";s:3:\"196\";s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}i:1;a:7:{s:5:\"limit\";s:1:\"1\";s:11:\"image_width\";s:3:\"229\";s:12:\"image_height\";s:3:\"196\";s:9:\"layout_id\";s:1:\"2\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"3\";}i:2;a:7:{s:5:\"limit\";s:1:\"1\";s:11:\"image_width\";s:3:\"229\";s:12:\"image_height\";s:3:\"196\";s:9:\"layout_id\";s:1:\"5\";s:8:\"position\";s:11:\"column_left\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"2\";}}',1),(174,0,'sub_total','sub_total_sort_order','1',0),(175,0,'sub_total','sub_total_status','1',0),(176,0,'tax','tax_sort_order','5',0),(177,0,'tax','tax_status','1',0),(178,0,'testimonial','testimonial_admin_approved','0',0),(179,0,'testimonial','testimonial_all_page_limit','20',0),(180,0,'testimonial','testimonial_default_rating','3',0),(181,0,'testimonial','testimonial_send_to_admin','0',0),(182,0,'total','total_sort_order','9',0),(183,0,'total','total_status','1',0),(184,0,'viewed','show_on_product','1',0),(185,0,'viewed','viewed_count','5',0),(186,0,'viewed','viewed_module','a:3:{i:0;a:6:{s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:9:\"layout_id\";s:1:\"2\";s:8:\"position\";s:14:\"content_bottom\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:2:\"10\";}i:1;a:6:{s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:9:\"layout_id\";s:1:\"3\";s:8:\"position\";s:14:\"content_bottom\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"5\";}i:2;a:6:{s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:9:\"layout_id\";s:1:\"5\";s:8:\"position\";s:14:\"content_bottom\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:1:\"5\";}}',1),(187,0,'voucher','voucher_sort_order','8',0),(188,0,'voucher','voucher_status','1',0),(1279,0,'config','config_invoice_prefix','INV-2013-00',0),(1278,0,'config','config_order_edit','100',0),(1277,0,'config','config_checkout_id','5',0),(1276,0,'config','config_guest_checkout','1',0),(1275,0,'config','config_cart_weight','1',0),(1274,0,'config','config_account_id','3',0),(1273,0,'config','config_customer_price','0',0),(1271,0,'config','config_customer_group_id','1',0),(1272,0,'config','config_customer_group_display','a:1:{i:0;s:1:\"1\";}',1),(1270,0,'config','config_customer_online','0',0),(1269,0,'config','config_tax_customer','shipping',0),(1268,0,'config','config_tax_default','shipping',0),(1267,0,'config','config_vat','0',0),(1266,0,'config','config_tax','1',0),(1265,0,'config','config_voucher_max','1000',0),(1264,0,'config','config_voucher_min','1',0),(1263,0,'config','config_download','1',0),(1262,0,'config','config_review_status','1',0),(1261,0,'config','config_product_count','1',0),(1260,0,'config','config_menu_brands','0',0),(1259,0,'config','config_menu_latest','0',0),(1258,0,'config','config_menu_special','0',0),(1257,0,'config','config_admin_limit','20',0),(1256,0,'config','config_catalog_limit','15',0),(1255,0,'config','config_weight_class_id','1',0),(1254,0,'config','config_length_class_id','1',0),(1253,0,'config','config_currency_auto','1',0),(1242,0,'config','config_time','Круглосуточно',0),(1243,0,'config','config_title','Доставка цветов в Харькове. Интернет-магазин цветов Flower Land',0),(1244,0,'config','config_meta_description','Магазин по доставке цветов Flower Land представляет букеты на любой вкус. Мы осуществляем доставку по Харькову круглосуточно, букеты в наличии',0),(1252,0,'config','config_currency','UAH',0),(1251,0,'config','config_admin_language','ru',0),(1250,0,'config','config_language','ru',0),(1249,0,'config','config_zone_id','3487',0),(1248,0,'config','config_country_id','220',0),(1247,0,'config','config_layout_id','4',0),(1246,0,'config','config_template','theme324',0),(1245,0,'config','config_meta_keywords','',0),(1241,0,'config','config_twitter','twitter.com',0),(1240,0,'config','config_youtube','youtube.com',0),(1239,0,'config','config_googleplus','plus.google.com',0),(1238,0,'config','config_fb','www.facebook.com',0),(1231,0,'config','config_welcome','Мы приветствуем Вас в магазине доставки цветов - Flower Land!',0),(1237,0,'config','config_vk','vk.com',0),(1236,0,'config','config_fax','',0),(1235,0,'config','config_telephone','077 777 77 77',0),(1234,0,'config','config_email','sidash.seo@gmail.com',0),(1232,0,'config','config_address','Харьков, ул. Культуры, д. 16',0),(1233,0,'config','config_maps','&lt;script type=&quot;text/javascript&quot; charset=&quot;utf-8&quot; src=&quot;//api-maps.yandex.ru/services/constructor/1.0/js/?sid=AREPYumVjPnV1kA3nNnK-tGQkXjuvo58&amp;width=430&amp;height=220&quot;&gt;&lt;/script&gt;',0),(1098,0,'blockhtml','blockhtml_module','a:1:{i:1;a:7:{s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:14:\"content_bottom\";s:6:\"status\";s:1:\"1\";s:10:\"sort_order\";s:0:\"\";s:5:\"title\";a:1:{i:1;s:49:\"Доставка цветов в Харькове\";}s:6:\"header\";a:1:{i:1;s:1:\"1\";}s:4:\"html\";a:1:{i:1;s:3186:\"&lt;div id=&quot;bg-header-text&quot;&gt;\r\n&lt;p&gt;Сделать приятно близкому человеку просто. Неважно какого он пола или возраста – все любят цветы. А те, кто их не любит, просто не получал их в подарок от нашего магазина Flower Land!&lt;/p&gt;\r\n\r\n&lt;p&gt;Мы продаем срезанные растения самых разных видов:&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;Цветы по видам (розы, пионы, тюльпаны, орхидеи, герберы, эустомы, ирисы, альстромерии и многие другие)&lt;/li&gt;\r\n	&lt;li&gt;Букеты (евробукеты, монобукеты, миксованные)&lt;/li&gt;\r\n	&lt;li&gt;Свадебная флористика (букет невесты, бутоньерки)&lt;/li&gt;\r\n	&lt;li&gt;Композиции (букеты в коробке, сердца из цветов, цветы в корзине, в конусе)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;h2&gt;Преимущества наших букетов&lt;/h2&gt;\r\n\r\n&lt;p&gt;Первое правило нашей фирмы – скажи «нет» долгой заморозке! Чем меньше цветы хранятся в нашем холодильнике, тем дольше они простоят у вас дома. Второй момент касается поставщиков. Мы давно на рынке и поэтому все поставки более, чем надежны. Никаких дешевых цветов, все только из тех мест и стран, где это должно выращиваться априори.&lt;/p&gt;\r\n\r\n&lt;h2&gt;В каких случаях доставка цветов будет бесплатной&lt;/h2&gt;\r\n\r\n&lt;p&gt;Харьков довольно большой город и не все поставщики цветов осмеливаются сделать доставку бесплатной. Но мы – исключение из правил. В дневное время все букеты приедут к Вам совершенно бесплатно, Вы заплатите только за сами цветы. Есть только два правила: заказ должен быть с 9-ти до 19:00 и чек составлять не менее 300 грн. В этом случае, вся перевозка выйдет Вам даром.&lt;/p&gt;\r\n\r\n&lt;h3&gt;Дисконтная система для постоянных клиентов интернет-магазина Flower Land&lt;/h3&gt;\r\n\r\n&lt;p&gt;Если Вы заказывали у нас букет, то мы уже Вас записали в дискаунт-лист. Что это значит? Что каждый пятый букет становится для Вас бесплатным. Только есть одно условие – он не должен быть дороже всех предудущих букетов.&lt;/p&gt;\r\n&lt;/div&gt;\r\n\";}}}',1),(1230,0,'config','config_owner','Мое Имя',0),(1229,0,'config','config_name','Flower Land',0);
/*!40000 ALTER TABLE `oc_setting` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_sticker` WRITE;
/*!40000 ALTER TABLE `oc_sticker` DISABLE KEYS */;
INSERT INTO `oc_sticker` VALUES (15,'Лучший Выбор',1,'data/stiker/best.png'),(13,'Новинка',1,'data/stiker/new.png'),(14,'Хит Продаж',1,'data/stiker/bestseller.png'),(16,'Акция',1,'data/stiker/special.png'),(17,'Лучшая цена',1,'data/stiker/bestprice.png');
/*!40000 ALTER TABLE `oc_sticker` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_stock_status` WRITE;
/*!40000 ALTER TABLE `oc_stock_status` DISABLE KEYS */;
INSERT INTO `oc_stock_status` VALUES (7,1,'В наличии'),(8,1,'Предзаказ'),(5,1,'Нет в наличии'),(6,1,'Ожидание 2-3 дня');
/*!40000 ALTER TABLE `oc_stock_status` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_store` WRITE;
/*!40000 ALTER TABLE `oc_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_store` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_style_option` WRITE;
/*!40000 ALTER TABLE `oc_style_option` DISABLE KEYS */;
INSERT INTO `oc_style_option` VALUES (1,'checkbox'),(2,'checkbox'),(4,'checkbox'),(3,'slider');
/*!40000 ALTER TABLE `oc_style_option` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_tax_class` WRITE;
/*!40000 ALTER TABLE `oc_tax_class` DISABLE KEYS */;
INSERT INTO `oc_tax_class` VALUES (9,'Налоги','Облагаемые налогом','2009-01-06 23:21:53','2011-03-09 21:17:10');
/*!40000 ALTER TABLE `oc_tax_class` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_tax_rate` WRITE;
/*!40000 ALTER TABLE `oc_tax_rate` DISABLE KEYS */;
INSERT INTO `oc_tax_rate` VALUES (86,3,'НДС 18%','18.0000','P','2011-03-09 21:17:10','2011-09-22 22:24:29'),(87,3,'Eco Tax (-2.00)','2.0000','F','2011-09-21 21:49:23','2011-09-23 00:40:19');
/*!40000 ALTER TABLE `oc_tax_rate` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_tax_rate_to_customer_group` WRITE;
/*!40000 ALTER TABLE `oc_tax_rate_to_customer_group` DISABLE KEYS */;
INSERT INTO `oc_tax_rate_to_customer_group` VALUES (86,1),(87,1);
/*!40000 ALTER TABLE `oc_tax_rate_to_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_tax_rule` WRITE;
/*!40000 ALTER TABLE `oc_tax_rule` DISABLE KEYS */;
INSERT INTO `oc_tax_rule` VALUES (121,10,86,'payment',1),(120,10,87,'store',0),(128,9,86,'shipping',1),(127,9,87,'shipping',2);
/*!40000 ALTER TABLE `oc_tax_rule` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_testimonial` WRITE;
/*!40000 ALTER TABLE `oc_testimonial` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_testimonial` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_testimonial_description` WRITE;
/*!40000 ALTER TABLE `oc_testimonial_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_testimonial_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_type_option` WRITE;
/*!40000 ALTER TABLE `oc_type_option` DISABLE KEYS */;
INSERT INTO `oc_type_option` VALUES (2,'manufacter'),(1,'option_11'),(4,'parametere_1'),(3,'price');
/*!40000 ALTER TABLE `oc_type_option` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_url_alias` WRITE;
/*!40000 ALTER TABLE `oc_url_alias` DISABLE KEYS */;
INSERT INTO `oc_url_alias` VALUES (704,'product_id=48','ipod_classic',0),(833,'category_id=20','desktops',0),(503,'category_id=26','pc',0),(505,'category_id=27','mac',0),(826,'manufacturer_id=8','apple',0),(772,'information_id=4','about_us',0),(774,'common/home','',0),(795,'information/sitemap','sitemaps',1),(797,'information/contact','contacts',1),(798,'product/manufacturer','brands',1),(768,'product_id=42','test',0),(767,'category_id=34','mp3-players',0),(536,'category_id=36','Normal',0),(799,'product/special','specials',1),(802,'blid=69','news',0),(801,'blid=70','photos-reviews',0),(803,'blog/latest','blog',1),(804,'product/latest','latest',1),(805,'article_id=120','ocshop-cms-1-5-6-2',0),(808,'article_id=123','foto-obzor-pervij',0),(809,'product/testimonial','testimonial',1),(814,'manufacturer_id=10','den-rozhdenija',0),(822,'manufacturer_id=9','cras-eleifend2',0),(831,'manufacturer_id=6','svadba',0),(823,'manufacturer_id=11','obuchenie',0),(824,'manufacturer_id=5','nagrazhdenija',0),(830,'manufacturer_id=7','drugie-sobitija',0),(832,'category_id=57','cvetochnie-kompozicii',0),(835,'category_id=17','komnatnie-cveti',0),(836,'category_id=86','cveti-optom',0);
/*!40000 ALTER TABLE `oc_url_alias` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_user` WRITE;
/*!40000 ALTER TABLE `oc_user` DISABLE KEYS */;
INSERT INTO `oc_user` VALUES (1,1,'admin','1e7115ba66030264b12017a2e9238c331bde1603','67a4239be','','','sidash.seo@gmail.com','','217.26.147.111',1,'2017-07-06 15:56:26');
/*!40000 ALTER TABLE `oc_user` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_user_group` WRITE;
/*!40000 ALTER TABLE `oc_user_group` DISABLE KEYS */;
INSERT INTO `oc_user_group` VALUES (1,'root','a:2:{s:6:\"access\";a:158:{i:0;s:12:\"blog/article\";i:1;s:17:\"blog/blog_setting\";i:2;s:12:\"blog/gallery\";i:3;s:9:\"blog/news\";i:4;s:19:\"blog/review_article\";i:5;s:17:\"catalog/attribute\";i:6;s:23:\"catalog/attribute_group\";i:7;s:16:\"catalog/category\";i:8;s:18:\"catalog/coolfilter\";i:9;s:24:\"catalog/coolfilter_group\";i:10;s:16:\"catalog/download\";i:11;s:14:\"catalog/filter\";i:12;s:19:\"catalog/information\";i:13;s:20:\"catalog/manufacturer\";i:14;s:14:\"catalog/option\";i:15;s:15:\"catalog/product\";i:16;s:15:\"catalog/profile\";i:17;s:14:\"catalog/review\";i:18;s:19:\"catalog/testimonial\";i:19;s:18:\"common/filemanager\";i:20;s:13:\"design/banner\";i:21;s:14:\"design/benefit\";i:22;s:19:\"design/custom_field\";i:23;s:13:\"design/layout\";i:24;s:14:\"design/sticker\";i:25;s:14:\"extension/feed\";i:26;s:17:\"extension/manager\";i:27;s:16:\"extension/module\";i:28;s:17:\"extension/payment\";i:29;s:18:\"extension/shipping\";i:30;s:15:\"extension/total\";i:31;s:16:\"feed/google_base\";i:32;s:19:\"feed/google_sitemap\";i:33;s:18:\"feed/yandex_market\";i:34;s:20:\"localisation/country\";i:35;s:21:\"localisation/currency\";i:36;s:21:\"localisation/geo_zone\";i:37;s:21:\"localisation/language\";i:38;s:25:\"localisation/length_class\";i:39;s:25:\"localisation/order_status\";i:40;s:26:\"localisation/return_action\";i:41;s:26:\"localisation/return_reason\";i:42;s:26:\"localisation/return_status\";i:43;s:25:\"localisation/stock_status\";i:44;s:22:\"localisation/tax_class\";i:45;s:21:\"localisation/tax_rate\";i:46;s:25:\"localisation/weight_class\";i:47;s:17:\"localisation/zone\";i:48;s:14:\"module/account\";i:49;s:16:\"module/affiliate\";i:50;s:13:\"module/banner\";i:51;s:17:\"module/bestseller\";i:52;s:16:\"module/blockhtml\";i:53;s:20:\"module/blog_category\";i:54;s:20:\"module/blog_featured\";i:55;s:18:\"module/blog_latest\";i:56;s:22:\"module/blog_mostviewed\";i:57;s:19:\"module/blog_reviews\";i:58;s:15:\"module/carousel\";i:59;s:15:\"module/category\";i:60;s:14:\"module/compare\";i:61;s:17:\"module/coolfilter\";i:62;s:15:\"module/featured\";i:63;s:22:\"module/featuredarticle\";i:64;s:17:\"module/featuredwb\";i:65;s:13:\"module/filter\";i:66;s:18:\"module/google_talk\";i:67;s:18:\"module/information\";i:68;s:13:\"module/latest\";i:69;s:19:\"module/manufacturer\";i:70;s:18:\"module/newcarousel\";i:71;s:16:\"module/pp_layout\";i:72;s:18:\"module/product_tab\";i:73;s:14:\"module/reviews\";i:74;s:16:\"module/slideshow\";i:75;s:14:\"module/special\";i:76;s:12:\"module/store\";i:77;s:18:\"module/testimonial\";i:78;s:13:\"module/viewed\";i:79;s:20:\"module/vqmod_manager\";i:80;s:14:\"module/welcome\";i:81;s:21:\"payment/bank_transfer\";i:82;s:11:\"payment/cod\";i:83;s:21:\"payment/free_checkout\";i:84;s:14:\"payment/liqpay\";i:85;s:20:\"payment/moneybookers\";i:86;s:21:\"payment/nalogenniy_np\";i:87;s:18:\"payment/pp_express\";i:88;s:25:\"payment/pp_payflow_iframe\";i:89;s:14:\"payment/pp_pro\";i:90;s:21:\"payment/pp_pro_iframe\";i:91;s:17:\"payment/pp_pro_pf\";i:92;s:17:\"payment/pp_pro_uk\";i:93;s:19:\"payment/pp_standard\";i:94;s:25:\"payment/sberbank_transfer\";i:95;s:20:\"payment/webmoney_wme\";i:96;s:20:\"payment/webmoney_wmr\";i:97;s:20:\"payment/webmoney_wmu\";i:98;s:20:\"payment/webmoney_wmz\";i:99;s:27:\"report/affiliate_commission\";i:100;s:22:\"report/customer_credit\";i:101;s:22:\"report/customer_online\";i:102;s:21:\"report/customer_order\";i:103;s:22:\"report/customer_reward\";i:104;s:24:\"report/product_purchased\";i:105;s:21:\"report/product_viewed\";i:106;s:18:\"report/sale_coupon\";i:107;s:17:\"report/sale_order\";i:108;s:18:\"report/sale_return\";i:109;s:20:\"report/sale_shipping\";i:110;s:15:\"report/sale_tax\";i:111;s:14:\"sale/affiliate\";i:112;s:12:\"sale/contact\";i:113;s:11:\"sale/coupon\";i:114;s:13:\"sale/customer\";i:115;s:20:\"sale/customer_ban_ip\";i:116;s:19:\"sale/customer_group\";i:117;s:10:\"sale/order\";i:118;s:14:\"sale/recurring\";i:119;s:11:\"sale/return\";i:120;s:12:\"sale/voucher\";i:121;s:18:\"sale/voucher_theme\";i:122;s:15:\"setting/setting\";i:123;s:13:\"setting/store\";i:124;s:17:\"shipping/by_total\";i:125;s:17:\"shipping/citylink\";i:126;s:23:\"shipping/courierautolux\";i:127;s:13:\"shipping/flat\";i:128;s:13:\"shipping/free\";i:129;s:15:\"shipping/gunsel\";i:130;s:15:\"shipping/intime\";i:131;s:13:\"shipping/item\";i:132;s:17:\"shipping/nexpress\";i:133;s:19:\"shipping/novaposhta\";i:134;s:15:\"shipping/pickup\";i:135;s:15:\"shipping/weight\";i:136;s:18:\"shipping/xshipping\";i:137;s:11:\"tool/backup\";i:138;s:17:\"tool/cachemanager\";i:139;s:14:\"tool/error_log\";i:140;s:15:\"tool/seomanager\";i:141;s:18:\"tool/vqmod_manager\";i:142;s:12:\"total/coupon\";i:143;s:12:\"total/credit\";i:144;s:14:\"total/handling\";i:145;s:19:\"total/low_order_fee\";i:146;s:12:\"total/reward\";i:147;s:14:\"total/shipping\";i:148;s:15:\"total/sub_total\";i:149;s:9:\"total/tax\";i:150;s:11:\"total/total\";i:151;s:13:\"total/voucher\";i:152;s:9:\"user/user\";i:153;s:20:\"user/user_permission\";i:154;s:16:\"module/blockhtml\";i:155;s:15:\"module/category\";i:156;s:16:\"module/slideshow\";i:157;s:18:\"module/product_tab\";}s:6:\"modify\";a:158:{i:0;s:12:\"blog/article\";i:1;s:17:\"blog/blog_setting\";i:2;s:12:\"blog/gallery\";i:3;s:9:\"blog/news\";i:4;s:19:\"blog/review_article\";i:5;s:17:\"catalog/attribute\";i:6;s:23:\"catalog/attribute_group\";i:7;s:16:\"catalog/category\";i:8;s:18:\"catalog/coolfilter\";i:9;s:24:\"catalog/coolfilter_group\";i:10;s:16:\"catalog/download\";i:11;s:14:\"catalog/filter\";i:12;s:19:\"catalog/information\";i:13;s:20:\"catalog/manufacturer\";i:14;s:14:\"catalog/option\";i:15;s:15:\"catalog/product\";i:16;s:15:\"catalog/profile\";i:17;s:14:\"catalog/review\";i:18;s:19:\"catalog/testimonial\";i:19;s:18:\"common/filemanager\";i:20;s:13:\"design/banner\";i:21;s:14:\"design/benefit\";i:22;s:19:\"design/custom_field\";i:23;s:13:\"design/layout\";i:24;s:14:\"design/sticker\";i:25;s:14:\"extension/feed\";i:26;s:17:\"extension/manager\";i:27;s:16:\"extension/module\";i:28;s:17:\"extension/payment\";i:29;s:18:\"extension/shipping\";i:30;s:15:\"extension/total\";i:31;s:16:\"feed/google_base\";i:32;s:19:\"feed/google_sitemap\";i:33;s:18:\"feed/yandex_market\";i:34;s:20:\"localisation/country\";i:35;s:21:\"localisation/currency\";i:36;s:21:\"localisation/geo_zone\";i:37;s:21:\"localisation/language\";i:38;s:25:\"localisation/length_class\";i:39;s:25:\"localisation/order_status\";i:40;s:26:\"localisation/return_action\";i:41;s:26:\"localisation/return_reason\";i:42;s:26:\"localisation/return_status\";i:43;s:25:\"localisation/stock_status\";i:44;s:22:\"localisation/tax_class\";i:45;s:21:\"localisation/tax_rate\";i:46;s:25:\"localisation/weight_class\";i:47;s:17:\"localisation/zone\";i:48;s:14:\"module/account\";i:49;s:16:\"module/affiliate\";i:50;s:13:\"module/banner\";i:51;s:17:\"module/bestseller\";i:52;s:16:\"module/blockhtml\";i:53;s:20:\"module/blog_category\";i:54;s:20:\"module/blog_featured\";i:55;s:18:\"module/blog_latest\";i:56;s:22:\"module/blog_mostviewed\";i:57;s:19:\"module/blog_reviews\";i:58;s:15:\"module/carousel\";i:59;s:15:\"module/category\";i:60;s:14:\"module/compare\";i:61;s:17:\"module/coolfilter\";i:62;s:15:\"module/featured\";i:63;s:22:\"module/featuredarticle\";i:64;s:17:\"module/featuredwb\";i:65;s:13:\"module/filter\";i:66;s:18:\"module/google_talk\";i:67;s:18:\"module/information\";i:68;s:13:\"module/latest\";i:69;s:19:\"module/manufacturer\";i:70;s:18:\"module/newcarousel\";i:71;s:16:\"module/pp_layout\";i:72;s:18:\"module/product_tab\";i:73;s:14:\"module/reviews\";i:74;s:16:\"module/slideshow\";i:75;s:14:\"module/special\";i:76;s:12:\"module/store\";i:77;s:18:\"module/testimonial\";i:78;s:13:\"module/viewed\";i:79;s:20:\"module/vqmod_manager\";i:80;s:14:\"module/welcome\";i:81;s:21:\"payment/bank_transfer\";i:82;s:11:\"payment/cod\";i:83;s:21:\"payment/free_checkout\";i:84;s:14:\"payment/liqpay\";i:85;s:20:\"payment/moneybookers\";i:86;s:21:\"payment/nalogenniy_np\";i:87;s:18:\"payment/pp_express\";i:88;s:25:\"payment/pp_payflow_iframe\";i:89;s:14:\"payment/pp_pro\";i:90;s:21:\"payment/pp_pro_iframe\";i:91;s:17:\"payment/pp_pro_pf\";i:92;s:17:\"payment/pp_pro_uk\";i:93;s:19:\"payment/pp_standard\";i:94;s:25:\"payment/sberbank_transfer\";i:95;s:20:\"payment/webmoney_wme\";i:96;s:20:\"payment/webmoney_wmr\";i:97;s:20:\"payment/webmoney_wmu\";i:98;s:20:\"payment/webmoney_wmz\";i:99;s:27:\"report/affiliate_commission\";i:100;s:22:\"report/customer_credit\";i:101;s:22:\"report/customer_online\";i:102;s:21:\"report/customer_order\";i:103;s:22:\"report/customer_reward\";i:104;s:24:\"report/product_purchased\";i:105;s:21:\"report/product_viewed\";i:106;s:18:\"report/sale_coupon\";i:107;s:17:\"report/sale_order\";i:108;s:18:\"report/sale_return\";i:109;s:20:\"report/sale_shipping\";i:110;s:15:\"report/sale_tax\";i:111;s:14:\"sale/affiliate\";i:112;s:12:\"sale/contact\";i:113;s:11:\"sale/coupon\";i:114;s:13:\"sale/customer\";i:115;s:20:\"sale/customer_ban_ip\";i:116;s:19:\"sale/customer_group\";i:117;s:10:\"sale/order\";i:118;s:14:\"sale/recurring\";i:119;s:11:\"sale/return\";i:120;s:12:\"sale/voucher\";i:121;s:18:\"sale/voucher_theme\";i:122;s:15:\"setting/setting\";i:123;s:13:\"setting/store\";i:124;s:17:\"shipping/by_total\";i:125;s:17:\"shipping/citylink\";i:126;s:23:\"shipping/courierautolux\";i:127;s:13:\"shipping/flat\";i:128;s:13:\"shipping/free\";i:129;s:15:\"shipping/gunsel\";i:130;s:15:\"shipping/intime\";i:131;s:13:\"shipping/item\";i:132;s:17:\"shipping/nexpress\";i:133;s:19:\"shipping/novaposhta\";i:134;s:15:\"shipping/pickup\";i:135;s:15:\"shipping/weight\";i:136;s:18:\"shipping/xshipping\";i:137;s:11:\"tool/backup\";i:138;s:17:\"tool/cachemanager\";i:139;s:14:\"tool/error_log\";i:140;s:15:\"tool/seomanager\";i:141;s:18:\"tool/vqmod_manager\";i:142;s:12:\"total/coupon\";i:143;s:12:\"total/credit\";i:144;s:14:\"total/handling\";i:145;s:19:\"total/low_order_fee\";i:146;s:12:\"total/reward\";i:147;s:14:\"total/shipping\";i:148;s:15:\"total/sub_total\";i:149;s:9:\"total/tax\";i:150;s:11:\"total/total\";i:151;s:13:\"total/voucher\";i:152;s:9:\"user/user\";i:153;s:20:\"user/user_permission\";i:154;s:16:\"module/blockhtml\";i:155;s:15:\"module/category\";i:156;s:16:\"module/slideshow\";i:157;s:18:\"module/product_tab\";}}'),(10,'demo','');
/*!40000 ALTER TABLE `oc_user_group` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_voucher` WRITE;
/*!40000 ALTER TABLE `oc_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_voucher` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_voucher_history` WRITE;
/*!40000 ALTER TABLE `oc_voucher_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_voucher_history` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_voucher_theme` WRITE;
/*!40000 ALTER TABLE `oc_voucher_theme` DISABLE KEYS */;
INSERT INTO `oc_voucher_theme` VALUES (8,'data/demo/canon_eos_5d_2.jpg'),(7,'data/demo/gift-voucher-birthday.jpg'),(6,'data/demo/apple_logo.jpg');
/*!40000 ALTER TABLE `oc_voucher_theme` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_voucher_theme_description` WRITE;
/*!40000 ALTER TABLE `oc_voucher_theme_description` DISABLE KEYS */;
INSERT INTO `oc_voucher_theme_description` VALUES (6,1,'Рождество'),(7,1,'День рождения'),(8,1,'Основной');
/*!40000 ALTER TABLE `oc_voucher_theme_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_weight_class` WRITE;
/*!40000 ALTER TABLE `oc_weight_class` DISABLE KEYS */;
INSERT INTO `oc_weight_class` VALUES (1,'1.00000000'),(2,'1000.00000000');
/*!40000 ALTER TABLE `oc_weight_class` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_weight_class_description` WRITE;
/*!40000 ALTER TABLE `oc_weight_class_description` DISABLE KEYS */;
INSERT INTO `oc_weight_class_description` VALUES (1,1,'Килограммы','кг'),(2,1,'Граммы','г');
/*!40000 ALTER TABLE `oc_weight_class_description` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_zone` WRITE;
/*!40000 ALTER TABLE `oc_zone` DISABLE KEYS */;
INSERT INTO `oc_zone` VALUES (180,11,'Арагацотн','AGT',1),(181,11,'Арарат','ARR',1),(182,11,'Армавир','ARM',1),(183,11,'Гегаркуник','GEG',1),(184,11,'Котайк','KOT',1),(185,11,'Лори','LOR',1),(186,11,'Ширак','SHI',1),(187,11,'Сюник','SYU',1),(188,11,'Тавуш','TAV',1),(189,11,'Вайоц Дзор','VAY',1),(190,11,'Ереван','YER',1),(208,15,'Ali Bayramli','AB',1),(209,15,'Abseron','ABS',1),(210,15,'AgcabAdi','AGC',1),(211,15,'Agdam','AGM',1),(212,15,'Agdas','AGS',1),(213,15,'Agstafa','AGA',1),(214,15,'Agsu','AGU',1),(215,15,'Astara','AST',1),(216,15,'Baki','BA',1),(217,15,'BabAk','BAB',1),(218,15,'BalakAn','BAL',1),(219,15,'BArdA','BAR',1),(220,15,'Beylaqan','BEY',1),(221,15,'Bilasuvar','BIL',1),(222,15,'Cabrayil','CAB',1),(223,15,'Calilabab','CAL',1),(224,15,'Culfa','CUL',1),(225,15,'Daskasan','DAS',1),(226,15,'Davaci','DAV',1),(227,15,'Fuzuli','FUZ',1),(228,15,'Ganca','GA',1),(229,15,'Gadabay','GAD',1),(230,15,'Goranboy','GOR',1),(231,15,'Goycay','GOY',1),(232,15,'Haciqabul','HAC',1),(233,15,'Imisli','IMI',1),(234,15,'Ismayilli','ISM',1),(235,15,'Kalbacar','KAL',1),(236,15,'Kurdamir','KUR',1),(237,15,'Lankaran','LA',1),(238,15,'Lacin','LAC',1),(239,15,'Lankaran','LAN',1),(240,15,'Lerik','LER',1),(241,15,'Masalli','MAS',1),(242,15,'Mingacevir','MI',1),(243,15,'Naftalan','NA',1),(244,15,'Neftcala','NEF',1),(245,15,'Oguz','OGU',1),(246,15,'Ordubad','ORD',1),(247,15,'Qabala','QAB',1),(248,15,'Qax','QAX',1),(249,15,'Qazax','QAZ',1),(250,15,'Qobustan','QOB',1),(251,15,'Quba','QBA',1),(252,15,'Qubadli','QBI',1),(253,15,'Qusar','QUS',1),(254,15,'Saki','SA',1),(255,15,'Saatli','SAT',1),(256,15,'Sabirabad','SAB',1),(257,15,'Sadarak','SAD',1),(258,15,'Sahbuz','SAH',1),(259,15,'Saki','SAK',1),(260,15,'Salyan','SAL',1),(261,15,'Sumqayit','SM',1),(262,15,'Samaxi','SMI',1),(263,15,'Samkir','SKR',1),(264,15,'Samux','SMX',1),(265,15,'Sarur','SAR',1),(266,15,'Siyazan','SIY',1),(267,15,'Susa','SS',1),(268,15,'Susa','SUS',1),(269,15,'Tartar','TAR',1),(270,15,'Tovuz','TOV',1),(271,15,'Ucar','UCA',1),(272,15,'Xankandi','XA',1),(273,15,'Xacmaz','XAC',1),(274,15,'Xanlar','XAN',1),(275,15,'Xizi','XIZ',1),(276,15,'Xocali','XCI',1),(277,15,'Xocavand','XVD',1),(278,15,'Yardimli','YAR',1),(279,15,'Yevlax','YEV',1),(280,15,'Zangilan','ZAN',1),(281,15,'Zaqatala','ZAQ',1),(282,15,'Zardab','ZAR',1),(283,15,'Naxcivan','NX',1),(337,20,'Брест','BR',1),(338,20,'Гомель','HO',1),(339,20,'Минск','HM',1),(340,20,'Гродно','HR',1),(341,20,'Могилев','MA',1),(342,20,'Минская область','MI',1),(343,20,'Витебск','VI',1),(1242,80,'Abkhazia','AB',1),(1243,80,'Ajaria','AJ',1),(1244,80,'Tbilisi','TB',1),(1245,80,'Guria','GU',1),(1246,80,'Imereti','IM',1),(1247,80,'Kakheti','KA',1),(1248,80,'Kvemo Kartli','KK',1),(1249,80,'Mtskheta-Mtianeti','MM',1),(1250,80,'Racha Lechkhumi and Kvemo Svanet','RL',1),(1251,80,'Samegrelo-Zemo Svaneti','SZ',1),(1252,80,'Samtskhe-Javakheti','SJ',1),(1253,80,'Shida Kartli','SK',1),(1716,109,'Алматинская область','AL',1),(1717,109,'Алматы - город республ-го значения','AC',1),(1718,109,'Акмолинская область','AM',1),(1719,109,'Актюбинская область','AQ',1),(1720,109,'Астана - город республ-го значения','AS',1),(1721,109,'Атырауская область','AT',1),(1722,109,'Западно-Казахстанская область','BA',1),(1723,109,'Байконур - город республ-го значения','BY',1),(1724,109,'Мангистауская область','MA',1),(1725,109,'Южно-Казахстанская область','ON',1),(1726,109,'Павлодарская область','PA',1),(1727,109,'Карагандинская область','QA',1),(1728,109,'Костанайская область','QO',1),(1729,109,'Кызылординская область','QY',1),(1730,109,'Восточно-Казахстанская область','SH',1),(1731,109,'Северо-Казахстанская область','SO',1),(1732,109,'Жамбылская область','ZH',1),(1793,115,'Bishkek','GB',1),(1794,115,'Batken','B',1),(1795,115,'Chu','C',1),(1796,115,'Jalal-Abad','J',1),(1797,115,'Naryn','N',1),(1798,115,'Osh','O',1),(1799,115,'Talas','T',1),(1800,115,'Ysyk-Kol','Y',1),(2181,140,'Gagauzia','GA',1),(2182,140,'Chisinau','CU',1),(2183,140,'Balti','BA',1),(2184,140,'Cahul','CA',1),(2185,140,'Edinet','ED',1),(2186,140,'Lapusna','LA',1),(2187,140,'Orhei','OR',1),(2188,140,'Soroca','SO',1),(2189,140,'Tighina','TI',1),(2190,140,'Ungheni','UN',1),(2191,140,'St‚nga Nistrului','SN',1),(2721,176,'Республика Хакасия','KK',1),(2722,176,'Московская область','MOS',1),(2723,176,'Чукотский АО','CHU',1),(2724,176,'Архангельская область','ARK',1),(2725,176,'Астраханская область','AST',1),(2726,176,'Алтайский край','ALT',1),(2727,176,'Белгородская область','BEL',1),(2728,176,'Еврейская АО','YEV',1),(2729,176,'Амурская область','AMU',1),(2730,176,'Брянская область','BRY',1),(2731,176,'Чувашская Республика','CU',1),(2732,176,'Челябинская область','CHE',1),(2733,176,'Карачаево-Черкеcсия','KC',1),(2734,176,'Забайкальский край','ZAB',1),(2735,176,'Ленинградская область','LEN',1),(2736,176,'Республика Калмыкия','KL',1),(2737,176,'Сахалинская область','SAK',1),(2738,176,'Республика Алтай','AL',1),(2739,176,'Чеченская Республика','CE',1),(2740,176,'Иркутская область','IRK',1),(2741,176,'Ивановская область','IVA',1),(2742,176,'Удмуртская Республика','UD',1),(2743,176,'Калининградская область','KGD',1),(2744,176,'Калужская область','KLU',1),(2746,176,'Республика Татарстан','TA',1),(2747,176,'Кемеровская область','KEM',1),(2748,176,'Хабаровский край','KHA',1),(2749,176,'Ханты-Мансийский АО - Югра','KHM',1),(2750,176,'Костромская область','KOS',1),(2751,176,'Краснодарский край','KDA',1),(2752,176,'Красноярский край','KYA',1),(2754,176,'Курганская область','KGN',1),(2755,176,'Курская область','KRS',1),(2756,176,'Республика Тыва','TY',1),(2757,176,'Липецкая область','LIP',1),(2758,176,'Магаданская область','MAG',1),(2759,176,'Республика Дагестан','DA',1),(2760,176,'Республика Адыгея','AD',1),(2761,176,'Москва','MOW',1),(2762,176,'Мурманская область','MUR',1),(2763,176,'Республика Кабардино-Балкария','KB',1),(2764,176,'Ненецкий АО','NEN',1),(2765,176,'Республика Ингушетия','IN',1),(2766,176,'Нижегородская область','NIZ',1),(2767,176,'Новгородская область','NGR',1),(2768,176,'Новосибирская область','NVS',1),(2769,176,'Омская область','OMS',1),(2770,176,'Орловская область','ORL',1),(2771,176,'Оренбургская область','ORE',1),(2773,176,'Пензенская область','PNZ',1),(2774,176,'Пермский край','PER',1),(2775,176,'Камчатский край','KAM',1),(2776,176,'Республика Карелия','KR',1),(2777,176,'Псковская область','PSK',1),(2778,176,'Ростовская область','ROS',1),(2779,176,'Рязанская область','RYA',1),(2780,176,'Ямало-Ненецкий АО','YAN',1),(2781,176,'Самарская область','SAM',1),(2782,176,'Республика Мордовия','MO',1),(2783,176,'Саратовская область','SAR',1),(2784,176,'Смоленская область','SMO',1),(2785,176,'Санкт-Петербург','SPE',1),(2786,176,'Ставропольский край','STA',1),(2787,176,'Республика Коми','KO',1),(2788,176,'Тамбовская область','TAM',1),(2789,176,'Томская область','TOM',1),(2790,176,'Тульская область','TUL',1),(2792,176,'Тверская область','TVE',1),(2793,176,'Тюменская область','TYU',1),(2794,176,'Республика Башкортостан','BA',1),(2795,176,'Ульяновская область','ULY',1),(2796,176,'Республика Бурятия','BU',1),(2798,176,'Республика Северная Осетия','SE',1),(2799,176,'Владимирская область','VLA',1),(2800,176,'Приморский край','PRI',1),(2801,176,'Волгоградская область','VGG',1),(2802,176,'Вологодская область','VLG',1),(2803,176,'Воронежская область','VOR',1),(2804,176,'Кировская область','KIR',1),(2805,176,'Республика Саха','SA',1),(2806,176,'Ярославская область','YAR',1),(2807,176,'Свердловская область','SVE',1),(2808,176,'Республика Марий Эл','ME',1),(3160,207,'Gorno-Badakhstan','GB',1),(3161,207,'Khatlon','KT',1),(3162,207,'Sughd','SU',1),(3396,216,'Ahal Welayaty','A',1),(3397,216,'Balkan Welayaty','B',1),(3398,216,'Dashhowuz Welayaty','D',1),(3399,216,'Lebap Welayaty','L',1),(3400,216,'Mary Welayaty','M',1),(3480,220,'Черкассы','CK',1),(3481,220,'Чернигов','CH',1),(3482,220,'Черновцы','CV',1),(3483,220,'Крым','CR',1),(3484,220,'Днепропетровск','DN',1),(3485,220,'Донецк','DO',1),(3486,220,'Ивано-Франковск','IV',1),(3487,220,'Харьков','KH',1),(3488,220,'Хмельницкий','KM',1),(3489,220,'Кировоград','KR',1),(3490,220,'Киевская область','KV',1),(3491,220,'Киев','KY',1),(3492,220,'Луганск','LU',1),(3493,220,'Львов','LV',1),(3494,220,'Николаев','MY',1),(3495,220,'Одесса','OD',1),(3496,220,'Полтава','PO',1),(3497,220,'Ровно','RI',1),(3498,220,'Севастополь','SE',1),(3499,220,'Сумы','SU',1),(3500,220,'Тернополь','TE',1),(3501,220,'Винница','VI',1),(3502,220,'Луцк','VO',1),(3503,220,'Ужгород','ZK',1),(3504,220,'Запорожье','ZA',1),(3505,220,'Житомир','ZH',1),(3506,220,'Херсон','KE',1),(3706,226,'Andijon','AN',1),(3707,226,'Buxoro','BU',1),(3708,226,'Farg\'ona','FA',1),(3709,226,'Jizzax','JI',1),(3710,226,'Namangan','NG',1),(3711,226,'Navoiy','NW',1),(3712,226,'Qashqadaryo','QA',1),(3713,226,'Qoraqalpog\'iston Republikasi','QR',1),(3714,226,'Samarqand','SA',1),(3715,226,'Sirdaryo','SI',1),(3716,226,'Surxondaryo','SU',1),(3717,226,'Toshkent City','TK',1),(3718,226,'Toshkent Region','TO',1),(3719,226,'Xorazm','XO',1);
/*!40000 ALTER TABLE `oc_zone` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `oc_zone_to_geo_zone` WRITE;
/*!40000 ALTER TABLE `oc_zone_to_geo_zone` DISABLE KEYS */;
INSERT INTO `oc_zone_to_geo_zone` VALUES (57,176,0,3,'2010-02-26 22:33:24','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `oc_zone_to_geo_zone` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

