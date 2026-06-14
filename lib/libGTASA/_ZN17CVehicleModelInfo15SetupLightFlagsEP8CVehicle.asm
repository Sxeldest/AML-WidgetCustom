; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo15SetupLightFlagsEP8CVehicle
; Address            : 0x389088 - 0x3890AC
; =========================================================

389088:  LDR             R1, =(_ZN17CVehicleModelInfo11ms_lightsOnE_ptr - 0x389092)
38908A:  LDRB.W          R0, [R0,#0x594]
38908E:  ADD             R1, PC; _ZN17CVehicleModelInfo11ms_lightsOnE_ptr
389090:  LDR             R1, [R1]; CVehicleModelInfo::ms_lightsOn ...
389092:  UBFX.W          R2, R0, #1, #1
389096:  STRB            R2, [R1]; CVehicleModelInfo::ms_lightsOn
389098:  AND.W           R2, R0, #1
38909C:  STRB            R2, [R1,#(byte_931875 - 0x931874)]
38909E:  UBFX.W          R2, R0, #2, #1
3890A2:  STRB            R2, [R1,#(byte_931877 - 0x931874)]
3890A4:  UBFX.W          R0, R0, #3, #1
3890A8:  STRB            R0, [R1,#(byte_931876 - 0x931874)]
3890AA:  BX              LR
