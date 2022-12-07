/*
  Warnings:

  - You are about to drop the column `capaCampeonato` on the `Tabela` table. All the data in the column will be lost.
  - Added the required column `background` to the `Tabela` table without a default value. This is not possible if the table is not empty.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Tabela" (
    "campeonato" TEXT NOT NULL PRIMARY KEY,
    "background" TEXT NOT NULL,
    "link" TEXT NOT NULL
);
INSERT INTO "new_Tabela" ("campeonato", "link") SELECT "campeonato", "link" FROM "Tabela";
DROP TABLE "Tabela";
ALTER TABLE "new_Tabela" RENAME TO "Tabela";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
