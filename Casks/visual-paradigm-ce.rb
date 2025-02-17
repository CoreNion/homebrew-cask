cask "visual-paradigm-ce" do
  arch = Hardware::CPU.intel? ? "WithJRE" : "AArch64"

  version "17.0,20220801"

  if Hardware::CPU.intel?
    sha256 "f7d4db8b65982054ea2ee803b3c92e60ea5e7b9816fa4536f763e7061e17458c"
  else
    sha256 "3bed108ac6f210cc04bc13b5cc80399d88961505793282bf0a9bc33c0d1cc046"
  end

  url "https://www.visual-paradigm.com/downloads/vpce/Visual_Paradigm_CE_#{version.csv.first.dots_to_underscores}_#{version.csv.second}_OSX_#{arch}.dmg"
  name "Visual Paradigm Community Edition"
  desc "All-in-one UML, SysML, BPMN Modeling Platform for Agile"
  homepage "https://www.visual-paradigm.com/"

  livecheck do
    url "https://www.visual-paradigm.com/downloads/vpce/checksum.html"
    strategy :header_match do |headers|
      match = headers["location"].match(%r{/vpce(\d+(?:\.\d+)+)/(\d+)/checksum\.html}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  # Renamed to avoid conflict with visual-paradigm.
  app "Visual Paradigm.app", target: "Visual Paradigm CE.app"
end
