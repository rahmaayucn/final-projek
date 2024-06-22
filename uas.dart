class Cake {
  String name;
  List<String> sizes;
  List<int> prices;
  int sales = 0;  // Added sales property

  Cake(this.name, this.sizes, this.prices);

  void displayMenu() {
    print('Kue: $name');
    for (int i = 0; i < sizes.length; i++) {
      print('  Ukuran: ${sizes[i]}, Harga: Rp ${prices[i]}');
    }
    print('');
  }

  // Method to add sales
  void addSales(int quantity) {
    sales += quantity;
  }

  // Method to display sales
  void displaySales() {
    print('Total penjualan $name: $sales');
  }
}

void main() {
  // Definisikan daftar menu kue
  List<Cake> cakes = [
    Cake('Cheesecake', ['Small', 'Medium', 'Large'], [25000, 70000, 90000]),
    Cake('Red Velvet', ['Small', 'Medium', 'Large'], [25000, 60000, 120000]),
    Cake('Tiramisu', ['Small', 'Medium', 'Large'], [25000, 80000, 130000]),
    Cake('Matcha Cake', ['Small', 'Medium', 'Large'], [25000, 90000, 135000]),
  ];

  // Rekam penjualan beberapa kue
  cakes[0].addSales(10);  // 10 Cheesecakes sold
  cakes[1].addSales(5);   // 5 Red Velvet sold
  cakes[2].addSales(8);   // 8 Tiramisu sold

  // Urutkan daftar kue berdasarkan harga Terendah menggunakan Bubble Sort
  bubbleSort(cakes);

  // Tampilkan menu kue sesuai pengurutan
  print('Menu Kue Ulang Tahun sesuai pengurutan:');
  for (var cake in cakes) {
    cake.displayMenu();
  }

  // Tampilkan total penjualan masing-masing kue
  print('Total penjualan masing-masing kue:');
  for (var cake in cakes) {
    cake.displaySales();
  }
}

// Fungsi Bubble Sort untuk mengurutkan daftar kue berdasarkan Terendah
void bubbleSort(List<Cake> cakes) {
  int n = cakes.length;
  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (cakes[j].prices[0] > cakes[j + 1].prices[0]) {
        // Tukar posisi kue
        Cake temp = cakes[j];
        cakes[j] = cakes[j + 1];
        cakes[j + 1] = temp;
      }
    }
  }
}
