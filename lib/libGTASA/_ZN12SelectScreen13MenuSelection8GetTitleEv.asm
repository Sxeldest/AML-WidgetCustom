; =========================================================
; Game Engine Function: _ZN12SelectScreen13MenuSelection8GetTitleEv
; Address            : 0x2A3990 - 0x2A39C2
; =========================================================

2A3990:  PUSH            {R4,R6,R7,LR}
2A3992:  ADD             R7, SP, #8
2A3994:  LDR             R1, =(aMobSci - 0x2A399C); "MOB_SCI"
2A3996:  LDR             R4, [R0,#4]
2A3998:  ADD             R1, PC; "MOB_SCI"
2A399A:  MOV             R0, R4; char *
2A399C:  BLX             strcmp
2A39A0:  CBNZ            R0, loc_2A39B2
2A39A2:  BLX             j__Z18IsSCCloudAvailablev; IsSCCloudAvailable(void)
2A39A6:  LDR             R1, =(aMobSci - 0x2A39B0); "MOB_SCI"
2A39A8:  ADR             R4, aMobSco; "MOB_SCO"
2A39AA:  CMP             R0, #0
2A39AC:  ADD             R1, PC; "MOB_SCI"
2A39AE:  IT EQ
2A39B0:  MOVEQ           R4, R1
2A39B2:  LDR             R0, =(TheText_ptr - 0x2A39BA)
2A39B4:  MOV             R1, R4; char *
2A39B6:  ADD             R0, PC; TheText_ptr
2A39B8:  LDR             R0, [R0]; TheText ; this
2A39BA:  POP.W           {R4,R6,R7,LR}
2A39BE:  B.W             j_j__ZN5CText3GetEPKc; j_CText::Get(char const*)
