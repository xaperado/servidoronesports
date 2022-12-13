import  express  from "express";
import { PrismaClient } from "@prisma/client";
import cors from 'cors'

const port = process.env.PORT || 3333;


const app = express();
app.use(express.json())
app.use(cors())

const prisma = new PrismaClient();

app.get('/', async (request, response) => {
  const noticia = await prisma.noticia.findMany()
  response.json(noticia);
})

app.get('/tabela', async (request, response) => {
  const tabela = await prisma.tabela.findMany()
  response.json(tabela);

})

app.listen(port, () => {
  console.log("Funcionando")
});