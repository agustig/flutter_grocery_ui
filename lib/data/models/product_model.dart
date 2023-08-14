class ProductModel {
  final String title;
  final String price;
  final String quantity;
  final String image;
  final String description;

  ProductModel({
    required this.title,
    required this.price,
    required this.quantity,
    required this.image,
    required this.description,
  });
}

final List<ProductModel> allProduct = [
  ProductModel(
    title: 'Bayam',
    price: '2.000',
    quantity: '1ikat',
    image: 'assets/img1.png',
    description:
        'Secara umum sayuran dan buah-buahan merupakan sumber berbagai vitamin, mineral, dan serat pangan. Sebagian vitamin dan mineral yang terkandung dalam sayuran dan buah-buahan berperan untuk membantu proses-proses metabolisme di dalam tubuh, sedangkan antioksidan mampu menangkal senyawa-senyawa hasil oksidasi, radikal bebas, yang mampu menurunkan kondisi kesehatan tubuh',
  ),
  ProductModel(
    title: 'Alpukat',
    price: '4.000',
    quantity: '1kg',
    image: 'assets/img2.png',
    description:
        'Secara umum sayuran dan buah-buahan merupakan sumber berbagai vitamin, mineral, dan serat pangan. Sebagian vitamin dan mineral yang terkandung dalam sayuran dan buah-buahan berperan untuk membantu proses-proses metabolisme di dalam tubuh, sedangkan antioksidan mampu menangkal senyawa-senyawa hasil oksidasi, radikal bebas, yang mampu menurunkan kondisi kesehatan tubuh',
  ),
  ProductModel(
    title: 'Jagung',
    price: '9.500',
    quantity: '1bungkus',
    image: 'assets/img3.png',
    description:
        'Secara umum sayuran dan buah-buahan merupakan sumber berbagai vitamin, mineral, dan serat pangan. Sebagian vitamin dan mineral yang terkandung dalam sayuran dan buah-buahan berperan untuk membantu proses-proses metabolisme di dalam tubuh, sedangkan antioksidan mampu menangkal senyawa-senyawa hasil oksidasi, radikal bebas, yang mampu menurunkan kondisi kesehatan tubuh',
  ),
  ProductModel(
    title: 'Kiwi',
    price: '4.500',
    quantity: '1kg',
    image: 'assets/img4.png',
    description:
        'Secara umum sayuran dan buah-buahan merupakan sumber berbagai vitamin, mineral, dan serat pangan. Sebagian vitamin dan mineral yang terkandung dalam sayuran dan buah-buahan berperan untuk membantu proses-proses metabolisme di dalam tubuh, sedangkan antioksidan mampu menangkal senyawa-senyawa hasil oksidasi, radikal bebas, yang mampu menurunkan kondisi kesehatan tubuh',
  ),
  ProductModel(
    title: 'Jeruk',
    price: '3.500',
    quantity: '1kg',
    image: 'assets/img5.png',
    description:
        'Secara umum sayuran dan buah-buahan merupakan sumber berbagai vitamin, mineral, dan serat pangan. Sebagian vitamin dan mineral yang terkandung dalam sayuran dan buah-buahan berperan untuk membantu proses-proses metabolisme di dalam tubuh, sedangkan antioksidan mampu menangkal senyawa-senyawa hasil oksidasi, radikal bebas, yang mampu menurunkan kondisi kesehatan tubuh',
  ),
  ProductModel(
    title: 'Apel',
    price: '4.500',
    quantity: '1kg',
    image: 'assets/img6.png',
    description:
        'Secara umum sayuran dan buah-buahan merupakan sumber berbagai vitamin, mineral, dan serat pangan. Sebagian vitamin dan mineral yang terkandung dalam sayuran dan buah-buahan berperan untuk membantu proses-proses metabolisme di dalam tubuh, sedangkan antioksidan mampu menangkal senyawa-senyawa hasil oksidasi, radikal bebas, yang mampu menurunkan kondisi kesehatan tubuh',
  ),
];
