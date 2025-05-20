--liquibase formatted sql
--changeset rodrigo:202505200203
--comment: boards_columns table create

CREATE TABLE boards_columns (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    `order` int NOT NULL,
    kind VARCHAR(7) NOT NULL,
    board_id BIGINT NOT NULL,
    CONSTRAINT boards__boards_columns_fk FOREIGN KEY (board_id) REFERENCES boards(id) ON DELETE CASCADE,
    CONSTRAINT id_order_uk UNIQUE KEY unique_board_id_order (board_id, `order`)
) ENGINE=InnoDB;

--rollback DROP TABLE BOARDS_COLUMNS