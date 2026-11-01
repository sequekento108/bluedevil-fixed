sudo apt-get install -t trixie -y build-essential cmake extra-cmake-modules \
  debhelper dh-sequence-kf6 dh-sequence-pkgkde-symbolshelper gettext \
  libkf6bluezqt-dev libkf6coreaddons-dev libkf6dbusaddons-dev \
  libkf6doctools-dev libkf6i18n-dev libkf6jobwidgets-dev libkf6kcmutils-dev \
  libkf6kio-dev libkf6notifications-dev libkf6service-dev libkf6svg-dev \
  libkf6widgetsaddons-dev libkf6windowsystem-dev libplasma-dev \
  qt6-base-dev qt6-declarative-dev qt6-declarative-private-dev \
  shared-mime-info

rm -rf build && mkdir build && cd build
cmake .. -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=Release
make -j$(nproc)

sudo cp /usr/bin/bluedevil-wizard /usr/bin/bluedevil-wizard.bak

sudo make install

# It is assumed that an update would fix bluedevil, so further broken updates are not accounted for here
