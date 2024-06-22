class Buket {
  String jenisBuket;
  double harga;
  int stok;
  // atribut/properti

  Buket(this.jenisBuket, this.harga, this.stok); // objek
}

class Penjualan {
  String jenisBuket;
  int jumlah;
  double hargaTotal;

  Penjualan(this.jenisBuket, this.jumlah, this.hargaTotal);
}

void main() {
  // Daftar buket yang tersedia
  List<Buket> daftarBuket = [
    Buket("Mawar Merah", 50000, 30),
    Buket("Lili", 30000, 10),
    Buket("Matahari", 40000, 25),
  ];

  // Daftar data buket (nama dan harga)
  List<Map<String, dynamic>> bouquets = [
    {"name": "Mawar Merah", "price": 50000},
    {"name": "Lili", "price": 30000},
    {"name": "Matahari", "price": 40000},
  ];

  /* daftarBuket: Menggunakan kelas Buket, yang merupakan struktur data berbasis objek. 
  Lebih terstruktur dan mendukung enkapsulasi data.
  bouquets: Menggunakan Map, yang merupakan struktur data berbasis pasangan kunci-nilai. 
  Lebih sederhana dan cepat untuk didefinisikan tetapi kurang terstruktur. */

  // Menampilkan daftar buket sebelum diurutkan
  print("Daftar Buket Sebelum Diurutkan:");
  bouquets.forEach((bouquet) {
    print("${bouquet['name']} - \$${bouquet['price']}");
  });

  // Mengurutkan daftar buket berdasarkan harga (ascending order)
  bubbleSort(bouquets);

  // Menampilkan daftar buket setelah diurutkan
  print("\nDaftar Buket Setelah Diurutkan:");
  bouquets.forEach((bouquet) {
    print("${bouquet['name']} - \$${bouquet['price']}");
  });

  // Daftar penjualan
  List<Penjualan> daftarPenjualan = [];

  // Simulasi penjualan
  Penjualan penjualan1 = Penjualan("Mawar Merah", 5, 250000);
  daftarPenjualan.add(penjualan1);

  Penjualan penjualan2 = Penjualan("Matahari", 2, 80000);
  daftarPenjualan.add(penjualan2);

  // Menampilkan informasi tentang jenis buket yang tersedia
  print("\nDaftar Buket yang Tersedia:");
  for (Buket buket in daftarBuket) {
    print("Jenis Buket: ${buket.jenisBuket}, Harga: Rp.${buket.harga}, Stok: ${buket.stok}");
  }

  // Menampilkan riwayat penjualan
  print("\nRiwayat Penjualan:");
  for (Penjualan penjualan in daftarPenjualan) {
    print("Jenis Buket: ${penjualan.jenisBuket}, Jumlah: ${penjualan.jumlah}, Harga Total: Rp.${penjualan.hargaTotal}");
  }
}

void bubbleSort(List<Map<String, dynamic>> bouquets) {
  int n = bouquets.length;
  for (int i = 0; i < n - 1; i++) {
    bool swapped = false;
    for (int j = 0; j < n - i - 1; j++) {
      if (bouquets[j]['price'] > bouquets[j + 1]['price']) {
        // Menukar elemen
        var temp = bouquets[j];
        bouquets[j] = bouquets[j + 1];
        bouquets[j + 1] = temp;
        swapped = true;
      }
    }
    if (!swapped) {
      break;
    }
  }
}
