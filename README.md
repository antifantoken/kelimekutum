# Kelime Kutum (üyeliksiz sürüm)

İngilizce kelime öğrenmek için mobil uyumlu, tarayıcıda çalışan küçük bir uygulamadır. Üyelik, giriş ekranı, Supabase veya sunucu kurulumu yoktur.

## Özellikler
- Çoktan seçmeli ve yazarak cevaplamalı quiz
- Kelime eşleştirme oyunu: rastgele en fazla 8 İngilizce-Türkçe çift, doğru çift başına 10 puan
- Quizde rastgele en fazla 20 soru, doğru cevap başına 5 puan ve tamamlanan quiz başına 1 yıldız
- Kelime listesi sayfalama (sayfa başına 20 kelime) ve arama
- CSV dosyasından kelime aktarma, örnek şablon ve yedek CSV indirme
- Türkçe karakter ve farklı CSV kodlamalarını destekleme
- Kelimeler, puanlar, yıldızlar ve ilerleme bu cihazın tarayıcısında yerel olarak saklanır

## Çalıştırma
1. ZIP dosyasını çıkar.
2. `index.html` dosyasını bir tarayıcıda aç. Bazı tarayıcılarda dosyadan açıldığında çevrimdışı uygulama önbelleği çalışmayabilir; normal kullanım için klasörü GitHub Pages gibi statik bir web barındırma hizmetine yükleyebilirsin.
3. `Kelimeler` sekmesinden kelime ekle veya `Dosya yükle` bölümünden CSV aktar.
4. Quiz veya Eşleştirme sekmesinden çalışmaya başla.

## CSV biçimi
Dosyanı Excel'de `CSV UTF-8` olarak kaydet. Sütunlar `English;Türkçe;Example` olabilir. Uygulama virgül, noktalı virgül veya sekme ayraçlarını algılar.

## Önemli not
Veriler yalnızca bu cihazdaki ve tarayıcıdaki yerel depolamada tutulur; başka cihazlara otomatik eşitlenmez. Tarayıcı verileri temizlenirse veriler kaybolabilir. Kelime listenin yedeğini düzenli olarak CSV biçiminde indir.
