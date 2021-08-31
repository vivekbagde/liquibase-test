-- liquibase formatted sql

-- changeset jenkins:1630410457224-1
CREATE TABLE "public"."flyway_schema_history" ("installed_rank" INTEGER NOT NULL, "version" VARCHAR(50), "description" VARCHAR(200) NOT NULL, "type" VARCHAR(20) NOT NULL, "script" VARCHAR(1000) NOT NULL, "checksum" INTEGER, "installed_by" VARCHAR(100) NOT NULL, "installed_on" TIMESTAMP WITHOUT TIME ZONE DEFAULT NOW() NOT NULL, "execution_time" INTEGER NOT NULL, "success" BOOLEAN NOT NULL, CONSTRAINT "flyway_schema_history_pk" PRIMARY KEY ("installed_rank"));

-- changeset jenkins:1630410457224-2
CREATE INDEX "flyway_schema_history_s_idx" ON "public"."flyway_schema_history"("success");

-- changeset jenkins:1630410457224-3
CREATE TABLE "public"."mytable" ("mycolumn" VARCHAR(100) NOT NULL);

-- changeset jenkins:1630410457224-4
CREATE TABLE "public"."test113" ("id" INTEGER NOT NULL, "name" VARCHAR(255), CONSTRAINT "test113_pkey" PRIMARY KEY ("id"));

-- changeset jenkins:1630410457224-5
CREATE TABLE "public"."test3" ("id" INTEGER NOT NULL, "name" VARCHAR(255), CONSTRAINT "test3_pkey" PRIMARY KEY ("id"));

