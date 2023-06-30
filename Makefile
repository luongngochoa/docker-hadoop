SUBDIRS := base base_with_tez hiveserver historyserver resourcemanager nodemanager datanode namenode

.PHONY: all $(SUBDIRS)

all: $(SUBDIRS)

$(SUBDIRS):
    cd $@ && ./build.sh
