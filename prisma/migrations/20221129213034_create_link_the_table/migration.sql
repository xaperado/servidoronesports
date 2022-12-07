/*
  Warnings:

  - Added the required column `link` to the `Tabela` table without a default value. This is not possible if the table is not empty.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Tabela" (
    "campeonato" TEXT NOT NULL PRIMARY KEY,
    "capaCampeonato" TEXT NOT NULL,
    "link" TEXT NOT NULL
);
INSERT INTO "new_Tabela" ("campeonato", "capaCampeonato") SELECT "campeonato", "capaCampeonato" FROM "Tabela";
DROP TABLE "Tabela";
ALTER TABLE "new_Tabela" RENAME TO "Tabela";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
