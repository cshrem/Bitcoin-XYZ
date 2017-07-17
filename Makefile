include .deosrc


all:
# =========================================================================== #
#	Description: The default rule.
#	Usage: `make` and/or `make all`
# =========================================================================== #
	@-rm -rf var/xml/bitcoin-abc.html
	@-cd ext/bitcoin-abc && gitinspector --format html > ../../var/html/bitcoin-abc.html
	@-rm -rf var/xml/bitcoin-abc.xml
	@-cd ext/bitcoin-unlimited && gitinspector --format xml > ../../var/xml/bitcoin-abc.xml
	@#-rm -rf var/xml/bitcoin-btc1.html
	@#-cd ext/bitcoin-btc1 && gitinspector --format html > ../../var/html/bitcoin-btc1.html
	@#-rm -rf var/xml/bitcoin-btc1.xml
	@#-cd ext/bitcoin-unlimited && gitinspector --format xml > ../../var/xml/bitcoin-btc1.xml
	@#-rm -rf var/xml/bitcoin-unlimited.html
	@#-cd ext/bitcoin-unlimited && gitinspector --format html > ../../var/html/bitcoin-unlimited.html
	@#-rm -rf var/xml/bitcoin-unlimited.xml
	@#-cd ext/bitcoin-unlimited && gitinspector --format xml > ../../var/xml/bitcoin-unlimited.xml
	@#-rm -rf var/xml/bitcoin-original.html
	@#-cd ext/bitcoin-original && gitinspector --format html > ../../var/html/bitcoin-original.html
	@#-rm -rf var/xml/bitcoin-original.xml
	@#-cd ext/bitcoin-original && gitinspector --format xml > ../../var/xml/bitcoin-original.xml
	@#-rm -rf var/xml/bitcoin-core.xml
	@#-cd ext/bitcoin-core && gitinspector --format xml > ../../var/xml/bitcoin-core.xml
# =========================================================================== #


build:
# =========================================================================== #
#	Description: The build rule.
#	Usage: `make build`
# =========================================================================== #
	@echo $(call l,${cBl},${cGr}[${cPu}5${cGr}] ${cCy}$@)
# =========================================================================== #


docs:
# =========================================================================== #
#	Description: The docs rule.
#	Usage: `make docs`
# =========================================================================== #
	@echo $(call l,${cBl},${cGr}[${cPu}5${cGr}] ${cCy}$@)
	@-cd docs && $(MAKE)
# =========================================================================== #


bitcoin.team:
# =========================================================================== #
#	Description: The bitcoin.team rule.
#	Usage: `make bitcoin.team`
# =========================================================================== #
	@echo $(call l,${cBl},${cGr}[${cPu}5${cGr}] ${cCy}$@)
	@-cd app/bitcoin.team && $(MAKE)
# =========================================================================== #
