targets: exthtml sass

exthtml: .FORCE
	cd exthtml && ./makejs.sh
sass: .FORCE
	sass ./bulma-styles/

.FORCE:
