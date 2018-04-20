# antiadmin
X-code Anti Admin v0.1
----------------------

X-code Anti Admin adalah Program untuk untuk penghapusan jejak pada log di linux. Bisa digunakan dalam tahapan hacking ke 5 yaitu covering tracks. Untuk mengakses program ini wajib menggunakan akses root.

Program ini ditujukan untuk managemen penghapusan jejak dari log user, root, apache2 hingga akses ssh, dengan dukungan untuk anti forensic.

Bagaimana dukungan Anti forensic bisa terjadi?

Program ini menyediakan media untuk edit log dan anda bisa melakukan penghapusan per-baris secara manual dengan nano lalu disimpan sehingga pihak forensik pun tidak dapat melakukan recovery.

Untuk semakin menyamarkan terdapat dukungan untuk mengembalikan hak akses yang seharusnya setelah file disimpan.

Sebagai tambahan informasi penghapusan log dari program ini masih dimungkinkan untuk direcovery tapi tidak mudah karena terjadi penimpaan file baru, tapi ini bisa dilakukan sebagai bentuk tahapan covering tracks meskipun levelnya masih dibawah penghapusan per-baris dengan manual. 

Program ini berjalan baik di Linux Mint 18.3 Sylvia.

Licensi
-------

GNU General Public License

Programmer :
------------

Kurniawan. trainingxcode@gmail.com. xcode.or.id
