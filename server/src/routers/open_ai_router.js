import { Router } from "express";
import generateOpenAiResponsesController from "../controllers/generate_open_ai_controller.js";
const openAiRouter = Router();

openAiRouter.post("/", generateOpenAiResponsesController)

export default openAiRouter;