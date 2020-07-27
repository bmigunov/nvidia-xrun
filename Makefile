.PHONY: install

install: nvidia-xinitrc nvidia-xorg.conf nvidia-xrun nvidia-xrun-pm.service config/nvidia-xrun
	install -d $(DESTDIR)/usr/bin
	install -m 0755 nvidia-xrun $(DESTDIR)/usr/bin
	install -d $(DESTDIR)/etc/X11/nvidia-xorg.conf.d
	install -m 0644 nvidia-xorg.conf $(DESTDIR)/etc/X11
	install -d $(DESTDIR)/etc/X11/xinit/nvidia-xinitrc.d
	install -m 0755 nvidia-xinitrc $(DESTDIR)/etc/X11/xinit
	install -d $(DESTDIR)/etc/systemd/system
	install -m 0644 nvidia-xrun-pm.service $(DESTDIR)/etc/systemd/system
	install -d $(DESTDIR)/etc/default
	install -m 0644 config/nvidia-xrun $(DESTDIR)/etc/default
