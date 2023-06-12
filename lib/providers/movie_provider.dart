import 'package:flutter/material.dart';
import '../models/movieList.dart';

class Movies with ChangeNotifier {
  List<MovieList> movie_list = [
    MovieList(
      id: "1",
      movie_title: "Shingeki No Kyojin",
      movie_year: "2013",
      movie_img: "assets/images/AOT.webp",
      movie_desc:
          '"Shingeki no Kyojin" berlatar di dunia di mana manusia hidup dalam ketakutan konstan akan para raksasa pemakan manusia yang dikenal sebagai "Titan." Cerita ini berpusat pada Eren Yeager, Mikasa Ackerman, dan Armin Arlert, tiga sahabat yang berasal dari kota terakhir yang tersisa yang dikelilingi oleh tembok raksasa yang melindungi manusia dari serangan Titan. Namun, ketenangan mereka terusik ketika tembok pertama dijebol oleh Colossal Titan yang muncul secara tiba-tiba. Serangan tersebut menyebabkan Eren, Mikasa, dan Armin terlibat dalam pertempuran melawan Titan demi melindungi umat manusia dan membalas dendam atas tragedi yang mereka alami.',
      movie_url:
          "https://storage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
    ),
    MovieList(
      id: "2",
      movie_title: "Top Gun Maverick",
      movie_year: "2022",
      movie_img: "assets/images/TGM.jpg",
      movie_desc:
          "Alur film di mulai dengan dipanggilnya sosok kapten pilot uji senior bernama Pete “Maverick” Mitchell (Tom Cruise). Maverik merupakan sosok yang dengan sengaja menghindari kenaikan pangkat setelah tiga puluh enam tahun lamanya bertugas di penerbangan Angkatan Laut Amerika Serikat. Dipanggilnya Maverick kembali ialah untuk melatih sekelompok lulusan Top Gun yang akan menjalankan misi khusus di bawah komando Angkatan Laut AS dan mantan saingannya, Laksamana Tom “Icerman” Kazansky (Val Kilmer). Salah satu lulusan Top Gun yang akan dilatih oleh Maverick seperti Letnan Bradley “Rooster” Bradshaw (Miles Teller), putra mendiang sahabatnya. Marevick kemudian diberitahu oleh komandannya mengenai tugas elit pilot Top Gun, yakni melawan negara pegunungan dengan cara menghancurkan fasilitas uranium yang telah mulai dibangun.",
      movie_url:
          "https://storage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
    ),
    MovieList(
      id: "3",
      movie_title: "Chainsaw Man",
      movie_year: "2022",
      movie_img: "assets/images/CSM.jpg",
      movie_desc:
          "Setelah mengalami kehidupan yang penuh penderitaan dan kehilangan, Denji bertemu dengan agen Pemerintah Jepang yang misterius bernama Makima. Makima menawarkan Denji kesempatan untuk hidup normal dengan syarat menjadi pemburu setan untuk organisasi pemerintah. Denji menerima tawaran tersebut dan bergabung dengan tim pemburu setan, termasuk Power, seorang setan yang berubah menjadi bentuk manusia, dan Aki Hayakawa, seorang pemburu setan yang terampil. Seiring berjalannya waktu, Denji menemukan dirinya terlibat dalam pertempuran sengit melawan setan-setan yang semakin kuat dan kejam. Namun, semakin ia berjuang melawan ancaman supernatural, semakin ia terjerat dalam konspirasi dan intrik yang lebih dalam di balik organisasi pemerintah dan kekuatan yang mengontrolnya.",
      movie_url:
          "https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
    ),
    MovieList(
      id: "4",
      movie_title: "Spider-Man: No Way Home",
      movie_year: "2021",
      movie_img: "assets/images/Spiderman.jpeg",
      movie_desc:
          "Spider-Man No Way Home mengisahkan tentang kegelisahan Peter Parker yang diperankan Tom Holland karena difitnah. Siapa pemfitnahnya? ialah Mysterio (Jake Gyllenhaal) yang malah mati duluan sebelum masalah bisa diluruskan. Mysterio memang sudah meninggal, akan tetapi fitnah yang dilempar ke publik berkembang menjadi banyak spekulasi yang tudingan kepada Peter Parker.",
      movie_url:
          "https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
    ),
    MovieList(
      id: "5",
      movie_title: "Spy X Family",
      movie_year: "2022",
      movie_img: "assets/images/SXF.jpg",
      movie_desc:
          "Anime karya Tatsuya Endo ini berkisah tentang seorang mata-mata yang diserahi misi untuk menggali informasi mengenai seorang politisi dari negara Ostonia, yang diduga pemicu konflik negara barat dan timur. Twilight, sang mata-mata, merupakan yang terbaik di Westalis. Ia sangat terampil dan tidak pernah gagal menjalankan misinya. Sebab itulah, pemerintah menilai bahwa dialah satu-satunya mata-mata yang tepat menjalankan misi yang dinamai Operation Strix itu.",
      movie_url:
          "https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4",
    ),
    MovieList(
      id: "6",
      movie_title: "Interstellar",
      movie_year: "2014",
      movie_img: "assets/images/interstellar.jpg",
      movie_desc:
          "Di dunia yang hampir tidak dapat ditinggali ini, mantan insinyur NASA bernama Joseph Cooper (diperankan oleh Matthew McConaughey) diberi kesempatan untuk berperan dalam misi yang mungkin akan menyelamatkan manusia. Sebuah kelompok penjelajah antariksa, termasuk Dr. Amelia Brand (diperankan oleh Anne Hathaway), telah mengirimkan pesan melalui lubang cacing yang baru ditemukan, membawa harapan akan menemukan planet baru yang bisa dihuni oleh manusia. Joseph Cooper menerima tugas untuk memimpin misi tersebut. Ia meninggalkan keluarganya, termasuk putrinya yang berusia sepuluh tahun, Murph (diperankan oleh Mackenzie Foy), dengan harapan akan kembali ke Bumi setelah berhasil menemukan solusi bagi masa depan umat manusia. Kelompok tersebut melakukan perjalanan melalui lubang cacing dan mencapai sistem bintang lain yang memiliki planet yang mungkin bisa dihuni. Di sana, mereka menghadapi tantangan dan bahaya yang tak terduga, termasuk perbedaan waktu dan pengaruh gravitasi yang ekstrim.",
      movie_url:
          "https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4",
    ),
    MovieList(
      id: "7",
      movie_title: "The Batman",
      movie_year: "2022",
      movie_img: "assets/images/batman.jpg",
      movie_desc:
          "Selama tahun kedua memerangi kejahatan, Batman mengejar Riddler, seorang pembunuh berantai sadis yang menargetkan tokoh-tokoh politik dan warga elit Kota Gotham. Batman berusaha mengungkap korupsi tersembunyi di kota itu dan mempertanyakan keterlibatan keluarganya. Ia menghubungkan keluarganya sendiri selama penyelidikan, dan dipaksa untuk membuat sekutu baru untuk menangkap Riddler dan membawa koruptor ke pengadilan.",
      movie_url:
          "https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4",
    ),
    MovieList(
      id: "8",
      movie_title: "John Wick: Chapter 3 - Parabellum",
      movie_year: "2019",
      movie_img: "assets/images/JW.jpg",
      movie_desc:
          'Setelah membunuh anggota sindikat internasional The High Table di Continental Hotel, John Wick menjadi buronan dengan harga kepala 14 juta dolar. Ia dinyatakan "excommunicado" dan dilarang mendapatkan dukungan atau bantuan dari anggota organisasi Assassins. Dalam kondisi yang terdesak, Wick harus mencari cara untuk bertahan hidup sambil menghadapi para pembunuh bayaran dan penjahat yang berusaha memanfaatkan situasi ini untuk mendapatkan imbalan. Wick berjuang melintasi New York City, menjalin aliansi dengan karakter-karakter baru seperti Sofia (diperankan oleh Halle Berry), seorang mantan pemburu bayaran dengan keterkaitan masa lalu dengan Wick, untuk mencari jalan keluar dari situasi yang tampak tanpa harapan. Di tengah perburuan yang tak kenal ampun, Wick menemui musuh-musuh tangguh, termasuk pembunuh bayaran yang legendaris dan tanpa ampun seperti Zero (diperankan oleh Mark Dacascos).',
      movie_url:
          "https://storage.googleapis.com/gtv-videos-bucket/sample/Sintel.jpg",
    ),
    MovieList(
      id: "9",
      movie_title: "Kimi No Nawa",
      movie_year: "2016",
      movie_img: "assets/images/KNN.webp",
      movie_desc:
          "Dua remaja berbagi hubungan yang mendalam dan magis setelah mengetahui bahwa mereka bertukar tubuh. Segalanya menjadi lebih rumit ketika lelaki dan perempuan itu memutuskan untuk bertemu langsung",
      movie_url:
          "https://storage.googleapis.com/gtv-videos-bucket/sample/SubaruOutbackOnStreetAndDirt.mp4",
    ),
    MovieList(
      id: "10",
      movie_title: "1917",
      movie_year: "2020",
      movie_img: "assets/images/1917-portrait.jpg",
      movie_desc:
          "Pada tahun 1917, di tengah-tengah Perang Dunia I, Schofield dan Blake diberikan tugas yang tampaknya mustahil. Mereka dikirim melintasi medan perang yang penuh bahaya di Prancis yang diduduki oleh Jerman untuk menyampaikan pesan penting kepada batalion lain. Pesan tersebut berisi peringatan tentang serangan yang akan datang yang akan membahayakan nyawa 1.600 tentara, termasuk saudara Blake. Dalam upaya untuk menyelamatkan nyawa banyak orang, Schofield dan Blake memulai perjalanan yang berbahaya melintasi parit-parit dan medan yang hancur akibat perang. Mereka harus bergerak dengan cepat melalui zona peperangan yang penuh dengan ancaman bom, tembakan senapan, dan pertempuran berdarah.",
      movie_url:
          "https://storage.googleapis.com/gtv-videos-bucket/sample/TearsOfSteel.mp4",
    ),
    MovieList(
      id: "11",
      movie_title: "Mortal Kombat",
      movie_year: "2021",
      movie_img: "assets/images/MK-Portrait.webp",
      movie_desc:
          "Cole Young (diperankan oleh Lewis Tan), seorang petarung MMA yang bekerja sebagai pengumpul utang, tanpa disadarinya memiliki ikatan dengan dunia Mortal Kombat. Dunia ini adalah pertempuran epik antara kekuatan baik dan jahat, di mana para prajurit terpilih dari berbagai alam semesta berhadapan dalam turnamen mematikan. Ketika kekuatan jahat Outworld yang dipimpin oleh Shang Tsung (diperankan oleh Chin Han) mengancam untuk menghancurkan Bumi dengan memenangkan turnamen Mortal Kombat, Cole dipanggil oleh Raiden (diperankan oleh Tadanobu Asano), dewa petir pelindung Bumi, untuk bergabung dengan para pejuang terlatih.",
      movie_url:
          "https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4",
    )
  ];

  List<MovieList> get movies_list {
    return [...movie_list];
  }
}
