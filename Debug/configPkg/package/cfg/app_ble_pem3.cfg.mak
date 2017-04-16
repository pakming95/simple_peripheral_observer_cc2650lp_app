# invoke SourceDir generated makefile for app_ble.pem3
app_ble.pem3: .libraries,app_ble.pem3
.libraries,app_ble.pem3: package/cfg/app_ble_pem3.xdl
	$(MAKE) -f C:\Users\richa\Desktop\ble_examples-master\ble_examples-master\examples\cc2650lp\simple_peripheral_observer\ccs\config/src/makefile.libs

clean::
	$(MAKE) -f C:\Users\richa\Desktop\ble_examples-master\ble_examples-master\examples\cc2650lp\simple_peripheral_observer\ccs\config/src/makefile.libs clean

