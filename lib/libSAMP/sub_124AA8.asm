; =========================================================
; Game Engine Function: sub_124AA8
; Address            : 0x124AA8 - 0x124AEA
; =========================================================

124AA8:  PUSH            {R4,R6,R7,LR}
124AAA:  ADD             R7, SP, #8
124AAC:  LDR             R4, =(dword_263C44 - 0x124AB2)
124AAE:  ADD             R4, PC; dword_263C44
124AB0:  LDR             R0, [R4]
124AB2:  CBZ             R0, loc_124ACA
124AB4:  LDR             R1, =(dword_238E90 - 0x124ABE)
124AB6:  MOVW            R2, #0x286C
124ABA:  ADD             R1, PC; dword_238E90
124ABC:  LDR             R1, [R1]
124ABE:  RSB.W           R1, R1, R1,LSL#3
124AC2:  ADD.W           R1, R0, R1,LSL#5
124AC6:  SUBS            R1, R1, R2
124AC8:  B               loc_124AE6
124ACA:  LDR             R1, =(aAxl - 0x124AD6); "AXL" ...
124ACC:  MOVS            R0, #5; prio
124ACE:  LDR             R2, =(aChandlinghookF - 0x124AD8); "CHandlingHook: fail to call %s. Custom "... ...
124AD0:  LDR             R3, =(aStaticCharChan - 0x124ADA); "static char *CHandlingHook::getBikeStar"... ...
124AD2:  ADD             R1, PC; "AXL"
124AD4:  ADD             R2, PC; "CHandlingHook: fail to call %s. Custom "...
124AD6:  ADD             R3, PC; "static char *CHandlingHook::getBikeStar"...
124AD8:  BLX             __android_log_print
124ADC:  MOVW            R1, #0xD780
124AE0:  LDR             R0, [R4]
124AE2:  MOVT            R1, #0xFFFF
124AE6:  SUBS            R0, R1, R0
124AE8:  POP             {R4,R6,R7,PC}
