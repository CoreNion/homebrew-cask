cask "racket" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "8.6"

  if Hardware::CPU.intel?
    sha256 "10c5d35239fe4737cc643633f1802ae309b227c1a055f990d4cc0d76f3317b66"
  else
    sha256 "fe1527b2f73b1b0f1123179454e200b3819baf875ade3458135411e04992d1a0"
  end

  url "https://mirror.racket-lang.org/installers/#{version}/racket-#{version}-#{arch}-macosx-cs.dmg"
  name "Racket"
  desc "Modern programming language in the Lisp/Scheme family"
  homepage "https://racket-lang.org/"

  livecheck do
    url "https://download.racket-lang.org/all-versions.html"
    regex(/racket[._-]v?(\d+(?:\.\d+)+)/i)
  end

  suite "Racket v#{version}"
  binary "#{appdir}/Racket v#{version}/bin/drracket"
  binary "#{appdir}/Racket v#{version}/bin/gracket"
  binary "#{appdir}/Racket v#{version}/bin/gracket-text"
  binary "#{appdir}/Racket v#{version}/bin/mred"
  binary "#{appdir}/Racket v#{version}/bin/mred-text"
  binary "#{appdir}/Racket v#{version}/bin/mzc"
  binary "#{appdir}/Racket v#{version}/bin/mzpp"
  binary "#{appdir}/Racket v#{version}/bin/mzscheme"
  binary "#{appdir}/Racket v#{version}/bin/mztext"
  binary "#{appdir}/Racket v#{version}/bin/pdf-slatex"
  binary "#{appdir}/Racket v#{version}/bin/plt-games"
  binary "#{appdir}/Racket v#{version}/bin/plt-help"
  binary "#{appdir}/Racket v#{version}/bin/plt-r5rs"
  binary "#{appdir}/Racket v#{version}/bin/plt-r6rs"
  binary "#{appdir}/Racket v#{version}/bin/plt-web-server"
  binary "#{appdir}/Racket v#{version}/bin/racket"
  binary "#{appdir}/Racket v#{version}/bin/raco"
  binary "#{appdir}/Racket v#{version}/bin/scribble"
  binary "#{appdir}/Racket v#{version}/bin/setup-plt"
  binary "#{appdir}/Racket v#{version}/bin/slatex"
  binary "#{appdir}/Racket v#{version}/bin/slideshow"
  binary "#{appdir}/Racket v#{version}/bin/swindle"
  manpage "#{appdir}/Racket v#{version}/man/man1/drracket.1"
  manpage "#{appdir}/Racket v#{version}/man/man1/gracket.1"
  manpage "#{appdir}/Racket v#{version}/man/man1/mred.1"
  manpage "#{appdir}/Racket v#{version}/man/man1/mzc.1"
  manpage "#{appdir}/Racket v#{version}/man/man1/mzscheme.1"
  manpage "#{appdir}/Racket v#{version}/man/man1/plt-help.1"
  manpage "#{appdir}/Racket v#{version}/man/man1/racket.1"
  manpage "#{appdir}/Racket v#{version}/man/man1/raco.1"
  manpage "#{appdir}/Racket v#{version}/man/man1/setup-plt.1"

  zap trash: [
    "~/Library/Caches/Racket",
    "~/Library/Preferences/org.racket-lang.DrRacket.plist",
    "~/Library/Preferences/org.racket-lang.prefs.rktd",
    "~/Library/Preferences/PLT-autosave-toc.rktd",
    "~/Library/Preferences/PLT-autosave-toc-save.rktd",
    "~/Library/Racket",
    "~/Library/Saved Application State/org.racket-lang.DrRacket.savedState",
    "~/Library/Saved Application State/org.racket-lang.DrRacketBC.savedState",
    "~/Library/Saved Application State/org.racket-lang.GRacket3m.savedState",
    "~/Library/Saved Application State/org.racket-lang.PLT Games.savedState",
    "~/Library/Saved Application State/org.racket-lang.Slideshow.savedState",
  ]
end
