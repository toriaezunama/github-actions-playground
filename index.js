const fs = require("fs").promises;
const express = require("express");
const app = express();
const port = 3000;

// Read directory to see wether we are running production or development

(async () => {
  const files = await fs.readdir(__dirname);
  const prefix = files.includes("production") ? "production" : "development";

  app.get("/", (_, res) => res.send(`${prefix} >> Hello World!\n`));

  app.listen(port, () =>
    console.log(`Example app listening at http://0.0.0.0:${port}`)
  );
})();
