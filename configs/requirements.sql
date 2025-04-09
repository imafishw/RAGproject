/*
 Navicat Premium Dump SQL

 Source Server         : ragflow
 Source Server Type    : MySQL
 Source Server Version : 80039 (8.0.39)
 Source Host           : 127.0.0.1:5455
 Source Schema         : rag_flow

 Target Server Type    : MySQL
 Target Server Version : 80039 (8.0.39)
 File Encoding         : 65001

 Date: 15/03/2025 13:53:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for api_4_conversation
-- ----------------------------
DROP TABLE IF EXISTS `api_4_conversation`;
CREATE TABLE `api_4_conversation`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `create_time` bigint NULL DEFAULT NULL,
  `create_date` datetime NULL DEFAULT NULL,
  `update_time` bigint NULL DEFAULT NULL,
  `update_date` datetime NULL DEFAULT NULL,
  `dialog_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `reference` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `tokens` int NOT NULL,
  `source` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dsl` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `duration` float NOT NULL,
  `round` int NOT NULL,
  `thumb_up` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `api4conversation_create_time`(`create_time` ASC) USING BTREE,
  INDEX `api4conversation_create_date`(`create_date` ASC) USING BTREE,
  INDEX `api4conversation_update_time`(`update_time` ASC) USING BTREE,
  INDEX `api4conversation_update_date`(`update_date` ASC) USING BTREE,
  INDEX `api4conversation_dialog_id`(`dialog_id` ASC) USING BTREE,
  INDEX `api4conversation_user_id`(`user_id` ASC) USING BTREE,
  INDEX `api4conversation_source`(`source` ASC) USING BTREE,
  INDEX `api4conversation_duration`(`duration` ASC) USING BTREE,
  INDEX `api4conversation_round`(`round` ASC) USING BTREE,
  INDEX `api4conversation_thumb_up`(`thumb_up` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for api_token
-- ----------------------------
DROP TABLE IF EXISTS `api_token`;
CREATE TABLE `api_token`  (
  `create_time` bigint NULL DEFAULT NULL,
  `create_date` datetime NULL DEFAULT NULL,
  `update_time` bigint NULL DEFAULT NULL,
  `update_date` datetime NULL DEFAULT NULL,
  `tenant_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `dialog_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `source` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `beta` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`tenant_id`, `token`) USING BTREE,
  INDEX `apitoken_create_time`(`create_time` ASC) USING BTREE,
  INDEX `apitoken_create_date`(`create_date` ASC) USING BTREE,
  INDEX `apitoken_update_time`(`update_time` ASC) USING BTREE,
  INDEX `apitoken_update_date`(`update_date` ASC) USING BTREE,
  INDEX `apitoken_tenant_id`(`tenant_id` ASC) USING BTREE,
  INDEX `apitoken_token`(`token` ASC) USING BTREE,
  INDEX `apitoken_dialog_id`(`dialog_id` ASC) USING BTREE,
  INDEX `apitoken_source`(`source` ASC) USING BTREE,
  INDEX `apitoken_beta`(`beta` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for canvas_template
-- ----------------------------
DROP TABLE IF EXISTS `canvas_template`;
CREATE TABLE `canvas_template`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `create_time` bigint NULL DEFAULT NULL,
  `create_date` datetime NULL DEFAULT NULL,
  `update_time` bigint NULL DEFAULT NULL,
  `update_date` datetime NULL DEFAULT NULL,
  `avatar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `canvas_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dsl` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `canvastemplate_create_time`(`create_time` ASC) USING BTREE,
  INDEX `canvastemplate_create_date`(`create_date` ASC) USING BTREE,
  INDEX `canvastemplate_update_time`(`update_time` ASC) USING BTREE,
  INDEX `canvastemplate_update_date`(`update_date` ASC) USING BTREE,
  INDEX `canvastemplate_canvas_type`(`canvas_type` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for conversation
-- ----------------------------
DROP TABLE IF EXISTS `conversation`;
CREATE TABLE `conversation`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `create_time` bigint NULL DEFAULT NULL,
  `create_date` datetime NULL DEFAULT NULL,
  `update_time` bigint NULL DEFAULT NULL,
  `update_date` datetime NULL DEFAULT NULL,
  `dialog_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `reference` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `conversation_create_time`(`create_time` ASC) USING BTREE,
  INDEX `conversation_create_date`(`create_date` ASC) USING BTREE,
  INDEX `conversation_update_time`(`update_time` ASC) USING BTREE,
  INDEX `conversation_update_date`(`update_date` ASC) USING BTREE,
  INDEX `conversation_dialog_id`(`dialog_id` ASC) USING BTREE,
  INDEX `conversation_name`(`name` ASC) USING BTREE,
  INDEX `conversation_user_id`(`user_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for dialog
-- ----------------------------
DROP TABLE IF EXISTS `dialog`;
CREATE TABLE `dialog`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `create_time` bigint NULL DEFAULT NULL,
  `create_date` datetime NULL DEFAULT NULL,
  `update_time` bigint NULL DEFAULT NULL,
  `update_date` datetime NULL DEFAULT NULL,
  `tenant_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `icon` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `language` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `llm_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `llm_setting` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `prompt_type` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `prompt_config` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `similarity_threshold` float NOT NULL,
  `vector_similarity_weight` float NOT NULL,
  `top_n` int NOT NULL,
  `top_k` int NOT NULL,
  `do_refer` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `rerank_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `kb_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `dialog_create_time`(`create_time` ASC) USING BTREE,
  INDEX `dialog_create_date`(`create_date` ASC) USING BTREE,
  INDEX `dialog_update_time`(`update_time` ASC) USING BTREE,
  INDEX `dialog_update_date`(`update_date` ASC) USING BTREE,
  INDEX `dialog_tenant_id`(`tenant_id` ASC) USING BTREE,
  INDEX `dialog_name`(`name` ASC) USING BTREE,
  INDEX `dialog_language`(`language` ASC) USING BTREE,
  INDEX `dialog_prompt_type`(`prompt_type` ASC) USING BTREE,
  INDEX `dialog_status`(`status` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for document
-- ----------------------------
DROP TABLE IF EXISTS `document`;
CREATE TABLE `document`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `create_time` bigint NULL DEFAULT NULL,
  `create_date` datetime NULL DEFAULT NULL,
  `update_time` bigint NULL DEFAULT NULL,
  `update_date` datetime NULL DEFAULT NULL,
  `thumbnail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `kb_id` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `parser_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `parser_config` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `source_type` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `size` int NOT NULL,
  `token_num` int NOT NULL,
  `chunk_num` int NOT NULL,
  `progress` float NOT NULL,
  `progress_msg` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `process_begin_at` datetime NULL DEFAULT NULL,
  `process_duation` float NOT NULL,
  `meta_fields` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `run` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `document_create_time`(`create_time` ASC) USING BTREE,
  INDEX `document_create_date`(`create_date` ASC) USING BTREE,
  INDEX `document_update_time`(`update_time` ASC) USING BTREE,
  INDEX `document_update_date`(`update_date` ASC) USING BTREE,
  INDEX `document_kb_id`(`kb_id` ASC) USING BTREE,
  INDEX `document_parser_id`(`parser_id` ASC) USING BTREE,
  INDEX `document_source_type`(`source_type` ASC) USING BTREE,
  INDEX `document_type`(`type` ASC) USING BTREE,
  INDEX `document_created_by`(`created_by` ASC) USING BTREE,
  INDEX `document_name`(`name` ASC) USING BTREE,
  INDEX `document_location`(`location` ASC) USING BTREE,
  INDEX `document_size`(`size` ASC) USING BTREE,
  INDEX `document_token_num`(`token_num` ASC) USING BTREE,
  INDEX `document_chunk_num`(`chunk_num` ASC) USING BTREE,
  INDEX `document_progress`(`progress` ASC) USING BTREE,
  INDEX `document_process_begin_at`(`process_begin_at` ASC) USING BTREE,
  INDEX `document_run`(`run` ASC) USING BTREE,
  INDEX `document_status`(`status` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for file
-- ----------------------------
DROP TABLE IF EXISTS `file`;
CREATE TABLE `file`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `create_time` bigint NULL DEFAULT NULL,
  `create_date` datetime NULL DEFAULT NULL,
  `update_time` bigint NULL DEFAULT NULL,
  `update_date` datetime NULL DEFAULT NULL,
  `parent_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tenant_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `size` int NOT NULL,
  `type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `source_type` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `file_create_time`(`create_time` ASC) USING BTREE,
  INDEX `file_create_date`(`create_date` ASC) USING BTREE,
  INDEX `file_update_time`(`update_time` ASC) USING BTREE,
  INDEX `file_update_date`(`update_date` ASC) USING BTREE,
  INDEX `file_parent_id`(`parent_id` ASC) USING BTREE,
  INDEX `file_tenant_id`(`tenant_id` ASC) USING BTREE,
  INDEX `file_created_by`(`created_by` ASC) USING BTREE,
  INDEX `file_name`(`name` ASC) USING BTREE,
  INDEX `file_location`(`location` ASC) USING BTREE,
  INDEX `file_size`(`size` ASC) USING BTREE,
  INDEX `file_type`(`type` ASC) USING BTREE,
  INDEX `file_source_type`(`source_type` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for file2document
-- ----------------------------
DROP TABLE IF EXISTS `file2document`;
CREATE TABLE `file2document`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `create_time` bigint NULL DEFAULT NULL,
  `create_date` datetime NULL DEFAULT NULL,
  `update_time` bigint NULL DEFAULT NULL,
  `update_date` datetime NULL DEFAULT NULL,
  `file_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `document_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `file2document_create_time`(`create_time` ASC) USING BTREE,
  INDEX `file2document_create_date`(`create_date` ASC) USING BTREE,
  INDEX `file2document_update_time`(`update_time` ASC) USING BTREE,
  INDEX `file2document_update_date`(`update_date` ASC) USING BTREE,
  INDEX `file2document_file_id`(`file_id` ASC) USING BTREE,
  INDEX `file2document_document_id`(`document_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for invitation_code
-- ----------------------------
DROP TABLE IF EXISTS `invitation_code`;
CREATE TABLE `invitation_code`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `create_time` bigint NULL DEFAULT NULL,
  `create_date` datetime NULL DEFAULT NULL,
  `update_time` bigint NULL DEFAULT NULL,
  `update_date` datetime NULL DEFAULT NULL,
  `code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `visit_time` datetime NULL DEFAULT NULL,
  `user_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `tenant_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `invitationcode_create_time`(`create_time` ASC) USING BTREE,
  INDEX `invitationcode_create_date`(`create_date` ASC) USING BTREE,
  INDEX `invitationcode_update_time`(`update_time` ASC) USING BTREE,
  INDEX `invitationcode_update_date`(`update_date` ASC) USING BTREE,
  INDEX `invitationcode_code`(`code` ASC) USING BTREE,
  INDEX `invitationcode_visit_time`(`visit_time` ASC) USING BTREE,
  INDEX `invitationcode_user_id`(`user_id` ASC) USING BTREE,
  INDEX `invitationcode_tenant_id`(`tenant_id` ASC) USING BTREE,
  INDEX `invitationcode_status`(`status` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for knowledgebase
-- ----------------------------
DROP TABLE IF EXISTS `knowledgebase`;
CREATE TABLE `knowledgebase`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `create_time` bigint NULL DEFAULT NULL,
  `create_date` datetime NULL DEFAULT NULL,
  `update_time` bigint NULL DEFAULT NULL,
  `update_date` datetime NULL DEFAULT NULL,
  `avatar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `tenant_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `language` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `embd_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `permission` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `doc_num` int NOT NULL,
  `token_num` int NOT NULL,
  `chunk_num` int NOT NULL,
  `similarity_threshold` float NOT NULL,
  `vector_similarity_weight` float NOT NULL,
  `parser_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `parser_config` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `pagerank` int NOT NULL,
  `status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `knowledgebase_create_time`(`create_time` ASC) USING BTREE,
  INDEX `knowledgebase_create_date`(`create_date` ASC) USING BTREE,
  INDEX `knowledgebase_update_time`(`update_time` ASC) USING BTREE,
  INDEX `knowledgebase_update_date`(`update_date` ASC) USING BTREE,
  INDEX `knowledgebase_tenant_id`(`tenant_id` ASC) USING BTREE,
  INDEX `knowledgebase_name`(`name` ASC) USING BTREE,
  INDEX `knowledgebase_language`(`language` ASC) USING BTREE,
  INDEX `knowledgebase_embd_id`(`embd_id` ASC) USING BTREE,
  INDEX `knowledgebase_permission`(`permission` ASC) USING BTREE,
  INDEX `knowledgebase_created_by`(`created_by` ASC) USING BTREE,
  INDEX `knowledgebase_doc_num`(`doc_num` ASC) USING BTREE,
  INDEX `knowledgebase_token_num`(`token_num` ASC) USING BTREE,
  INDEX `knowledgebase_chunk_num`(`chunk_num` ASC) USING BTREE,
  INDEX `knowledgebase_similarity_threshold`(`similarity_threshold` ASC) USING BTREE,
  INDEX `knowledgebase_vector_similarity_weight`(`vector_similarity_weight` ASC) USING BTREE,
  INDEX `knowledgebase_parser_id`(`parser_id` ASC) USING BTREE,
  INDEX `knowledgebase_status`(`status` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for llm
-- ----------------------------
DROP TABLE IF EXISTS `llm`;
CREATE TABLE `llm`  (
  `create_time` bigint NULL DEFAULT NULL,
  `create_date` datetime NULL DEFAULT NULL,
  `update_time` bigint NULL DEFAULT NULL,
  `update_date` datetime NULL DEFAULT NULL,
  `llm_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `model_type` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `fid` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `max_tokens` int NOT NULL,
  `tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`fid`, `llm_name`) USING BTREE,
  INDEX `llm_create_time`(`create_time` ASC) USING BTREE,
  INDEX `llm_create_date`(`create_date` ASC) USING BTREE,
  INDEX `llm_update_time`(`update_time` ASC) USING BTREE,
  INDEX `llm_update_date`(`update_date` ASC) USING BTREE,
  INDEX `llm_llm_name`(`llm_name` ASC) USING BTREE,
  INDEX `llm_model_type`(`model_type` ASC) USING BTREE,
  INDEX `llm_fid`(`fid` ASC) USING BTREE,
  INDEX `llm_tags`(`tags` ASC) USING BTREE,
  INDEX `llm_status`(`status` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for llm_factories
-- ----------------------------
DROP TABLE IF EXISTS `llm_factories`;
CREATE TABLE `llm_factories`  (
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `create_time` bigint NULL DEFAULT NULL,
  `create_date` datetime NULL DEFAULT NULL,
  `update_time` bigint NULL DEFAULT NULL,
  `update_date` datetime NULL DEFAULT NULL,
  `logo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE,
  INDEX `llmfactories_create_time`(`create_time` ASC) USING BTREE,
  INDEX `llmfactories_create_date`(`create_date` ASC) USING BTREE,
  INDEX `llmfactories_update_time`(`update_time` ASC) USING BTREE,
  INDEX `llmfactories_update_date`(`update_date` ASC) USING BTREE,
  INDEX `llmfactories_tags`(`tags` ASC) USING BTREE,
  INDEX `llmfactories_status`(`status` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for task
-- ----------------------------
DROP TABLE IF EXISTS `task`;
CREATE TABLE `task`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `create_time` bigint NULL DEFAULT NULL,
  `create_date` datetime NULL DEFAULT NULL,
  `update_time` bigint NULL DEFAULT NULL,
  `update_date` datetime NULL DEFAULT NULL,
  `doc_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `from_page` int NOT NULL,
  `to_page` int NOT NULL,
  `task_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `begin_at` datetime NULL DEFAULT NULL,
  `process_duation` float NOT NULL,
  `progress` float NOT NULL,
  `progress_msg` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `retry_count` int NOT NULL,
  `digest` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `chunk_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `task_create_time`(`create_time` ASC) USING BTREE,
  INDEX `task_create_date`(`create_date` ASC) USING BTREE,
  INDEX `task_update_time`(`update_time` ASC) USING BTREE,
  INDEX `task_update_date`(`update_date` ASC) USING BTREE,
  INDEX `task_doc_id`(`doc_id` ASC) USING BTREE,
  INDEX `task_begin_at`(`begin_at` ASC) USING BTREE,
  INDEX `task_progress`(`progress` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tenant
-- ----------------------------
DROP TABLE IF EXISTS `tenant`;
CREATE TABLE `tenant`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `create_time` bigint NULL DEFAULT NULL,
  `create_date` datetime NULL DEFAULT NULL,
  `update_time` bigint NULL DEFAULT NULL,
  `update_date` datetime NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `public_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `llm_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `embd_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `asr_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `img2txt_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `rerank_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tts_id` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `parser_ids` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `credit` int NOT NULL,
  `status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tenant_create_time`(`create_time` ASC) USING BTREE,
  INDEX `tenant_create_date`(`create_date` ASC) USING BTREE,
  INDEX `tenant_update_time`(`update_time` ASC) USING BTREE,
  INDEX `tenant_update_date`(`update_date` ASC) USING BTREE,
  INDEX `tenant_name`(`name` ASC) USING BTREE,
  INDEX `tenant_public_key`(`public_key` ASC) USING BTREE,
  INDEX `tenant_llm_id`(`llm_id` ASC) USING BTREE,
  INDEX `tenant_embd_id`(`embd_id` ASC) USING BTREE,
  INDEX `tenant_asr_id`(`asr_id` ASC) USING BTREE,
  INDEX `tenant_img2txt_id`(`img2txt_id` ASC) USING BTREE,
  INDEX `tenant_rerank_id`(`rerank_id` ASC) USING BTREE,
  INDEX `tenant_tts_id`(`tts_id` ASC) USING BTREE,
  INDEX `tenant_parser_ids`(`parser_ids` ASC) USING BTREE,
  INDEX `tenant_credit`(`credit` ASC) USING BTREE,
  INDEX `tenant_status`(`status` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tenant_llm
-- ----------------------------
DROP TABLE IF EXISTS `tenant_llm`;
CREATE TABLE `tenant_llm`  (
  `create_time` bigint NULL DEFAULT NULL,
  `create_date` datetime NULL DEFAULT NULL,
  `update_time` bigint NULL DEFAULT NULL,
  `update_date` datetime NULL DEFAULT NULL,
  `tenant_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `llm_factory` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `model_type` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `llm_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `api_key` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `api_base` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `max_tokens` int NOT NULL,
  `used_tokens` int NOT NULL,
  PRIMARY KEY (`tenant_id`, `llm_factory`, `llm_name`) USING BTREE,
  INDEX `tenantllm_create_time`(`create_time` ASC) USING BTREE,
  INDEX `tenantllm_create_date`(`create_date` ASC) USING BTREE,
  INDEX `tenantllm_update_time`(`update_time` ASC) USING BTREE,
  INDEX `tenantllm_update_date`(`update_date` ASC) USING BTREE,
  INDEX `tenantllm_tenant_id`(`tenant_id` ASC) USING BTREE,
  INDEX `tenantllm_llm_factory`(`llm_factory` ASC) USING BTREE,
  INDEX `tenantllm_model_type`(`model_type` ASC) USING BTREE,
  INDEX `tenantllm_llm_name`(`llm_name` ASC) USING BTREE,
  INDEX `tenantllm_api_key`(`api_key`(768) ASC) USING BTREE,
  INDEX `tenantllm_max_tokens`(`max_tokens` ASC) USING BTREE,
  INDEX `tenantllm_used_tokens`(`used_tokens` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `create_time` bigint NULL DEFAULT NULL,
  `create_date` datetime NULL DEFAULT NULL,
  `update_time` bigint NULL DEFAULT NULL,
  `update_date` datetime NULL DEFAULT NULL,
  `access_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nickname` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `avatar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `language` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `color_schema` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `timezone` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `last_login_time` datetime NULL DEFAULT NULL,
  `is_authenticated` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `is_active` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `is_anonymous` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `login_channel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_create_time`(`create_time` ASC) USING BTREE,
  INDEX `user_create_date`(`create_date` ASC) USING BTREE,
  INDEX `user_update_time`(`update_time` ASC) USING BTREE,
  INDEX `user_update_date`(`update_date` ASC) USING BTREE,
  INDEX `user_access_token`(`access_token` ASC) USING BTREE,
  INDEX `user_nickname`(`nickname` ASC) USING BTREE,
  INDEX `user_password`(`password` ASC) USING BTREE,
  INDEX `user_email`(`email` ASC) USING BTREE,
  INDEX `user_language`(`language` ASC) USING BTREE,
  INDEX `user_color_schema`(`color_schema` ASC) USING BTREE,
  INDEX `user_timezone`(`timezone` ASC) USING BTREE,
  INDEX `user_last_login_time`(`last_login_time` ASC) USING BTREE,
  INDEX `user_is_authenticated`(`is_authenticated` ASC) USING BTREE,
  INDEX `user_is_active`(`is_active` ASC) USING BTREE,
  INDEX `user_is_anonymous`(`is_anonymous` ASC) USING BTREE,
  INDEX `user_login_channel`(`login_channel` ASC) USING BTREE,
  INDEX `user_status`(`status` ASC) USING BTREE,
  INDEX `user_is_superuser`(`is_superuser` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_canvas
-- ----------------------------
DROP TABLE IF EXISTS `user_canvas`;
CREATE TABLE `user_canvas`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `create_time` bigint NULL DEFAULT NULL,
  `create_date` datetime NULL DEFAULT NULL,
  `update_time` bigint NULL DEFAULT NULL,
  `update_date` datetime NULL DEFAULT NULL,
  `avatar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `canvas_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dsl` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `usercanvas_create_time`(`create_time` ASC) USING BTREE,
  INDEX `usercanvas_create_date`(`create_date` ASC) USING BTREE,
  INDEX `usercanvas_update_time`(`update_time` ASC) USING BTREE,
  INDEX `usercanvas_update_date`(`update_date` ASC) USING BTREE,
  INDEX `usercanvas_user_id`(`user_id` ASC) USING BTREE,
  INDEX `usercanvas_canvas_type`(`canvas_type` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_tenant
-- ----------------------------
DROP TABLE IF EXISTS `user_tenant`;
CREATE TABLE `user_tenant`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `create_time` bigint NULL DEFAULT NULL,
  `create_date` datetime NULL DEFAULT NULL,
  `update_time` bigint NULL DEFAULT NULL,
  `update_date` datetime NULL DEFAULT NULL,
  `user_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tenant_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `role` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `invited_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `usertenant_create_time`(`create_time` ASC) USING BTREE,
  INDEX `usertenant_create_date`(`create_date` ASC) USING BTREE,
  INDEX `usertenant_update_time`(`update_time` ASC) USING BTREE,
  INDEX `usertenant_update_date`(`update_date` ASC) USING BTREE,
  INDEX `usertenant_user_id`(`user_id` ASC) USING BTREE,
  INDEX `usertenant_tenant_id`(`tenant_id` ASC) USING BTREE,
  INDEX `usertenant_role`(`role` ASC) USING BTREE,
  INDEX `usertenant_invited_by`(`invited_by` ASC) USING BTREE,
  INDEX `usertenant_status`(`status` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
