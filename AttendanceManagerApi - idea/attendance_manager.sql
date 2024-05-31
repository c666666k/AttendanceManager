/*
 Navicat Premium Data Transfer

 Source Server         : ll
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : localhost:3306
 Source Schema         : attendance_manager

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 01/06/2024 12:02:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for check1
-- ----------------------------
DROP TABLE IF EXISTS `check1`;
CREATE TABLE `check1`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `employeeID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `checkOnTime` datetime(0) NULL DEFAULT NULL,
  `checkOffTime` datetime(0) NULL DEFAULT NULL,
  `checkOnStatus` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `checkOffStatus` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of check1
-- ----------------------------
INSERT INTO `check1` VALUES ('01cf409d-aa11-4954-a9cd-a7f858c9eeb4', '10002', '2023-12-31', '年假', NULL, NULL, NULL, NULL);
INSERT INTO `check1` VALUES ('296c5ee9-ed4d-49e8-bcc5-8cd47522a339', '10002', '2023-12-29', '年假', NULL, NULL, NULL, NULL);
INSERT INTO `check1` VALUES ('55dc6026-0a79-4db6-97ed-691aeddbafab', '10001', '2024-06-01', '', '2024-06-01 11:54:54', NULL, '迟到', '');
INSERT INTO `check1` VALUES ('627cc853-436a-467b-9100-255f6284609d', '10002', '2023-12-28', '年假', NULL, NULL, NULL, NULL);
INSERT INTO `check1` VALUES ('65805109-cf70-485e-8b73-e8909f483801', '10002', '2024-01-02', '年假', NULL, NULL, NULL, NULL);
INSERT INTO `check1` VALUES ('6adacc2a-b98a-41a7-bc08-9289719d80d4', '10002', '2023-12-27', '年假', NULL, NULL, NULL, NULL);
INSERT INTO `check1` VALUES ('6e87b9d2-10f1-4aa1-8b45-835ad4401659', '10002', '2024-01-01', '年假', NULL, NULL, NULL, NULL);
INSERT INTO `check1` VALUES ('70609853-c5c3-4da8-beb0-4bb7e42e9272', '10001', '2024-05-31', '', '2024-05-31 10:46:27', NULL, '迟到', '');
INSERT INTO `check1` VALUES ('7513e7d8-1155-4870-a91a-79f77b19e9eb', '10002', '2023-12-17', '', '2023-12-17 23:54:01', '2023-12-17 23:54:03', '迟到', '正常');
INSERT INTO `check1` VALUES ('79cef880-59a5-4617-ac1f-c92f91ce2b96', '10002', '2023-12-26', '年假', NULL, NULL, NULL, NULL);
INSERT INTO `check1` VALUES ('7b43fa1f-780f-4019-8aa1-a91b1dd2787d', '10005', '2023-12-16', '', '2023-12-16 19:41:16', '2023-12-16 19:41:58', '迟到', '正常');
INSERT INTO `check1` VALUES ('ab552606-7100-4833-ab4a-e5cd95640a86', '10002', '2024-04-04', '', '2024-04-04 17:15:23', '2024-04-04 17:15:24', '迟到', '早退');
INSERT INTO `check1` VALUES ('af7039bb-df6b-4b02-aff8-d84551a1a8d2', '10001', '2024-05-30', '', '2024-05-30 16:31:35', '2024-05-30 16:31:38', '迟到', '早退');
INSERT INTO `check1` VALUES ('cb8e362b-33e9-4361-a8fa-b2320da317e2', '10001', '2023-12-19', '', '2023-12-19 18:33:24', '2023-12-19 18:33:32', '迟到', '正常');
INSERT INTO `check1` VALUES ('cce46dcf-f939-437c-9559-eef14c98c9a7', '10003', '2024-05-31', '', '2024-05-31 10:54:01', NULL, '迟到', '');
INSERT INTO `check1` VALUES ('f08bfacf-8856-4202-8190-999ee3d34f36', '10002', '2023-12-30', '年假', NULL, NULL, NULL, NULL);
INSERT INTO `check1` VALUES ('fb28f836-aed9-4792-ab0b-8cfb662fa857', '10001', '2024-04-04', '', '2024-04-04 17:38:19', '2024-04-04 17:38:19', '迟到', '正常');

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `number` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `applyNumber` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('1c6694ba-aea5-4be7-a063-81d5d4c0d81a', '88877', '王先生', '18877777777', '安徽省蚌埠市', '个人', '', '10001');
INSERT INTO `customer` VALUES ('3b53d596-cf2c-47c0-b95d-aa45f48e53a5', '55642', '云商科技有限公司', '15963582105', '安徽省合肥市', '公司', '', '10001');
INSERT INTO `customer` VALUES ('e1840f51-ba25-4e5d-ba9c-19e1aa526d6d', '7775', '刘客户', '15877777777', '安徽省蚌埠市', '个人', '大老板', '10002');

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `number` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `quantity` int(0) NULL DEFAULT NULL,
  `posNum` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('128216ff-8d37-4c6c-b468-96391bd5f09a', '100', '管理部', 1, 1);
INSERT INTO `department` VALUES ('7304e7b3-b951-4ca1-a422-00a4762405de', '103', '财务部', 0, 0);
INSERT INTO `department` VALUES ('7ca44c62-7aa1-41dd-ba3e-4bea2c308f26', '101', '技术部', 1, 1);
INSERT INTO `department` VALUES ('e9b58925-b1a7-4aa1-9eed-bb01eab41ce3', '102', '人事部', 1, 1);

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `employeeNumber` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `employeeName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `birthday` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `departmentID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `employeePositionID` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `employeeType` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `entryDate` datetime(0) NULL DEFAULT NULL,
  `IDNumber` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `education` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `marriage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `workStatus` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('3ef8e879-176c-47fe-994c-3318ecd1c138', '10003', '刘大同', '男', '2000-02-03', 'e9b58925-b1a7-4aa1-9eed-bb01eab41ce3', '819b5c90-345f-4079-83d5-8339ffd61368', '3', '15853642953', '安徽省蚌埠市', '123456', '2024-03-01 00:00:00', '340441200002035312', '硕士', '未婚', '0');
INSERT INTO `employee` VALUES ('6b8bf6e5-9dec-4694-a49a-8a04f173e39e', '10002', '李四', '女', '2002-06-05', '7ca44c62-7aa1-41dd-ba3e-4bea2c308f26', 'e5e8993c-243c-4c3f-86c2-b8e4802dd55a', '2', '15977777777', '安徽省蚌埠市', '123456', '2023-12-17 00:00:00', '110222200206057777', '大专', '未婚', '0');
INSERT INTO `employee` VALUES ('af7a4c44-6f55-404f-b37f-efa673c76dab', '10001', '张三', '男', '2000-10-10', '128216ff-8d37-4c6c-b468-96391bd5f09a', 'cbfec9b8-d693-41aa-80e6-c53dd03acecb', '3', '15511111111', '安徽省蚌埠市', '123456', '2023-12-16 00:00:00', '110555200010105555', '本科', '未婚', '0');

-- ----------------------------
-- Table structure for employeetype
-- ----------------------------
DROP TABLE IF EXISTS `employeetype`;
CREATE TABLE `employeetype`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `number` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `quantity` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employeetype
-- ----------------------------
INSERT INTO `employeetype` VALUES ('1', '0', '其他岗位', 0);
INSERT INTO `employeetype` VALUES ('2', '0', '技工岗位', 1);
INSERT INTO `employeetype` VALUES ('3', '0', '管理岗位', 2);
INSERT INTO `employeetype` VALUES ('4', '0', '普通岗位', 0);

-- ----------------------------
-- Table structure for fixedassets
-- ----------------------------
DROP TABLE IF EXISTS `fixedassets`;
CREATE TABLE `fixedassets`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `number` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `typeID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `employeeNumber` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `taskTypeID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `approvalID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `applyTime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fixedassets
-- ----------------------------
INSERT INTO `fixedassets` VALUES ('0766f2aa-5265-409a-a50b-b9685e1ac378', '55551', '会议室101', '4', 300000.00, '10001', '2', '0', 'efa673c76dab', '2023-12-17 23:24:11');
INSERT INTO `fixedassets` VALUES ('498d5ce8-c695-473b-841b-e04c6fe24926', '99991', '笔记本电脑', '2', 4560.00, '10001', '2', '0', 'efa673c76dab', '2023-12-17 23:18:36');
INSERT INTO `fixedassets` VALUES ('fc3eb15f-43b4-415f-b59e-2e624f11d176', '5559', '笔记本电脑', '2', 5456.00, '10002', '2', '0', 'b4943625-efd2-411e-b569-6f9b36c43843', '2023-12-17 23:52:31');

-- ----------------------------
-- Table structure for fixedassettype
-- ----------------------------
DROP TABLE IF EXISTS `fixedassettype`;
CREATE TABLE `fixedassettype`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `number` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `quantity` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fixedassettype
-- ----------------------------
INSERT INTO `fixedassettype` VALUES ('1', '0', '软件', 0);
INSERT INTO `fixedassettype` VALUES ('2', '0', '硬件', 0);
INSERT INTO `fixedassettype` VALUES ('3', '0', '其他', 0);
INSERT INTO `fixedassettype` VALUES ('4', '0', '会议室', 0);

-- ----------------------------
-- Table structure for leave1
-- ----------------------------
DROP TABLE IF EXISTS `leave1`;
CREATE TABLE `leave1`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `beginTime` datetime(0) NULL DEFAULT NULL,
  `endTime` datetime(0) NULL DEFAULT NULL,
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `applyNumber` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `duration` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `typeID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '0未审批，1同意，2驳回',
  `approvalID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `taskTypeID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `applyTime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of leave1
-- ----------------------------
INSERT INTO `leave1` VALUES ('651c9c85-2282-4ef4-ad6b-bcff1cabf701', '2023-12-29 23:19:08', '2024-01-01 23:19:14', '出去办事', '10001', '72', '2', '2', '2f1a2e51-ddf0-4d29-be44-4ac2cd5de2e8', '1', '2023-12-17 23:19:02');
INSERT INTO `leave1` VALUES ('f9603ba9-c4df-45a8-bb42-87c25e1ff1db', '2023-12-26 00:00:00', '2024-01-02 23:53:37', '请七天年假', '10002', '191', '4', '1', '74e3a66c-7d50-42c8-9384-e9633b91d947', '1', '2023-12-17 23:53:01');

-- ----------------------------
-- Table structure for leavetype
-- ----------------------------
DROP TABLE IF EXISTS `leavetype`;
CREATE TABLE `leavetype`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `number` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of leavetype
-- ----------------------------
INSERT INTO `leavetype` VALUES ('1', '0', '丧假');
INSERT INTO `leavetype` VALUES ('2', '0', '事假');
INSERT INTO `leavetype` VALUES ('3', '0', '婚假');
INSERT INTO `leavetype` VALUES ('4', '0', '年假');
INSERT INTO `leavetype` VALUES ('5', '0', '病假');
INSERT INTO `leavetype` VALUES ('6', '0', '产假');
INSERT INTO `leavetype` VALUES ('7', '0', '陪产假');

-- ----------------------------
-- Table structure for meeting
-- ----------------------------
DROP TABLE IF EXISTS `meeting`;
CREATE TABLE `meeting`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` datetime(0) NULL DEFAULT NULL,
  `roomID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `participants` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `host` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `details` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `publisherNumber` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `publishTime` datetime(0) NULL DEFAULT NULL,
  `beginDate` date NULL DEFAULT NULL,
  `endDate` date NULL DEFAULT NULL,
  `beginTime` datetime(0) NULL DEFAULT NULL,
  `endTime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of meeting
-- ----------------------------
INSERT INTO `meeting` VALUES ('43ae9611-7f44-4947-af5c-90c29a7c0d12', '考勤系统上线', NULL, NULL, '', '', '考勤系统1.0与今日起上线，请各位按时打卡签到', '2', '10001', NULL, '2023-12-18', '2025-09-19', NULL, NULL);
INSERT INTO `meeting` VALUES ('c861a218-3628-4f96-8d7a-41a3e374e3aa', '关于第一季度工作部署会议', NULL, '0766f2aa-5265-409a-a50b-b9685e1ac378', '', '', '', '1', '10001', NULL, NULL, NULL, '2023-12-27 13:26:14', '2023-12-27 16:26:23');

-- ----------------------------
-- Table structure for position
-- ----------------------------
DROP TABLE IF EXISTS `position`;
CREATE TABLE `position`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `number` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `monthlySalary` int(0) NULL DEFAULT NULL,
  `quantity` int(0) NULL DEFAULT NULL,
  `departmentID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `typeID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of position
-- ----------------------------
INSERT INTO `position` VALUES ('2a0a0738-5822-4732-ae80-b279430ed67a', '1001', '系统管理员', 16000, 0, '', '3');
INSERT INTO `position` VALUES ('5a34a879-6523-4280-864a-7d501a2502be', '10001', '系统管理员', 16000, 0, '', '3');
INSERT INTO `position` VALUES ('819b5c90-345f-4079-83d5-8339ffd61368', '50001', '人事经理', 10000, 1, 'e9b58925-b1a7-4aa1-9eed-bb01eab41ce3', '3');
INSERT INTO `position` VALUES ('cbfec9b8-d693-41aa-80e6-c53dd03acecb', '1002', '系统管理员', 15000, 1, '128216ff-8d37-4c6c-b468-96391bd5f09a', '3');
INSERT INTO `position` VALUES ('e5e8993c-243c-4c3f-86c2-b8e4802dd55a', '80001', '开发工程师', 8000, 1, '7ca44c62-7aa1-41dd-ba3e-4bea2c308f26', '2');

-- ----------------------------
-- Table structure for salary
-- ----------------------------
DROP TABLE IF EXISTS `salary`;
CREATE TABLE `salary`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `monthlySalary` int(0) NULL DEFAULT NULL,
  `workDays` int(0) NULL DEFAULT NULL,
  `checkDays` int(0) NULL DEFAULT NULL,
  `leaveDays` int(0) NULL DEFAULT NULL,
  `salary` decimal(10, 2) NULL DEFAULT NULL,
  `employeeID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `month` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lateTimes` int(0) NULL DEFAULT NULL,
  `leaveEarlyTimes` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of salary
-- ----------------------------
INSERT INTO `salary` VALUES ('3a26c958-48b6-46ef-98a0-0d2a3df198d5', 80000, 21, 1, 4, 3759.00, '10002', '2023-12', 1, 0);
INSERT INTO `salary` VALUES ('83aee5c7-5ac0-4274-af1d-43f845bc07d0', 5000, 20, 1, 1, 200.00, '10005', '2023-11', 1, 0);
INSERT INTO `salary` VALUES ('b7207ad8-4240-4a18-a2a9-a75ea184daf3', 15000, 20, 0, 0, 0.00, '10001', '2023-11', 0, 0);
INSERT INTO `salary` VALUES ('cb8095c4-1b43-4edc-9d8f-292f01e9b0ae', 80000, 22, 0, 0, 0.00, '10002', '2023-11', 0, 0);
INSERT INTO `salary` VALUES ('ee4f0b7f-7137-4528-bf2a-6638fd7a2c91', 80000, 21, 0, 1, 0.00, '10002', '2024-03', 0, 0);

-- ----------------------------
-- Table structure for task
-- ----------------------------
DROP TABLE IF EXISTS `task`;
CREATE TABLE `task`  (
  `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `number` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `typeID` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `applyNumber` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `approvalNumber` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `applyTime` datetime(0) NULL DEFAULT NULL,
  `approvalTime` datetime(0) NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `applyID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiveNumber` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of task
-- ----------------------------
INSERT INTO `task` VALUES ('2f1a2e51-ddf0-4d29-be44-4ac2cd5de2e8', NULL, '张三的请假申请', '1', '10001', '10001', '2023-12-17 23:19:02', '2023-12-17 23:19:49', '2', '651c9c85-2282-4ef4-ad6b-bcff1cabf701', '10001');
INSERT INTO `task` VALUES ('74e3a66c-7d50-42c8-9384-e9633b91d947', NULL, '李四的请假申请', '1', '10002', '10001', '2023-12-17 23:53:01', '2024-04-04 17:20:15', '1', 'f9603ba9-c4df-45a8-bb42-87c25e1ff1db', '10001');
INSERT INTO `task` VALUES ('b4943625-efd2-411e-b569-6f9b36c43843', NULL, '李四的固定资产购置申请', '2', '10002', NULL, '2023-12-17 23:52:31', NULL, '0', 'fc3eb15f-43b4-415f-b59e-2e624f11d176', '10001');

-- ----------------------------
-- Table structure for tasktype
-- ----------------------------
DROP TABLE IF EXISTS `tasktype`;
CREATE TABLE `tasktype`  (
  `id` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `number` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tasktype
-- ----------------------------
INSERT INTO `tasktype` VALUES ('1', '0', '请假申请');
INSERT INTO `tasktype` VALUES ('2', '0', '固定资产购置申请');
INSERT INTO `tasktype` VALUES ('3', '0', '固定资产报废申请');

SET FOREIGN_KEY_CHECKS = 1;
