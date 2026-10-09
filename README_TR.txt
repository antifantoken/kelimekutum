KELİME KUTUM — ANDROID'E KURULABİLEN PWA

İÇERİK
- index.html: arayüz
- app.js: kelime ekleme, quiz, CSV aktarımı ve Türkçe karakter desteği
- manifest.webmanifest: ana ekrana kurulum ayarları
- sw.js: çevrimdışı önbellek
- icon.svg: uygulama simgesi

TÜRKÇE KARAKTERLER
Dosyalar UTF-8 olarak kaydedilmiştir. Quiz karşılaştırması tr-TR yerel ayarını kullanır; ç, ğ, ı, İ, ö, ş, ü karakterleri korunur. CSV dosyanızı Excel'den “CSV UTF-8” olarak kaydedin. Virgül ve noktalı virgül ayraçları desteklenir.

ANDROID'E KURMAK İÇİN EN KOLAY YOL
PWA'nın kurulması ve çevrimdışı çalışması için dosyaların HTTPS üzerinden yayımlanması gerekir (localhost istisnası). ZIP dosyasını GitHub'a yükleyip GitHub Pages ile yayımlayabilirsiniz:
1. Bilgisayarda github.com adresinde hesap açın/giriş yapın.
2. New repository ile kelime-kutum adında bir depo oluşturun. Public seçebilirsiniz.
3. “Add file” > “Upload files” ile bu klasördeki DOSYALARIN hepsini yükleyin; klasörün kendisini değil, içindeki dosyaları yükleyin. Commit changes deyin.
4. Depoda Settings > Pages bölümüne girin.
5. Build and deployment altında Deploy from a branch seçin; Branch: main, folder: /(root) seçip Save'e basın.
6. Birkaç dakika sonra Pages ekranında verilen https://KULLANICI.github.io/kelime-kutum/ benzeri bağlantıyı açın. Gerçek adres GitHub tarafından gösterilir.
7. Android telefonda Chrome ile bu bağlantıyı açın. Menü (⋮) > “Ana ekrana ekle” veya “Uygulamayı yükle” seçeneğine basın.
8. İlk açılışta siteyi internet varken yükleyin. Sonrasında önbelleğe alınan uygulama çevrimdışı açılabilir.

ÖNEMLİ
- GitHub Pages herkese açık bir web adresi oluşturur. Kelime listeniz bu projeye yüklenmez; uygulama içindeki kelimeler tarayıcının yerel saklama alanında kalır. Yalnızca uygulamanın kod dosyaları yayımlanır.
- Tarayıcı/site verilerini temizlemek kayıtları silebilir. Kelimeler bölümündeki “Yedek CSV indir” seçeneğini kullanın.
- Excel .xlsx dosyasını doğrudan içe aktarma bu sürümde yoktur. Excel'de Farklı Kaydet > CSV UTF-8 seçin.
- Bu paket doğrudan APK değildir; Android ana ekranına kurulabilen PWA'dır. APK için ayrıca Android paketleme işlemi gerekir.
