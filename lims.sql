/*
 Navicat Premium Data Transfer

 Source Server         : 本地mysql
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : lims

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 18/10/2023 23:21:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for device
-- ----------------------------
DROP TABLE IF EXISTS `device`;
CREATE TABLE `device`  (
  `device_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '设备ID',
  `image_url` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '设备图片url',
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '设备名称',
  `status` enum('AVAILABLE','BORROWED','REPAIRING','DAMAGED') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'AVAILABLE' COMMENT '设备状态',
  `laboratory_id` int(0) NULL DEFAULT NULL COMMENT '所属实验室',
  PRIMARY KEY (`device_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1029 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of device
-- ----------------------------
INSERT INTO `device` VALUES (1000, 'http://127.0.0.1:8080/image/image0.jpg', '200kV透射电子显微镜', 'BORROWED', 1000);
INSERT INTO `device` VALUES (1001, 'http://127.0.0.1:8080/image/image1.jpg', '120kV透射电子显微镜', 'AVAILABLE', 1000);
INSERT INTO `device` VALUES (1002, 'http://127.0.0.1:8080/image/image2.jpg', '场发射透射电子显微镜', 'BORROWED', 1001);
INSERT INTO `device` VALUES (1003, 'http://127.0.0.1:8080/image/image3.jpg', '场发射扫描电子显微镜', 'AVAILABLE', 1000);
INSERT INTO `device` VALUES (1004, 'http://127.0.0.1:8080/image/image4.jpg', '场发射扫描电子显微镜', 'AVAILABLE', 1000);
INSERT INTO `device` VALUES (1005, 'http://127.0.0.1:8080/image/image5.jpg', '场发射扫描电子显微镜', 'AVAILABLE', 1001);
INSERT INTO `device` VALUES (1006, 'http://127.0.0.1:8080/image/image6.jpg', '400MHz核磁共振波谱仪', 'AVAILABLE', 1002);
INSERT INTO `device` VALUES (1007, 'http://127.0.0.1:8080/image/image7.jpg', '等离子体发射光谱仪', 'AVAILABLE', 1003);
INSERT INTO `device` VALUES (1008, 'http://127.0.0.1:8080/image/image8.jpg', 'X射线多晶衍射仪', 'AVAILABLE', 1004);
INSERT INTO `device` VALUES (1009, 'http://127.0.0.1:8080/image/image9.jpg', '傅立叶变换红外光谱仪', 'AVAILABLE', 1003);
INSERT INTO `device` VALUES (1010, 'http://127.0.0.1:8080/image/image10.jpg', '共聚焦显微拉曼光谱仪', 'AVAILABLE', 1003);
INSERT INTO `device` VALUES (1011, 'http://127.0.0.1:8080/image/image11.jpg', '600MHz傅里叶变换核磁共振谱仪', 'AVAILABLE', 1002);
INSERT INTO `device` VALUES (1012, 'http://127.0.0.1:8080/image/image12.jpg', '大体积热解吸/气相色谱仪', 'AVAILABLE', 1005);
INSERT INTO `device` VALUES (1013, 'http://127.0.0.1:8080/image/image13.jpg', '气质联用仪', 'AVAILABLE', 1005);
INSERT INTO `device` VALUES (1014, 'http://127.0.0.1:8080/image/image14.jpg', '气体专用检测气相色谱仪', 'AVAILABLE', 1005);
INSERT INTO `device` VALUES (1015, 'http://127.0.0.1:8080/image/image15.jpg', '气相色谱仪', 'AVAILABLE', 1005);
INSERT INTO `device` VALUES (1016, 'http://127.0.0.1:8080/image/image16.jpg', '热脱附气相色谱仪', 'AVAILABLE', 1005);
INSERT INTO `device` VALUES (1017, 'http://127.0.0.1:8080/image/image17.jpg', '气相色谱仪', 'AVAILABLE', 1005);
INSERT INTO `device` VALUES (1018, 'http://127.0.0.1:8080/image/image18.jpg', '顶空气相色谱仪', 'AVAILABLE', 1005);
INSERT INTO `device` VALUES (1019, 'http://127.0.0.1:8080/image/image19.jpg', '液相色谱仪', 'AVAILABLE', 1005);
INSERT INTO `device` VALUES (1020, 'http://127.0.0.1:8080/image/image20.jpg', '液相色谱仪', 'AVAILABLE', 1005);
INSERT INTO `device` VALUES (1021, 'http://127.0.0.1:8080/image/image21.jpg', '高压液相色谱仪', 'AVAILABLE', 1005);
INSERT INTO `device` VALUES (1022, 'http://127.0.0.1:8080/image/image22.jpg', '高效液相色谱仪', 'AVAILABLE', 1005);
INSERT INTO `device` VALUES (1023, 'http://127.0.0.1:8080/image/image23.jpg', '液相色谱仪', 'AVAILABLE', 1005);
INSERT INTO `device` VALUES (1024, 'http://127.0.0.1:8080/image/image24.jpg', '冷冻超薄切片机', 'AVAILABLE', 1000);
INSERT INTO `device` VALUES (1025, 'http://127.0.0.1:8080/image/image25.jpg', '定点修块抛光机', 'AVAILABLE', 1000);
INSERT INTO `device` VALUES (1026, 'http://127.0.0.1:8080/image/image26.jpg', '离子减薄仪', 'AVAILABLE', 1000);
INSERT INTO `device` VALUES (1027, 'http://127.0.0.1:8080/image/image27.jpg', '三重四极杆气相色谱-质谱联用仪', 'AVAILABLE', 1005);
INSERT INTO `device` VALUES (1028, 'http://127.0.0.1:8080/image/image28.jpg', '综合物性测量系统', 'AVAILABLE', 1006);
INSERT INTO `device` VALUES (1029, 'http://127.0.0.1:8080/image/image29.jpg', 'X射线光电子能谱仪', 'AVAILABLE', 1003);

-- ----------------------------
-- Table structure for device_appendix
-- ----------------------------
DROP TABLE IF EXISTS `device_appendix`;
CREATE TABLE `device_appendix`  (
  `device_appendix_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '附件ID',
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '附件名',
  `device_id` int(0) NULL DEFAULT NULL COMMENT '关联的设备ID',
  PRIMARY KEY (`device_appendix_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1034 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of device_appendix
-- ----------------------------
INSERT INTO `device_appendix` VALUES (1000, '牛津仪器IET250能谱仪、美国Gatan公司832 CCD相机', 1000);
INSERT INTO `device_appendix` VALUES (1001, '单倾样品杆、双倾样品杆、铍双倾样品杆、四样品样品杆', 1000);
INSERT INTO `device_appendix` VALUES (1002, 'Quorum K850临界点干燥仪、JEMS软件包等', 1000);
INSERT INTO `device_appendix` VALUES (1003, 'AZtec X-Max 80 TEM', 1001);
INSERT INTO `device_appendix` VALUES (1004, '美国Gatan公司832 CCD相机', 1001);
INSERT INTO `device_appendix` VALUES (1005, 'CCD数字成像系统，X射线能谱仪（EDS），扫描透射（STEM），高角环形暗场探测器（HAADF）', 1002);
INSERT INTO `device_appendix` VALUES (1006, 'Oxford X-Max 50 电制冷X射线能谱仪', 1003);
INSERT INTO `device_appendix` VALUES (1007, '能量选择型EsB探测器，集成式AsB探测器，高效In-lens SE 探测器，Everhart-Thornley探测器，红外CCD', 1003);
INSERT INTO `device_appendix` VALUES (1008, 'Quorum Q150TES全自动高真空镀膜系统、EMITECH K750X冷冻干燥仪', 1003);
INSERT INTO `device_appendix` VALUES (1009, '肖特基热场发射电子枪', 1004);
INSERT INTO `device_appendix` VALUES (1010, 'Bruker Dual QUANTAX 200 with XFlash6 （双探头）', 1004);
INSERT INTO `device_appendix` VALUES (1011, '布鲁克能谱仪', 1005);
INSERT INTO `device_appendix` VALUES (1012, '冷台', 1005);
INSERT INTO `device_appendix` VALUES (1013, '400MHz 超导磁体', 1006);
INSERT INTO `device_appendix` VALUES (1014, '可测1H, 19F，13C，31P，11B，15N等核以及相关二维谱。', 1006);
INSERT INTO `device_appendix` VALUES (1015, '水平炬管标准进样系统；垂直炬管标准进样系统； 氢氟酸进样系统； 标准油品进样系统； 氢化物发生器', 1007);
INSERT INTO `device_appendix` VALUES (1016, '陶瓷光管、XYZ高精度样品台、LynxEye半导体阵列探测器、Goebel镜、PDF-2卡片库', 1008);
INSERT INTO `device_appendix` VALUES (1017, '高温（≤1200℃）附件，薄膜测量掠射、反射附件，小角散射附件', 1008);
INSERT INTO `device_appendix` VALUES (1018, '原始数据直接检索软件，TOPAS P 和 TOPAS R 软件，薄膜分析软件（带薄膜材料数据库），小角散射软件', 1008);
INSERT INTO `device_appendix` VALUES (1019, '反射附件', 1009);
INSERT INTO `device_appendix` VALUES (1020, '提供无机矿物、有机物质数据库和高分子数据库', 1010);
INSERT INTO `device_appendix` VALUES (1021, '14.09 Tesla，具有低液氦与液氮消耗、高稳定性、高均匀性、抗干扰超-超屏蔽超导磁体；', 1011);
INSERT INTO `device_appendix` VALUES (1022, '前处理设备，热解析、热脱附，可固体进样', 1012);
INSERT INTO `device_appendix` VALUES (1023, 'PTV程序升温进样器，电子捕获检测器（ECD），火焰光度检测器（FPD），SGE裂解器，直接进样杆与控制装置', 1013);
INSERT INTO `device_appendix` VALUES (1024, '高温裂解大分子，联用GC-MS，可固体/液体微量进样', 1013);
INSERT INTO `device_appendix` VALUES (1025, '液相色谱分析系统适用于大多数的有机化合物的分离分析，与气相色谱互为补充，广泛应用于化工、医药、生化、食品以及环境保护等方面。', 1020);
INSERT INTO `device_appendix` VALUES (1026, '温度控制范围4℃~60℃，具有预热功能；试剂管振幅为6mm，频率0/0.25/0.5/1/2/3Hz可调', 1024);
INSERT INTO `device_appendix` VALUES (1027, '工具前进步进有100µm、10µm、1µm、0.5µm；工具轴承转速范围300~20000rpm；样品处理过程可由蠕动泵自动泵取冷却液/研磨液，并可接吸尘器。', 1024);
INSERT INTO `device_appendix` VALUES (1028, '采用平衡断裂法原理；可自动复位的碳化钨切割滚轮；切割压力5档连续可调；兼容玻璃条规格：6.4mm，8mm，10mm', 1024);
INSERT INTO `device_appendix` VALUES (1029, '可预先设定研磨厚度，控制样品机械减薄至70-100μm，精确控制样品厚度，快速简便的打磨出平面样品，其内置测厚工具显示其微米级厚度', 1026);
INSERT INTO `device_appendix` VALUES (1030, '可控制精度：1μm，研磨载荷：0～40g，可实时读取样品厚度,配有体式显微镜，可精确定位与表面观察', 1026);
INSERT INTO `device_appendix` VALUES (1031, '自动进样塔位数16位；进样量线性：≥99%； 进样范围：0-50 uL', 1027);
INSERT INTO `device_appendix` VALUES (1032, '定性及定量分析软件，NIST谱库: NIST 17最新正版谱库和化学结构式库，包含至少24.3万张带名称、化学结构和保留指数的质谱图', 1027);
INSERT INTO `device_appendix` VALUES (1033, '振动样品磁强计选件（VSM）', 1028);
INSERT INTO `device_appendix` VALUES (1034, '直流电输运选件（DC Resistivity）', 1028);

-- ----------------------------
-- Table structure for device_apply
-- ----------------------------
DROP TABLE IF EXISTS `device_apply`;
CREATE TABLE `device_apply`  (
  `device_apply_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '申请ID',
  `borrow_reason` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '申请理由',
  `promise_timestamp` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '承诺归还时间',
  `apply_timestamp` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '使用者申请时间',
  `grant_timestamp` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '管理员授权时间',
  `return_timestamp` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '使用者归还时间',
  `finish_timestamp` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '管理员归档时间',
  `status` enum('APPLIED','GRANTED','RETURNED','FINISHED','DENIED','CANCELED') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '申请状态',
  `device_id` int(0) NULL DEFAULT NULL COMMENT '申请的设备',
  `user_id` int(0) NULL DEFAULT NULL COMMENT '申请人',
  PRIMARY KEY (`device_apply_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of device_apply
-- ----------------------------
INSERT INTO `device_apply` VALUES (1, '实验需要，申请借用一周', '1617811200000', '1617707219282', NULL, NULL, NULL, 'GRANTED', 1000, 4);
INSERT INTO `device_apply` VALUES (2, '比较感兴趣，希望借来研究一下', '1617821200000', '1617707269282', NULL, NULL, NULL, 'APPLIED', 1002, 4);

-- ----------------------------
-- Table structure for device_comment
-- ----------------------------
DROP TABLE IF EXISTS `device_comment`;
CREATE TABLE `device_comment`  (
  `device_comment_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '设备评论ID',
  `comment` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '评论内容',
  `comment_timestamp` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '评论时间',
  `device_id` int(0) NULL DEFAULT NULL COMMENT '评论的设备',
  `user_id` int(0) NULL DEFAULT NULL COMMENT '评论者',
  PRIMARY KEY (`device_comment_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of device_comment
-- ----------------------------
INSERT INTO `device_comment` VALUES (1, '设备近期维修，请三天后再申请', '1617707259088', 1000, 2);
INSERT INTO `device_comment` VALUES (2, '我想预约使用该设备', '1617707359088', 1000, 4);

-- ----------------------------
-- Table structure for device_property
-- ----------------------------
DROP TABLE IF EXISTS `device_property`;
CREATE TABLE `device_property`  (
  `device_property_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '属性ID',
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '属性名',
  `value` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '属性值',
  `device_id` int(0) NULL DEFAULT NULL COMMENT '关联的设备ID',
  PRIMARY KEY (`device_property_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1079 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of device_property
-- ----------------------------
INSERT INTO `device_property` VALUES (1000, '型号规格', 'JEM-2100HR', 1000);
INSERT INTO `device_property` VALUES (1001, '线分辨率', '0.14 nm', 1000);
INSERT INTO `device_property` VALUES (1002, '电子枪', 'LaB6（六硼化镧）', 1000);
INSERT INTO `device_property` VALUES (1003, '点分辨率', '0.23 nm', 1000);
INSERT INTO `device_property` VALUES (1004, '型号规格', 'JEM-1400 PLUS', 1001);
INSERT INTO `device_property` VALUES (1005, '电子枪', '钨灯丝或LaB6（六硼化镧）', 1001);
INSERT INTO `device_property` VALUES (1006, '晶格分辨率', '0.2nm', 1001);
INSERT INTO `device_property` VALUES (1007, '加速电压', '40kV～120kV', 1001);
INSERT INTO `device_property` VALUES (1008, 'TEM点分辨率', '0.25 nm', 1002);
INSERT INTO `device_property` VALUES (1009, '型号规格', 'FEI Talos F200X', 1002);
INSERT INTO `device_property` VALUES (1010, '电子枪', '热场发射', 1002);
INSERT INTO `device_property` VALUES (1011, '加速电压', '200 kV', 1002);
INSERT INTO `device_property` VALUES (1012, '分辨率', '0.8nm@15kV，1.6nm@1 kV，4.0nm@0.1 kV', 1003);
INSERT INTO `device_property` VALUES (1013, '放大倍数', 'SE模式×12～ 1,000kx，EsB检测器时×100～1,000kx', 1003);
INSERT INTO `device_property` VALUES (1014, '型号规格', 'ZEISS Ultra 55', 1003);
INSERT INTO `device_property` VALUES (1015, '能谱分辨率', '≤129eV (MnKα处,计数率为20000cps)', 1003);
INSERT INTO `device_property` VALUES (1016, '分辨率', '0.6nm@15kV，1.1nm@1 kV，1.2nm@0.5kV', 1004);
INSERT INTO `device_property` VALUES (1017, '放大倍数', '20-2,000,000', 1004);
INSERT INTO `device_property` VALUES (1018, '型号规格', 'ZEISS Gemini 500', 1004);
INSERT INTO `device_property` VALUES (1019, '加速电压', '0.02 kV ～ 30 kV', 1004);
INSERT INTO `device_property` VALUES (1020, '分辨率 (低真空模式)', '1.4 nm@30 kV (SE), 2.5 nm@30 kV (BSE), 3.0 nm@3  kV (SE)', 1005);
INSERT INTO `device_property` VALUES (1021, '型号规格', 'FEI Quanta 250 FEG', 1005);
INSERT INTO `device_property` VALUES (1022, '分辨率 （高真空模式）', '1.0 nm@30 kV(SE), 2.5 nm@30 kV(BSE), 3.0 nm@1 kV(SE)', 1005);
INSERT INTO `device_property` VALUES (1023, '电子枪', '肖特基热场发射', 1005);
INSERT INTO `device_property` VALUES (1024, '型号规格', 'varian  400MHz', 1006);
INSERT INTO `device_property` VALUES (1025, '灵敏度', '1H≥220:1 (0.1％EB)', 1006);
INSERT INTO `device_property` VALUES (1026, '型号规格', 'SPECTRO ARCOS MV', 1007);
INSERT INTO `device_property` VALUES (1027, '分析模式', '定性、半定量、定量', 1007);
INSERT INTO `device_property` VALUES (1028, '分析速度', '≥每分钟60个元素，实施实时背景校正。', 1007);
INSERT INTO `device_property` VALUES (1029, '型号规格', 'BRUKER D8 ADVANCE', 1008);
INSERT INTO `device_property` VALUES (1030, 'LynxEye阵列探测器', '背景：低于0.1cps ; \r\n最大计数：大于1.3×108 cps', 1008);
INSERT INTO `device_property` VALUES (1031, 'X光管', '陶瓷X光管，最大功率：2.2KW，最大管压：60KV，最大管流：80mA', 1008);
INSERT INTO `device_property` VALUES (1032, '角度重现性', '+/－0.0001度,最小步长:0.0001度', 1008);
INSERT INTO `device_property` VALUES (1033, '分辨率', '0.09cm-1；0.4cm-1', 1009);
INSERT INTO `device_property` VALUES (1034, '型号规格', 'Nicolet 6700', 1009);
INSERT INTO `device_property` VALUES (1035, '光谱范围', '27,000-15cm-1', 1009);
INSERT INTO `device_property` VALUES (1036, '型号规格', 'inVia', 1010);
INSERT INTO `device_property` VALUES (1037, '最低波数', '325nm：200 cm-1，532nm、633nm、785nm：50 cm-1', 1010);
INSERT INTO `device_property` VALUES (1038, '光谱分辨率', '1 cm-1', 1010);
INSERT INTO `device_property` VALUES (1039, '激发光波长', '325nm，532nm，633nm，785nm', 1010);
INSERT INTO `device_property` VALUES (1040, '型号规格', 'Bruker AVANCE NEO', 1011);
INSERT INTO `device_property` VALUES (1041, '型号规格', 'GC 7890B', 1012);
INSERT INTO `device_property` VALUES (1042, '质量数范围', '1～1050amu；单位质量分辨率：1 amu；', 1013);
INSERT INTO `device_property` VALUES (1043, '型号规格', 'Thermo DSC', 1013);
INSERT INTO `device_property` VALUES (1044, '扫描速度', '0.001-10000 amu/sec', 1013);
INSERT INTO `device_property` VALUES (1045, '型号规格', 'GC9890', 1014);
INSERT INTO `device_property` VALUES (1046, '型号规格', 'GC5890C', 1015);
INSERT INTO `device_property` VALUES (1047, '型号规格', 'GC5890C', 1016);
INSERT INTO `device_property` VALUES (1048, '型号规格', 'GC9890A', 1017);
INSERT INTO `device_property` VALUES (1049, '型号规格', 'GC9890E', 1018);
INSERT INTO `device_property` VALUES (1050, '进样方式', '全自动顶空进样，配 20 ml 顶空瓶', 1018);
INSERT INTO `device_property` VALUES (1051, '型号规格', '岛津LC-20A', 1019);
INSERT INTO `device_property` VALUES (1052, '型号规格', '岛津LC-6A', 1020);
INSERT INTO `device_property` VALUES (1053, '系统组成', '输液泵、检测器、柱室、进样器等被分别做成独立的单元，所以可按照自己的需要将这些单元组合使用，十分方便。', 1020);
INSERT INTO `device_property` VALUES (1054, '输液泵', '系统配备3台输液泵，既可独立控制进行等流量洗脱，又能构成二元或三元梯度洗脱，每泵输液流量范围为0.01～9.9ml/min.', 1020);
INSERT INTO `device_property` VALUES (1055, '型号规格', '1260 infinity II', 1021);
INSERT INTO `device_property` VALUES (1056, '检测器', '二极管阵列检测器，荧光检测器，ELSD检测器', 1021);
INSERT INTO `device_property` VALUES (1057, '型号规格', 'Surwit LC-10Tvp', 1022);
INSERT INTO `device_property` VALUES (1058, '型号规格', '岛津LC-10AD', 1023);
INSERT INTO `device_property` VALUES (1059, '型号规格', 'LEICA UC7/ FC7', 1024);
INSERT INTO `device_property` VALUES (1060, '刀台', '自动马达驱动刀台，N-S移动范围10mm，W-E移动范围25mm', 1024);
INSERT INTO `device_property` VALUES (1061, '冷冻超薄切片系统', 'UC7主机一体化控制；工作范围-15℃~ -185℃，烘烤温度110℃；液氮罐容量25L', 1024);
INSERT INTO `device_property` VALUES (1062, '类型', '重力切片设计，无震动', 1024);
INSERT INTO `device_property` VALUES (1063, '型号规格', 'Leica EM TXP', 1025);
INSERT INTO `device_property` VALUES (1064, '步进', '100µm、10µm、1µm、0.5µm', 1025);
INSERT INTO `device_property` VALUES (1065, '转速范围', '300~20000rpm', 1025);
INSERT INTO `device_property` VALUES (1066, '离子束能量', '0.1～8.0KeV连续可调', 1026);
INSERT INTO `device_property` VALUES (1067, '型号规格', 'Gatan PIPSII 695', 1026);
INSERT INTO `device_property` VALUES (1068, '减薄角度范围', '+10°到-10° 具有双束调制系统，可进行小于 1°的单、双面减薄', 1026);
INSERT INTO `device_property` VALUES (1069, '离子束强度', '可达10mA/cm2', 1026);
INSERT INTO `device_property` VALUES (1070, '型号规格', '7000D', 1027);
INSERT INTO `device_property` VALUES (1071, '检测性能', '', 1027);
INSERT INTO `device_property` VALUES (1072, '柱温箱部分', '操作温度：室温以上5℃至450℃；温度步阶级设定：1℃ ，程序升温间隔 0.1℃；最大升温速度：0～120℃/min ，可根据需要拓展至1000℃/min；程序升温：19 阶20个温度平台', 1027);
INSERT INTO `device_property` VALUES (1073, '质谱部分', '气质接口温度: 独立控温，最高温度可到350℃；离子源温度：独立控温，最高温度可到350℃ ，质量分析器：软件能独立控制四级杆温度，106 到200 ℃连续可调', 1027);
INSERT INTO `device_property` VALUES (1074, '型号规格', 'PPMS DynaCool-9', 1028);
INSERT INTO `device_property` VALUES (1075, '温度稳定性', '±0.1% for T<20K （典型值）；±0.02% for T>20K （典型值）', 1028);
INSERT INTO `device_property` VALUES (1076, '降温时间', '从300K降至2K稳定约1h', 1028);
INSERT INTO `device_property` VALUES (1077, '温度范围', '2K-400K', 1028);
INSERT INTO `device_property` VALUES (1078, '型号规格', 'AXIS SUPRA', 1029);
INSERT INTO `device_property` VALUES (1079, '主要技术指标', '平行成像XPS空间分辨：1μm；', 1029);

-- ----------------------------
-- Table structure for device_record
-- ----------------------------
DROP TABLE IF EXISTS `device_record`;
CREATE TABLE `device_record`  (
  `device_record_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '设备使用记录ID',
  `record_timestamp` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '记录时间',
  `record_image_url` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '设备使用情况图片',
  `description` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '说明',
  `user_id` int(0) NULL DEFAULT NULL COMMENT '使用者',
  `device_id` int(0) NULL DEFAULT NULL COMMENT '关联的设备',
  PRIMARY KEY (`device_record_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of device_record
-- ----------------------------
INSERT INTO `device_record` VALUES (1, '1617707239811', 'http://127.0.0.1:8080/image/image12.jpg', '设备使用中，状态正常', 4, 1000);

-- ----------------------------
-- Table structure for laboratory
-- ----------------------------
DROP TABLE IF EXISTS `laboratory`;
CREATE TABLE `laboratory`  (
  `laboratory_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '实验室ID',
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '实验室名',
  `location` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '实验室地点',
  `contact` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系方式',
  `user_id` int(0) NULL DEFAULT NULL COMMENT '创建者',
  PRIMARY KEY (`laboratory_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1006 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of laboratory
-- ----------------------------
INSERT INTO `laboratory` VALUES (1000, '分析测试中心电镜室', '大学城校区理5栋111室', 'emlab@scnu.edu.cn', 2);
INSERT INTO `laboratory` VALUES (1001, '化学学院', '大学城校区理2栋115室', 'emlab@scnu.edu.cn', 2);
INSERT INTO `laboratory` VALUES (1002, '分析测试中心核磁室', '大学城校区理2栋104', 'wang3525@126.com', 3);
INSERT INTO `laboratory` VALUES (1003, '分析测试中心光谱室', '大学城校区理2栋325', 'huashizhao@126.com;251620363@qq.com', 2);
INSERT INTO `laboratory` VALUES (1004, '分析测试中心X衍射室', '理 5栋108', 'xrdlab@scnu.edu.cn', 3);
INSERT INTO `laboratory` VALUES (1005, '分析测试中心色谱质谱室', '大学城校区理2栋224', '147981385@qq.com', 2);
INSERT INTO `laboratory` VALUES (1006, '华南先进光电子研究院', '大学城校区理5栋526室', 'zhangah1110@163.com', 3);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '姓名',
  `email` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '邮箱',
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '存的其实是密码摘要',
  `avatar` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'http://127.0.0.1:8080/image/default.jpg' COMMENT '用户头像url',
  `role` enum('SUPER_ADMIN','ADMIN','NORMAL') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'NORMAL' COMMENT '用户身份',
  `status` enum('ENABLE','DISABLE') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'ENABLE' COMMENT '用户状态',
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `email`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'root', 'zjy_mc@163.com', 'e10adc3949ba59abbe56e057f20f883e', 'http://127.0.0.1:8080/image/default.jpg', 'SUPER_ADMIN', 'ENABLE');
INSERT INTO `user` VALUES (2, '李老师', '1172510964@qq.com', 'e10adc3949ba59abbe56e057f20f883e', 'http://127.0.0.1:8080/image/1617708379435image.jpg', 'ADMIN', 'ENABLE');
INSERT INTO `user` VALUES (3, '黄蒲军', '995883594@qq.com', 'e10adc3949ba59abbe56e057f20f883e', 'http://127.0.0.1:8080/image/1617708384381image.jpg', 'ADMIN', 'ENABLE');
INSERT INTO `user` VALUES (4, '同学A', '20172005122@m.scnu.edu.cn', 'e10adc3949ba59abbe56e057f20f883e', 'http://127.0.0.1:8080/image/1617708394033image.jpg', 'NORMAL', 'DISABLE');
INSERT INTO `user` VALUES (5, 'WLAY', 'huangkanggao@163.com', 'e10adc3949ba59abbe56e057f20f883e', 'https://iknow-pic.cdn.bcebos.com/0eb30f2442a7d933b9baa918ad4bd11373f0014e', 'NORMAL', 'ENABLE');

SET FOREIGN_KEY_CHECKS = 1;
