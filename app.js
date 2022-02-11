import express from "express";
import path from "path";
import router from "./routes/index.js";

const port = 3000;
const app = express();
const __dirname = path.resolve();

app.use("/", express.static(path.join(__dirname, "public")));
app.use(express.json());
app.use(router);

app.listen(port, function () {
  console.log(`App is listening on port ${port}`);
});
