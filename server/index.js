const express = require("express");
const mongoose = require("mongoose");
const cors = require("cors");
const authRouter = require("./routes/auth");

const PORT = process.env.PORT | 3001;

const app = express();

app.use(cors());
app.use(express.json());
app.use(authRouter);

const DB =
  "mongodb+srv://bitwisedhruv:test123@cluster0.6prylvc.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0";

mongoose.connect(DB).then(() => {
  console.log("MongoDB connected successfully");
});

app.listen(PORT, "0.0.0.0", () => {
  console.log(`Server started on ${PORT}`);
});
