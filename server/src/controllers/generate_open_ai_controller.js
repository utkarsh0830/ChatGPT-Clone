import { model } from "mongoose";
import OpenAI from "openai";

const generateOpenAiResponsesController = async (req, res) => {
    try {
        const reqBody = req.body;
        //const prompt = reqBody['prompt'];
        const messages = reqBody['messages'];

        const openai = new OpenAI({
            apiKey: process.env.OPENAI_API_KEY,
        });

        const stream = await openai.chat.completions.create(
            {
                model: "gpt-3.5-turbo",
                messages: messages,
                temperature: 1,
                max_tokens: 1024,
                top_p: 1,
                frequency_penalty: 0,
                stream: true
            }
        )

        res.setHeader({"Content-Type" : "text/event-stream"});

        for await (const chunk of streamn){
            //process.stdout.write(chunk.choices[0].delta.content || "");
            const data = chunk.choices[0].delta.content || "";
            const formattedData = `data: ${JSON.stringify({data})}\n\n`
            res.write(formattedData)
        }

        // return res.json({
        //     "data": response
        // });
    } catch (error) {
        res.status(500).json({ data: error });
    }
};

export default generateOpenAiResponsesController;
