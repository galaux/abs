#
SSHGATE_VERSION=`date +%F`
SSHGATE_BUILD=`date +%H%M`

release:
sed -i  -e "s|%% __SSHGATE_VERSION__ %%|$(SSHGATE_VERSION)|g" \
                -e "s|%% __SSHGATE_BUILD__ %%|$(SSHGATE_BUILD)|g" \
                server/install.sh \
                server/sshgate.conf

install: release
        echo $(SSHGATE_VERSION)
        echo $(SSHGATE_BUILD)

dist:
	tar -cf sshGate-client-$(SSHGATE_VERSION)-$(SSHGATE_BUILD).tar.gz \
                client
	tar -cf sshGate-server-$(SSHGATE_VERSION)-$(SSHGATE_BUILD).tar.gz \
                server

