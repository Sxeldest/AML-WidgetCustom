; =========================================================
; Game Engine Function: sub_163EE4
; Address            : 0x163EE4 - 0x163F08
; =========================================================

163EE4:  PUSH            {R7,LR}
163EE6:  MOV             R7, SP
163EE8:  LDR             R1, [R0,#0x14]
163EEA:  CBZ             R1, loc_163EFE
163EEC:  LDRD.W          R0, R1, [R1,#0x10]; x
163EF0:  EOR.W           R0, R0, #0x80000000; y
163EF4:  BLX             atan2f
163EF8:  VMOV            S0, R0
163EFC:  B               loc_163F02
163EFE:  VLDR            S0, [R0,#0x10]
163F02:  VMOV            R0, S0
163F06:  POP             {R7,PC}
