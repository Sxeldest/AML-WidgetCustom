; =========================================================
; Game Engine Function: sub_126724
; Address            : 0x126724 - 0x126752
; =========================================================

126724:  PUSH            {R4,R6,R7,LR}
126726:  ADD             R7, SP, #8
126728:  LDR             R4, =(byte_263E14 - 0x12672E)
12672A:  ADD             R4, PC; byte_263E14
12672C:  LDRB            R0, [R4]
12672E:  LDR             R1, =(aAxl - 0x126734); "AXL" ...
126730:  ADD             R1, PC; "AXL"
126732:  CBZ             R0, loc_126744
126734:  LDR             R2, =(aCvehiclesoundh_2 - 0x12673C); "CVehicleSoundHook: Delete instance of R"... ...
126736:  MOVS            R0, #4; prio
126738:  ADD             R2, PC; "CVehicleSoundHook: Delete instance of R"...
12673A:  BLX             __android_log_print
12673E:  MOVS            R0, #0
126740:  STRB            R0, [R4]
126742:  POP             {R4,R6,R7,PC}
126744:  LDR             R2, =(aCvehiclesoundh_3 - 0x12674C); "CVehicleSoundHook: Instance of CVehicle"... ...
126746:  MOVS            R0, #5
126748:  ADD             R2, PC; "CVehicleSoundHook: Instance of CVehicle"...
12674A:  POP.W           {R4,R6,R7,LR}
12674E:  B.W             sub_2242C8
