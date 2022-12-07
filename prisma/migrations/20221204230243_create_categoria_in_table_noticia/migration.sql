/*
  Warnings:

  - Added the required column `categoria` to the `Noticia` table without a default value. This is not possible if the table is not empty.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Noticia" (
    "titulo" TEXT NOT NULL PRIMARY KEY,
    "descricao" TEXT NOT NULL,
    "imagem" TEXT NOT NULL,
    "url" TEXT NOT NULL,
    "categoria" TEXT NOT NULL
);
INSERT INTO "new_Noticia" ("descricao", "imagem", "titulo", "url") SELECT "descricao", "imagem", "titulo", "url" FROM "Noticia";
DROP TABLE "Noticia";
ALTER TABLE "new_Noticia" RENAME TO "Noticia";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
