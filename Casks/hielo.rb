cask "hielo" do
  version "1.2.1"
  sha256 "bf81eee368fac4900082bfb400ea8a1ca28417ea53bcce2b3d8fc719c35e693f"

  url "https://github.com/S7R1X/Hielo/releases/download/v#{version}/Hielo-#{version}.zip"
  name "Hielo"
  desc "Gestor de la barra de menús para macOS 27, derivado de Ice"
  homepage "https://github.com/S7R1X/Hielo"

  depends_on macos: ">= :sonoma"

  app "Hielo.app"

  uninstall quit: "bo.strix.hielo"

  zap trash: [
    "~/Library/Application Support/Hielo",
    "~/Library/Caches/bo.strix.hielo",
    "~/Library/HTTPStorages/bo.strix.hielo",
    "~/Library/Preferences/bo.strix.hielo.plist",
  ]

  caveats <<~EOS
    Hielo no está notarizado por Apple. La primera vez que lo abras, macOS lo
    bloqueará: usa clic derecho sobre Hielo.app → Abrir → Abrir, o en Ajustes
    del Sistema → Privacidad y seguridad pulsa "Abrir de todos modos".
    Después, concede los permisos de Accesibilidad y Grabación de pantalla.
  EOS
end
