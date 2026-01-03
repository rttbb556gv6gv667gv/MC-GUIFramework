<h1>MC GUI Framework</h1>

<p align="center">
  <img
    src="https://avatars.githubusercontent.com/u/64243799?v=4"
    alt="MC GUI Framework Logo"
    width="160"
  />
</p>

<p>
Barrel / Minecart Chest / Ender Chest tabanlı Minecraft GUI Framework için
esnek ve datapack dostu kullanım rehberi.
</p>

<p>
<a href="https://github.com/rttbb556gv6gv667gv/MC-GUIFramework">
GitHub Repo
</a>
</p>

<hr>

<h2>Özet</h2>

<p>
Bu framework, item bileşenleri içinde tanımlanan
<code>ui_item</code> verileri sayesinde GUI etkileşimleri oluşturur.
NBT tabanlı <code>tag:{}</code> kullanımı kaldırılmıştır.
</p>

<p>Kullanılan anahtarlar:</p>

<ul>
  <li><code>ui_item.cmd</code></li>
  <li><code>ui_item.func</code></li>
  <li><code>ui_item.gamemode</code></li>
  <li><code>ui_item.player</code></li>
</ul>

<hr>

<h2>Temel Kavramlar</h2>

<ul>
  <li><b>Mask</b>: GUI’nin görsel ve tıklanabilir öğeleri</li>
  <li><b>Open</b>: GUI’yi açan fonksiyon</li>
  <li><b>UI Item</b>: <code>ui_item</code> bileşeni taşıyan item</li>
</ul>

<p align="center">
  <img
    src="https://github.com/rttbb556gv6gv667gv/MC-GUIFramework/blob/main/images/social.png?raw=true"
    alt="MC GUI Framework Menu Örneği"
    width="600"
  />
</p>

<hr>

<h2>Desteklenen ui_item Alanları</h2>

<table>
  <tr>
    <th>Anahtar</th>
    <th>Açıklama</th>
    <th>Örnek</th>
  </tr>
  <tr>
    <td><code>ui_item.func</code></td>
    <td>Datapack fonksiyonu çağırır</td>
    <td><code>pack:menu/open</code></td>
  </tr>
  <tr>
    <td><code>ui_item.cmd</code></td>
    <td>Doğrudan komut çalıştırır</td>
    <td><code>say Merhaba</code></td>
  </tr>
  <tr>
    <td><code>ui_item.gamemode</code></td>
    <td>Oyuncunun gamemode’unu değiştirir</td>
    <td><code>creative</code></td>
  </tr>
  <tr>
    <td><code>ui_item.player</code></td>
    <td>Komut / fonksiyon hedefi</td>
    <td><code>@p</code></td>
  </tr>
</table>

<hr>

<h2>Öncelik Sırası (Önerilen)</h2>

<ol>
  <li><code>ui_item.func</code></li>
  <li><code>ui_item.cmd</code></li>
  <li><code>ui_item.gamemode</code></li>
  <li><code>ui_item.player</code></li>
</ol>

<p>
Bu sıra framework içindeki işleyici fonksiyonlara göre değiştirilebilir.
</p>

<hr>

<h2>Bileşen Tabanlı ui_item Örnekleri</h2>

<h3>Menü Açma</h3>

<pre><code>{
  ui_item:{
    func:"&lt;namespace&gt;:menu/main/open"
  }
}
</code></pre>

<h3>Komut Çalıştırma</h3>

<pre><code>{
  ui_item:{
    cmd:"give @p diamond 1"
  }
}
</code></pre>

<h3>Gamemode Değiştirme</h3>

<pre><code>{
  ui_item:{
    gamemode:"creative",
    player:"@p"
  }
}
</code></pre>

<hr>

<h2>Güvenlik & İyi Uygulamalar</h2>

<ul>
  <li>
    <code>tag:{}</code> ve klasik NBT kullanmayın
    (crash item / exploit riski).
  </li>
  <li>
    <code>ui_item.func</code> kullanımı önerilir.
  </li>
  <li>
    <code>ui_item.cmd</code> ile <code>op</code>, <code>stop</code> gibi
    tehlikeli komutlardan kaçının.
  </li>
  <li>
    Selector kullanımında (<code>@a</code>, <code>@p</code>) dikkatli olun.
  </li>
</ul>

<hr>

<p>
Bu belge MC-GUIFramework projesi temel alınarak hazırlanmıştır.
</p>
