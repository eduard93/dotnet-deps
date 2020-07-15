FROM store/intersystems/iris-community:2020.2.0.211.0

USER ${ISC_PACKAGE_MGRUSER}

COPY irissession.sh /
COPY  src /tmp
SHELL ["/irissession.sh"]

RUN \
  zn "USER" \
  do $SYSTEM.OBJ.LoadDir("/tmp", "ck", , 1) \
  do ##class(%File).RemoveDirectoryTree("/tmp")

# bringing the standard shell back
SHELL ["/bin/bash", "-c"]