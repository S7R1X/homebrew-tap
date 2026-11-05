cask "hielo" do
  version "1.0.0"
  sha256 "16a5b054900fb36154b50268cbbd538cea763ce212df16fc5158a8292bfd83b3"

  url "https://github.com/S7R1X/Hielo/releases/download/v#{version}/Hielo-#{version}.zip"
  name "Hielo"
  desc "Gestor de la barra de menús para macOS 27, derivado de Ice"
  homepage "https://github.com/S7R1X/Hielo"

  depends_on macos: ">= :sonoma"

  app "Hielo.app"

  zap trash: [
    "~/Library/Application Support/Ice",
    "~/Library/Caches/com.jordanbaird.Ice",
    "~/Library/HTTPStorages/com.jordanbaird.Ice",
    "~/Library/Preferences/com.jordanbaird.Ice.plist",
  ]

  caveats <<~EOS
    Hielo no está notarizado por Apple. La primera vez que lo abras, macOS lo
    bloqueará: usa clic derecho sobre Hielo.app → Abrir → Abrir, o en Ajustes
    del Sistema → Privacidad y seguridad pulsa "Abrir de todos modos".
    Después, concede los permisos de Accesibilidad y Grabación de pantalla.
  EOS
end
