FROM centos AS vscode

RUN echo -e "\
[vscode]\n\
name=Visual Studio Code\n\
baseurl=https://packages.microsoft.com/yumrepos/vscode\n\
enabled=1\n\
gpgcheck=1\n\
gpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo

RUN echo -e "\
[google-chrome]\n\
name=google-chrome\n\
baseurl=http://dl.google.com/linux/chrome/rpm/stable/x86_64\n\
enabled=1\n\
gpgcheck=1\n\
gpgkey=https://dl.google.com/linux/linux_signing_key.pub" > /etc/yum.repos.d/google-chrome.repo

RUN yum update -y

RUN yum install -y \
    dbus-x11.x86_64 \
    wget.x86_64 \
    code.x86_64 \
    google-chrome-stable.x86_64 \
    git.x86_64 \
    unzip.x86_64 \
    mesa-libGL.x86_64 \
    mesa-dri-drivers.x86_64 \
    xorg-x11-drv-intel.x86_64 \
    libXrender.x86_64 \
    libXtst.x86_64 \
    xorg-x11-fonts-100dpi.noarch \
    xorg-x11-fonts-75dpi.noarch \
    xorg-x11-fonts-ISO8859-1-100dpi.noarch \
    xorg-x11-fonts-ISO8859-1-75dpi.noarch \
    xorg-x11-fonts-ISO8859-14-100dpi.noarch \
    xorg-x11-fonts-ISO8859-14-75dpi.noarch \
    xorg-x11-fonts-ISO8859-15-100dpi.noarch \
    xorg-x11-fonts-ISO8859-15-75dpi.noarch \
    xorg-x11-fonts-ISO8859-2-100dpi.noarch \
    xorg-x11-fonts-ISO8859-2-75dpi.noarch \
    xorg-x11-fonts-ISO8859-9-100dpi.noarch \
    xorg-x11-fonts-ISO8859-9-75dpi.noarch \
    xorg-x11-fonts-Type1.noarch \
    xorg-x11-fonts-cyrillic.noarch \
    xorg-x11-fonts-ethiopic.noarch \
    xorg-x11-fonts-misc.noarch \
    libcanberra-gtk3.x86_64

CMD [ "bash" ]
