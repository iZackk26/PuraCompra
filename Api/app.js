import dotenv from "dotenv";
dotenv.config();

import express from "express";
import cors from "cors";
import bodyParser from "body-parser";
import fs from "fs";
import path from "path";
import multer from "multer";
import { fileURLToPath } from "url";

import sequelize from "./models/index.js";

import addressesRoutes from "./routes/addressesRoutes.js";
import usersRoutes from "./routes/usersRoutes.js";
import promotionsRoutes from "./routes/promotionsRoutes.js";
import reviewsRoutes from "./routes/reviewsRoutes.js";
import sellersRoutes from "./routes/sellersRoutes.js";
import shipmentsRoutes from "./routes/shipmentsRoutes.js";
import transactionLogsRoutes from "./routes/transactionLogsRoutes.js";
import ordersRoutes from "./routes/ordersRoutes.js";
import productsRoutes from "./routes/productsRoutes.js";
import priceHistoryRoutes from "./routes/priceHistoryRoutes.js";
import orderDetailsRoutes from "./routes/orderDetailsRoutes.js";
import ProductPromotionsRoutes from "./routes/productPromotionsRoutes.js";
import ProductImagesRoutes from "./routes/ProductImagesRoutes.js";
import cartItemsRoutes from "./routes/cartItemsRoutes.js";
import middlewareRoutes from "./routes/middlewareRoutes.js";

import { uploadProfilePicture } from "./controllers/usersControllers.js";

// Definir __dirname en ES modules
const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const app = express();

// CORS
app.use(cors({
  origin: '*',
  methods: 'GET,HEAD,PUT,PATCH,POST,DELETE',
  allowedHeaders: 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
}));

app.use(express.json());
app.use(bodyParser.json());

// Archivos estáticos (mover tus assets a `public/`)
app.use(
  '/assets/products',
  express.static(path.join(__dirname, '../public/assets/products'))
);
app.use(
  '/profileIcon',
  express.static(path.join(__dirname, '../public/profileIcon'))
);

// Multer: perfil
const profileIconStorage = multer.diskStorage({
  destination: (req, file, cb) => {
    const dest = path.join(__dirname, '../public/profileIcon');
    if (!fs.existsSync(dest)) fs.mkdirSync(dest, { recursive: true });
    cb(null, dest);
  },
  filename: (req, file, cb) => {
    cb(null, `${Date.now()}-${file.originalname}`);
  },
});
const profileIconUpload = multer({ storage: profileIconStorage });

// Multer: productos
const productImageStorage = multer.diskStorage({
  destination: (req, file, cb) => {
    const dest = path.join(__dirname, '../public/assets/products');
    if (!fs.existsSync(dest)) fs.mkdirSync(dest, { recursive: true });
    cb(null, dest);
  },
  filename: (req, file, cb) => {
    cb(null, `${Date.now()}-${file.originalname}`);
  },
});
const productImageUpload = multer({ storage: productImageStorage });

// Rutas
app.post(
  '/upload/:id',
  profileIconUpload.single('profilePicture'),
  uploadProfilePicture
);

app.use('/addresses', addressesRoutes);
app.use('/users', usersRoutes);
app.use('/promotions', promotionsRoutes);
app.use('/reviews', reviewsRoutes);
app.use('/sellers', sellersRoutes);
app.use('/shipments', shipmentsRoutes);
app.use('/transactionLogs', transactionLogsRoutes);
app.use('/orders', ordersRoutes);
app.use(
  '/products',
  productImageUpload.single('mainImage'),
  productsRoutes
);
app.use('/priceHistory', priceHistoryRoutes);
app.use('/orderDetails', orderDetailsRoutes);
app.use('/productPromotions', ProductPromotionsRoutes);
app.use(
  '/productImages',
  productImageUpload.single('imageUrl'),
  ProductImagesRoutes
);
app.use('/cart', cartItemsRoutes);
app.use('/middleware', middlewareRoutes);

export { app, sequelize };

