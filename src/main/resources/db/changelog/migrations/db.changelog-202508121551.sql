--liquibase formatted sql
--changeset vinicius:202507211300
--comment: set unblock_reason nullable

ALTER TABLE blocks MODIFY COLUMN unblock_reason VARCHAR(255) NULL;

--rollback blocks MODIFY COLUMN unblock_reason VARCHAR(255) NOT NULL;
