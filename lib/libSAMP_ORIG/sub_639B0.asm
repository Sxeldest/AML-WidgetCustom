; =========================================================
; Game Engine Function: sub_639B0
; Address            : 0x639B0 - 0x63A3C
; =========================================================

639B0:  PUSH            {R4,R6,R7,LR}
639B2:  ADD             R7, SP, #8
639B4:  CBZ             R0, loc_639CE
639B6:  LDR             R1, =(off_114AA8 - 0x639C4)
639B8:  MOV             R2, #0x314971
639C0:  ADD             R1, PC; off_114AA8
639C2:  LDR             R1, [R1]; dword_1A4404
639C4:  LDR             R1, [R1]
639C6:  ADD             R1, R2
639C8:  POP.W           {R4,R6,R7,LR}
639CC:  BX              R1
639CE:  LDR             R0, =(byte_1A3BF8 - 0x639D4)
639D0:  ADD             R0, PC; byte_1A3BF8
639D2:  LDRB            R0, [R0]
639D4:  DMB.W           ISH
639D8:  LSLS            R0, R0, #0x1F
639DA:  BEQ             loc_639F6
639DC:  LDR             R4, =(unk_1A3BE0 - 0x639E2)
639DE:  ADD             R4, PC; unk_1A3BE0
639E0:  MOV             R0, R4
639E2:  BL              sub_67814
639E6:  LDR             R1, =(aSampOrig - 0x639F0); "SAMP_ORIG" ...
639E8:  MOVS            R0, #4; prio
639EA:  MOV             R2, R4; fmt
639EC:  ADD             R1, PC; "SAMP_ORIG"
639EE:  BLX             __android_log_print
639F2:  MOVS            R0, #0
639F4:  POP             {R4,R6,R7,PC}
639F6:  LDR             R0, =(byte_1A3BF8 - 0x639FC)
639F8:  ADD             R0, PC; byte_1A3BF8 ; __guard *
639FA:  BLX             j___cxa_guard_acquire
639FE:  CMP             R0, #0
63A00:  BEQ             loc_639DC
63A02:  LDR             R1, =(unk_1A3BE0 - 0x63A12)
63A04:  MOVW            R3, #0x283F
63A08:  ADR             R0, dword_63A40
63A0A:  MOVT            R3, #0x5A7B
63A0E:  ADD             R1, PC; unk_1A3BE0 ; obj
63A10:  VLD1.64         {D16-D17}, [R0@128]
63A14:  MOVW            R4, #0x3335
63A18:  LDR             R0, =(sub_66E7C+1 - 0x63A2C)
63A1A:  MOVT            R4, #0x2E34
63A1E:  LDR             R2, =(off_110560 - 0x63A2E)
63A20:  STR             R3, [R1,#(dword_1A3BF4 - 0x1A3BE0)]
63A22:  MOV             R3, R1
63A24:  VST1.8          {D16-D17}, [R3@128]!
63A28:  ADD             R0, PC; sub_66E7C ; lpfunc
63A2A:  ADD             R2, PC; off_110560 ; lpdso_handle
63A2C:  STR             R4, [R3]
63A2E:  BLX             __cxa_atexit
63A32:  LDR             R0, =(byte_1A3BF8 - 0x63A38)
63A34:  ADD             R0, PC; byte_1A3BF8 ; __guard *
63A36:  BLX             j___cxa_guard_release
63A3A:  B               loc_639DC
