FROM davidva/unibuild-28

MAINTAINER David Va <davidva@tutanota.com>

RUN rm -rf united-build \ 
&& git clone https://github.com/kuboosoft/united-build.git \
&& cd united-build \
&& cp -f urpms / \
&& chmod a+x urpms \
&& chmod a+x /urpms \
&& ./urpms -g UnitedRPMs/opera -s opera.spec -r true -d 'dist .fc28'  
CMD ["/bin/bash", "/usr/bin/bash"]




