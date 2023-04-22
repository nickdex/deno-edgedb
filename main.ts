import { Application } from "https://deno.land/x/oak/mod.ts";
import * as edgedb from 'https://deno.land/x/edgedb/mod.ts'

const client = edgedb.createClient(
  // {credentialsFile:"./credentials.json"}
  )
const app = new Application();

app.use(async (ctx) => {
  const result = await client.query(`Select "Hello world!"`)
  ctx.response.body = result;
});

await app.listen({ port: 8000 });