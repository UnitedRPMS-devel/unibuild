FROM davidva/unibuild-28

MAINTAINER David Va <davidva@tutanota.com>

RUN rm -f urpms \ 
&& wget -c https://raw.githubusercontent.com/kuboosoft/united-build/master/urpms \
&& chmod a+x /urpms \
&& dnf -y install calc \
&& ./urpms -g UnitedRPMs/opera -s opera.spec -r true -d 'dist .fc28'  
CMD ["/bin/bash", "/usr/bin/bash"]




