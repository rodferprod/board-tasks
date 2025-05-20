--liquibase formatted sql
--changeset rodrigo:202505201458
--comment: set unblock_reason nullable

ALTER TABLE blocks MODIFY COLUMN unblock_reason VARCHAR(255) NULL;

--rollback ALTER TABLE BLOCKS MODIFY COLUMN unblock_reason VARCHAR(255) NOT NULL;