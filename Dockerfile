FROM davidva/unibuild-28

MAINTAINER David Va <davidva@tutanota.com>

RUN rm -rf united-build \ 
&& git clone https://github.com/kuboosoft/united-build.git \
&& cd united-build \
&& cp -f urpms / \
&& chmod a+x urpms \
&& chmod a+x /urpms \
&& ./urpms -g UnitedRPMs/x265 -s x265.spec -r true -d 'dist .fc28' -c true  
CMD ["/bin/bash", "/usr/bin/bash"]




