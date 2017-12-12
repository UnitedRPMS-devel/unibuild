FROM davidva/unibuild-28

MAINTAINER David Va <davidva@tutanota.com>

RUN rm -f urpms \ 
&& wget -c https://raw.githubusercontent.com/kuboosoft/united-build/master/urpms \
&& chmod a+x /urpms \
&& dnf -y install calc \
&& ./urpms -g UnitedRPMs/libshout-idjc -s libshout-idjc.spec -r true -d 'dist .fc28' -c true -u true  
CMD ["/bin/bash", "/usr/bin/bash"]




