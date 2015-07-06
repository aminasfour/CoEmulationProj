set_property SEVERITY {Warning} [get_drc_checks NSTD-1]
set_property SEVERITY {Warning} [get_drc_checks UCIO-1]

set_property DIRECTION IN [get_ports clock_p]
set_property IOSTANDARD DIFF_HSTL_II_18 [get_ports clock_p]
set_property DIFF_TERM FALSE [get_ports clock_p]
set_property IBUF_LOW_PWR TRUE [get_ports clock_p]

set_property DIRECTION IN [get_ports clock_n]
set_property IOSTANDARD DIFF_HSTL_II_18 [get_ports clock_n]
set_property DIFF_TERM FALSE [get_ports clock_n]
set_property IBUF_LOW_PWR TRUE [get_ports clock_n]

set_property DIRECTION OUT [get_ports locked]
set_property IOSTANDARD LVCMOS18 [get_ports locked]
set_property DRIVE 12 [get_ports locked]
set_property SLEW SLOW [get_ports locked]

#set_property DIRECTION IN [get_ports USER_RESET]
#set_property IOSTANDARD LVCMOS18 [get_ports USER_RESET]

set_property DIRECTION IN [get_ports rx]
set_property IOSTANDARD LVCMOS18 [get_ports rx]

set_property DIRECTION OUT [get_ports tx]
set_property IOSTANDARD LVCMOS18 [get_ports tx]
set_property DRIVE 12 [get_ports tx]
set_property SLEW SLOW [get_ports tx]

set_property PACKAGE_PIN AY19 [get_ports rx]
set_property PACKAGE_PIN BA19 [get_ports tx]
set_property PACKAGE_PIN H19 [get_ports clock_p]
set_property PACKAGE_PIN G18 [get_ports clock_n]
set_property PACKAGE_PIN AR22 [get_ports locked]

set_property -dict { PACKAGE_PIN AR22  IOSTANDARD LVCMOS15 } [get_ports { rdy }];
