import ProductsCarrousel from '../components/carrousel/ProductsCarrousel';
import Header from '../components/header/Header';
import Footer from '../components/footer/Footer';

const Products = () => {
  const products = [
    // 🍎 Apple
    {
      ProductsID: 1,
      imageUrl: "../assets/products/apple/airPodsMax/airPodsMax.png",
      name: "AirPods Max",
      price: 549.00,
      Seller: { name: "Apple" }
    },
    {
      ProductsID: 2,
      imageUrl: "src/assets/products/apple/appleVision/appleVision.png",
      name: "Apple Vision Pro",
      price: 3499.00,
      Seller: { name: "Apple" }
    },
    {
      ProductsID: 3,
      imageUrl: "src/assets/products/apple/ipadPro/ipadPro.png",
      name: "iPad Pro",
      price: 1399.00,
      Seller: { name: "Apple" }
    },
    {
      ProductsID: 4,
      imageUrl: "src/assets/products/apple/iphone15/iphone15.png",
      name: "iPhone 15 Pro Max",
      price: 1299.00,
      Seller: { name: "Apple" }
    },
    {
      ProductsID: 5,
      imageUrl: "src/assets/products/apple/macM3Air/macM3Air.png",
      name: "MacBook Air M3",
      price: 1199.00,
      Seller: { name: "Apple" }
    },
    {
      ProductsID: 6,
      imageUrl: "src/assets/products/apple/macM3Pro/macM3Pro.png",
      name: "MacBook Pro M3",
      price: 1999.00,
      Seller: { name: "Apple" }
    },
  
    // 🐍 Razer
    {
      ProductsID: 7,
      imageUrl: "src/assets/products/razer/barracuda/barracuda.png",
      name: "Razer Barracuda",
      price: 129.00,
      Seller: { name: "Razer" }
    },
    {
      ProductsID: 8,
      imageUrl: "src/assets/products/razer/blade/blade.png",
      name: "Razer Blade",
      price: 2499.00,
      Seller: { name: "Razer" }
    },
    {
      ProductsID: 9,
      imageUrl: "src/assets/products/razer/huntsmanMini/huntsmanMini.png",
      name: "Razer Huntsman Mini",
      price: 99.00,
      Seller: { name: "Razer" }
    },
    {
      ProductsID: 10,
      imageUrl: "src/assets/products/razer/mercury/mercury.png",
      name: "Razer Mercury",
      price: 149.00,
      Seller: { name: "Razer" }
    },
    {
      ProductsID: 11,
      imageUrl: "src/assets/products/razer/viper/viper.png",
      name: "Razer Viper",
      price: 79.00,
      Seller: { name: "Razer" }
    },
    {
      ProductsID: 12,
      imageUrl: "src/assets/products/razer/viperUltimate/viperUltimate.png",
      name: "Razer Viper Ultimate",
      price: 149.00,
      Seller: { name: "Razer" }
    },
  
    // 🔊 Sonos
    {
      ProductsID: 13,
      imageUrl: "src/assets/products/sonos/arc/arc.png",
      name: "Sonos Arc",
      price: 899.00,
      Seller: { name: "Sonos" }
    },
    {
      ProductsID: 14,
      imageUrl: "src/assets/products/sonos/era300/era300.png",
      name: "Sonos Era 300",
      price: 449.00,
      Seller: { name: "Sonos" }
    },
    {
      ProductsID: 15,
      imageUrl: "src/assets/products/sonos/move2/move2.png",
      name: "Sonos Move 2",
      price: 499.00,
      Seller: { name: "Sonos" }
    },
    {
      ProductsID: 16,
      imageUrl: "src/assets/products/sonos/roam/roam.png",
      name: "Sonos Roam",
      price: 179.00,
      Seller: { name: "Sonos" }
    },
    {
      ProductsID: 17,
      imageUrl: "src/assets/products/sonos/sub/sub.png",
      name: "Sonos Sub",
      price: 799.00,
      Seller: { name: "Sonos" }
    },
    {
      ProductsID: 18,
      imageUrl: "src/assets/products/sonos/turntableSet/turntableSet.png",
      name: "Sonos Turntable Set",
      price: 1199.00,
      Seller: { name: "Sonos" }
    },
  
    // 👟 Yeezy
    {
      ProductsID: 19,
      imageUrl: "src/assets/products/yeezy/alien/alien.png",
      name: "Yeezy Foam Runner Alien",
      price: 89.00,
      Seller: { name: "Yeezy" }
    },
    {
      ProductsID: 20,
      imageUrl: "src/assets/products/yeezy/ararat/ararat.png",
      name: "Yeezy Ararat",
      price: 99.00,
      Seller: { name: "Yeezy" }
    },
    {
      ProductsID: 21,
      imageUrl: "src/assets/products/yeezy/bone/bone.png",
      name: "Yeezy Bone",
      price: 99.00,
      Seller: { name: "Yeezy" }
    },
    {
      ProductsID: 22,
      imageUrl: "src/assets/products/yeezy/stone/stone.png",
      name: "Yeezy Stone",
      price: 99.00,
      Seller: { name: "Yeezy" }
    },
    {
      ProductsID: 23,
      imageUrl: "src/assets/products/yeezy/synth/synth.png",
      name: "Yeezy Synth",
      price: 99.00,
      Seller: { name: "Yeezy" }
    },
    {
      ProductsID: 24,
      imageUrl: "src/assets/products/yeezy/zebra/zebra.png",
      name: "Yeezy Zebra",
      price: 99.00,
      Seller: { name: "Yeezy" }
    }
  ];
  
  // Agrupar productos por vendedor
  const groupedProducts = products.reduce((acc, product) => {
    const seller = product?.Seller?.name || "Sin vendedor";
    if (!acc[seller]) acc[seller] = [];
    acc[seller].push(product);
    return acc;
  }, {});

  return (
    <div className="min-h-screen flex flex-col">
      <Header />
      <main className="container mx-auto py-8 px-4">
        {Object.entries(groupedProducts).map(([sellerName, sellerProducts], index) => (
          <section key={sellerName} className="mb-12">
            <h2 className="text-2xl font-bold mb-4">{sellerName}</h2>
            <ProductsCarrousel
              products={sellerProducts}
              carrouselId={`crousel-${index}`}
            />
          </section>
        ))}
      </main>
      <Footer />
    </div>
  );
};

export default Products;
