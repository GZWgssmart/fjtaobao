CREATE DATABASE IF NOT EXISTS d_goods DEFAULT CHARSET utf8 COLLATE utf8_general_ci;

use d_goods;

/**
	文档表
*/
DROP TABLE IF EXISTS `t_file`;
CREATE TABLE `t_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文档主键id',
  `name` varchar(255) DEFAULT NULL COMMENT '文档名字',
  `days` int(11) DEFAULT NULL COMMENT '查询天数',
  `brand` varchar(255) DEFAULT NULL COMMENT '商品品牌',
  `ptype` varchar(255) DEFAULT NULL COMMENT '商品类型',
  `pstatus` varchar(255) DEFAULT NULL COMMENT '商品状态',
  `ftype` varchar(255) DEFAULT NULL COMMENT '文档类型',
  `fstatus` varchar(255) DEFAULT NULL COMMENT '文档状态',
  `fpath` varchar(500) DEFAULT NULL COMMENT '文件路径',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/**
	商品表
*/
DROP TABLE IF EXISTS `t_product`;
CREATE TABLE `t_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品主键',
  `productno` varchar(255) DEFAULT NULL COMMENT '商品编号',
  `fileid` int(11) DEFAULT NULL COMMENT '文档id',
  `days` int(11) DEFAULT NULL COMMENT '周期',
  `name` varchar(255) DEFAULT NULL COMMENT '商品名字',
  `brand` varchar(255) DEFAULT NULL COMMENT '商品品牌',
  `status` varchar(255) DEFAULT NULL COMMENT '商品状态',
  `price` double DEFAULT NULL COMMENT '商品价格',
  `totalsales` int(11) DEFAULT NULL COMMENT '全国总销量',
  `totalstock` int(11) DEFAULT NULL COMMENT '全国总库存',
  `bjsales` int(11) DEFAULT NULL COMMENT '北京销量',
  `bjstock` int(11) DEFAULT NULL COMMENT '北京库存',
  `shsales` int(11) DEFAULT NULL COMMENT '上海销量',
  `shstock` int(11) DEFAULT NULL COMMENT '上海库存',
  `gzsales` int(11) DEFAULT NULL COMMENT '广州销量',
  `gzstock` int(11) DEFAULT NULL COMMENT '广州库存',
  `cdsales` int(11) DEFAULT NULL COMMENT '成都销量',
  `cdstock` int(11) DEFAULT NULL COMMENT '成都库存',
  `whsales` int(11) DEFAULT NULL COMMENT '武汉销量',
  `whstock` int(11) DEFAULT NULL COMMENT '武汉库存',
  `sysales` int(11) DEFAULT NULL COMMENT '沈阳销量',
  `systock` int(11) DEFAULT NULL COMMENT '沈阳库存',
  `xasales` int(11) DEFAULT NULL COMMENT '西安销量',
  `xastock` int(11) DEFAULT NULL COMMENT '西安库存',
  `gasales` int(11) DEFAULT NULL COMMENT '固安销量',
  `gastock` int(11) DEFAULT NULL COMMENT '固安库存',
  PRIMARY KEY (`id`),
  KEY `idx_file_id` (`fileid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

