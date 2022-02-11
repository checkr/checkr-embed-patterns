import express from "express";
import axios from "axios";

const router = express.Router();
const apiHost = "https://integration-services.checkrhq-staging.net";

// Try it out! Insert your own OAuth Token
const oAuthAccessToken = "oauth token goes here";

// Request a session token from the Checkr API
// Read more at https://docs.checkr.com/embeds/#section/Authentication
router.post("/session-tokens", async (req, res, next) => {
  // Run your application's authentication before responding!
  const authenticated = authenticateUser();

  if (authenticated) {
    try {
      const response = await axios({
        headers: { "Content-Type": "application/json" },
        method: "POST",
        url: `${apiHost}/web_sdk/session_tokens`,
        auth: {
          username: oAuthAccessToken,
          password: ""
        },
        data: {
          scopes: ["order"]
        }
      });

      res.send(response.data);
    } catch (err) {
      res.send(err);
    }
  } else {
    res.sendStatus(401);
  }
});

const authenticateUser = () => {
  // Authenticate your user
  return true;
};

export default router;
