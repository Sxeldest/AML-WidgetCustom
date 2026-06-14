; =========================================================
; Game Engine Function: _ZN9CRenderer22RemoveVehiclePedLightsEP9CPhysicalb
; Address            : 0x4105E6 - 0x4105F4
; =========================================================

4105E6:  LDRB.W          R0, [R0,#0x47]
4105EA:  LSLS            R0, R0, #0x1A; this
4105EC:  IT PL
4105EE:  BPL.W           sub_1919FC
4105F2:  BX              LR
