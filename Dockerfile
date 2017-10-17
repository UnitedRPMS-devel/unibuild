FROM davidva/unibuild-26

MAINTAINER David Va <davidva@tutanota.com>

RUN rm -f urpms \ 
&& wget -c https://raw.githubusercontent.com/kuboosoft/united-build/master/urpms \
&& chmod a+x /urpms \
&& ./urpms -g UnitedRPMs/ffmpeg -s ffmpeg.spec -r true -d 'dist .fc26' -c true -n true
CMD ["/bin/bash", "/usr/bin/bash"]




