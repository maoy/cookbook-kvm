name             "kvm"
maintainer       "Guilhem Lettron"
maintainer_email "guilhem.lettron@youscribe.com"
license          "Apache 2.0"
description      "Installs/Configures/tuning kvm"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.3.0"

depends          "ntp", ">= 1.2.0"

depends          "sysctl"
depends          "modules"
depends          "sysfs"
depends          "cpu"

distros = %w(debian centos ubuntu redhat scientific)

distros.each do |dist|
  supports dist
end
