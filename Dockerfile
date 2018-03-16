FROM davidva/unibuild-29

MAINTAINER David Va <davidva@tutanota.com>

RUN rm -f urpms \ 
&& wget -c https://raw.githubusercontent.com/kuboosoft/united-build/master/urpms \
&& chmod a+x /urpms \
&& dnf -y install calc \
&& ./urpms -g UnitedRPMs/simplescreenrecorder -s simplescreenrecorder.spec -r true -d 'dist .fc29' -c true  
CMD ["/bin/bash", "/usr/bin/bash"]




