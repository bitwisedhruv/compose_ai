const express = require("express");
const User = require("../models/user");

const authRouter = express.Router();

authRouter.post("/signup", async (req, res) => {
  try {
    const { name, email, profilePic } = req.body;
    let user = await User.findOne({ email: email });

    if (!user) {
      user = new User({
        email: email,
        profilePic: profilePic,
        name: name,
      });
      user = await user.save();
    }

    res.status(200).json({ user });
  } catch (error) {
    res.status(500).json({ error });
  }
});
module.exports = authRouter;
