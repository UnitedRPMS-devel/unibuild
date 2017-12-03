FROM davidva/unibuild-26

MAINTAINER David Va <davidva@tutanota.com>

RUN rm -f urpms \ 
&& wget -c https://raw.githubusercontent.com/kuboosoft/united-build/master/urpms \
&& chmod a+x /urpms \
&& dnf -y install calc \
&& ./urpms -g UnitedRPMs/x265 -s x265.spec -r true -d 'dist .fc26' -c true  
CMD ["/bin/bash", "/usr/bin/bash"]




