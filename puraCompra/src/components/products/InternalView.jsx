import React, { useState, useEffect } from 'react';
import { Swiper, SwiperSlide } from 'swiper/react';
import 'swiper/css';
import { useParams } from 'react-router-dom';
import Header from '../header/Header';
import ProductsReview from './ProductsReview';
import AddToCartButton from './AddToCartButton';
import { products_full_data } from '../../data/products';

export default function InternalView() {
  const { id } = useParams();
  const [product, setProduct] = useState({});
  const [hoveredImage, setHoveredImage] = useState('');
  const [hoveredColor, setHoveredColor] = useState('');
  const [colors, setColors] = useState([]);

  useEffect(() => {
    const selectedProduct = products_full_data.find(p => p.ProductsID === parseInt(id));
    if (selectedProduct) {
      console.log(selectedProduct)
      setProduct(selectedProduct);
      setHoveredImage(selectedProduct.imageUrl);

      // Simulación de colores a partir de nombres de archivos (si quieres)
      const colorHexMock = ['#000000', '#FF69B4', '#87CEEB', '#C0C0C0', '#FFFFFF', '#8A2BE2'];
      const generatedColors = selectedProduct.images.map((img, idx) => ({
        hex: colorHexMock[idx % colorHexMock.length],
        name: img.split('/').pop().replace('.png', '')
      }));
      setColors(generatedColors);
      setHoveredColor(generatedColors[0]?.name || '');
    }
  }, [id]);

  const handleColorClick = (color) => {
    const selected = product.images.find(img => img.includes(color.name));
    if (selected) {
      setHoveredImage(selected);
      setHoveredColor(color.name);
    }
  };

  const calculateDiscountedPrice = (price, discount) => {
    return price - (price * discount);
  };

  return (
    <>
      <Header />
      <div className="container mx-auto p-4">
        <div className="flex">
          {/* Swiper de imágenes */}
          <div className="w-1/4">
            <Swiper direction="vertical" slidesPerView={3} mousewheel={true} className="h-full vertical-swiper" spaceBetween={10}>
              {product.images?.map((image, index) => (
                <SwiperSlide key={index}>
                  <div className="carousel-item p-2" onMouseEnter={() => {
                    setHoveredImage(image);
                    setHoveredColor(colors[index]?.name || '');
                  }}>
                    <div className="w-full h-48 flex justify-center items-center" style={{ height: '200px', margin: '5px' }}>
                      <img src={image} alt={`Product ${index + 1}`} className="object-contain w-full h-full" />
                    </div>
                  </div>
                </SwiperSlide>
              ))}
            </Swiper>
          </div>

          {/* Imagen principal */}
          <div className="w-1/2 flex flex-col items-center justify-center">
            <div className="card p-4 bg-white mb-4">
              <div className="w-full h-96 md:w-120 md:h-120 overflow-hidden flex justify-center items-center">
                <img src={hoveredImage} alt="Hovered Product" className="object-contain max-h-full max-w-full" />
              </div>
            </div>
          </div>

          {/* Detalles del producto */}
          <div className="w-1/4 flex flex-col items-start justify-center p-4">
            <h2 className="text-2xl font-semibold">{product.name}</h2>
            <p className="text-lg mb-2">{product.description || "Sin descripción."}</p>
            <p className="text-xl font-bold text-stone-800 mb-2">${product.price?.toFixed(2)}</p>
            <p className="text-lg mb-2"><span className="text-stone-800 font-bold">Color:</span> {hoveredColor}</p>

            {/* Selector de colores */}
            <div className="flex space-x-4 mt-2">
              {colors.map((color, index) => (
                <div
                  key={index}
                  className={`w-8 h-8 rounded-full cursor-pointer border ${color.name === hoveredColor ? 'border-gray-800' : 'border-black'}`}
                  style={{ backgroundColor: color.hex }}
                  onClick={() => handleColorClick(color)}
                ></div>
              ))}
            </div>

            <AddToCartButton id={id} />
          </div>
        </div>
      </div>
      <ProductsReview />
    </>
  );
}
