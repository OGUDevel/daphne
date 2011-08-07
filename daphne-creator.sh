#!/usr/bin/env sh
echo "\n"
echo "Merhaba "$USER", Git deposu oluşturma sihirbazı daphne-creator'e hoşgeldiniz!"
echo "Eğer yeni iseniz daphne.sh dosyasının daphne-creator.sh ile aynı dizinde"
echo "bulunduğunu teyit edin"

echo "Başlanıyor..."
echo "Git deposunun oluşturulacağı dizinin tam yolunu girin, '~' kullanmayınız"
read gitrepopath

cd /
mkdir $gitrepopath
cp daphne.sh $gitrepopath
cd $gitrepopath
git init

echo "Git deposu için orijin adı girin"
read origin
echo "Git deposu için orijinin tam yolunu girin"
read originpath

git remote add $origin $originpath
echo "Başarıyla orijin eklendi"

echo "Harice alınacak dosyalar belirleniyor"
echo "daphne.sh" >> .gitignore
echo "daphne-creator.sh" >> .gitignore
echo "Daphne çalıştırılsın mı?"
echo "NOT: Daphne'yi çalıştırmadan önce deponuzu commit'e hazır hale getirin"
echo "Çalıştırmak için 'y' + [ENTER] kullanın 'n' + [ENTER] programdan çıkar"
read ans                       
if (("$ans" == "y")); then
	sh daphne.sh
fi
if (("$ans" == "n")); then
	echo "Çıkılıyor... Daphne'yi çalıştırmak için 'sh daphne.sh' kullanın"
	exit 1
fi
