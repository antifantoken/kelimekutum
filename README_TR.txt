# Kelime Kutusu - Kelime Çalışma ve Geliştirme Aracı
Bu program yapay zeka desteği kullanılarak İngilizce kelime çalışmak için kişisel bir araç olarak tasarlanmıştır.
Kamuya açık değildir olurda elinize geçerse kullanmak için adımları takip edin.
- CSV içe aktarmada virgül ve noktalı virgül ayraçları desteklenir. Excel'de **CSV UTF-8 (Virgülle ayrılmış)** veya uygun CSV UTF-8 seçeneğiyle kaydet.
- Başlıklı dosyada `English` / `İngilizce` ve `Türkçe` / `Meaning` gibi sütun adları tanınır. Başlık yoksa ilk sütun İngilizce, ikinci sütun Türkçe, üçüncü sütun örnek cümle kabul edilir.
- Doğrudan `.xlsx` dosyası bu sürümde desteklenmez; Excel dosyasını CSV UTF-8 olarak dışa aktar.
Uygulamanın amacı ve diğer uygulamalardan ayıran özelliği kendi belirlediğiniz kelime grubunu çalışmaktır. Başkalarının belirlediği kelime gruplarını değil kendi kelime grubunuzu çalışmak için ideal bir araçtır.
# Ali B. 
## Türkçe karakter desteği
- Dosyalar UTF-8 biçimindedir ve HTML'de `UTF-8` karakter kodlaması tanımlıdır.
- Quiz cevapları Türkçe yerel ayarıyla (`tr-TR`) karşılaştırılır. `ç, ğ, ı, İ, ö, ş, ü` karakterleri ve noktalı/noktasız `i` ayrımı dikkate alınır.
## Gizlilik ve yedekleme

Kelime listen uygulamanın kod deposuna gönderilmez; kullandığın tarayıcı/cihazın yerel saklama alanında tutulur. Tarayıcı verilerini temizlemek kayıtları silebilir. Uygulamadaki **Yedek CSV indir** özelliğini düzenli kullan.
