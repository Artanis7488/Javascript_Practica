BEGIN;

CREATE TABLE SOC_APP_M_USERS_INTERESTS(
  interest_id bigserial,
  interest_name VARCHAR(200),
  interest_summary VARCHAR(500) DEFAULT '',
  insertion_date timestamp,
  update_date timestamp,
  PRIMARY KEY (interest_id)
);
CREATE UNIQUE INDEX UQ_SOC_APP_M_USERS_INTERESTS ON SOC_APP_M_USERS_INTERESTS(interest_name);
CREATE INDEX IDX1_SOC_APP_M_USERS_INTERESTS ON SOC_APP_M_USERS_INTERESTS(insertion_date);
CREATE INDEX IDX2_SOC_APP_M_USERS_INTERESTS ON SOC_APP_M_USERS_INTERESTS(update_date);

COMMIT;