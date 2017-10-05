FROM davidva/unibuild

MAINTAINER David Va <davidva@tutanota.com>

RUN rm -rf united-build \ 
&& git clone https://github.com/kuboosoft/united-build.git \
&& cd united-build \
&& cp -f urpms / \
&& chmod a+x urpms \
&& chmod a+x /urpms \
&& ./urpms -g UnitedRPMs/x265 -s x265.spec -r true -d 'dist .fc25' -c true -n true  
CMD ["/bin/bash", "/usr/bin/bash"]




