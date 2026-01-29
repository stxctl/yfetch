# yfetch - Terminal tabanlı ses ve video indirmeniz için basit bir programdır.

## Özellikler
  **Video İndirme:** Belirlediğiniz kalitede (720p,1080p vb.) video indirebilirsiniz.
  **Ses Modu:** Videolarınızdaki sesleri otomatik olarak en yüksek kalitede MP3'e dönüştürebilirsiniz.
  **Klasör Yönetimi:** İndirme dizininizi bir kere seçip sonraki indirdiğiniz paketleri belirlenen dizine indirebilirsiniz,eğer dizin yoksa hemen oluşturabilecek bir otomasyona sahiptir!
  **Bilgi Modu:** Videolarınızı indirmeden önce kalitesi,alanı gibi bilgileri görebilirsiniz. [Henüz mükemmel çalışmıyor, çıktı dağınık görünebilir.]

## İndirme
Paketteki install.sh aracına çalıştırma izinini verip çalıştırın, eğer yoksa işletim sisteminizi otomatik tanıyarak gereken paketleri kuracak ve yfetch'i otomatik olarak çalıştırılabilir hale getirecektir.

**Destekli Dağıtımlar:** Arch Linux, Debian, Void Linux, Fedora, Solus, MacOS

## Geniş çaplı kullanım rehberi
[yfetch bir süper kullanıcı izni gerektirmez, sudo/doas kullanmadan çalışırabilirsiniz.]
  
 yfetch --save {Dizin} ==> {Dizin} yolunu kayıt yeri olarak seçer, video ve sesler seçtiğiniz dizine kaydedilir.
 
 
 yfetch --get {URL} -v ==> {URL} içindeki videoyu .mp4 formatında indirir, sesli/sessiz olarak indirme seçenekleri mevcuttur. 
 
 
 yfetch --get {URL} -a ==> {URL} içindeki videonun sesini .mp3 formatında, otomatik olarak en yüksek kalitede indirir. 
 
 
 yfetch --get {URL} -v -q {Kalite} ==> {URL} içindeki videoyu {Kalite} içinde belirttiğiniz kalitede indirir, p kullanmanıza gerek yoktur, sade bir biçimde 720, 1080 vb. şeklinde yazınız.
 
 
 yfetch --get {URL} --info ==> {URL} içindeki videonun format kodu, uzantı, çözünürlük, kare hızı, kanallar, dosya boyutu, bit hızı, protokollerini öğrenebilirsiniz. Henüz kullanıcı dostu bir çıktı sağlayamıyor, en yakın zamanda düzelteceğim. 
