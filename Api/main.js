import serverless from "serverless-http";
import { app, sequelize } from "../src/app.js";

export const handler = serverless(async (req, res) => {
  // Asegurar conexión a la base de datos
  try {
    await sequelize.authenticate();
    // opcional: await sequelize.sync();
  } catch (err) {
    console.error("DB connection error:", err);
    // Aquí podrías devolver un 500 si lo deseas:
    // res.status(500).json({ error: "Database connection failed" });
    // return;
  }

  // Delegar al app de Express
  return app(req, res);
});

