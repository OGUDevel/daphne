#!/usr/bin/env sh

echo "\n"
echo "Merhaba "$USER"; Daphne'ye Hoşgeldiniz"
echo "Bu scriptin git deponuzun içinde olmasına dikkat edin"
echo "Commit için eklemek istediğiniz dosyayı/dosyaları seçin"
echo "'hepsi' hepsini ekler, dosya isimleri ise dosyaları teker teker"
read option

if (("$option" == "hepsi")); then
	git add .
else
	git add $option
fi
echo "Commit mesajı giriniz:\n"
read message
git commit -m '$message'

echo "Push etmek istediğiniz orijin adını seçiniz\n"
read remotepath
echo "Push etmek istediğiniz branch'ı seçiniz\n"
read branch
git push -u $remotepath $branch
echo "TAMAMLANDI\n"