# antiadmin
X-code Anti Admin v0.1
----------------------

X-code Anti Admin adalah Program untuk untuk penghapusan jejak pada log di linux. Bisa digunakan dalam tahapan hacking ke 5 yaitu covering tracks. Untuk mengakses program ini wajib menggunakan akses root.

Program ini ditujukan untuk managemen penghapusan jejak dari log user, root, apache2 hingga akses ssh, dengan dukungan untuk anti forensic.

Bagaimana dukungan Anti forensic bisa terjadi?
----------------------------------------------

Program ini menyediakan media untuk edit log dan anda bisa melakukan penghapusan per-baris secara manual dengan nano lalu disimpan sehingga pihak forensik pun tidak dapat melakukan recovery.

Untuk semakin menyamarkan terdapat dukungan untuk mengembalikan hak akses yang seharusnya setelah file disimpan.

Sebagai tambahan informasi penghapusan log dari program ini masih dimungkinkan untuk direcovery tapi tidak mudah karena terjadi penimpaan file baru, tapi ini bisa dilakukan sebagai bentuk tahapan covering tracks meskipun levelnya masih dibawah penghapusan per-baris dengan manual. 

Program ini dirancang untuk mengatasi berbagai kasus yang ada seperti ada access.log.1, access.log.2, auth.log.1 dan sebagainya.

Program ini juga mendukung fitur untuk penghapusan otomatis pada log saat restart dengan hak akses log sesuai dengan yang digunakan pada linux mint 18.3 Sylvia.

Program ini berjalan baik di Linux Mint 18.3 Sylvia.

Licensi
-------

GNU General Public License v3

Programmer :
------------

Kurniawan. E-mail : kurniawanajazenfone@gmail.com

Donasi :
--------
Jika ingin donasi untuk Kurniawan

![alt text](http://xcodeserver.my.id/gofood.png)

![alt text](http://xcodeserver.my.id/gopay.png)

Ovo :

![alt text](http://xcodeserver.my.id/ovo3.png)

![alt text](http://xcodeserver.my.id/ovo2.png)
