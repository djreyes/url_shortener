CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE TABLE "urls" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "link" varchar(255), "short" varchar(255), "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "count" integer);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
INSERT INTO schema_migrations (version) VALUES ('20120720192204');

INSERT INTO schema_migrations (version) VALUES ('20120721004935');