import { Router } from "express";

const helloRouter = Router();

helloRouter.get("/", (req, res) => res.json({ data: "server is live" }));

export default helloRouter
